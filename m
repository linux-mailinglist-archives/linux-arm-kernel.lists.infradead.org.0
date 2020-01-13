Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F9A13947D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 16:13:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h6I7Hv/teSlVXdosPulb/0OPyAvtwyFl62g3vu8NWZo=; b=cd3feM5ty5rvmg
	ZqyKFVnMDC+yVFr8U8penNr83xqOnWI3t6K9q0yE9n/A6rHcfe+NQbrRiqJ4nEeu0YF6tMUKAI/E2
	iKuDhdse5brHCwO4HFs6deT0yj988h0X7YYML7QCHoRsHMvkukRi+MiAhtT5mSG+f9PWvUUbmMZ8f
	n21Lx/7ppPD1lwlWGJQXredI1TwNVMLvI0sgvGvloVijT7NmO717ypkYOfwdnFv3SBv0KXzwT6aDo
	bY79omjUiGoDOZgJcNyUWsKBAj3fWeSesL14hXaY63TWFaHLvpFvXeCKGEIjiwejnMiPQNTHCFYvE
	qU5qpWPX/sqvrvLYY7Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir1PY-0003GS-Uf; Mon, 13 Jan 2020 15:13:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir1PL-0003Em-O3
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 15:13:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7625C11B3;
 Mon, 13 Jan 2020 07:13:32 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B01393F68E;
 Mon, 13 Jan 2020 07:13:30 -0800 (PST)
Date: Mon, 13 Jan 2020 15:13:24 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Rajan Vaja <RAJANV@xilinx.com>
Subject: Re: [PATCH 0/2] arch: arm64: xilinx: Make zynqmp_firmware driver
 optional
Message-ID: <20200113151324.GA8647@bogus>
References: <1578596764-29351-1-git-send-email-jolly.shah@xilinx.com>
 <20200110115415.GC39451@bogus>
 <BYAPR02MB4055B8A5ED27C2F23A28D8D0B7350@BYAPR02MB4055.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR02MB4055B8A5ED27C2F23A28D8D0B7350@BYAPR02MB4055.namprd02.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_071335_871027_B490D320 
X-CRM114-Status: GOOD (  16.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "keescook@chromium.org" <keescook@chromium.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "matt@codeblueprint.co.uk" <matt@codeblueprint.co.uk>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jolly Shah <JOLLYS@xilinx.com>, Michal Simek <michals@xilinx.com>,
 Tejas Patel <TEJASP@xilinx.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 13, 2020 at 06:46:52AM +0000, Rajan Vaja wrote:
> Hi Sudeep,
> 
> Thanks for the reviewing patch.
> 
> > -----Original Message-----
> > From: Sudeep Holla <sudeep.holla@arm.com>
> > Sent: 10 January 2020 05:24 PM
> > To: Jolly Shah <JOLLYS@xilinx.com>
> > Cc: ard.biesheuvel@linaro.org; mingo@kernel.org; gregkh@linuxfoundation.org;
> > matt@codeblueprint.co.uk; hkallweit1@gmail.com; keescook@chromium.org;
> > dmitry.torokhov@gmail.com; Michal Simek <michals@xilinx.com>; Rajan Vaja
> > <RAJANV@xilinx.com>; linux-arm-kernel@lists.infradead.org; linux-
> > kernel@vger.kernel.org; Sudeep Holla <sudeep.holla@arm.com>; Tejas Patel
> > <TEJASP@xilinx.com>
> > Subject: Re: [PATCH 0/2] arch: arm64: xilinx: Make zynqmp_firmware driver
> > optional
> > 
> > EXTERNAL EMAIL
> > 
> > On Thu, Jan 09, 2020 at 11:06:02AM -0800, Jolly Shah wrote:
> > > From: Tejas Patel <tejas.patel@xilinx.com>
> > >
> > > Zynqmp firmware driver requires firmware to be present in system.
> > > Zynqmp firmware driver will crash if firmware is not present in system.
> > > For example single arch QEMU, may not have firmware, with such setup
> > > Linux booting fails.
> > >
> > > So make zynqmp_firmware driver as optional to disable it if user don't
> > > have firmware in system.
> > >
> > 
> > Why can't it be detected runtime ? How do you handle single binary if you
> > make this compile time option ?
> [Rajan] There is PMU register which indicates if firmware is present or not,
> but in case of single arch QEMU that register will not be available so
> there is no way to detect if firmware is present or not from Linux.

I am still not that convinced yet.

> Linux firmware crashes while arm_smccc_smc() call for firmware, but before
> this call there is no way  to identify if firmware is present or not. So we
> are just giving user an option if they want to use it on single arch

So IIUC this platform used SMC as transport for EEMI communication. And
PSCI will act as bypass and send the command to PMU. If so why can't
platform PSCI implementation send error to OSPM if it is not implemented.

> Platform they can disable firmware driver.
>

Not an option. With this enable, single binary should work fine on both
QEMU and your platform with this EEMI firmware support. You need to find
a way to detect it dynamically.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
