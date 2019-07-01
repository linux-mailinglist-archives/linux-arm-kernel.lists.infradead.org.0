Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 476F75B384
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 06:26:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DpAe2w5oMERvaKQOTxebOy9uOYT5OrENMQC73vuwwGs=; b=KefSsNOiBdSeVI
	oVjhHSeHcZxrnYiLuIBalk4PHHy6I48iNJ44ZeCm3WJzeaExgQQBjI6SWzoD5izdcQSKbIDTtGFGd
	Fvm8zuhXBDR1wxvmzI1KfnxAsfnmqTC/8+h3bsMJKTPG97vEWgBC0OUtKzLJcGgoSRz04/wRLPwAn
	YP9UQD2zH918019lHhfo2qNW8C1cthTZ3hWn8gyOwVMRKMG49nmdd2NvvlvcLz+1ig5MIwF7Q32a9
	ivOyoGjWS0vab3EOtL+ZSjvS1uO2CJCZl6pVHuoqaVgkXnceyD72i5wx6NF/YbU2HtR2zeUY3jwTU
	rB7yyD7ByzZXWgcRS4Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhntA-0003X7-M5; Mon, 01 Jul 2019 04:26:00 +0000
Received: from mail-eopbgr710111.outbound.protection.outlook.com
 ([40.107.71.111] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhnst-0003Wc-Ku
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 04:25:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O+5ztHcB5/MWlAS3mC7dDWDzvuAkKVtBntRETHtGvR615+JetjEe0160wL3WxU7lKQd7mkQDMF8R4lHR2Xf8AbkAKeLzHeR8nZbrJLyiTECsgJmdM85ypvpgoKoRc/lo+GsWjeWDD5BcdYcZVZ1TgR4cYrXtKqc8Zdxbdg2r/8X8B3GjJ0B/dkwv8rYSX6PepqVopRFxsI/Hpff8YWzOBX3Nd+V+0GP+RNPJjSQ6kj8zMyjy3sJc8kuxmDd9YdQRea7OUxf8TMsNe8isU6oygyCrynuqVW6+vOIM/Z6SB8FaZMYlKxa7PWguFJyeL2ZslFHZYp3n5euCz/ClKn1OgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iUx8dYZJZoQZhtqoA5Q0kVb1rYbNVyU6TcS8PN0kZDY=;
 b=nvHekDrRmTL+n3q7KQMjd/qoye1pBXcrK8XncKydwHu5Q5GSyWhNavWlSLDEve13HiaSbNU7ahewpfsZyOnxk4QvyR3102sssw/VGqivwhDDQRXStA0M2ARaLFX8Xw3kHI/Iff+6jN2N2weMduJ3I3TVGZ4GuAzCOHEiJmER5PCg9RxXjee6EtrbSnWguE0yIZDBH56WN+l09A3Ri0wVD/v/Q73HacqUzs/Xm5q5tX4oHByuR8O5iq2lpl250SaZPYtFM4MpmMRm4yiROFjhUKku4OSB+DYpLXwznwt5z95rscfKmexQebRgz5f/I4U8RnTrwi2hkjjL+Li22RUMhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microsoft.com;dmarc=pass action=none
 header.from=microsoft.com;dkim=pass header.d=microsoft.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iUx8dYZJZoQZhtqoA5Q0kVb1rYbNVyU6TcS8PN0kZDY=;
 b=HhLOhuhXdJ8aM6VVJ4aJMFaZNgULHgw+IRxQml9gQpa1AHSEGwLGDXnMbpR5NokN6NBeIP7pgdccqTAmD7SrVmq6rh4d+ON89s+mH5fFBEM7wQcNRexHoKa42p7ZBcF3Gu4vjEkr7yBK2C4o8qnM6bAwjUtDaHOcBvTYBYTVwps=
Received: from BYAPR21MB1335.namprd21.prod.outlook.com (20.179.60.209) by
 BYAPR21MB1159.namprd21.prod.outlook.com (20.179.56.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.1; Mon, 1 Jul 2019 04:25:41 +0000
Received: from BYAPR21MB1335.namprd21.prod.outlook.com
 ([fe80::71df:6122:56a2:2a4f]) by BYAPR21MB1335.namprd21.prod.outlook.com
 ([fe80::71df:6122:56a2:2a4f%2]) with mapi id 15.20.2032.019; Mon, 1 Jul 2019
 04:25:41 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: "tglx@linutronix.de" <tglx@linutronix.de>, "mingo@redhat.com"
 <mingo@redhat.com>, "bp@alien8.de" <bp@alien8.de>, "x86@kernel.org"
 <x86@kernel.org>
Subject: [PATCH v5 0/2] clocksource/drivers: Create new Hyper-V clocksource
 driver
Thread-Topic: [PATCH v5 0/2] clocksource/drivers: Create new Hyper-V
 clocksource driver
Thread-Index: AQHVL8UKgEXPGJ6KoU20QYR9G1GCKQ==
Date: Mon, 1 Jul 2019 04:25:41 +0000
Message-ID: <1561955054-1838-1-git-send-email-mikelley@microsoft.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: CY4PR01CA0015.prod.exchangelabs.com (2603:10b6:903:1f::25)
 To BYAPR21MB1335.namprd21.prod.outlook.com
 (2603:10b6:a03:115::17)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [167.220.2.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 10c65511-f8aa-49bd-e704-08d6fddc2cea
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR21MB1159; 
x-ms-traffictypediagnostic: BYAPR21MB1159:|BYAPR21MB1159:
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <BYAPR21MB115912E3CA85AAFB1E06DA34D7F90@BYAPR21MB1159.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-forefront-prvs: 00851CA28B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(366004)(39860400002)(136003)(396003)(376002)(189003)(199004)(6436002)(54906003)(4326008)(316002)(110136005)(8676002)(10090500001)(6486002)(86362001)(81166006)(2616005)(476003)(486006)(81156014)(256004)(186003)(7736002)(2501003)(6116002)(3846002)(6512007)(36756003)(14444005)(66946007)(305945005)(73956011)(66446008)(66476007)(66556008)(64756008)(8936002)(22452003)(53936002)(4720700003)(25786009)(68736007)(26005)(99286004)(2906002)(5660300002)(50226002)(71200400001)(386003)(71190400001)(6506007)(10290500003)(102836004)(478600001)(14454004)(52116002)(2201001)(66066001)(7416002)(7406005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR21MB1159;
 H:BYAPR21MB1335.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: w2CeG83ZpwAQKnT3VJDdZ04wc8aIMQpQQPe9X7ul5S7jDQ9HcOwzfvWKkriE+sAAp8YvxMHZVS2QH8Ei8U4Yk07zQXw91r1mvunmpd7Rna4U0laXEMXO6BSdtwgnrgqQKVzXwyXCpDkSs2rCsZObWKxqIjFcuNVABjGCxMo7cofoRfHQHd+KL0ZmyVqGNaRbggRqXgYnEtX6t1zIGBKZzq6kkIkQaUdBr2s9JRy7CV/yfO/N/jPFL5QESa/w1Ag6hQs7X2KfHduTJdpegEdFkwxlsdhTxRdQu1JleJU4ow5qskQ4iF+wRB6Q/2I/eI09QBY/c/nK/whLG4HzDzHoVcx7njOmMMbBKjwio29xD4O2mTbK12t+7okF2MbZHNjcMTI82ssQMcj+Kg0GfmaYeSkfmfeMcUz2R49TqOCIGFI=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10c65511-f8aa-49bd-e704-08d6fddc2cea
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2019 04:25:41.1110 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lkmlmhk@microsoft.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR21MB1159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_212543_760666_E9426E2B 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.71.111 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "linux@rasmusvillemoes.dk" <linux@rasmusvillemoes.dk>,
 "rkrcmar@redhat.com" <rkrcmar@redhat.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "vincenzo.frascino@arm.com" <vincenzo.frascino@arm.com>,
 "shuah@kernel.org" <shuah@kernel.org>, "sashal@kernel.org" <sashal@kernel.org>,
 "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 KY Srinivasan <kys@microsoft.com>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "olaf@aepfle.de" <olaf@aepfle.de>, "arnd@arndb.de" <arnd@arndb.de>,
 "0x7f454c46@gmail.com" <0x7f454c46@gmail.com>,
 "apw@canonical.com" <apw@canonical.com>,
 Sunil Muthuswamy <sunilmut@microsoft.com>,
 Michael Kelley <mikelley@microsoft.com>, "pcc@google.com" <pcc@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "huw@codeweavers.com" <huw@codeweavers.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "ralf@linux-mips.org" <ralf@linux-mips.org>,
 "salyzyn@android.com" <salyzyn@android.com>,
 "paul.burton@mips.com" <paul.burton@mips.com>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>, vkuznets <vkuznets@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series moves Hyper-V clock/timer code to a separate Hyper-V
clocksource driver. Previously, Hyper-V clock/timer code and data
structures were mixed in with other Hyper-V code in the ISA independent
drivers/hv code as well as in ISA dependent code. The new Hyper-V
clocksource driver is ISA agnostic, with a just few dependencies on
ISA specific functions. The patch series does not change any behavior
or functionality -- it only reorganizes the existing code and fixes up
the linkages. A few places outside of Hyper-V code are fixed up to use
the new #include file structure.

This restructuring is in response to Marc Zyngier's review comments
on supporting Hyper-V running on ARM64, and is a good idea in general.
It increases the amount of code shared between the x86 and ARM64
architectures, and reduces the size of the new code for supporting
Hyper-V on ARM64. A new version of the Hyper-V on ARM64 patches will
follow once this clocksource restructuring is accepted.

The code is diff'ed against the upstream tip tree:
git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git timers/vdso

Changes in v5:
* Revised commit summaries [Thomas Gleixner]
* Removed call to clockevents_unbind_device() [Thomas Gleixner]
* Restructured hv_init_clocksource() [Thomas Gleixner]
* Various other small code cleanups [Thomas Gleixner]

Changes in v4:
* Revised commit messages
* Rebased to upstream tip tree

Changes in v3:
* Removed boolean argument to hv_init_clocksource(). Always call
sched_clock_register, which is needed on ARM64 but a no-op on x86.
* Removed separate cpuhp setup in hv_stimer_alloc() and instead
directly call hv_stimer_init() and hv_stimer_cleanup() from
corresponding VMbus functions.  This more closely matches original
code and avoids clocksource stop/restart problems on ARM64 when
VMbus code denies CPU offlining request.

Changes in v2:
* Revised commit short descriptions so the distinction between
the first and second patches is clearer [GregKH]
* Renamed new clocksource driver files and functions to use
existing "timer" and "stimer" names instead of introducing
"syntimer". [Vitaly Kuznetsov]
* Introduced CONFIG_HYPER_TIMER to fix build problem when
CONFIG_HYPERV=m [Vitaly Kuznetsov]
* Added "Suggested-by: Marc Zyngier"

Michael Kelley (2):
  clocksource/drivers: Make Hyper-V clocksource ISA agnostic
  clocksource/drivers: Continue making Hyper-V clocksource ISA agnostic

 MAINTAINERS                              |   2 +
 arch/x86/entry/vdso/vma.c                |   2 +-
 arch/x86/hyperv/hv_init.c                |  91 +--------
 arch/x86/include/asm/hyperv-tlfs.h       |   6 +
 arch/x86/include/asm/mshyperv.h          |  81 +-------
 arch/x86/include/asm/vdso/gettimeofday.h |   2 +-
 arch/x86/kernel/cpu/mshyperv.c           |   4 +-
 arch/x86/kvm/x86.c                       |   1 +
 drivers/clocksource/Makefile             |   1 +
 drivers/clocksource/hyperv_timer.c       | 339 +++++++++++++++++++++++++++++++
 drivers/hv/Kconfig                       |   3 +
 drivers/hv/hv.c                          | 156 +-------------
 drivers/hv/hv_util.c                     |   1 +
 drivers/hv/hyperv_vmbus.h                |   3 -
 drivers/hv/vmbus_drv.c                   |  42 ++--
 include/clocksource/hyperv_timer.h       | 105 ++++++++++
 16 files changed, 503 insertions(+), 336 deletions(-)
 create mode 100644 drivers/clocksource/hyperv_timer.c
 create mode 100644 include/clocksource/hyperv_timer.h

-- 
1.8.3.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
