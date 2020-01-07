Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F24F9132E4A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 19:22:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ErsaP/YgIlP+B+u5vNl+ylSlzxOPuRhyL8B/kVOPJ+4=; b=MrhM9dIDTOoGLu
	B80OYJZG66oPPd+/U7Y9zudwPk8EhJM4tlCIqYQXr2+ou0JG7j2Mfa2RLVEoY6XezZrIqDOSLKKfS
	Ep9P8JUHYks7vGNyt54vYxShe8VSGamYMPA4wp5soikjP9clx158DMcX1FZ47eUVX0m0GecIU/CjM
	tF1GjL5T3w+1WP/KemQgArCh35n1AxYHhLyENWs5rRNdzhklxjyOJGnp7q6Lttbw7u8hnORfquwIE
	N8K1/rcM11rpKLGZYy81EfBd0wK2UcWgo1+4NcG8sXuKB5RlmSnMoMfcYYooTtfD+D77bQqMTVvw4
	xFjvVVUUZhYNnfj51Xdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iotUP-0006sr-5b; Tue, 07 Jan 2020 18:22:01 +0000
Received: from alln-iport-1.cisco.com ([173.37.142.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iotUG-0006sE-G2
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 18:21:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=2852; q=dns/txt; s=iport;
 t=1578421312; x=1579630912;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hVzWvSYipyoDz/63QyPdNRteHfXEbX2edhxuvSoU2UM=;
 b=eKnPZD2m1saOLJvBiPQWnDproUwYAVQtTtr9W0ULukQtfL/G4tWRZynN
 QnBAMY7mIv14RaF7EOnWNJYmI8S3rCOx+kqv+S7czZeqI78E5rCf1rfvx
 JWZB0zsWjhTGDBvoyPX9V1UB7lK8Skwt8YX/J2tYRMGSru0VEbolQu83c M=;
IronPort-PHdr: =?us-ascii?q?9a23=3AqualZBQr18xJfdIieAX+e9JHIdpsv++ubAcI9p?=
 =?us-ascii?q?oqja5Pea2//pPkeVbS/uhpkESXBNfA8/wRje3QvuigQmEG7Zub+FE6OJ1XH1?=
 =?us-ascii?q?5g640NmhA4RsuMCEn1NvnvOjc5Fd5DUVZv13q6KkNSXs35Yg6arw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0BVAQBDyxRe/4kNJK1mHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWsEAQELAYFTUAWBRCAECyoKh0UDiwaCX5gNglIDVAkBAQEMAQE?=
 =?us-ascii?q?tAgEBhEACgWkkNwYOAgMNAQEEAQEBAgEFBG2FNwyFXgEBAQEDEigGAQE3AQ8?=
 =?us-ascii?q?CAQgSBh4QMhcOAQEEDg0ahUcDLgECoXwCgTiIYYIngn4BAQWFCRiCDAkUgSI?=
 =?us-ascii?q?BjBgagUE/gRFHgkw+hEuDQIIskAieJnUKgjaWN5pfqTQCBAIEBQIOAQEFgWg?=
 =?us-ascii?q?jgVhwFYMnUBgNjRKDc4pTdIEojCUBgQ8BAQ?=
X-IronPort-AV: E=Sophos;i="5.69,406,1571702400"; d="scan'208";a="398971895"
Received: from alln-core-4.cisco.com ([173.36.13.137])
 by alln-iport-1.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 07 Jan 2020 18:21:51 +0000
Received: from XCH-ALN-007.cisco.com (xch-aln-007.cisco.com [173.36.7.17])
 by alln-core-4.cisco.com (8.15.2/8.15.2) with ESMTPS id 007ILpPU020341
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Tue, 7 Jan 2020 18:21:51 GMT
Received: from xhs-rcd-002.cisco.com (173.37.227.247) by XCH-ALN-007.cisco.com
 (173.36.7.17) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 7 Jan 2020 12:21:50 -0600
Received: from xhs-aln-002.cisco.com (173.37.135.119) by xhs-rcd-002.cisco.com
 (173.37.227.247) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 7 Jan 2020 12:21:50 -0600
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (173.37.151.57)
 by xhs-aln-002.cisco.com (173.37.135.119) with Microsoft SMTP Server (TLS) id
 15.0.1473.3 via Frontend Transport; Tue, 7 Jan 2020 12:21:50 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d5ROhniTBr/d8rA9KTfAIPainxu+fFQmOt2/LNPyW03l2mhVGxDFR2sSpX1wn5pqW7vFFiiAkVsSQj1wjIsWI8nk9cZd0KF/Wfm5EP+9d0LvD4m+7IzG0H16wF2GFXO5ESurqqaI9JI/1MH+ZTDHyGY2Id5ThRpBK4a6Ap1COAsdaj7n+K7tctU6jXSsX1JZvtBdf2DIQ6DRxA4jZ8eX+PC5+w+Bnt/hlce10xtLnynrAu+0d1Rh2XmO7W+koGAwbw57jhdU8/A8Crtf7NGslKq76eT9Rg5qLciwR6SpM8xLHDj9DU1K9ypjlCmXvuecOV4tDdAiHfO4yraeYQTFyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=efCq9XDJa5zMUccN1Pj1rtSUqtj9I7te1kKxzR6nQhw=;
 b=AEcMSM7Z/aWBbxo8OJiCGk3AN76hjLCljx8osfYvbzBHI3HnnPTv2TEaUctN1zj4d1M4zCt6OcyiUV7ZBAJa1CQgOfKPmSuUSJrWvn9bEZof3sRqHnkp0u56uzS4hTxgz/mbCd/G0OuZH/lztsCZ/tgMRGBp+W2u3GOjMLDOXaD4dYMTkZDJ/LgOdqXpiNk85P0EcxcEn5MXlmMZRbr8qTHIZ4peKH1F5TTGMR5jvqFrFSOn/sN2hwaE53cExYfKvQ9lOatHo1Z2JQHfzrijzzz6mx14sQSS1QhstsA24+dQDhVNCfZJtRSaKBlQIg45Rw23eG6atiGlm7QlrTBSRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=efCq9XDJa5zMUccN1Pj1rtSUqtj9I7te1kKxzR6nQhw=;
 b=qYlLTbTsz8DKQKEP7Wm2AGdcVI6iO35qfMzj1lKQNG/lakIqfOK7K22Zv75jVdFZl4bRbPCF5MaXfmIwMjcwfmdytCdgtQHEPoKqPDzdjPAXEz2jTMeD7k4sch0Q7YV5Vv0u8m9IhNhx3g/dt9fChbq2GByM3WLxV8hwCuEbbPo=
Received: from BYAPR11MB2582.namprd11.prod.outlook.com (52.135.229.149) by
 BYAPR11MB3639.namprd11.prod.outlook.com (20.178.237.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.10; Tue, 7 Jan 2020 18:21:47 +0000
Received: from BYAPR11MB2582.namprd11.prod.outlook.com
 ([fe80::a963:79bc:32a5:6f48]) by BYAPR11MB2582.namprd11.prod.outlook.com
 ([fe80::a963:79bc:32a5:6f48%5]) with mapi id 15.20.2602.016; Tue, 7 Jan 2020
 18:21:47 +0000
From: "Saeed Karimabadi (skarimab)" <skarimab@cisco.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: RE: Arm64 Crashkernel doesn't work with FLATMEM anymore
Thread-Topic: Arm64 Crashkernel doesn't work with FLATMEM anymore
Thread-Index: AdW0bU4PM3g/9KC9STy6zefeuZgKiADAawuAAJN7e4AB9cK7AAD8NLCw
Date: Tue, 7 Jan 2020 18:21:47 +0000
Message-ID: <BYAPR11MB2582648C365D1B02C7D930BFCC3F0@BYAPR11MB2582.namprd11.prod.outlook.com>
References: <BYAPR11MB2582CB879F0B7DE06A351685CC500@BYAPR11MB2582.namprd11.prod.outlook.com>
 <c4d7ea82-7736-4cbd-4568-83473a7c2d11@arm.com>
 <BYAPR11MB2582B5FE87A72352E6A8C2F6CC2E0@BYAPR11MB2582.namprd11.prod.outlook.com>
 <20200102174206.GD27940@arrakis.emea.arm.com>
In-Reply-To: <20200102174206.GD27940@arrakis.emea.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=skarimab@cisco.com; 
x-originating-ip: [128.107.241.185]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6e22c925-a3f3-408f-ef67-08d7939e7554
x-ms-traffictypediagnostic: BYAPR11MB3639:
x-ld-processed: 5ae1af62-9505-4097-a69a-c1553ef7840e,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB3639A6D2C345BCB48491AC04CC3F0@BYAPR11MB3639.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 027578BB13
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(346002)(136003)(366004)(376002)(189003)(199004)(53546011)(6506007)(81156014)(81166006)(8936002)(8676002)(7696005)(52536014)(5660300002)(26005)(4326008)(478600001)(66446008)(64756008)(66556008)(66476007)(316002)(54906003)(66946007)(76116006)(2906002)(9686003)(86362001)(186003)(33656002)(71200400001)(6916009)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB3639;
 H:BYAPR11MB2582.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AQznY3VeSrgYHLbemsMCZqqH5MY56RekRbYYzDBYyVZu2PXUAth91JqhT4rdXMUsQnJKUd3oSKz/VClfMaTuPLzrjbFXut3XA19ATdWrzFPgVVgjmNHDGUwBiOqinBqIBvMczO2r3Zo3uUCvyXM5IKlHP1BV/wkFWy/gGiH+6eZBVnWotkKDvVujaxYKfdFMliEiNKWI/QsBafRUi3qxn1lnI+8gLzLNpM0vsDq40TIjT9U0bELvY4z4ebkX8+p0DT0smtmGVaEhKcKFUafKC63/gOAVxJFzQmuudkOjdtOgKT8SKuUomMeMjUI9I9tO/cdYzBUJ2ZE9jHVFhLaiEgar4y2FLRu9b1tJ8nuRCFpvVyJsjiYHqpYpezeyVjBmQ0WBI7kIMyxPjKsi8GJ62NgUtdNnMSZIw20QD0+YVgyNtv1cAFIkyNz1SAEpozE+
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e22c925-a3f3-408f-ef67-08d7939e7554
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2020 18:21:47.7111 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lgcJuankHtwibxM3XotrqPU4qWqWXN5tKo3ic5Q3y+ToTWiI6XbirNxEEUJqyyCjYT7epYV2CmgMG22v1lFNIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3639
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.36.7.17, xch-aln-007.cisco.com
X-Outbound-Node: alln-core-4.cisco.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_102152_675227_1E859727 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [173.37.142.88 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Will Deacon <will@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 James Morse <james.morse@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "xe-linux-external\(mailer list\)" <xe-linux-external@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thursday, January 2, 2020 9:42 AM Catalin Marinas <catalin.marinas> wrote:
> On Mon, Dec 23, 2019 at 10:24:57PM +0000, Saeed Karimabadi (skarimab) wrote:
> > On 20/12/2019 11:52 AM  James Morse <james.morse> wrote:
> > > On 17/12/2019 00:02, Saeed Karimabadi (skarimab) wrote:
> > > > Crash dump  Kernel doesn't work with FLATMEM memory model since version 4.11.0-rc3 and it
> [...]
> > > Because of these nomap memblocks, I don't think kdump is isolated enough from the systems
> > > memory map for the flatmem illusion to hold just because its kdump. You still need to
> > > access firmware table that describe the system, as well as any memory that was reserved
> > > with mechanisms like this. This exposes you to the platform's not-really-flatmem memory
> > > layout.
> > >
> > > I think the real fix here is to remove FLATMEM.
> [...]
> > For example is it possible to reduce the amount of memory SPARMEM is
> > using for its internal data structures or to keep track of different
> > memory zones? Or any other suggestion of reducing the total memory
> > size for crash kernel ?
> 
> Can you change SECTION_SIZE_BITS to 29 or 28 in
> arch/arm64/include/asm/sparsemem.h and see whether it makes a
> difference?

I changed SECTION_SIZE_BITS to 29 in main kernel as well as crash kernel and both can boot properly but after 
triggering a panic "makedumpfile" tool cannot collect the corefile. It complains that it cannot find 
the address of mem_section. I'll collect the raw VMCORE and will check further if I need to modify 
the "makedumpfile" code .  Also "makedumpfile" recognizes the VMCORE memory model as SPARSEMEM while
it should detect it as SPARSEMEM_EX.

# makedumpfile -F -E -D -d 31 /proc/vmcore | gzip > ./core.4.19.29
sadump: unsupported architecture
LOAD (0)
  phys_start : 80080000
  phys_end   : 80c35000
  virt_start : ffffff8008080000
  virt_end   : ffffff8008c35000
LOAD (1)
  phys_start : 80000000
  phys_end   : c2000000
  virt_start : ffffffc000000000
  virt_end   : ffffffc042000000
LOAD (2)
  phys_start : c203b000
  phys_end   : fbe00000
  virt_start : ffffffc04203b000
  virt_end   : ffffffc07be00000
LOAD (3)
  phys_start : ffe00000
  phys_end   : 100000000
  virt_start : ffffffc07fe00000
  virt_end   : ffffffc080000000
Linux kdump
page_size    : 4096
phys_base    : 80000000 (vmcoreinfo)

max_mapnr    : 100000
There is enough free memory to be done in one cycle.

Buffer size for the cyclic mode: 262144
va_bits      : 39
page_offset  : ffffffc000000000
kimage_voffset   : ffffff7f88000000
max_physmem_bits : 30
section_size_bits: 1e
va_bits      : 39
page_offset  : ffffffc000000000
num of NODEs : 1

Memory type  : SPARSEMEM
get_mm_sparsemem: Can't get the address of mem_section.

Thanks,
Saeed

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
