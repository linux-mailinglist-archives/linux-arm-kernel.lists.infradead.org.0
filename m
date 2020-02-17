Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6692A160BCD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 08:42:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e3bm2YKLYchkXfFkHsxf7Kwbk852CmUrQBEmE1Uwhnk=; b=U6HUKocH/4jIxw
	k9d/38XT98M41/oc0f61UGuhQOenyRjPYqbMJ9c8UEe2iiA4VpZ0pAQrclI10N/aIzPzgL90qBGZL
	hST4CUs2AXejy37IpoXBql4gi2Z7R6VMK4m+DP1JBcq+tS1W4rGCVPdBfWq6NqMt///yxIqHpWTNV
	1mxPOelfT0NuqZFg48o7TuJUnRhy19a6utjCX6RZ76RY0LRB06bUWffW9sTKXtQls7mCroxFsML5y
	qZHwyphsW+rf7LlEoq2rEOKM0G45t1js0TL1cpE9FCeg74UioKCGIri2GL7SWruro3e2F5AhxH50J
	hjo65VH2R6sSF4RskLKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3b2a-0004C2-40; Mon, 17 Feb 2020 07:42:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3b2H-000431-Gt
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 07:41:47 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=localhost.discworld.emantor.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <r.czerwinski@pengutronix.de>)
 id 1j3b2B-0007Cj-4F; Mon, 17 Feb 2020 08:41:39 +0100
Message-ID: <d7298ea03ab71c414aabc7cac13a7a7511e00ceb.camel@pengutronix.de>
Subject: Re: [PATCH] ARM: imx: build v7_cpu_resume() unconditionally
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: s.hauer@pengutronix.de, shawnguo@kernel.org
Date: Mon, 17 Feb 2020 08:41:37 +0100
In-Reply-To: <20200116141849.73955-1-r.czerwinski@pengutronix.de>
References: <20200116141849.73955-1-r.czerwinski@pengutronix.de>
Organization: Pengutronix e.K.
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: r.czerwinski@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_234145_582744_02182EF4 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

On Thu, 2020-01-16 at 15:18 +0100, Rouven Czerwinski wrote:
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> This function is not only needed by the platform suspend code, but is
> also
> reused as the CPU resume function when the ARM cores can be powered
> down
> completely in deep idle, which is the case on i.MX6SX and i.MX6UL(L).
> 
> Providing the static inline stub whenever CONFIG_SUSPEND is disabled
> means
> that those platforms will hang on resume from cpuidle if suspend is
> disabled.
> 
> So there are two problems:
> 
>   - The static inline stub masks the linker error
>   - The function is not available where needed
> 
> Fix both by just building the function unconditionally, when
> CONFIG_SOC_IMX6 is enabled. The actual code is three instructions
> long,
> so it's arguably ok to just leave it in for all i.MX6 kernel
> configurations.
> 
> Fixes: 05136f0897b5 ("ARM: imx: support arm power off in cpuidle for
> i.mx6sx")
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  arch/arm/mach-imx/Makefile       |  2 ++
>  arch/arm/mach-imx/common.h       |  4 ++--
>  arch/arm/mach-imx/resume-imx6.S  | 24 ++++++++++++++++++++++++
>  arch/arm/mach-imx/suspend-imx6.S | 14 --------------
>  4 files changed, 28 insertions(+), 16 deletions(-)
>  create mode 100644 arch/arm/mach-imx/resume-imx6.S

Gentle ping.

Can be found on patchwork: https://patchwork.kernel.org/patch/11337147/

Thanks,
Rouven Czerwinski


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
