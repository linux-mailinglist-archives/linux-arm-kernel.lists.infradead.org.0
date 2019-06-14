Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0611345B43
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 13:15:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dU5hwbuZOOOF1meA4pWSwcx8R+5ycQleWGKZYNsX/ok=; b=cL8+ft6qkVG2k5
	ThGg/LHOBvzRKQ2oUhLWnbNXLDQ8DGi2qFDK8lTgqWWiYGmBtSeYL7a2CdpoO0+TZdjyXjV1A9AgH
	zGyHmOAfJ7fSX+XfPYzfr1gXqtw3DSIqSEBUwdtqoR0s0zLx9LVXoWGYuAY5caWgbQDMtKpnWoXxS
	AQH1+iehLfGYdfT2q5H+0aM3q6y/wv3WX0ZSRcfYP4XSHw/JBt1mLBkTuz45HPFSU1mU/40+FCk7i
	VO67ed2GsksavHpzXu0Qy/QFDHenEx0OQgEAjkKFkjxYJAQSTUqR65UDyPVG/ZkNCpgEk9Y88poQf
	qv6CxyKrA/otvISQI1Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbkBD-0003DG-IW; Fri, 14 Jun 2019 11:15:35 +0000
Received: from galois.linutronix.de ([2a01:7a0:2:106d:700::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbkB4-0003CZ-9p
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 11:15:27 +0000
Received: from [5.158.153.52] (helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hbkB2-0000Rx-2w; Fri, 14 Jun 2019 13:15:24 +0200
Date: Fri, 14 Jun 2019 13:15:23 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Michael Kelley <mikelley@microsoft.com>
Subject: RE: [PATCH v6 18/19] x86: Add support for generic vDSO
In-Reply-To: <BYAPR21MB1221D54FCEC97509EEF7395CD7180@BYAPR21MB1221.namprd21.prod.outlook.com>
Message-ID: <alpine.DEB.2.21.1906141313150.1722@nanos.tec.linutronix.de>
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <20190530141531.43462-19-vincenzo.frascino@arm.com>
 <BYAPR21MB1221D54FCEC97509EEF7395CD7180@BYAPR21MB1221.namprd21.prod.outlook.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_041526_485741_2E229CF7 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:7a0:2:106d:700:0:0:1 listed in]
 [list.dnswl.org]
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Sasha Levin <sashal@kernel.org>, Shuah Khan <shuah@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Mark Salyzyn <salyzyn@android.com>,
 Huw Davies <huw@codeweavers.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 Paul Burton <paul.burton@mips.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 30 May 2019, Michael Kelley wrote:
> Vincenzo -- these changes for Hyper-V are a subset of a larger patch set
> I have that moves all of the Hyper-V clock/timer code into a separate
> clocksource driver in drivers/clocksource, with an include file in
> includes/clocksource.  That new include file should be able to work
> instead of your new mshyperv-tsc.h.  It also has the benefit of being
> ISA neutral, so it will work with my in-progress patch set to support
> Linux on Hyper-V on ARM64.  See https://lkml.org/lkml/2019/5/27/231
> for the new clocksource driver patch set.

Grrr. That's queued in hyperv-next for whatever reasons.

Sasha, can you please provide me the branch to pull from so I can have a
common base for all the various changes floating around?

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
