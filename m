Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9E71892CB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 01:19:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QMUMOSYRQCCKL9e+VvOspB5ymMJS1UB37B2i3zupRhI=; b=UD1ycM/43gcn5a
	8dwejfnRVFoE1TBgMrKpF+1hEPoJRePG4gMUDVGMoILtsB+TLmIncNLlGaFEH2Q3r+pk3YwpojZ+C
	GLpVswCcnlB+gLPpBuqkq/ATBjgCm+xKBb+B6ATFzurS2++GJXCwo9t8QLto7Y00J2GOAi8RDc27H
	TubSHe/t7IYFvexa1p5QpMUybNHzeBO5Q0Vh4BkNnLYpY0fZyHXKdr79Vpt4UQOSQhvhJEYjjkjWd
	XFDA+DtSjwAS2teX6d7ZbbfVs5cEfa78+aPV9n0Xag+rHzl+1Q7oTifEttc+Ogl8j834Jg3FEeWog
	otRGZaQcXxxMsdvTbXaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEMQ8-0004bm-3n; Wed, 18 Mar 2020 00:18:52 +0000
Received: from mail-eopbgr770134.outbound.protection.outlook.com
 ([40.107.77.134] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEMPy-0004bA-Ab
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 00:18:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g9qs5GRq9v40XZmFfW5YDJH3ci7OFvETTsQ7B3HiJ2pK9i821Ezd+oLCggVpXzgrFHmoI1vOPJH+jlSR3Tae0+as33bvUdnhxhZhY6k1wG4Y8IA1y5SAM48zoLmLaXknAGZVGmXaJivkI6jgdZghqZtrH3aYj5vVfdsw7whZXJI5oInoiXq3shK/UwPD45XV1yW9trkeYjOTsvHnYRBPo9GxdB0aqpxDtomNSsP3USkHrluNkGJiJ0u5QQFXJPxbJxD0mkBh9+kdUa+VXsY80+nlAAysFaJj1fSx6nx9OR1RMThzEllFF/S7xfLUdCcBiu0EJzNmEO2pI7ommCaJCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1d+VYi8g7pTo0pUctlsP9nsPPvpQ/jGV+rl1Qn8AErE=;
 b=BFOcqGpdSmNFf5oFwa2cnouOoEkFuqbTCqv9IX5y2UShyAaTj7U0m7PiaU2HyeQDZbujHcs87UUuDXv5ZDbIeLEUOVVIoEjqxjFpMG7bi1vCGfloHBqkiA1GpA3PijK9v7+nLP5zPtlA0hl6+23dRNvM7dBgZ1/H0XilIQvuui3Y6RgYam98Xtn+Qvy33fPwoL1UmJznbRFzs1J+DdOP7jkTZfJgeWr93eydXlDceGpm0/grvUACvVluguvsI0qFnlIyKifzStJlC3aV+cDUruErkrxLBjrNAh5/Zp32VmoyFDf3vjglEw0Ii40Ut8JpVfV3wDeRGi+brlPLYa//zQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1d+VYi8g7pTo0pUctlsP9nsPPvpQ/jGV+rl1Qn8AErE=;
 b=VojK9mX+FrTBR4KsjJzW43N7eFPGIB8UrdePlsh/hefTJlRvAcfDNMgUd2H+dlk/O8Op6eskdKm0OEJmhZnMrwrfnWnSooPJI1x96gdTy6bl8ZMXi3GhNlLfk4LdCYaaw33nyP6TxN8DYvpkAIGVS9O0AOyYwe83bQPNuzyGMwY=
Received: from MW2PR2101MB1052.namprd21.prod.outlook.com (2603:10b6:302:a::16)
 by MW2PR2101MB1082.namprd21.prod.outlook.com (2603:10b6:302:a::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.7; Wed, 18 Mar
 2020 00:18:39 +0000
Received: from MW2PR2101MB1052.namprd21.prod.outlook.com
 ([fe80::71ee:121:71bd:6156]) by MW2PR2101MB1052.namprd21.prod.outlook.com
 ([fe80::71ee:121:71bd:6156%9]) with mapi id 15.20.2835.003; Wed, 18 Mar 2020
 00:18:39 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: RE: [PATCH v6 09/10] arm64: efi: Export screen_info
Thread-Topic: [PATCH v6 09/10] arm64: efi: Export screen_info
Thread-Index: AQHV+hZM60S+LKGqSUO5qXQSEIBQyahK416AgAKQkEA=
Date: Wed, 18 Mar 2020 00:18:39 +0000
Message-ID: <MW2PR2101MB10524254D2FE3EFC72329465D7F70@MW2PR2101MB1052.namprd21.prod.outlook.com>
References: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
 <1584200119-18594-10-git-send-email-mikelley@microsoft.com>
 <CAK8P3a1YUjhaVUmjVC2pCoTTBTU408iN44Q=QZ0RDz8rmzJisQ@mail.gmail.com>
In-Reply-To: <CAK8P3a1YUjhaVUmjVC2pCoTTBTU408iN44Q=QZ0RDz8rmzJisQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=mikelley@ntdev.microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2020-03-18T00:18:36.7972300Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=92eac9d0-fc23-4dc8-9926-4f5d9b19181f;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-originating-ip: [24.22.167.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 39cc58c0-2c60-48cb-5116-08d7cad1e86b
x-ms-traffictypediagnostic: MW2PR2101MB1082:|MW2PR2101MB1082:|MW2PR2101MB1082:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <MW2PR2101MB1082BD0386B7115665EB1D14D7F70@MW2PR2101MB1082.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 03468CBA43
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(346002)(376002)(396003)(39860400002)(366004)(199004)(10290500003)(55016002)(478600001)(7696005)(5660300002)(9686003)(54906003)(2906002)(7416002)(8990500004)(53546011)(33656002)(52536014)(6506007)(6916009)(76116006)(71200400001)(186003)(4744005)(66946007)(66476007)(66446008)(64756008)(66556008)(4326008)(8676002)(316002)(86362001)(81156014)(8936002)(81166006)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MW2PR2101MB1082;
 H:MW2PR2101MB1052.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MIuoynU3lG/4CEJHwvOc3DUUrjvzesO/IF7QFmPuUKIkEaoNjqYOg9TUC/cLgSltN/rLeZ5fwjU9zYHKFl8dSrevPLnlkTCKJ6KRMtTPZwU0H6Y1jiiZvJ9uwV17UII3I64GKIVHQzz6npucUkoT9JWmKezymJsITuUitGAyNcpqOUjaPf6e9+lenzOfoMdpqHh+ECo8aaz7ecLk3+Ej3De3I7lO4zVW8hfG//td+ztVeohKwxXVICH9Cl4qEUHPdhaHJneHpVggHlAXZW4rCeFzHYCfz9KMYcQU1t0ToD+Mimuduf73n5FYdoXK7g38tpwiSe2bK6YWijfFnZfOsi/YQo3N8J7eCgSD3xRAWZ64oMYITT66bMrrnuQY6wydjutWw8mG+x9tsQIQdaeDXcJN0MDLlumvCjDXskMDC69ISKt7QCKlUV0ttGBC4Qf5
x-ms-exchange-antispam-messagedata: 7VQPMRZBgY1mWcLu8YDz+RVEoqF40yQoksCiG9tX9cP9MIZsau0F83BeENi7eIYqcCexY6PxtuGSXT6i/hg0G5DXIwRs6P8Z1AD616/B4z/nCY2KbmpjfySxISqaeNNuoSl5fNlk2DYKmIojaveXKA==
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39cc58c0-2c60-48cb-5116-08d7cad1e86b
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2020 00:18:39.0758 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Psd0mnrks8as3rv16Tp4Ra8aNacOu3+ok9lahG4zuNKlYVA2MUs80IQ852swg9lugDtUiy6MKsZMcGFeaMwWSZCf5Y+lBIkalSZvR6x3v4I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR2101MB1082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_171842_372052_4709BA59 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.134 listed in list.dnswl.org]
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
 gregkh <gregkh@linuxfoundation.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Jason Wang <jasowang@redhat.com>, Sunil Muthuswamy <sunilmut@microsoft.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "olaf@aepfle.de" <olaf@aepfle.de>, Marc Zyngier <maz@kernel.org>,
 Andy Whitcroft <apw@canonical.com>, vkuznets <vkuznets@redhat.com>,
 KY Srinivasan <kys@microsoft.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Arnd Bergmann <arnd@arndb.de>
> 
> On Sat, Mar 14, 2020 at 4:36 PM Michael Kelley <mikelley@microsoft.com> wrote:
> >
> > The Hyper-V frame buffer driver may be built as a module, and
> > it needs access to screen_info. So export screen_info.
> >
> > Signed-off-by: Michael Kelley <mikelley@microsoft.com>
> 
> Is there any chance of using a more modern KMS based driver for the screen
> than the old fbdev subsystem? I had hoped to one day completely remove
> support for the old CONFIG_VIDEO_FBDEV and screen_info from modern
> architectures.
> 

The current hyperv_fb.c driver is all we have today for the synthetic Hyper-V
frame buffer device.  That driver builds and runs on both ARM64 and x86.

I'm not knowledgeable about video/graphics drivers, but when you
say "a more modern KMS based driver", are you meaning one based on
DRM & KMS?  Does DRM make sense for a "dumb" frame buffer device?
Are there any drivers that would be a good pattern to look at?

Michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
