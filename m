Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C92B1A4B42
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 22:39:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fv7Nz8HCOGOLK52cb8I+mv/DAoPXXLCr8YqU0YD7ujU=; b=BwghczIrnnXGW7
	1IoNoqHvEWIQWLCnfJhEZuWj48RyF4EIoQAQK8Z58IsJQQkNgxmZJ9xHhnPtQSiTsrvlkeh69N15p
	W2UNRCHpYc6a6ECGzm/zH/bO/fI56YqBtySO4ayt8J7hidPmvSXy+DVhG9ghhkkRtVx2oCExaaxMR
	JMivFVHG6yZ0HQOiowukEaka3CZ4UgCX9v9nEY574PxP//c+O+4k4DVIkXxmrAa4n5J4PNTYaGEEU
	LvayHMwabsGFSRm6M8ZwClhTQyf/TT5iHdAU8Zyteopj/LNSmKl2Blsr1hFpOenjF+M3h/AHcyA0g
	biKarlJ0tCdw3oKTArWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jN0R7-0006P9-5g; Fri, 10 Apr 2020 20:39:37 +0000
Received: from mail-bn8nam11on2117.outbound.protection.outlook.com
 ([40.107.236.117] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jN0Qw-0006OY-SM
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 20:39:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kaSjwy52vvLHIdWZtF+hFsylnh+qxrspqh0IwLAIitq9VP+NGfoOrhn1ar5VK8S1smSEyW565ysFwNIt5jwmFL6hzpRLe4nIchjiVAbpf4nVdkaVKYY+eRfyOPi5HHeR20iQayViVbEcU8sf6DOdZDg0Yn7vh1fWoPqE2vialpisrKAoMAcdi3NUSoO/0CUvjz6RG4gdBkhBESJH3g3UevXBytf4+2OYxWskSYDMx0C52TIQ/UQ5IKw4d0ygOACIoKu6z5OrOAt1N7umkuMVhMJnq5C783W5JWYLEIo7wdmgYYzAEH0lFFA4MniyeSqnLz8A6pLcRSnwRy6vHY/qcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HoToauhBYeB3BuJLG+DYNXlchkH32OndZ8w44wnlo3k=;
 b=ALXXbU1PrXLLn0AlTjp+RyQBOeDbH29ZkkLS9SOP35StSLMC2Uev3P9pPriLU3lgSdujmaFl60sAlNr5xezzKzDD/Kbd3Gldu8KWimxNEeQ+oXvTjMuLh+zBN7HZgxpu4VB7SsWypTcYpGE4gRZK/QvfkrIjYMLrlf+jL4wi/B2SiJVXNyOyIMvY/WEiCuLdddZ6XTUeKdicEJT+BOEA9umJmyn+1Y7XZU14s3JToRm0auRp3lvLHlDwEX5emFdOqz4UmPDI/YPMtM7nkqv6yTph3cVJWiwn/3wqRBruRxfvhEo+hUlShjuKLQ00y/kGY3zVPdMXNABN25hU7yHPXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HoToauhBYeB3BuJLG+DYNXlchkH32OndZ8w44wnlo3k=;
 b=HIwwiQfCsMTuKpMCttUu9DBlkiPnoaXTWYPJ0UqwemwR+8BZYXh7AqXqMmPrm+iPpoTC9H9PPaj90l1fh3r9yaSdRi/05cWWj7Ac4f/qG7UWDGiQLAZcCA/Bwrsd4El68Pw2Vx6sTlSHr4KuZmi01uc5DBmyiqGNpzF8PTJL3TY=
Received: from DM5PR2101MB1047.namprd21.prod.outlook.com (2603:10b6:4:9e::16)
 by DM5PR2101MB1110.namprd21.prod.outlook.com (2603:10b6:4:a5::39)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.3; Fri, 10 Apr
 2020 20:39:23 +0000
Received: from DM5PR2101MB1047.namprd21.prod.outlook.com
 ([fe80::f54c:68f0:35cd:d3a2]) by DM5PR2101MB1047.namprd21.prod.outlook.com
 ([fe80::f54c:68f0:35cd:d3a2%9]) with mapi id 15.20.2921.009; Fri, 10 Apr 2020
 20:39:23 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: Christoph Hellwig <hch@lst.de>, Andrew Morton <akpm@linux-foundation.org>, 
 KY Srinivasan <kys@microsoft.com>, Haiyang Zhang <haiyangz@microsoft.com>, 
 Stephen Hemminger <sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>, 
 "x86@kernel.org" <x86@kernel.org>, David Airlie <airlied@linux.ie>, Daniel
 Vetter <daniel@ffwll.ch>, Laura Abbott <labbott@redhat.com>, Sumit Semwal
 <sumit.semwal@linaro.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Minchan Kim <minchan@kernel.org>, Nitin Gupta <ngupta@vflare.org>
Subject: RE: [PATCH 20/28] mm: remove the pgprot argument to __vmalloc
Thread-Topic: [PATCH 20/28] mm: remove the pgprot argument to __vmalloc
Thread-Index: AQHWDZ16T10FJHa5qkmQBiTBI7lC0ahy1JXA
Date: Fri, 10 Apr 2020 20:39:22 +0000
Message-ID: <DM5PR2101MB10472EA3373D4D1A73AC0F7ED7DE0@DM5PR2101MB1047.namprd21.prod.outlook.com>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-21-hch@lst.de>
In-Reply-To: <20200408115926.1467567-21-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=mikelley@ntdev.microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2020-04-10T20:39:20.2356348Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=4bc76ec5-07a6-47b3-a0ad-cdf0dc769870;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-originating-ip: [24.22.167.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8eebaa48-c873-4038-513f-08d7dd8f40ce
x-ms-traffictypediagnostic: DM5PR2101MB1110:|DM5PR2101MB1110:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR2101MB1110D9F93961892981A81C5DD7DE0@DM5PR2101MB1110.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:49;
x-forefront-prvs: 0369E8196C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR2101MB1047.namprd21.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(346002)(366004)(376002)(396003)(136003)(39860400002)(8676002)(86362001)(8936002)(66476007)(8990500004)(7696005)(66946007)(71200400001)(81156014)(66446008)(54906003)(66556008)(64756008)(10290500003)(478600001)(7416002)(110136005)(316002)(76116006)(6506007)(33656002)(4326008)(82950400001)(55016002)(52536014)(186003)(2906002)(82960400001)(26005)(9686003)(5660300002)(921003)(1121003);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qrCPnCPp+Ms5eFpNc+uE3nriH+Pey6ezal8zhmYSgPIUJQ3etmXUWaLwfwplCD+Ux/za0JBzwO098D2FgfKB7OpojK71QED/2EYd/2QY08KeyW//+zmo2A6ZW9EV+Qq3KewIMzdu+PRiGb2fZoCjq+CW/K/yvDS3VU3bOYfwNJet0mBCwR+ECLPq9FNgCL1ybGOQHScrvY6Ep8ARIdFbZasDCgcVF2gAnUV3MJHCCYoXO9s0rDjI2NwMOJXyG1DFhm6bDrxTDzZvvHJLhXhCAS4MZN4QtTVk6mD3/hATg6fIXaecU4z5+FFOGbxcZmM0qiy278572y1fShhglMgCim9ycKMfYRgC64e3LHeD7LYxph0S9BfhRoG+zJSstSOLRo15Ngk6K18XqfHHI83Nnr1nCnkwlKdy3K5mLiliuyiCaaAQ+XAnJGzNTteVh7sM3BGZJ9L9k6EuAD2hkOzfZtSDvOJKy3HdjG3bAbk9+do9LdtDlzVTQkWchiaDd6vS
x-ms-exchange-antispam-messagedata: 2zSQnUGFQyGSIZyjV8zmFy4O0+N9T8YeqzYzFx5WSukNTCQkoNBdAVfLX6BSX+ChCAvD4gGVSkvg6HGIrg+8M3Y/WQ0AVssORU89AKIUaSSrWJbhBv0/2Yh6a0UKriNrywdokZvMloASZYaVIcrTSQ==
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8eebaa48-c873-4038-513f-08d7dd8f40ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2020 20:39:22.6433 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j0ryeNHVOwrByWoWAqYAZVYhAQZ8fx3teihoxzqpnRd3QTOGMyhID9lRwDcFDF8ZYmG1gLPBZUUxrUv7DYY8mpAbqaqvz8dUSTLPn3WUfNg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR2101MB1110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_133926_999168_0E096000 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.117 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Christoph Hellwig <hch@lst.de> Sent: Wednesday, April 8, 2020 4:59 AM
> 
> The pgprot argument to __vmalloc is always PROT_KERNEL now, so remove
> it.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/x86/hyperv/hv_init.c              |  3 +--
>  arch/x86/include/asm/kvm_host.h        |  3 +--
>  arch/x86/kvm/svm.c                     |  3 +--
>  drivers/block/drbd/drbd_bitmap.c       |  4 +---
>  drivers/gpu/drm/etnaviv/etnaviv_dump.c |  4 ++--
>  drivers/lightnvm/pblk-init.c           |  5 ++---
>  drivers/md/dm-bufio.c                  |  4 ++--
>  drivers/mtd/ubi/io.c                   |  4 ++--
>  drivers/scsi/sd_zbc.c                  |  3 +--
>  fs/gfs2/dir.c                          |  9 ++++-----
>  fs/gfs2/quota.c                        |  2 +-
>  fs/nfs/blocklayout/extent_tree.c       |  2 +-
>  fs/ntfs/malloc.h                       |  2 +-
>  fs/ubifs/debug.c                       |  2 +-
>  fs/ubifs/lprops.c                      |  2 +-
>  fs/ubifs/lpt_commit.c                  |  4 ++--
>  fs/ubifs/orphan.c                      |  2 +-
>  fs/xfs/kmem.c                          |  2 +-
>  include/linux/vmalloc.h                |  2 +-
>  kernel/bpf/core.c                      |  6 +++---
>  kernel/groups.c                        |  2 +-
>  kernel/module.c                        |  3 +--
>  mm/nommu.c                             | 15 +++++++--------
>  mm/page_alloc.c                        |  2 +-
>  mm/percpu.c                            |  2 +-
>  mm/vmalloc.c                           |  4 ++--
>  net/bridge/netfilter/ebtables.c        |  6 ++----
>  sound/core/memalloc.c                  |  2 +-
>  sound/core/pcm_memory.c                |  2 +-
>  29 files changed, 47 insertions(+), 59 deletions(-)
> 

For Hyper-V changes,

Reviewed-by: Michael Kelley <mikelley@microsoft.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
