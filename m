Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF7815B476
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 00:05:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ich7/zbiEdJh/kp/ZG8J5GcL27N41++LAirqo4dfJec=; b=gN5NCGaA12FFcn1WT+MlTPAnh4
	aQ+0x6KSBJICbjdQQ5fcOPA6cWWIVOunY40uc+B0lIYrtGFzC/4GXdgpWzIyNzpR1PO8WCrMZmt8x
	jwVVekpy7AkC8pf0VnjQ7oGyu1QyuIG5RacI3VfL/XNtt0SgrpjMUi5ry/1vOYuscSH4NF7WQrDVZ
	FT9c2kjgWCK2hfZL2r5ZmnoJsgg4P4qKw7vZFquuy+mZUS+LOVk57TG304yXFx97H/U8x9nluh3Ts
	amU0wjuD3ugnQ4Px23oIXXpNbC/GaUTJsam3LuyQzwClc+1vuvCzkreqbgIzESTv8H30sELy1kxIf
	jP7pOqbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j214t-0000uU-Uv; Wed, 12 Feb 2020 23:05:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j214f-0000q5-Oe
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 23:05:42 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 461BF21569;
 Wed, 12 Feb 2020 23:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581548741;
 bh=zoHJIVwhMASkDGemE+WVpt+ECpAdmrv/geeULqCSSvY=;
 h=In-Reply-To:References:Subject:From:To:Date:From;
 b=DWWpcl/5iq4RiRXmnPpX9cZGUKtz6UBHZ7rPLZRKE9egTqlI6sYVXKx7EZ/mvWXr6
 SUUAKQL7Ci+tdYeMmUdDIe86RXQ3HTaZ75IqQ8aBfkeIoSVrYy+1veJyAF8ms26sQR
 kXe8dPGwvuqV0CY3EBEUgAXhhPgDBAjrn2RVvnFE=
MIME-Version: 1.0
In-Reply-To: <1579905147-12142-2-git-send-email-vnkgutta@codeaurora.org>
References: <1579905147-12142-1-git-send-email-vnkgutta@codeaurora.org>
 <1579905147-12142-2-git-send-email-vnkgutta@codeaurora.org>
Subject: Re: [PATCH v2 1/7] dt-bindings: clock: Add RPMHCC bindings for SM8250
From: Stephen Boyd <sboyd@kernel.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, devicetree@vger.kernel.org,
 jshriram@codeaurora.org, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com, mturquette@baylibre.com,
 psodagud@codeaurora.org, robh+dt@kernel.org, tdas@codeaurora.org,
 tsoni@codeaurora.org, vinod.koul@linaro.org, vnkgutta@codeaurora.org
Date: Wed, 12 Feb 2020 15:05:40 -0800
Message-ID: <158154874056.184098.12906798791051466643@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_150541_856427_3F4575E2 
X-CRM114-Status: UNSURE (   6.43  )
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

Quoting Venkata Narendra Kumar Gutta (2020-01-24 14:32:21)
> From: Taniya Das <tdas@codeaurora.org>
> 
> Add bindings and update documentation for clock rpmh driver on SM8250.
> 
> Acked-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Vinod Koul <vkoul@kernel.org>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> Signed-off-by: Taniya Das <tdas@codeaurora.org>
> Signed-off-by: Venkata Narendra Kumar Gutta <vnkgutta@codeaurora.org>
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
