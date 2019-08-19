Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 812EE91E5E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 09:57:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AyzH/7WOLLPxMlIUOKu5v6GrX3oY5m2TByqsvcd2PLc=; b=XaWbW05LP9UZSn
	ipcg+x808LBKRWHedIAod26QXhliCjX+yISi29fEI1HX+jIRMpElQazYmDYqsdD6fBH+yF3YvhmA9
	TmuNndtBBuqmcisildYFgUCEGy6xgCeFJcAnx+CfcXjjR1V2CxsFysOv2Bu0fClGwZhZPCUrtB8gC
	g7JOZAVXADPnL7m9EhuHyQaf3al1v7U4/zsuIu4ulcpctiZzOJZMb+/sd7l+19jEkwwcpiduOoU2d
	IYbL3FCZcOLQUDJj69oU6w1fvu+NTtQh52iu1KjXrAmb/WMfZGgksPfucZ6wWA8Jv/hFIxakyIWVf
	vFsIFtDiaOtLV0PUBd9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzcXs-0002gB-Dd; Mon, 19 Aug 2019 07:57:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzcXh-0002fq-0l
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 07:57:30 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 134E42085A;
 Mon, 19 Aug 2019 07:57:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566201448;
 bh=D7myTqI0BEVXiFZifJgzcy7hg85sUhd4k+QViJlhIDQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XD9a01HRGUsqpNAwbEu/YgjY7WldIGH1GTujrn6vKbW/xnisMFhFeZa7yzGQAOVSw
 A8wb09kmcv85yUxTX0/Wh/7dXaPxi+2QnMn/jZyrjOmKGyCW0HEZoqiz2zQyLzQGFL
 DXWBQK2ztzBaho3KIpm+dl6S5pd6CZyyB7eBvyGc=
Date: Mon, 19 Aug 2019 09:57:17 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH 0/2] ARM: psci: cpuidle: defconfig updates
Message-ID: <20190819075716.GG5999@X250>
References: <20190814125239.6270-1-lorenzo.pieralisi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190814125239.6270-1-lorenzo.pieralisi@arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_005729_085017_1FF1D102 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, soc@kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 01:52:37PM +0100, Lorenzo Pieralisi wrote:
> Rerouting defconfig updates related to this patch series:
> 
> https://lore.kernel.org/linux-arm-kernel/cover.1565348376.git.lorenzo.pieralisi@arm.com/
> 
> to arm-soc, as agreed in:
> 
> https://lore.kernel.org/linux-arm-kernel/58d9677db3510ed106fe23118090c84f78a44102.1565348376.git.lorenzo.pieralisi@arm.com/
> 
> Patches [1-6] are already queued in the ARM64 tree.
> 
> Please consider pulling these defconfig changes, thank you very much.

We, platform maintainers, also send arch/arm64/configs/defconfig changes
to arm-soc folk.  So I applied both patches to IMX tree and will send
them to arm-soc for 5.4 inclusion.

Shawn

> 
> Cc: Will Deacon <will@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Ulf Hansson <ulf.hansson@linaro.org>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> 
> Lorenzo Pieralisi (2):
>   arm64: defconfig: Enable the PSCI CPUidle driver
>   ARM: imx_v6_v7_defconfig: Enable the PSCI CPUidle driver
> 
>  arch/arm/configs/imx_v6_v7_defconfig | 1 +
>  arch/arm64/configs/defconfig         | 1 +
>  2 files changed, 2 insertions(+)
> 
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
