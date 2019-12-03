Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9630110182
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 16:45:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N+ouwCQ09iTffbfS8y0rsbHeYNk9kQKqxqsBFn7pYFQ=; b=mxmfLZQJgXIywo
	wI0jkoXijwekztcjXtG9flAqKf3XpoJLmR9+JH74cvQi1gXxUi8DsAbB4E69SOnmyEq1DPZycfdDL
	AS8RMRv2F+9k0TDGOStZ22EUk3AUYlbiYGky3w2ols0+k1TicMdA1po9K8u2uRQwJxF5T0Q+5kY/l
	NOHfN+vCGTSX2Rd8aEGGidTSK4x4spdg5rc1gaHTPofkkZVMmtRHWCWw63lxu69DMkfHRXmqjl6Kz
	Y6khnwr6nf2RFaTyxC6gq3kMwAkswxo/CmfL/Hm5ekP1jA6qFMGsiciSdqqFQYIZ3MSYYoLK6B019
	K/CqserStu8dpsOPmNfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icAMR-0006XG-Ht; Tue, 03 Dec 2019 15:45:11 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icAM9-0006WI-8j
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 15:44:54 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id E047F804F;
 Tue,  3 Dec 2019 15:45:28 +0000 (UTC)
Date: Tue, 3 Dec 2019 07:44:47 -0800
From: Tony Lindgren <tony@atomide.com>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH] ARM: OMAP2+: Fix warnings with broken
 omap2_set_init_voltage()
Message-ID: <20191203154447.GC35479@atomide.com>
References: <20190924233222.52757-1-tony@atomide.com>
 <8FFD44DB-73F8-4807-91E1-C97DA8F781BA@goldelico.com>
 <20191202213929.GB35479@atomide.com>
 <EE749881-C3DB-4BBE-85FE-E5AF3D34884F@goldelico.com>
 <BAF5B057-1017-4174-8C3F-4B49B31E2E0D@goldelico.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BAF5B057-1017-4174-8C3F-4B49B31E2E0D@goldelico.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_074453_346823_EB291DA1 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Nishanth Menon <nm@ti.com>, Linux-OMAP <linux-omap@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Andreas Kemnade <andreas@kemnade.info>,
 =?utf-8?B?QW5kcsOp?= Roth <neolynx@gmail.com>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Adam Ford <aford173@gmail.com>, arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* H. Nikolaus Schaller <hns@goldelico.com> [191203 12:31]:
> Ok, dev_pm_opp_find_freq_ceil() is doing what it should do and it
> returns the first OPP higher or equal than the frequency passed in.
>
> The real reason for the warning is that the same OPP table is used
> for vdd_mpu_iva and vdd_core and it appears as if "core" (l3_ick)
> runs at 200 MHz which does not correspond to a valid OPP.

OK

> So to silcence the warning it suffices to remove
> 
> 	omap2_set_init_voltage("core", "l3_ick", "l3_main");
> 
> The question is now what l3_ick has to do with the OPPs at all
> and how it should interwork with OPPs and cpufreq.

So what changed then for iva in your configuration then?

At least I'm getting errors for both for 34xx and dm3730 with
Linux next and reverted commit cf395f7ddb9e ("ARM: OMAP2+: Fix
warnings with broken omap2_set_init_voltage()"):

omap2_set_init_voltage: unable to find boot up OPP for vdd_mpu_iva
omap2_set_init_voltage: unable to set vdd_mpu_iva
omap2_set_init_voltage: unable to find boot up OPP for vdd_core
omap2_set_init_voltage: unable to set vdd_core

Then for fixing this code, seems like this can all happen from
a regular device driver init based on the dts data.. We've had
PM init completely ignore these errors already for years so
whatever dependency there might be seems non-critical :)

> Or does all this mean we may need a second OPP fable for vdd_core
> and 200 MHz? But what would it be good for? I have not seen any
> reference for "core-OPPs" in the TRM.

OK yeah sounds like all the domains need an opp table.

Also, I recall some SoCs having a dependency between having to
run DSP at a lower rate for higher MPU rates, not sure if omap3
has such dependencies though.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
