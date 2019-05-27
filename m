Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F38642B7F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 16:59:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WJVRmvD+JSbEttkUTw/R2+G67lCZLo9A8sxoDFPTj0Y=; b=AshbpTo2OLOIFh
	ljY1WGUxehVxRmO6D34B0EhpxofXyF5+9nCOZDhTdoJ69QgahdnsbSDLSGBuDcf6EFsMg8PCk3GWR
	n2wxQxrQsq/eI9BCQvl13TnKI3EcerMmezuiqra0amEgcVa1J1wifUXUsYnHaZBNV8CCgKGS9ZTvn
	mw6dNhAg+27wMCuZ903N5Lam67Uq4kAyMd1KUnfR6Gv0LTdO0R4doQyvePJ/nIhqbb2MqmyC1k8wN
	5hQwo6+9BThN7lxgY5EkiRkFh411DZZEVJ/Pcxuhij/y1DIByK4HBj52OTLMXeej3dZn/8hssrb0W
	ynjrsyjCSSH4SavTgP/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVH5q-0004d1-Ks; Mon, 27 May 2019 14:59:18 +0000
Received: from mail-eopbgr690122.outbound.protection.outlook.com
 ([40.107.69.122] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVH5i-0004cW-O7
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 14:59:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=testarcselector01; d=microsoft.com; cv=none;
 b=K7bk6mjGHdPEs9sk/AJliDTjXH3m7JXEhGjnRoesizLWVs/qPtjN6GUum+ckfFZCylDtW6lbboZ4F8Kq2EDGkbksjD99MxI1q13vFb2Yd6/LzXJtc0IImkgHQ64wDVjXbnDWk9MTlZCsOOav6saREntxhokrlZXEUFpGfdyRYzs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=testarcselector01;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dx1McZV10Dbv50irNymIpxFfBXCU9xkf8rQKB2clnuw=;
 b=vzqb+9xlp9VLtz7qWvq9OP8bqpSIpyMiipnuqST+e7/04pV6gjwdYKPdy6c3gKx9H0v+LTYACVITTAqmOIHagjUBjGmVK8WMp82BEtvi6i7CX3fwTOHyMkU3B/t6Eg2YW7D/sa7sp+K6dXA+4FhveDZ3b3dNdlgmBEJE85lfp1g=
ARC-Authentication-Results: i=1; test.office365.com 1;spf=none;dmarc=none
 action=none header.from=microsoft.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dx1McZV10Dbv50irNymIpxFfBXCU9xkf8rQKB2clnuw=;
 b=g7AG4hW+cx4OLFS4fu22qFJspCKsIcPvak5ZJeoDV3gNgeSQknJMtfnRytymiEEAJajU8Cc0JbL7Ikrj0BjWCHxdl1TwhSElngTZmzxP+oXoLQwfDJ0+q1nbx2mcjnfhb15TRgtdSPGRQY6vvq1QWJbdb7VGULDaVzjR9ynmMq4=
Received: from DM6PR21MB1340.namprd21.prod.outlook.com (2603:10b6:5:175::19)
 by DM6PR21MB1339.namprd21.prod.outlook.com (2603:10b6:5:175::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1878.9; Mon, 27 May
 2019 14:59:07 +0000
Received: from DM6PR21MB1340.namprd21.prod.outlook.com
 ([fe80::5057:9e3c:bcc5:9470]) by DM6PR21MB1340.namprd21.prod.outlook.com
 ([fe80::5057:9e3c:bcc5:9470%3]) with mapi id 15.20.1943.006; Mon, 27 May 2019
 14:59:07 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: "will.deacon@arm.com" <will.deacon@arm.com>, "marc.zyngier@arm.com"
 <marc.zyngier@arm.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-hyperv@vger.kernel.org"
 <linux-hyperv@vger.kernel.org>, "olaf@aepfle.de" <olaf@aepfle.de>,
 "apw@canonical.com" <apw@canonical.com>, vkuznets <vkuznets@redhat.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>, "marcelo.cerri@canonical.com"
 <marcelo.cerri@canonical.com>, Sunil Muthuswamy <sunilmut@microsoft.com>, KY
 Srinivasan <kys@microsoft.com>
Subject: [PATCH v3 0/2] Drivers: hv: Move Hyper-V clock/timer code to separate
 clocksource driver
Thread-Topic: [PATCH v3 0/2] Drivers: hv: Move Hyper-V clock/timer code to
 separate clocksource driver
Thread-Index: AQHVFJy7sYXmZFrIlU+IOwEBipERmQ==
Date: Mon, 27 May 2019 14:59:07 +0000
Message-ID: <1558969089-13204-1-git-send-email-mikelley@microsoft.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR12CA0056.namprd12.prod.outlook.com
 (2603:10b6:300:103::18) To DM6PR21MB1340.namprd21.prod.outlook.com
 (2603:10b6:5:175::19)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [167.220.2.136]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 08501eb8-cf98-4489-1bb8-08d6e2b3ddd8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DM6PR21MB1339; 
x-ms-traffictypediagnostic: DM6PR21MB1339:
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <DM6PR21MB1339947EECA183DFC1B9CE89D71D0@DM6PR21MB1339.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-forefront-prvs: 0050CEFE70
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(39860400002)(376002)(136003)(346002)(396003)(199004)(189003)(52116002)(7416002)(52396003)(64756008)(81166006)(14454004)(99286004)(6512007)(6436002)(2616005)(6636002)(71190400001)(256004)(53936002)(71200400001)(476003)(26005)(73956011)(66476007)(66446008)(6486002)(68736007)(8936002)(4720700003)(478600001)(1511001)(7736002)(66946007)(386003)(66066001)(66556008)(2501003)(2201001)(50226002)(54906003)(102836004)(22452003)(81156014)(305945005)(486006)(10090500001)(8676002)(186003)(316002)(25786009)(14444005)(3846002)(36756003)(4326008)(10290500003)(5660300002)(86362001)(110136005)(6116002)(86612001)(6506007)(2906002)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR21MB1339;
 H:DM6PR21MB1340.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: IG8cHeuFOe9Ty+IxWia9UPO0WOEupln0lvINV3Rs9K8AUzTUpQUknvmCEUm8j0Ee0iWEbAab/xbsmnqcL4kHe8xrN/rrDJ4j/obvVBOIyUFqY6tfbJOSppVjWSa6LryIBjeKjWHq1OL7H3oKE1u6boElIXGL18jMhCjiOOvnzgXoJGAxg4nu0j8B/tqovLX0R02le4HcEJNICZAuIYbBFheFaDVPVZMo5fVHA1lwfmcJEvH767fxH0SWpaSXHz0Q8nm1ku76xyL4OK9KDj38f0YsFr0bbJqSxNV3daQwdqOcLyVZR7wOxR/R4kbE9CVbwQMATN30qjZa4O43KXUIy71hzGDhKK6XdRgPRIOJTWlUIG2CkVpQrM2H4LP1csjPO4Wvd+vPpiPQyMolH+LY6aSgLvW+tcxzav0mOi+l73Y=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08501eb8-cf98-4489-1bb8-08d6e2b3ddd8
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2019 14:59:07.1266 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR21MB1339
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_075910_901395_CC9E6F42 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.122 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Michael Kelley <mikelley@microsoft.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series moves Hyper-V clock/timer code to a separate Hyper-V
clocksource driver. Previously, Hyper-V clock/timer code and data
structures were mixed in with other Hyper-V code in the ISA independent
drivers/hv code as well as in arch dependent code. The new Hyper-V
clocksource driver is ISA independent, with a just few dependencies on
arch specific functions. The patch series does not change any behavior
or functionality -- it only reorganizes the existing code and fixes up
the linkages. A few places outside of Hyper-V code are fixed up to use
the new #include file structure.

This restructuring is in response to Marc Zyngier's review comments
on supporting Hyper-V running on ARM64, and is a good idea in general.
It increases the amount of code shared between the x86 and ARM64
architectures, and reduces the size of the new code for supporting
Hyper-V on ARM64. A new version of the Hyper-V on ARM64 patches will
follow once this clocksource restructuring is accepted.

The code is diff'ed against Linux 5.2.0-rc1-next-20190524.

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

 MAINTAINERS                          |   2 +
 arch/x86/entry/vdso/vclock_gettime.c |   1 +
 arch/x86/entry/vdso/vma.c            |   2 +-
 arch/x86/hyperv/hv_init.c            |  91 +---------
 arch/x86/include/asm/hyperv-tlfs.h   |   6 +
 arch/x86/include/asm/mshyperv.h      |  81 ++-------
 arch/x86/kernel/cpu/mshyperv.c       |   2 +
 arch/x86/kvm/x86.c                   |   1 +
 drivers/clocksource/Makefile         |   1 +
 drivers/clocksource/hyperv_timer.c   | 321 +++++++++++++++++++++++++++++++++++
 drivers/hv/Kconfig                   |   3 +
 drivers/hv/hv.c                      | 156 +----------------
 drivers/hv/hv_util.c                 |   1 +
 drivers/hv/hyperv_vmbus.h            |   3 -
 drivers/hv/vmbus_drv.c               |  42 ++---
 include/clocksource/hyperv_timer.h   | 105 ++++++++++++
 16 files changed, 484 insertions(+), 334 deletions(-)
 create mode 100644 drivers/clocksource/hyperv_timer.c
 create mode 100644 include/clocksource/hyperv_timer.h

-- 
1.8.3.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
