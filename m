Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F98D5B45
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 08:20:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7oEOw483DeLI+x7Vfz7bdKuqIpqDghu0FihyM9ceiqc=; b=WZ8tJ8p/j6xuq7
	4JVFtJv61XZakXyjMHxRCCdCAZeLV0IoNIAJvefEF4P6MYy5LlEHG45yNbNjvY1a7FRubOSpXeyga
	MAL8gxZ8fhttfCTuU2Bn7MIdKzCp30d+CyPMG2AZVIN+0wyIQUbQpC/kSRCpNU0i5WXkPLaEHVf5E
	LuIk0evhyDgb4TRNZmvxHM2h8RdTkB1QjdSIfYh7QN8cBm0dgHeVivof2Tay4OiPQpAKz1tGmKQxb
	kgJWVmQ548Ew/MmIaQSRns784SfUIYJCL/zO91OXTvu6yyRL+5DakwZeFe8rd5e2ab/H22LQNaNmp
	AiLkactKxWAcvlVdVpkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJti9-0006Bf-2G; Mon, 14 Oct 2019 06:20:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJthw-0006BG-5s
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 06:19:53 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2CB8020854;
 Mon, 14 Oct 2019 06:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571033991;
 bh=G3j79Lr1xNDLJ1DZYooCMhYnk2SpMlhTRuB05XZTAZ4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vqMBWKBv5wMMlKQRyLwibF7IThEe5J/kd4Ka2k3MCrCrk044Qr3UxvEykUO4KJh2A
 zX5Am2AhoaK48PbKepzLZCeuqdAGpuEO670ySVDUx2VCDwmoCa6rX9t3MVTBDX93Cj
 CtQOuEm7exBDrrhJijqGKHhK1LrU68E3M8jJNMsc=
Date: Mon, 14 Oct 2019 14:19:31 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Wen He <wen.he_1@nxp.com>
Subject: Re: [v2 1/2] arm64: dts: ls1028a: Update the clock providers for the
 Mali DP500
Message-ID: <20191014061930.GB12262@dragon>
References: <20190920083419.5092-1-wen.he_1@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920083419.5092-1-wen.he_1@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_231952_242088_280FE313 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 linux-devel@linux.nxdi.nxp.com, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 04:34:18PM +0800, Wen He wrote:
> In order to maximise performance of the LCD Controller's 64-bit AXI
> bus, for any give speed bin of the device, the AXI master interface
> clock(ACLK) clock can be up to CPU_frequency/2, which is already
> capable of optimal performance. In general, ACLK is always expected
> to be equal to CPU_frequency/2. APB slave interface clock(PCLK) and
> Main processing clock(PCLK) both are tied to the same clock as ACLK.
> 
> This change followed the LS1028A Architecture Specification Manual.
> 
> Signed-off-by: Wen He <wen.he_1@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
