Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 699EE18C271
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 22:44:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zKdWEkfTa2bm6PbrHn/Vz6eVkWvMNhok8DXe+8yVqGk=; b=jWTY2yDiB/ROqr
	+iBwazj8ZhLA2U9pQPilliKsHIlguZCE7E3vPxmOi1/WBmggcjL39CtfxNZ1MBEpSmk+zy2YtJl4h
	RegMxVrScQTKZ8z43AXXLEbQZBbCw7p8vLqbFjw+sAIZhFsgrr/6HLFzvZwDGgy7EEyMKjIXXy2KY
	XoTpOc2iZnhRz/kXnK3Aeb4EnS0ObBGaVHlpjx8nIZU2S3KEVxtFoY4481RDNbatok/1L6Iea38Ll
	rRo9nYpCuVAj8iQQspSewA80p+zTVWvFlq/Vyg5MWPKNvKCMTEjpAlUOyVvy1OgkKBdyL8F5MGrMg
	fWBK4sbsm5n4YL+Rol2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF2xQ-0002pn-4E; Thu, 19 Mar 2020 21:44:04 +0000
Received: from mail-bn7nam10on2097.outbound.protection.outlook.com
 ([40.107.92.97] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF2xH-0002pJ-Lf
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 21:43:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z5iaECNCtyQDqKehPfeH1kcMlDansDCPeH29KGEcK64eKbSn0ZDTWdPP5Lj8Manl/O6QRbPwPuEzB8fEp74styHjDZm7neViR9cldsw6j0KvLIOJ3q/z/0GJNm1wK6Udj4Nq+z8eVdJeb/zNSmX7WTVC9N9VeXH07LaXI/3iOYWk8pi19pQVAY8h+0vpFln+YovUUFOEFzmqYFqwOA+pnTboxoAsjePYxpKs+Ez0J/KFUmbWRhHGl4+6eS6MK817yZAW7Tkeytt3Xfc38oGrKQjZfPwXgRvkCms97N1rm2NO7UEOZLQRRQ9DfpqeasF5b5OCQGJoyWkjomqgnT4LCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nm8HNIbwkBQkL6TY2Q3+lpEb3Oi9c9RsvQbi3rIOM5g=;
 b=gFZQNp1um1sN4QPjPYrAo8xqf+JCp+Om+3XwVprJbhXylj7epxc9SKBkYf2aR67CNjo/a+1nUDgAJEXkuWCyVhPa5LHDXmnWZUkTFhxX7MblZ76rpEG7hGPcvrKWtpxDViqD1p7pFaclB9JtY3If8gOLYxBJpd6E5bglC/aygEvBWBFO5pGpcTaWX7akrqGICShoLP4N73EFAR9ORdV6J3gb1epjWsPpsjO3wdCnFXRRLWSceAVVkelm5etiqposynad1zHH85RW/rBR6urhNnFtkkG4Rmcfihjt5I8A8u3DGoQgmoZhO9UH/RzACKDKwucbKq8XcmHc3Z+QN2IRhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nm8HNIbwkBQkL6TY2Q3+lpEb3Oi9c9RsvQbi3rIOM5g=;
 b=deHe6DcyaaXADZv39KVL5iOGkKuvh5MOwQwgw82jERcaTmMxuRN5N6UrcgTCQbuP8Ct3CfLiYqUk2aaakKP3tKYttuC2rPyJQKxOua6UGXMr/aKTZslPARMRnrYiL1lRjLogi0zGW022XMFVsvI9kr0h6W2T97uhDAf5cPa/4Z4=
Received: from MW2PR2101MB1052.namprd21.prod.outlook.com (2603:10b6:302:a::16)
 by MW2PR2101MB0986.namprd21.prod.outlook.com (2603:10b6:302:4::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.9; Thu, 19 Mar
 2020 21:43:53 +0000
Received: from MW2PR2101MB1052.namprd21.prod.outlook.com
 ([fe80::71ee:121:71bd:6156]) by MW2PR2101MB1052.namprd21.prod.outlook.com
 ([fe80::71ee:121:71bd:6156%10]) with mapi id 15.20.2856.003; Thu, 19 Mar 2020
 21:43:53 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: RE: [PATCH v6 04/10] arm64: hyperv: Add memory alloc/free functions
 for Hyper-V size pages
Thread-Topic: [PATCH v6 04/10] arm64: hyperv: Add memory alloc/free functions
 for Hyper-V size pages
Thread-Index: AQHV+hZH2sSK6TnWLUqKIqZdhn3BQ6hK4/SAgAACOwCAAACGAIACfgqwgAC+cYCAAlRDsA==
Date: Thu, 19 Mar 2020 21:43:53 +0000
Message-ID: <MW2PR2101MB10520CEF065A41EEBC17FFC2D7F40@MW2PR2101MB1052.namprd21.prod.outlook.com>
References: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
 <1584200119-18594-5-git-send-email-mikelley@microsoft.com>
 <CAK8P3a2Hnm74aUMNFHbjMr4HwHGZn1+xa4ERsxAJY6hMzhEOhQ@mail.gmail.com>
 <632eb459dbe53a9b69df2a4f030a755b@kernel.org>
 <CAK8P3a3aihZeriUWAhWJMsOtdiY4Lo29syrRbB4Po3v4dsLhvA@mail.gmail.com>
 <MW2PR2101MB1052D91D3A9CEEBD7E2EA82FD7F70@MW2PR2101MB1052.namprd21.prod.outlook.com>
 <CAK8P3a2AO4k3vJ7WuJQz7ick+XPgGY3Jfk8-ROqtwyNs0nWkDA@mail.gmail.com>
In-Reply-To: <CAK8P3a2AO4k3vJ7WuJQz7ick+XPgGY3Jfk8-ROqtwyNs0nWkDA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=mikelley@ntdev.microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2020-03-19T21:43:50.6696075Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=56713056-2876-4ed4-93d0-4c915dc7a2f6;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-originating-ip: [24.22.167.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3cef2aaf-ec77-4ecc-6c3b-08d7cc4e9e4f
x-ms-traffictypediagnostic: MW2PR2101MB0986:|MW2PR2101MB0986:|MW2PR2101MB0986:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <MW2PR2101MB09861513151693324BD256D0D7F40@MW2PR2101MB0986.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0347410860
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(39860400002)(396003)(376002)(366004)(136003)(199004)(81166006)(8676002)(66446008)(66556008)(54906003)(66476007)(76116006)(81156014)(7696005)(5660300002)(186003)(478600001)(10290500003)(33656002)(9686003)(6916009)(55016002)(71200400001)(64756008)(8990500004)(7416002)(2906002)(86362001)(316002)(4326008)(52536014)(26005)(66946007)(6506007)(53546011)(8936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MW2PR2101MB0986;
 H:MW2PR2101MB1052.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6Kz7Ur6ernmi1SE9El/j2MfwlUdfxD3wsJXPQSfwwAuRvCVNnlo/tRCIJPfISgGnBXwKWxg4+M+Bn53hZIfES3q8sr52BjzaYKmmRbhln2Gf9lgFJaqiURUIOHTfCxljaDdQeCAra+PJIKdTSIieZp/CKuEkhcP8whVzVUExKbjAaXcdBdLuM241BeBZZL+uUGmDdjHfrpleJIF8hg81Oc+pSsHZHbeh1wy49yetxHTxhSNIrKuyNt/DgZ/9COJdRRrESp2SEwKD+uUQPf/wTX7TepRzThtM6i28zEXWMfXrTSmtYPkqG2/8U/4SwZtqUgACmN6QNMHgyYEpqTdHpO+f0wsal8hDQFu+HMLCj1ZIK0y412I0PdIQUPZe7vwGUchXgOoWPW4kzA6hshGahxtBdhiNvUTB9CPkVkoHvZ9B1E0iAxf1MOHxnAZXTIl4
x-ms-exchange-antispam-messagedata: jr/m8580mc6xmlVtdhsoBkR3eyY116Nzqja4KR8zNALnK3p/0wp5dr4YlYTkUmL54ySF1QZsoxbiCTXm0rk+xJpnLFHe8ceUXl3YcmbFSlqMh7+ySm8nwgiDNW78MJZ1cknFmk7HxjkfTrURsIy47Q==
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cef2aaf-ec77-4ecc-6c3b-08d7cc4e9e4f
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2020 21:43:53.1195 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bR7utV+okEes+rS+HUC1TKO9xknKo07vebinOG/qQjFngv++FGe29HFyujHGsf882Hbqn7ecoi28Lv/CGhj0gq64mpzic5cN/spSRULdF+o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR2101MB0986
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_144355_714174_270515A8 
X-CRM114-Status: GOOD (  27.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.92.97 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 linux-arch <linux-arch@vger.kernel.org>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 linux-efi <linux-efi@vger.kernel.org>, Boqun Feng <boqun.feng@gmail.com>,
 gregkh <gregkh@linuxfoundation.org>, Marc Zyngier <maz@kernel.org>,
 Jason Wang <jasowang@redhat.com>, Sunil Muthuswamy <sunilmut@microsoft.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "olaf@aepfle.de" <olaf@aepfle.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Andy Whitcroft <apw@canonical.com>, vkuznets <vkuznets@redhat.com>,
 KY Srinivasan <kys@microsoft.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Arnd Bergmann <arnd@arndb.de> Sent: Wednesday, March 18, 2020 2:58 AM
> 
> On Wed, Mar 18, 2020 at 1:15 AM Michael Kelley <mikelley@microsoft.com> wrote:
> > From: Arnd Bergmann <arnd@arndb.de> Sent: Monday, March 16, 2020 1:33 AM
> > >
> > > On Mon, Mar 16, 2020 at 9:30 AM Marc Zyngier <maz@kernel.org> wrote:
> > > > On 2020-03-16 08:22, Arnd Bergmann wrote:
> > > > > On Sat, Mar 14, 2020 at 4:36 PM Michael Kelley <mikelley@microsoft.com>
> > > > > wrote:
> > > > >>  /*
> > > > >> + * Functions for allocating and freeing memory with size and
> > > > >> + * alignment HV_HYP_PAGE_SIZE. These functions are needed because
> > > > >> + * the guest page size may not be the same as the Hyper-V page
> > > > >> + * size. We depend upon kmalloc() aligning power-of-two size
> > > > >> + * allocations to the allocation size boundary, so that the
> > > > >> + * allocated memory appears to Hyper-V as a page of the size
> > > > >> + * it expects.
> > > > >> + *
> > > > >> + * These functions are used by arm64 specific code as well as
> > > > >> + * arch independent Hyper-V drivers.
> > > > >> + */
> > > > >> +
> > > > >> +void *hv_alloc_hyperv_page(void)
> > > > >> +{
> > > > >> +       BUILD_BUG_ON(PAGE_SIZE <  HV_HYP_PAGE_SIZE);
> > > > >> +       return kmalloc(HV_HYP_PAGE_SIZE, GFP_KERNEL);
> > > > >> +}
> > > > >> +EXPORT_SYMBOL_GPL(hv_alloc_hyperv_page);
> > > > >
> > > > > I don't think there is any guarantee that kmalloc() returns
> > > > > page-aligned
> > > > > allocations in general.
> > > >
> > > > I believe that guarantee came with 59bb47985c1db ("mm, sl[aou]b:
> > > > guarantee
> > > > natural alignment for kmalloc(power-of-two)").
> > > >
> > > > > How about using get_free_pages() to implement this?
> > > >
> > > > This would certainly work, at the expense of a lot of wasted memory when
> > > > PAGE_SIZE isn't 4k.
> > >
> > > I'm sure this is the least of your problems when the guest runs with
> > > a large base page size, you've already wasted most of your memory
> > > otherwise then.
> > >
> >
> > I think there's value in keeping these functions.  There are 8 uses in
> > architecture independent code at the moment, which admittedly saves
> > only ~1/2 Mbyte of memory with a 64K page size, but we will have
> > additional uses with more memory savings as we get all of the
> > Hyper-V synthetic drivers to work with 64K page size.  Furthermore,
> > there's coming work that will require additional steps to share a page
> > between a guest and the Hyper-V host.  These functions are the right
> > place to put the code for the additional sharing steps.  Removing them
> > now in favor of a bare kmalloc() and then adding them back doesn't
> > seem worthwhile.
> 
> My point was to keep the functions but use alloc_pages() internally,
> so you can deal with the hypervisor having a larger page size than
> the guest, which seems to be a more important scenario if I correctly
> understand the differences between the way Windows and Linux
> deal with page cache.

OK, I see now what you are getting at.  I should spell out my
assumption, which is the opposite.  Hyper-V won't have a page
size other than 4K anytime in the foreseeable future.  The
code is too wedded to the x86 4K page size, and the host-guest
interfaces have a lot of implicit assumptions that the page size is
4K (unfortunately).  But the last time I looked, RHEL for ARM64 is
delivered with a 64K page size.  So my assumption is that the only
combination that really matters is the guest page size being larger
than the Hyper-V page size.  The other way around just won't
happen without a major overhaul to Hyper-V, including a rework
of the guest-host interface.

Michael

> 
> As far as I understand, using 64kb pages on Windows is generally
> a win as the VFS code already deals with units of that size, while
> on Linux the 4kb page size is too deeply entrenched within the
> file system code to mess with it: Whatever you gain in terms of
> TLB pressure on workloads that cannot use huge pages is all lost
> again through extra I/O and wasted physical memory.
> 
>         Arnd
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
