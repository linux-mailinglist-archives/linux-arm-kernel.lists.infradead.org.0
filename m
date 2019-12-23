Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2DF129B6F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 23:25:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n0AMLUEkTubcvI97zbDflEtaKc02LscrNrzGmBFlC0U=; b=noM3A63HV9qxpQ
	f9gJqqDlLsdL3UntNPWlju+b7hJawGvdbKrXbqadX3k0U1P7JbTp+6UFoMQMvo4yt9fnZx4ICFC6h
	cjmviebsw/8VVGd2DSc0nA3t327crOCE6QjN2gleppfGLtnFuTW99bCFxaYyCP+GCIk+Q0q1cn4iw
	tRxqHwbYk2+ypcYvbAyHkSMJRzJF41k2vHCv926SkrobxB0eb9tgXJ66Owp2Rk6tkK9K/evotAZkq
	OaVhtptSZhUHJ+h2DhfcgiPCZw6kDuMHfGXDvXyLdV/4OeLBg1zsasQCx5rB71GkCkNpRBvpj4wIi
	dEwnzNLWBAYsDShnc+vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijW8b-0006nx-4O; Mon, 23 Dec 2019 22:25:17 +0000
Received: from rcdn-iport-6.cisco.com ([173.37.86.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijW8N-0005rM-E0
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 22:25:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=10760; q=dns/txt;
 s=iport; t=1577139903; x=1578349503;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UtHftuuM5r1xzorp0jcObdEdOrjvK3RlVK00d2DVnUw=;
 b=JvNsorH+6hUftKe/MVs8SNQe4g0l45wfE0V8cOthWgI5oVI6f3exXY4O
 0CzoIEIwMCsgA5UvqRgMGBIIMF29igCcnq3N4nZZGm6YSOkPNcjqCyc8V
 XqiQEba0OBAxnMdos/cFe10Zx7LF/xbQBMyIqqgg8UD5uGTc+B7JIBzrs 0=;
IronPort-PHdr: =?us-ascii?q?9a23=3AXjrw4RRtUKhHRX4LtoM0I5zI7tpsv++ubAcI9p?=
 =?us-ascii?q?oqja5Pea2//pPkeVbS/uhpkESXBNfA8/wRje3QvuigQmEG7Zub+FE6OJ1XH1?=
 =?us-ascii?q?5g640NmhA4RsuMCEn1NvnvOjc5Fd5DUVZv13q6KkNSXs35Yg6arw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0CjBQB2PQFe/4MNJK1kHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgXyBUiQsBWxYIAQLKgqDfoNGA4p5gl+YCIJSA1QJAQEBDAEBIwo?=
 =?us-ascii?q?CAQGEQAIXggckOBMCAw0BAQQBAQECAQUEbYU3DIVeAQEBAQIBEhERDAEBNwE?=
 =?us-ascii?q?ECwIBCBIGAgImAgICMBUCDgEBBAENDQwOgwGCRgMOIAECDKF4AoE4iGF1gTK?=
 =?us-ascii?q?CfgEBBYE1AYNmGIIMCRR6KIwZGoFBP4FYgkw+gmQDgTsBKBWCeTKCLJA6nWZ?=
 =?us-ascii?q?0CoI0hzOFO4lGgkZ2hwWQFo5SiFKSBAIEAgQFAg4BAQWBaSKBWHAVgycJRxg?=
 =?us-ascii?q?NjRKDc2qJaXQBAYEmjH4BJ4ELAYEPAQE?=
X-IronPort-AV: E=Sophos;i="5.69,349,1571702400"; d="scan'208";a="690937566"
Received: from alln-core-1.cisco.com ([173.36.13.131])
 by rcdn-iport-6.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 23 Dec 2019 22:25:01 +0000
Received: from XCH-RCD-002.cisco.com (xch-rcd-002.cisco.com [173.37.102.12])
 by alln-core-1.cisco.com (8.15.2/8.15.2) with ESMTPS id xBNMP1lS026089
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Mon, 23 Dec 2019 22:25:01 GMT
Received: from xhs-rcd-001.cisco.com (173.37.227.246) by XCH-RCD-002.cisco.com
 (173.37.102.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Mon, 23 Dec 2019 16:25:00 -0600
Received: from xhs-rcd-003.cisco.com (173.37.227.248) by xhs-rcd-001.cisco.com
 (173.37.227.246) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Mon, 23 Dec 2019 16:25:00 -0600
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (72.163.14.9) by
 xhs-rcd-003.cisco.com (173.37.227.248) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Mon, 23 Dec 2019 16:25:00 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ERShqQwHTVwfl/15IGuJ1NqOEdt9U3KDjue7q5+JAAbkma8HeW+qGnZPZNhDNDW0IIX6ozG9rRERZZgaOtsJWdlFibJ+EMHmuQwfpI/9kXOc0KW5/OgC11LYlUs/V8wJiT2OHE0VEo82ctjBS62SWH7jP7nbULKusHhbBMv9ZVe5EjDAD4kVb9Lq8rWfjhS6cOYhcjFRflsmwgFz5dOI7L/gnID+iOOiqF6sEq1HuW0VM9PSl86S4MpD/CVa09/5U4PwhgZyUztEZ3BpnGseDX81Bbi4Vac0ZJYEtQbmeDYIvjGU9GS/iyWYxJ2ZMfliYosf1vhwfEPSwCVFPRtiyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UtHftuuM5r1xzorp0jcObdEdOrjvK3RlVK00d2DVnUw=;
 b=TMfQFO1HW+nq7xrq8T4hMalG1x0oV5nx78l2TOaY9grtLAqOXBz11VRcPmU8nTn2ujRZ121fKbdD4XoL/jpLQp4QYRUw19F3n5y3vXDxGgnNBWjTHixvsm/bBK145/6LG5tNwIDsRS1xwD+YUfF3d+1Nx2BzaXW+YQGMJRVmWjHXmcIByCK++ztGoVjN6Q+Zgnru3S2cIwL8tw8BPiURCAawuRv0fnnfDJJ+QbXOah8jWOKqTld4jLIy6vBJUCHR+Eomez4/wJyK3aLxFFTrUz3PZegf6koiBWDdYfK9r2W95/RuCB3J4CWZ5Cq62Az+GUXUSrEW8SxIb48hjEBTUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UtHftuuM5r1xzorp0jcObdEdOrjvK3RlVK00d2DVnUw=;
 b=PXZBGx10rxlasYie3yoIRSiGXh0cL22wdwjZzZksBzotkBfe0qdwSlzDl7M5QH1s/89iQ8/IvYP3U96G/NbNXFcrFnnnEMF5gvkSTyRo7jpiAxsRhDP3MBBKeaT6zKzkTQ9uaYBl2bA7nARFYUQmTyPyPXALqEbLhVZO7tamAOg=
Received: from BYAPR11MB2582.namprd11.prod.outlook.com (52.135.229.149) by
 BYAPR11MB3048.namprd11.prod.outlook.com (20.177.225.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.19; Mon, 23 Dec 2019 22:24:58 +0000
Received: from BYAPR11MB2582.namprd11.prod.outlook.com
 ([fe80::a963:79bc:32a5:6f48]) by BYAPR11MB2582.namprd11.prod.outlook.com
 ([fe80::a963:79bc:32a5:6f48%5]) with mapi id 15.20.2559.016; Mon, 23 Dec 2019
 22:24:58 +0000
From: "Saeed Karimabadi (skarimab)" <skarimab@cisco.com>
To: James Morse <james.morse@arm.com>, Catalin Marinas
 <catalin.marinas@arm.com>
Subject: RE: Arm64 Crashkernel doesn't work with FLATMEM anymore
Thread-Topic: Arm64 Crashkernel doesn't work with FLATMEM anymore
Thread-Index: AdW0bU4PM3g/9KC9STy6zefeuZgKiADAawuAAJN7e4A=
Date: Mon, 23 Dec 2019 22:24:57 +0000
Message-ID: <BYAPR11MB2582B5FE87A72352E6A8C2F6CC2E0@BYAPR11MB2582.namprd11.prod.outlook.com>
References: <BYAPR11MB2582CB879F0B7DE06A351685CC500@BYAPR11MB2582.namprd11.prod.outlook.com>
 <c4d7ea82-7736-4cbd-4568-83473a7c2d11@arm.com>
In-Reply-To: <c4d7ea82-7736-4cbd-4568-83473a7c2d11@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=skarimab@cisco.com; 
x-originating-ip: [128.107.241.175]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7b72780b-06a8-4f24-966e-08d787f6f19d
x-ms-traffictypediagnostic: BYAPR11MB3048:
x-ld-processed: 5ae1af62-9505-4097-a69a-c1553ef7840e,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB304803BE613CF67E23DBF6A7CC2E0@BYAPR11MB3048.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0260457E99
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(366004)(396003)(376002)(346002)(189003)(199004)(86362001)(71200400001)(6506007)(66476007)(76116006)(54906003)(66556008)(7696005)(2906002)(81166006)(186003)(81156014)(53546011)(52536014)(66946007)(8676002)(478600001)(316002)(110136005)(966005)(66446008)(64756008)(26005)(33656002)(55016002)(8936002)(4326008)(5660300002)(9686003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB3048;
 H:BYAPR11MB2582.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IVo9RQ19YhKWrX2f+hhvRYB4BrSwFL9rscKtLn/1BuFQeQVObP9eCqU8DXaZ1O/UKg5tmgfBWcocDXXC9gyB2xW2+CaKNQWBl6UG2k0FYhL+eeakANQa7iM9nmzST6s2EIEcrutiaYvpu0ghaxTN5ooynwcIf/BZQqkApU6bUBvKFr8SVW4DYiznufW5t5rDjIvt+NR/sVm8NT4ddHJUPFV2BJqDfuRXGlttJt4pv8jZSNOgNCIiZbtX1cVuo7QFirXdwtqYL4eQYbSQnqLiKtn50ba8gw4lBA5PtfIqe52qw9QCW5m0oqbXCssG+IJ1zpFvDf4bHLwsWTsfDAQL7xDsX4dxyDPQ1+/t82tjmG3I0EjD94hLoTW0dyYGnU/nOSLRduyHc6dG8QSadluWUK2GEORyRBrwVEavdThW1eNc4iJtLb+EnCnjCf4alHDWir04OJg5Z0cM/ZYot3cRBzuFGsxJMAEoSbV4kc+6KO4=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b72780b-06a8-4f24-966e-08d787f6f19d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2019 22:24:57.9247 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Jk985mOVbqhtB7BNbfVjQmSrIlTjMuuqmLSD4Klks+sM/acKMYJeLy6pZkmatGo6krAqi6A7m/9nV49hEIOYaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3048
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.37.102.12, xch-rcd-002.cisco.com
X-Outbound-Node: alln-core-1.cisco.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_142503_667204_CFE2156C 
X-CRM114-Status: GOOD (  28.75  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [173.37.86.77 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [173.37.86.77 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "xe-linux-external\(mailer list\)" <xe-linux-external@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

Thank you for your detailed analysis, please see my comments inline.

On 20/12/2019 11:52 AM  James Morse <james.morse> wrote:
> On 17/12/2019 00:02, Saeed Karimabadi (skarimab) wrote:
> > Crash dump  Kernel doesn't work with FLATMEM memory model since version 4.11.0-rc3 and it
> v4.11? FLATMEM wasn't enabled until e7d4bac428edb in v4.19!
> Kdump support wasn't added until v4.12. Catalin's pull request here:
> http://lkml.iu.edu/hypermail/linux/kernel/1705.0/03077.html
> 
From upstream point of view your are right, flatmem was not enabled publicly until  e7d4bac428edb
in v4.19 but historically, e7d4bac428edb was introduced by one of my colleagues in cisco and we had
that patch and flatmem enabled in our local repositories since  kernel v4.4 ( plus some of the necessary kdump
patches from Catalin's pull request cherrypicked from v4.12 to v4.4 ). With this combination, crash kernel was 
working fine and it would collect the core file and with gdb we were able to decode the core file.
But despite our custom configuration, as you mentioned this flatmem issue should be observable to the open source
community since version 4.19.

> > FLATMEM memory model is very useful for systems with limited memory resources where it is 
> > desirable to reserve as minimum as possible memory for the crash kernel.
> (I'd love to know how FLATMEM affects this... but we can save that for later)
 
One of the main reasons we started using flatmem was to save memory on resource-constrained platforms and we could save
up to ~14 MB by switching to flatmem. On a board with an arm64 processor with 2GB of ram, The crash kernel with FLATMEM only 
needs 32MB of reserved memory to collect the core while with SPARMEM, the kernel on the same hardware won't boot with 
32MB reserved memory and we have to increase it to 64MB to get it working.  (the actual number is ~42MB but then we would 
need some extra memory for user space e.g. makedumpfile and etc ). I'm not sure but Sparsmem may need more memory to construct 
and keep its data structures.

> > -- Crash Dump Kernel starts here--
> > [    0.000000] Booting Linux on physical CPU 0x0000000000 [0x411fd070]
> > [    0.000000] Linux version 5.5.0-rc1 (user@host) (gcc version 4.7.0 (GCC)) #163 SMP PREEMPT Tue
> Dec 10 11:12:37 PST 2019
> 
> gcc 4.7!
> 
Right, this kernel was built on one of the older build machines but we have had similar panic issue with kernels built 
by gcc  8.2 and newer.

> > [    0.000000] efi: Getting EFI parameters from FDT:
> > [    0.000000] efi: UEFI not found.
> Hmmm,
The bootloader is not UEFI but it would pass the KASLR_SEED via device tree.

> I've managed to reproduce something like this. In my case its trying to zero a bogus
> struct page.
I think you have reproduced the same issue. In my case also kernel is trying to memset zero the first pfn struct page 
with a bogus address.
 
> 
> > FLATMEM became broken after submission of these two patches:
> > commit 8f579b1c4e347b23bfa747bc2cc0a55dd1b7e5fa      arm64: limit memory regions based on DT property, usable-memory-range
> > commit a7f8de168ace487fa7b88cb154e413cf40e87fc6       arm64: allow kernel Image to be loaded anywhere in physical memory
> 
> Those commits are in v4.12 and v4.6 respectively.
> FLATMEM wasn't enabled until e7d4bac428edb in v4.19.
> By 'after', you mean 'because of'?
As I mentioned in my earlier comment we had FLATMEM enabled in our local repositories since v4.4. here I tried  to use " git bisect" to find out
which commit would cause the panic. And my finding is that because of the 2nd patch "a7f8de168ace487fa7b88cb154e413cf40e87fc6" where 
memstart_addr has been introduces, the logics for page_to_pfn() and pfn_to_page() are broken with flatmem layout.
 
> Given the order of events here, 'FLATMEM has never work for kdump' seems a fair summary.
That is a fair statement.  It was working for us because we had v4.4 as a base release and we just cherry picked some of the patches from 4.12 and 4.19.

> > It looks like in expansion of the pfn_to_page() macro, if the kernel start address is not 1GB
> > aligned, this part of macro ((pfn)-ARCH_PFN_OFFSET) can create a huge offset from the base address
> > of mem_map which will cause the calculated page address to point a location outside of the
> > available memory boundaries.
> 
> huge offset is the cause of the problem here. ARCH_PFN_OFFSET comes from memstart_addr.
> 
> We use memstart_addr is for shifting memory's physical addresses to their offset in the
> linear map's range. Otherwise if memory started at 0x8000000000, we'd always lose a chunk
> of address space because of this.
> 
> CONFIG_RANDOMIZE_BASE tinkers with this to randomise the placement of memory in the linear
> map's range.
> 
> Catalin found disabling CONFIG_RANDOMIZE_BASE solved the issue for him. (evidently
> kexec-tools is passing a random seed for kdump).
> 
> Do you have this option enabled in your kdump kernel?
CONFIG_RANDOMIZE_BASE is enabled in our main kernel but not in the crash kernel. For the main kernel we have to support KASLR and that is why 
we need to keep this option enabled.

> 
> The values are getting unbalanced because of FLATMEM's __page_to_pfn(). In particular
> index-0 in the mem_map array causes it to return ARCH_PFN_OFFSET which leads to
> memstart_addr, which is a value that may have been modified by CONFIG_RANDOMIZE_BASE.
> 
> FLATMEM's __page_to_pfn() can ignore KASLR because its page and mem_map both exist in the
> randomised linear map.
> Instead it wants to know memblock_start_of_DRAM() so the first DRAM page is index zero in
> the array.
> 
> I think ARCH_PFN_OFFSET's meaning is different for FLATMEM.
> 
> Ugly hack[0] works for me. With this page_to_pfn() and pfn_to_page() seem to be producing
> better results.
> 
I'll test it and will share the result.

> But! There are bigger problems here. memstart_addr starts out as memblock's idea of the
> base of DRAM after kdumps usable-memory-range restrictions have been applied.
> 
> memblock_cap_memory_range() wont remove nomap blocks. We need to remember these are
> memory, and they are nomap. Drivers depend on this when they want to use some exotic
> memory-attributes later on. (is it memory? yes, do we have it mapped with conflicting
> attributes? no)
> 
> These nomap blocks do influence memblock's idea of the base of DRAM meaning you can get a
> large hole in the flatmem mem_map...
> 
> For kdump on Seattle, I see:
> | memblock_cap_memory_range(0x80bfe00000, 0x40000000)
> 
> but
> | memblock_start_of_DRAM == 0x8000000000
> 
> which is well below the first page.
> 
> Because of these nomap memblocks, I don't think kdump is isolated enough from the systems
> memory map for the flatmem illusion to hold just because its kdump. You still need to
> access firmware table that describe the system, as well as any memory that was reserved
> with mechanisms like this. This exposes you to the platform's not-really-flatmem memory
> layout.
> 
> I think the real fix here is to remove FLATMEM.

It looks like major part of the arm64 architecture development has been done by using the sparsemem layout as the default 
memory layout and now if one wants to fix the FLATMEM, many low level code areas needs to be touched.
With presence of above problems with flatmem, I'm wondering if there is any possibility of using SPARMEM for crash kernel 
but still keeping the memory footprint as low as possible like what one can achieve with flatmem? 
For example is it possible to reduce the amount of memory SPARMEM is using for its internal data structures or to keep track 
of different memory zones? Or any other suggestion of reducing the total memory size for crash kernel ?

Thanks,
Saeed

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
