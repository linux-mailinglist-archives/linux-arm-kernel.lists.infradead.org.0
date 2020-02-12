Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EDF915B486
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 00:10:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=g1AIzKPrEkiJoBuFyNxYhEdjWuV+PX2CQVmTyJH79YQ=; b=eR82o2kWeU9twvytfSNz8wTdjJ
	+j1KAc40HAjOhJG8hdB86EL88E9gNqT4qQranA36k5TQlF3FoyHao9q0Cq92w3DK1rOZpQnQq7sQ1
	p1YaHh7wO04jpv06twAXNk0WKbCINH8QptcsF6E8xbp4+17EN+Rlbh9vKXQaSXNfU3cdi8Tpvo0yN
	619PEiFw32a+ZpFpNnWvIsoq8ZwEi00p0FBV7O3RNqMCqA6lr3dc2/6UTUffSrZRiU9ARDlhhGEFc
	yHJWVjKTQlje/NfD/bpPT7pVPpBmYyxsGHdemTt3wuUHdAap+SSTHypOZBArmP/9KL+VLfp0AvPhM
	vzAJVXJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j218y-0001e7-5n; Wed, 12 Feb 2020 23:10:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j218m-0001di-Ae
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 23:09:57 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CCE1F2168B;
 Wed, 12 Feb 2020 23:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581548995;
 bh=1iUCooTSVvuSZIPW3R3UIqC1urOlQcutMWC6laLHEHY=;
 h=In-Reply-To:References:Subject:From:To:Date:From;
 b=vmYeuGVhwp8SuZHsnbrsdOd353kfjeHcJ0LtW/I/plYN/B2M5QzcZ1OGdPWwTpdGf
 QPGpVOiRzvNLUVb87cyLcpkNPlGp595RhlYhtCIwO06wsPEZawP62eYVKI1tMWHgT1
 O/E4MYJh2bonuiPq2d2hbdcNEiINDEnYfrT8noyk=
MIME-Version: 1.0
In-Reply-To: <1579905147-12142-4-git-send-email-vnkgutta@codeaurora.org>
References: <1579905147-12142-1-git-send-email-vnkgutta@codeaurora.org>
 <1579905147-12142-4-git-send-email-vnkgutta@codeaurora.org>
Subject: Re: [PATCH v2 3/7] clk: qcom: clk-alpha-pll: Refactor and cleanup
 trion PLL
From: Stephen Boyd <sboyd@kernel.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, devicetree@vger.kernel.org,
 jshriram@codeaurora.org, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com, mturquette@baylibre.com,
 psodagud@codeaurora.org, robh+dt@kernel.org, tdas@codeaurora.org,
 tsoni@codeaurora.org, vinod.koul@linaro.org, vnkgutta@codeaurora.org
Date: Wed, 12 Feb 2020 15:09:54 -0800
Message-ID: <158154899499.184098.8708399326565910374@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_150956_388611_118761CD 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Venkata Narendra Kumar Gutta (2020-01-24 14:32:23)
> From: Taniya Das <tdas@codeaurora.org>
> 
> The PLL run and standby modes are similar across the PLLs, thus rename
> and refactor the code accordingly.
> 
> Remove duplicate function for calculating the round rate of PLL and also
> update the trion pll ops to use the common function.
> 
> Reviewed-by: Vinod Koul <vkoul@kernel.org>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> Signed-off-by: Taniya Das <tdas@codeaurora.org>
> Signed-off-by: Venkata Narendra Kumar Gutta <vnkgutta@codeaurora.org>
> ---
>  drivers/clk/qcom/clk-alpha-pll.c | 71 +++++++++++++---------------------------
>  1 file changed, 22 insertions(+), 49 deletions(-)

Looks mostly ok but it's wrecked now by me. Can you resend, splitting
this patch into at least two things? One patch to replace defines with
standard names and another to do the rest that this patch does?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
