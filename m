Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A774218D5B0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 18:22:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8t3PVKPQZEW+SAIxNdFm1zrCFfh+UdZQwyAo3IOlB5I=; b=ji6gL73dQjVgGn
	bbCIv2di3LkTCg0Yhh0XsxRF82br5eQUr3LpwOefOEPfufASEiC5DH+ewm/lvfQQ86gUPFfVH/0wk
	gbT/BxTlRgNG733brhj8/+ISFsPcumBwwgk8s8464ShtmfQZj0oaP6DHpQ24oBMi6g6LzrOfiXskm
	TuCoRstiF+UH9xERifCFMaTPDLSSxt6u2GH1eNFLlPe3jq0L0j8IMucVZRYGiSpUv2FG26261Q3vh
	Z45HK8Cutddy4TUj5rWHAHHI7P1eBlTJSU4IMxyMaRVHZj5WPBTqr2NHHHtjCNOeDLIAkhE6zg9ZL
	8NBL0CfN8u+ubdBz/rTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFLLv-0000Es-BX; Fri, 20 Mar 2020 17:22:35 +0000
Received: from mail-dm6nam12on2116.outbound.protection.outlook.com
 ([40.107.243.116] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFLLk-0000Dz-M4
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 17:22:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L5ziMGbtFepxslExpUcQwmJbJ4M/N8rpft6LL5v5lejOzbat1dZ6Isls1DPtMNTx7bkqaHK0UG2Jy3i/Qb4FyGtQs2eAbbBiVgK1lTXooTOPJ3OPDeo3/NeeangLvCRQFCt4rGTBCYZVKU5S/4OyAFaHfjjcwewYBKpJrccxlFkw2GpSCgUXTsWUByX5d0v/ZR8XZOdtmZYi+1Z+cDaWbiJJJ473aW4OZkVR977rxXlZgE274AEmkIZVJ9gtCEZEnZFyul63DonJQG+BqfECPBz4PQwJMDJD2L/aj9LG4sxVyNuQdm3H+FjRCa8EUuVQlOTLaJgflNTwisUXNyzL9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4252JX0+KpIkSNxL4cgOQW9Kyf9lUpxRX/bHw+/4OX0=;
 b=hJSVr1Mam5Mc4zdYl+rCTTnb9KaQZYsl5YmzHkk17okOxeT/vcYRxFIYofF0SQJ0K7MmIwxNpmHe/LJ/y0EefMJy8cPwz0lt8ge9SBSrbadLyCXIDbsPq6YnoEa5d9kkVzNeuXwkScEism4Xk7y2xoEj5cSjQ8ZH8+S7Tz5UaETka1nj/qbpoi8QfAWPRISQjjqXruv57PnYqza3GEylxVFQHY6rkS6s2mxgj5yURddT27uaAbTjT63CNkB9dxvK4rd8T2XHW3WbqgNVz4Dc5aSP8voFgro8wFGTujEHoE7wprxnKzVqjIliPhFBHsDc7U+YcImvZac9xxs4MNSZIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4252JX0+KpIkSNxL4cgOQW9Kyf9lUpxRX/bHw+/4OX0=;
 b=h7nGFldSkKp+lv/H37Bp4pCPUy1uyCcsRhiobM0G9c3AmH7g7CDSd4jy8zt9m/GZLEXrXMTE+4rgnBGvhp2ugV7b8mM/qU5u6Ad1vHh0kTaTYAoJpx0J72SaJAG3/uxsZRE/RtNsnf9hbWbLMsp/ir61edO1gUq7M7YxlP6uhCU=
Received: from MW2PR2101MB1052.namprd21.prod.outlook.com (2603:10b6:302:a::16)
 by MW2PR2101MB1002.namprd21.prod.outlook.com (2603:10b6:302:4::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.2; Fri, 20 Mar
 2020 17:22:16 +0000
Received: from MW2PR2101MB1052.namprd21.prod.outlook.com
 ([fe80::71ee:121:71bd:6156]) by MW2PR2101MB1052.namprd21.prod.outlook.com
 ([fe80::71ee:121:71bd:6156%10]) with mapi id 15.20.2856.012; Fri, 20 Mar 2020
 17:22:16 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: RE: [PATCH v6 04/10] arm64: hyperv: Add memory alloc/free functions
 for Hyper-V size pages
Thread-Topic: [PATCH v6 04/10] arm64: hyperv: Add memory alloc/free functions
 for Hyper-V size pages
Thread-Index: AQHV+hZH2sSK6TnWLUqKIqZdhn3BQ6hK4/SAgAACOwCAAACGAIACfgqwgAC+cYCAAlRDsIABPYUAgAAOQwA=
Date: Fri, 20 Mar 2020 17:22:16 +0000
Message-ID: <MW2PR2101MB10521A71057BDEEDF2BB4F23D7F50@MW2PR2101MB1052.namprd21.prod.outlook.com>
References: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
 <1584200119-18594-5-git-send-email-mikelley@microsoft.com>
 <CAK8P3a2Hnm74aUMNFHbjMr4HwHGZn1+xa4ERsxAJY6hMzhEOhQ@mail.gmail.com>
 <632eb459dbe53a9b69df2a4f030a755b@kernel.org>
 <CAK8P3a3aihZeriUWAhWJMsOtdiY4Lo29syrRbB4Po3v4dsLhvA@mail.gmail.com>
 <MW2PR2101MB1052D91D3A9CEEBD7E2EA82FD7F70@MW2PR2101MB1052.namprd21.prod.outlook.com>
 <CAK8P3a2AO4k3vJ7WuJQz7ick+XPgGY3Jfk8-ROqtwyNs0nWkDA@mail.gmail.com>
 <MW2PR2101MB10520CEF065A41EEBC17FFC2D7F40@MW2PR2101MB1052.namprd21.prod.outlook.com>
 <CAK8P3a1MfYDTiQ9j0o3tnd=ymZukPoSmuExLhEMRR+GRwVD7xA@mail.gmail.com>
In-Reply-To: <CAK8P3a1MfYDTiQ9j0o3tnd=ymZukPoSmuExLhEMRR+GRwVD7xA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=mikelley@ntdev.microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2020-03-20T17:22:13.9185970Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=0ba56700-64ff-4d20-868d-5319aa9c83e1;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-originating-ip: [24.22.167.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8f3dd840-015b-49f6-ac53-08d7ccf33caf
x-ms-traffictypediagnostic: MW2PR2101MB1002:|MW2PR2101MB1002:|MW2PR2101MB1002:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <MW2PR2101MB10022F73E9FA53370F842E01D7F50@MW2PR2101MB1002.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 03484C0ABF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(136003)(376002)(346002)(366004)(396003)(199004)(478600001)(81166006)(7416002)(76116006)(54906003)(81156014)(9686003)(55016002)(66446008)(10290500003)(66476007)(33656002)(66946007)(66556008)(64756008)(8676002)(8936002)(6916009)(53546011)(86362001)(71200400001)(186003)(6506007)(2906002)(52536014)(5660300002)(8990500004)(4326008)(26005)(7696005)(316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MW2PR2101MB1002;
 H:MW2PR2101MB1052.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X7cmKdzQKYlypkbgpMmdB/KqOiE4l+J6xFJNZVXpyWJQHXU53T4eki0pIDdRHTnbWSnh1Gdv1tijG4wPk4xrmrkzVGYJeXsE6nWeB5okssL6JjztVvd65EAfWevIZThYBtuwfVWV+4J01Nz+YRLJgwyEEiGqDQDR1S2PP5QU2t/oP7qF0YzyLmsjCmOzp2E7781XUFPqbCZwSJ4RkKeUKQajpuN+BHirJrD7PIqWTvIcXCTx2xyDbC72g37lOlKXYiFPKIrVM8vRCKZjgEDIj/jqiQR9EklKpikSUM1J+Nbm0qIG/dkanaQmKgFK89PT+km89ZJeOsf3I0yoFrAVMye13TGWaxox1bJVNGJ11JYuRmdmSQphE0g4x/QM/PR7tNPJ10Ql52OR5JSXA3DxbFPo1bE76c/7IvLMdzzTXHvjQB/csxLOBktcvOD7VDSj
x-ms-exchange-antispam-messagedata: nIjl6UoV4iUAHAt7IbBcJpJDrMSxNXyEGk1FB1YUQJe0LZQ74ci12DbInsH8lRyYDPTdapXS6UpfOgvdEai0S6gqWOvSiwiZicmtNIPY7+3ERzCXFhBtM9s9rHWVGHJR0yPq+UDLgAENxsWQMHViig==
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f3dd840-015b-49f6-ac53-08d7ccf33caf
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2020 17:22:16.1920 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i3nxu0DuCdm75uABAe629t/dfDf+EidhXRwLPj6y6OAI9rTURajy64T1VspeWb8XcLES24Ktq2YUlvMD4PGGql2MXcrNrmwNixmbECv4z/8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR2101MB1002
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_102224_773245_2E6A7391 
X-CRM114-Status: GOOD (  18.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.116 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.243.116 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

From: Arnd Bergmann <arnd@arndb.de> Sent: Friday, March 20, 2020 9:28 AM
> 
> On Thu, Mar 19, 2020 at 10:43 PM Michael Kelley <mikelley@microsoft.com> wrote:
> > From: Arnd Bergmann <arnd@arndb.de> Sent: Wednesday, March 18, 2020 2:58 AM
> > > On Wed, Mar 18, 2020 at 1:15 AM Michael Kelley <mikelley@microsoft.com> wrote:
> > > My point was to keep the functions but use alloc_pages() internally,
> > > so you can deal with the hypervisor having a larger page size than
> > > the guest, which seems to be a more important scenario if I correctly
> > > understand the differences between the way Windows and Linux
> > > deal with page cache.
> >
> > OK, I see now what you are getting at.  I should spell out my
> > assumption, which is the opposite.  Hyper-V won't have a page
> > size other than 4K anytime in the foreseeable future.  The
> > code is too wedded to the x86 4K page size, and the host-guest
> > interfaces have a lot of implicit assumptions that the page size is
> > 4K (unfortunately).  But the last time I looked, RHEL for ARM64 is
> > delivered with a 64K page size.  So my assumption is that the only
> > combination that really matters is the guest page size being larger
> > than the Hyper-V page size.  The other way around just won't
> > happen without a major overhaul to Hyper-V, including a rework
> > of the guest-host interface.
> 
> Ok, got it. We should really ask Red Hat to change the page size,
> but as long as you care existing systems, and you expect this to
> result in gigabytes of allocation on future systems, having the
> wrapper seems reasonable.
> 
> Maybe you could fall back to alloc_page when PAGE_SIZE equals
> HV_HYP_PAGE_SIZE though? I'm not sure what the tradeoff
> between kmalloc and alloc_page is these days, other than the
> feeling that alloc_page is the more obvious choice when you know
> you always want exactly a page here.
> 

Yes, that works for me.

Michael


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
