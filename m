Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D0618928C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 01:15:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IQ42gKiyIhW2jPgkzeBqvLofC8LBh8jRcMgs9vZGSCc=; b=P0EJje5pz525yc
	Duyd8+bVvEH7EXAbybAiME6eyIhcr81rv02tHuKGNHhk2vYw86uzMFr8d33PcaPXkLpud4Qs+/b/h
	C6tJrz9x4MvqSJos/XPYaR7IgBzr1jdhz0HdWFCicu2rFwokpA9VcrtNYJlYlSShLatYZLW24Agrs
	yBIVenqRQU3bUxjJP2H+h7VknsSZwfgaDJ292gRJVVJpOjfj9gqhG0E+L0v8B54h+EQzpZgpwMZZW
	6xZA7eBnMsjZvk/2L/xNslT1m26fwLM+IdPW6d9llWBHuQ3rMdemiIUNnAdJDocnJvuIDaGi2fxMX
	PVDy1KFgnHjX+Uxb+QTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEMN3-000321-Ba; Wed, 18 Mar 2020 00:15:41 +0000
Received: from mail-eopbgr770095.outbound.protection.outlook.com
 ([40.107.77.95] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEMMs-00031N-C3
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 00:15:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lR+yVp63qtsbOyn4oC8iHCftYI7XHz5PGlbX8CNchP1a62J4jHbr1iBkbYjXRhg9LnqRI0kKTyD7Dg8+/sFHLuf1gcC7ime31HOISKoD49RKhgoWj6FvgTphhk0EzrlEUKwj0TzE7NDUU8Eh1+5X8pw5r3Ny/r26Fctt5xmLO3ljlSHpe11nJByG1bF0AnJyu9LvNWig+3bxDbAkoNahm8dlwZ0SOHF565S7Dyt8uZr80kH/R8zSPMAmOy7s5iyEo/wj9PcfsCqerg6PmaqR+VCNix2L2hfNqbePj/eqve3Wodbb9pwmCaaysCzRd1gyS3xGVDeDUTOETYLvJHsGgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=auibOauM2Qn9g5DqMGQVNaGcTpC/wJKDvXbpt9ctv4U=;
 b=V+g0rrq4o0px9JrPE+mIZTcM+wr1DljbUPHGqgci848iQknbD7H0GJmDkqAIluFT75I0KC80U04zJKNotwGPv7GhDw1q3EfRmbRCW+fv4P9mpHxcIxUVapgGSnq3tOnyF9RqqOgKYn40XTM4Qhu29Sh/fUIk+qp5nyzXbQjbyjw3Tv1MM8lxtpP65iO0Yq2gBsfA1Q8QVNGMssBQHihKdwBNO0Gis2ULEsXPH7U+HU4+eGNeBmgh2p4W3yu3EAPwd0FQLogn/3ArVLZkCj5lAfpnDUcpWa3KyQ5eRRk8opU7bDo2ErW/Wbw4QkTIozeUyzQFhiZR1b2oLD7bv/UH/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=auibOauM2Qn9g5DqMGQVNaGcTpC/wJKDvXbpt9ctv4U=;
 b=i2SkoqA/81h0idpfH5d1PRo6NzuNdF6zX2bZ2HY/lhXwCPtmXl3fBs93kMThmH2lD3ZsgDROV++QkkNVz5Qq0rfGQ/7pMOyc8FjfK/uItjLfhd9K+IaiMYJcXxE4/VaTykNtz5g16up2VvgzNK/70Gerc1r3jNJIFBOpXcoglcg=
Received: from MW2PR2101MB1052.namprd21.prod.outlook.com (2603:10b6:302:a::16)
 by MW2PR2101MB1082.namprd21.prod.outlook.com (2603:10b6:302:a::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.7; Wed, 18 Mar
 2020 00:15:25 +0000
Received: from MW2PR2101MB1052.namprd21.prod.outlook.com
 ([fe80::71ee:121:71bd:6156]) by MW2PR2101MB1052.namprd21.prod.outlook.com
 ([fe80::71ee:121:71bd:6156%9]) with mapi id 15.20.2835.003; Wed, 18 Mar 2020
 00:15:25 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: Arnd Bergmann <arnd@arndb.de>, Marc Zyngier <maz@kernel.org>, gregkh
 <gregkh@linuxfoundation.org>
Subject: RE: [PATCH v6 04/10] arm64: hyperv: Add memory alloc/free functions
 for Hyper-V size pages
Thread-Topic: [PATCH v6 04/10] arm64: hyperv: Add memory alloc/free functions
 for Hyper-V size pages
Thread-Index: AQHV+hZH2sSK6TnWLUqKIqZdhn3BQ6hK4/SAgAACOwCAAACGAIACfgqw
Date: Wed, 18 Mar 2020 00:15:25 +0000
Message-ID: <MW2PR2101MB1052D91D3A9CEEBD7E2EA82FD7F70@MW2PR2101MB1052.namprd21.prod.outlook.com>
References: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
 <1584200119-18594-5-git-send-email-mikelley@microsoft.com>
 <CAK8P3a2Hnm74aUMNFHbjMr4HwHGZn1+xa4ERsxAJY6hMzhEOhQ@mail.gmail.com>
 <632eb459dbe53a9b69df2a4f030a755b@kernel.org>
 <CAK8P3a3aihZeriUWAhWJMsOtdiY4Lo29syrRbB4Po3v4dsLhvA@mail.gmail.com>
In-Reply-To: <CAK8P3a3aihZeriUWAhWJMsOtdiY4Lo29syrRbB4Po3v4dsLhvA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=mikelley@ntdev.microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2020-03-18T00:15:22.5925385Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=fde423f0-26dd-42cf-838f-65f5cddd7301;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-originating-ip: [24.22.167.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fbf53d61-1c2b-46bf-0849-08d7cad174d3
x-ms-traffictypediagnostic: MW2PR2101MB1082:|MW2PR2101MB1082:|MW2PR2101MB1082:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <MW2PR2101MB10827704F4662B46AC3378C6D7F70@MW2PR2101MB1082.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 03468CBA43
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(346002)(376002)(396003)(39860400002)(366004)(199004)(10290500003)(55016002)(478600001)(7696005)(5660300002)(9686003)(110136005)(54906003)(2906002)(7416002)(8990500004)(53546011)(33656002)(52536014)(6506007)(76116006)(71200400001)(186003)(66946007)(66476007)(66446008)(64756008)(66556008)(4326008)(8676002)(316002)(86362001)(81156014)(8936002)(81166006)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MW2PR2101MB1082;
 H:MW2PR2101MB1052.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: goHjzolk1403oOapaLy7gmxffuRlCdBEF92SHRi2H3uehK7J3Q0RjubPrpw9hnUC9VTC4Lzqmn3TuscsW7m+0hXCKirsMUByx2zDpiym+UZ+T9Hz+Kn04fRYaZJqLF4HawJ8P5S52Swmdl7aNFAMDdCS34Td8aPjGOy5Jo15VVzmKT4XO6EMNwzoczaw+f/yWBvNoaQfP3eec6VoZrj47wkvsNdPMMhIFP7jbxxj0W4gLg0clheaEjqJ1jUwr1EirAPvJ5c3eIlMpnImuYuHZbu6SSI+mcmpd3X+hJnCzulNz/DPKRQa7Akhvt81jFVq/PlLfSuDJlmCrgG/kHrnHVzeXuxbyxbn7KSPc5jQTQk2DDZqtp2FwKvIMtnKa0E6LM5qM7XdcwuhUuGixNxX7vqn1oA0g3p9dip/pxM2AKIv7ae4ZoDk2l3eHpGb0n4q
x-ms-exchange-antispam-messagedata: ZmExURiXqasFD7guooSsdyMOof40Vw/EegP4o3uQqyRUD7Z8UkKZ0HC2UYnCwt7SUwvEShu+q04uFn6AE4g2lS1RLeshn3hC4RtFoWIjltdbIZKnh6JEva0iROQq6OuhGNHdIRuZcJ/n8HuvAsH+Gg==
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fbf53d61-1c2b-46bf-0849-08d7cad174d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2020 00:15:25.1158 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nVPG3c2NE55mUbtqNHoS0CoQgV2RezuE0xNrJ3dNdjW6L2yqiaOCaVuFWozEck9Zq2mrfhRoDQQYb5wROa0Ty9QkZ7CyOPouuJZ20Qskp4M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR2101MB1082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_171530_416908_11D37BFB 
X-CRM114-Status: GOOD (  18.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.95 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 linux-arch <linux-arch@vger.kernel.org>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 linux-efi <linux-efi@vger.kernel.org>, Boqun Feng <boqun.feng@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jason Wang <jasowang@redhat.com>,
 Sunil Muthuswamy <sunilmut@microsoft.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "olaf@aepfle.de" <olaf@aepfle.de>, Andy Whitcroft <apw@canonical.com>,
 vkuznets <vkuznets@redhat.com>, KY Srinivasan <kys@microsoft.com>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Arnd Bergmann <arnd@arndb.de> Sent: Monday, March 16, 2020 1:33 AM
> 
> On Mon, Mar 16, 2020 at 9:30 AM Marc Zyngier <maz@kernel.org> wrote:
> > On 2020-03-16 08:22, Arnd Bergmann wrote:
> > > On Sat, Mar 14, 2020 at 4:36 PM Michael Kelley <mikelley@microsoft.com>
> > > wrote:
> > >>  /*
> > >> + * Functions for allocating and freeing memory with size and
> > >> + * alignment HV_HYP_PAGE_SIZE. These functions are needed because
> > >> + * the guest page size may not be the same as the Hyper-V page
> > >> + * size. We depend upon kmalloc() aligning power-of-two size
> > >> + * allocations to the allocation size boundary, so that the
> > >> + * allocated memory appears to Hyper-V as a page of the size
> > >> + * it expects.
> > >> + *
> > >> + * These functions are used by arm64 specific code as well as
> > >> + * arch independent Hyper-V drivers.
> > >> + */
> > >> +
> > >> +void *hv_alloc_hyperv_page(void)
> > >> +{
> > >> +       BUILD_BUG_ON(PAGE_SIZE <  HV_HYP_PAGE_SIZE);
> > >> +       return kmalloc(HV_HYP_PAGE_SIZE, GFP_KERNEL);
> > >> +}
> > >> +EXPORT_SYMBOL_GPL(hv_alloc_hyperv_page);
> > >
> > > I don't think there is any guarantee that kmalloc() returns
> > > page-aligned
> > > allocations in general.
> >
> > I believe that guarantee came with 59bb47985c1db ("mm, sl[aou]b:
> > guarantee
> > natural alignment for kmalloc(power-of-two)").
> >
> > > How about using get_free_pages() to implement this?
> >
> > This would certainly work, at the expense of a lot of wasted memory when
> > PAGE_SIZE isn't 4k.
> 
> I'm sure this is the least of your problems when the guest runs with
> a large base page size, you've already wasted most of your memory
> otherwise then.
> 

I think there's value in keeping these functions.  There are 8 uses in
architecture independent code at the moment, which admittedly saves
only ~1/2 Mbyte of memory with a 64K page size, but we will have
additional uses with more memory savings as we get all of the
Hyper-V synthetic drivers to work with 64K page size.  Furthermore,
there's coming work that will require additional steps to share a page
between a guest and the Hyper-V host.  These functions are the right
place to put the code for the additional sharing steps.  Removing them
now in favor of a bare kmalloc() and then adding them back doesn't
seem worthwhile.

Michael
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
