Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E965A3B1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 20:34:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=//N8jE4SkwwhT+2C8argL+VzqZzEBWVHxImSB2/MRMQ=; b=kx9MUxFWUpM0ps
	PACKgWlcfJpYa6SzRufMb/RoKFYQN9UpkZy00D4zgddabKfprqjU+R8+T2AEcLj9ugyWqOGsTU4pz
	Ab9FERK8LhsKJRH1TMXcaxbn33JvS8i+N5x6dxygI30OzKNDX3OjGY0Kxl5dfcKOyh4up98A3CP9o
	V6kxMTiPf82FSYk9Y2CDmEuZyXjbzAHfnGZ8e3jxTgA8rsTf8enJLWpWRBp1zA3jrN1FMFr+34w2Y
	H9ipmeV4u18kksPvge/3GBrcUoeXuLZHmjVaeUclqfRqDZF506teefu9hxpD3CfnI4ih6rdzhK+98
	UeNM+hsTzcTjZeRnfbcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgvhJ-0007aO-Ri; Fri, 28 Jun 2019 18:34:09 +0000
Received: from mail-eopbgr770109.outbound.protection.outlook.com
 ([40.107.77.109] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgvh5-0007Yj-VB
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 18:33:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hwuSEc1a21ae+NZhQzAVbDuY8laT/xOpjo63M2q9Iyt9TropxbJpTJv23DAjwCKH62OhC8ivyo/jYR9bQAZi6dO7E/3wuadl81zjBKSRliZ99G324Zrj1U+G6wAExVFoZZ4fMBmmHofLEKMkV8yZwwNXn/nHGJOwAVWRYnKmqAg9s+g3u/uti1/9nLfJJtcsn/5+0b4BOtGm396ozOdhVnjgi8gocGH7uk9TVX7LD1AxEPCaXVE0+s1hwqV3naNQ7TGLu7PGUwsqfyHfkx9rWYW47XGZVwAV5gxwSBD2hW//GVy+Re7LY/a/YTyBagjGb3z3kr6M5EVzJKPvIuy2zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=34yH1k0ByhdX0SL4JskX1hR+6/uCYYhisYC1pTFuUq4=;
 b=Xve4PS/X1XNXJAfopXKb0kCcSw598S6J6rH0Fe3XPrlAd6e8bYkycCSEfpu+zywk8eAbP9jYG2DhjkdR7YoUzyG6SWwltDe2UrRzah2J0otJmN0ZCW8HKMExv2emm4eVN33YIP9g7lyoC8cRMGvjjCp46wZR7JxB2CUcO8Nf1NFvDqXlGEuekxd1lM8jpSccgnGMMBFXF7yWj+Nea8bdTI9t+WQo+V5qqKWx6q3e4vBshDdwuTmAq1s2ftuMb0swgNjfYsjo+PRV6mi6qfzumbw6zMKipOi8tSrA/70cJuI0B/7sZVrChwd8eZKEeODLkRAnCmFVepvJazBoz9+ZtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microsoft.com;dmarc=pass action=none
 header.from=microsoft.com;dkim=pass header.d=microsoft.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=34yH1k0ByhdX0SL4JskX1hR+6/uCYYhisYC1pTFuUq4=;
 b=T98Rkstw7eRVwCT/Ul/P3J1HWJqL/uvaH7BSd3tAi4eaS4iJQO4dpcq0FzcXgDVFMbs6RtRb0LttZnjE3o3mN9AYj9RnKXfJfFSNU0WNhAoaG21cySxTnZXCBfjl1LZ1uRvl7XeP5jHFh2tkY6trZdmCiWAhFGHnCxvCURjxGu8=
Received: from DM6PR21MB1340.namprd21.prod.outlook.com (20.179.53.83) by
 DM6PR21MB1145.namprd21.prod.outlook.com (20.179.50.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.4; Fri, 28 Jun 2019 18:33:50 +0000
Received: from DM6PR21MB1340.namprd21.prod.outlook.com
 ([fe80::c817:8ed1:5d04:5a95]) by DM6PR21MB1340.namprd21.prod.outlook.com
 ([fe80::c817:8ed1:5d04:5a95%6]) with mapi id 15.20.2052.005; Fri, 28 Jun 2019
 18:33:50 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: "tglx@linutronix.de" <tglx@linutronix.de>, "mingo@redhat.com"
 <mingo@redhat.com>, "bp@alien8.de" <bp@alien8.de>, "x86@kernel.org"
 <x86@kernel.org>
Subject: [PATCH v4 0/2] Drivers: hv: Move Hyper-V clock/timer code to separate
 clocksource driver
Thread-Topic: [PATCH v4 0/2] Drivers: hv: Move Hyper-V clock/timer code to
 separate clocksource driver
Thread-Index: AQHVLeAHtKnubHleu0muzknyz7e1vg==
Date: Fri, 28 Jun 2019 18:33:50 +0000
Message-ID: <1561746758-23216-1-git-send-email-mikelley@microsoft.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: CY4PR06CA0043.namprd06.prod.outlook.com
 (2603:10b6:903:77::29) To DM6PR21MB1340.namprd21.prod.outlook.com
 (2603:10b6:5:175::19)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [131.107.174.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a7da63b7-23c8-47ad-6e38-08d6fbf72a27
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM6PR21MB1145; 
x-ms-traffictypediagnostic: DM6PR21MB1145:
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <DM6PR21MB11450539151E6D2C2F579373D7FC0@DM6PR21MB1145.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-forefront-prvs: 00826B6158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(396003)(376002)(366004)(39860400002)(346002)(199004)(189003)(386003)(86362001)(2616005)(54906003)(256004)(110136005)(478600001)(316002)(7416002)(7406005)(6486002)(486006)(14454004)(50226002)(2201001)(52116002)(476003)(6512007)(99286004)(4720700003)(6436002)(10290500003)(53936002)(4326008)(22452003)(25786009)(305945005)(6116002)(102836004)(5660300002)(71200400001)(71190400001)(14444005)(26005)(73956011)(66556008)(64756008)(66446008)(66476007)(186003)(36756003)(3846002)(66946007)(6506007)(7736002)(8676002)(81156014)(81166006)(66066001)(2906002)(68736007)(2501003)(10090500001)(8936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR21MB1145;
 H:DM6PR21MB1340.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nwrSxzjT2z1O2DIkxuKdKVv1HHBcJz9ThYMHCx4x4zfDtBTqUU8S/LldNWxPAvecfduTgccH4S+9ckY0Bv7Oxvwk4NbZr6KhYb1sxus0/uERws1AIgrDBmeod439Uh4X+l5gKlDDbTVLSXN2Tbn/OpTkdCkZ8kqqXwp/ddL+C0G9cw8xIG1IxiTOugQVY2baqwGXJS3LXwnhVDB6jYOaGotpCjE984aBL1iUkyd7wm65Y9RHTwu7QZgk4bsD4Qq2gFCCFGq1hQeQ79Tq2Z0hng8ykXn1Mk4Wovu2Ix+YORhTU30ZB9+wsFBofkoBuV6SOuvuLt/GGH7uLwGNDWnU4WZ8Rk9ODP6YYnN0ZpWTT1rIARZQ2iAULIccOdyhFIpSeZObnb98caUD2qt7tKtRsMWpRNWmFaCD+ASt+bbTfH4=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7da63b7-23c8-47ad-6e38-08d6fbf72a27
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2019 18:33:50.3409 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lkmlmhk@microsoft.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR21MB1145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_113356_085000_D69D9084 
X-CRM114-Status: GOOD (  17.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.109 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
clocksource driver is ISA independent, with a just few dependencies on
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
  Drivers: hv: Create Hyper-V clocksource driver from existing
    clockevents code
  Drivers: hv: Move Hyper-V clocksource code to new clocksource driver

 MAINTAINERS                              |   2 +
 arch/x86/entry/vdso/vma.c                |   2 +-
 arch/x86/hyperv/hv_init.c                |  91 +--------
 arch/x86/include/asm/hyperv-tlfs.h       |   6 +
 arch/x86/include/asm/mshyperv.h          |  81 ++------
 arch/x86/include/asm/vdso/gettimeofday.h |   2 +-
 arch/x86/kernel/cpu/mshyperv.c           |   2 +
 arch/x86/kvm/x86.c                       |   1 +
 drivers/clocksource/Makefile             |   1 +
 drivers/clocksource/hyperv_timer.c       | 321 +++++++++++++++++++++++++++++++
 drivers/hv/Kconfig                       |   3 +
 drivers/hv/hv.c                          | 156 +--------------
 drivers/hv/hyperv_vmbus.h                |   3 -
 drivers/hv/vmbus_drv.c                   |  42 ++--
 include/clocksource/hyperv_timer.h       | 105 ++++++++++
 15 files changed, 483 insertions(+), 335 deletions(-)
 create mode 100644 drivers/clocksource/hyperv_timer.c
 create mode 100644 include/clocksource/hyperv_timer.h

-- 
1.8.3.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
