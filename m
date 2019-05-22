Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 296F126048
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 11:18:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cMWQWDOprecvxw/mbeRS92TQFespkT+MvN16AzXTGRE=; b=ZamYcyXHbYIBUW
	hC9oZUYuReZ29GMT1U/YoDhTqh6BKzyRYl307YMKRRdZ02gjz2r1aiyPRzSpM+9fA6gcfxZHMizm+
	1Kx/z5jDtSRfNga2GVbYDpgYs4BUrS2wLeyxdddMKp8o2LDK6z1u0AgUkH0LwO4ky93CTGdIsfvy6
	FUWmefUsg9tJ2Kt3ydQvOdN3KXbjeWTMRr2IB2o7OiEEryysXpZjtaRxqmWPXDlYE5DBRu43Lzcph
	Rv9vxaQUcgLGiFG5b2bhdYHHyid3zekjWxQIuRJvsP7QuNBdGrE9kGcdIPIVEfrBmnU0/jtwJMBvE
	Aqu5Dq+nGO13DT7ngwAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTNNj-0000Cl-DK; Wed, 22 May 2019 09:17:55 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTNNb-0000CI-I1
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 09:17:49 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id AB33520A0E;
 Wed, 22 May 2019 11:17:40 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 7CED620875;
 Wed, 22 May 2019 11:17:40 +0200 (CEST)
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH v2 7/9] arm64: dts: qcom: msm8998: Add PSCI cpuidle low
 power states
To: Amit Kucheria <amit.kucheria@linaro.org>,
 MSM <linux-arm-msm@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
References: <cover.1558430617.git.amit.kucheria@linaro.org>
 <49cf5d94beb9af9ef4e78d4c52f3b0ad20b7c63f.1558430617.git.amit.kucheria@linaro.org>
 <a7514c68-d2d3-ce9e-bc4b-f484bb5bf3cf@free.fr>
Message-ID: <d1ca4d37-ce25-a285-a9ef-dfe831f3d1de@free.fr>
Date: Wed, 22 May 2019 11:17:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <a7514c68-d2d3-ce9e-bc4b-f484bb5bf3cf@free.fr>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Wed May 22 11:17:40 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_021747_739951_4650A6E7 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jeffrey Hugo <jhugo@codeaurora.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Sibi Sankar <sibis@codeaurora.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Niklas Cassel <niklas.cassel@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ Re-sending to a wider audience, hoping to catch someone's eye ]

https://patchwork.kernel.org/patch/10953257/

On 21/05/2019 14:03, Marc Gonzalez wrote:

> With CPUIDLE enabled, my system starts to boot, hangs a few seconds,
> then silently reboots (killed by FW)

Using extremely high-tech debugging tools (i.e. spraying printk left and right)
I traced this crash down to:

psci_cpu_suspend_enter: 435
psci_cpu_suspend: 171
psci_cpu_suspend: __invoke_psci_fn_smc c4000001
__invoke_psci_fn_smc: id=c4000001 3 0 0
/*** execution never returns from arm_smccc_smc() ***/


The following dmesg log caught my eye, and might be relevant:

	ARM_SMCCC_ARCH_WORKAROUND_1 missing from firmware

Is that bad, doctor? I don't think it would explain the crash though...


If I revert the patch, psci_cpu_suspend_enter() is never called,
so we don't tickle the arm_smccc_smc() monster.

Could it be that this FW doesn't support PSCI?

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
