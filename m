Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F60F5C59
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 01:40:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F3SV0Zcq6Zfu3UO7r1tUgw1Y+bTUJ2m7pxTzCSQa+gM=; b=eUqYsbZtcxttsB
	voyml7yM8ZSUuc0sk184SclMsqoy4/m8vLXN77jgUEhMZwro2jV1KaGy1QAsvQTcSxhRDUmSbER1F
	VxbxAqKvG3st7aDVGjjeR1dZTrU8/jIp25q5XF214kDBUzn4Q/1e/4/PI+SSUetz3AUO3td+0ZECz
	sHvdpViGPWql6ZVV6yadImzQHATK/T42bXlqPibvIsony3C76V6zlnYDYXMMHSJADoakN5gsroORr
	J3DwFLF388eWJ/VvLs0WlFTRWqO1dUINWeTKb/BBfy5XrVrnNiTJV1dy7FrKpjLcalEak+Lygf/5d
	nJlEN+EtsKb+qbU7c0Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTEnA-0006M1-0v; Sat, 09 Nov 2019 00:39:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTEml-0006En-QY
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 00:39:29 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6B2522084D;
 Sat,  9 Nov 2019 00:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573259967;
 bh=Zoy+Jor0H6I7/s2IE2TARJT4+Ubh8LGgJ+gtSJ+8LbY=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=nyup2dHU9/Ot1e1cVH2wGG5dNaYe8A0krkENP84atRDzdP7txwC85ZNonphd7QlPN
 Ya3tHHs3tYbSjre7QAiDCt+PFvoAz+MtT+JJTPIPVQXMu1EdJODEvOUfVTWQ+HqAM8
 FBcCFv1Iu1LYQHLFfac3wa4rfPewn7sGfKHnlTlg=
MIME-Version: 1.0
In-Reply-To: <20191016125919.1773898-2-thierry.reding@gmail.com>
References: <20191016125919.1773898-1-thierry.reding@gmail.com>
 <20191016125919.1773898-2-thierry.reding@gmail.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
 Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 1/5] clk: tegra: Remove last remains of
 TEGRA210_CLK_SOR1_SRC
User-Agent: alot/0.8.1
Date: Fri, 08 Nov 2019 16:39:26 -0800
Message-Id: <20191109003927.6B2522084D@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_163927_916938_77F02938 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, Peter De Schrijver <pdeschrijver@nvidia.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Thierry Reding (2019-10-16 05:59:15)
> From: Thierry Reding <treding@nvidia.com>
> 
> Later SoC generations implement this clock as SOR1_OUT. For consistency,
> the Tegra210 implementation was adapted to match the same name in commit
> 4d1dc4018573 ("dt-bindings: clock: tegra: Add sor1_out clock").
> 
> Clean up the remaining pieces by adopting the new name for the internal
> identifiers and remove the old alias. Note that since both SOR1_SRC and
> SOR1_OUT were referring to the same device tree clock ID, this does not
> break device tree ABI.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
