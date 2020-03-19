Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DF618C285
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 22:46:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9LM6au5VnfWUIiNv403U8XEwuAPeaI/6IWdELoV2/XU=; b=ePuqt4qeWn3jHY
	S5/p59/yUooQUm5lMS2ULaO/QqoJVOUj/9FOmxzDD9hyCw59EEfqQ80xN6N0N74SSYfNejFhTxrRq
	c97E72W0rLHRhC89FcdGBp7kqhI6QE/ldsrl1OryOGxRgWX3v+f9/4o5FLvclUufZ7E2T43czwznP
	lNVlqHtEIP0VGQpHQd5NlB9v9KgT4CfKnOpiIoN2HBazS3VWrTtd7R5jzWXxPELPuUq818kDo8ksg
	Sq5U/qNPaC1vcIhIEyxLYCyXGyvuz8N6T2tv46dOt0xvMxn1Z07P6lEHQ4ovJFyqB4BFG0HnfCNbs
	rp4T54rRIiNIrYriv4rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF300-0004gx-IQ; Thu, 19 Mar 2020 21:46:44 +0000
Received: from mail-dm6nam11on2070d.outbound.protection.outlook.com
 ([2a01:111:f400:7eaa::70d]
 helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF2zp-0004gU-Dw
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 21:46:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FfCw9ZmO9cxS+ugiJEUvEtjqWXkLJoVhQIHsdhe7ejUqt6ijkzxfEgkqHUAssBOo8ZzwmfH8adF3beb6rFR0aSoS9bxryVpsM9Jp6iam1DMFYilCo5L2yPIFmnokxUzAkxB/T8p+/v0bSpBHhiG4s0GWiU3vgA14ukIMp6KMvdISKx/RFLfOOjHKvl4pwbhimiLuT/OlWCcPb7oizy7Wpv3bUfxRQA0SC4SzjWUOOEbcMxCppQE7dPhrq8oRdIaJMK96xChQhjk5BV8wN7cfsnIaqOZIE7KPiUVoEZZkEqtRIFxp4yuW4oBUFZ/639ogI7QxVCGYq3z7ogVwxHZapQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GGZFDQK0x2TthHuOrUz3Dusb/U9OWH3OvKmgQmwLTnE=;
 b=VxiN+Ziry1spuVn+m/zOn/YmWxYVakLuGYQheemHGyM0D9eaASDzSUJjgZMv9ZX/LAlMrPw0K6UKT3ho0yIyFdxNymuYIXGNqJvtfZwWToQPxLzxGySTIUlUlpsJa1sevYaq9ZU/VtyIeD0Pb9yizcaiMEUkieU/8mbamYKVyzLVu+vYHMhd4bAj3q3rAmLyvHVOlfN7UecslMpChEwAOh5kWT5S/fnUXNWZ+gI1H3GStBcIcrNMAS+f4FQfk47pF/L3eX+tzVZf+XI9Kq4ECNaXxn5aeOul6c2tdvDKYyarHNg48UEd1G7GoqDhXMw090fMeuYcKrc/J6REUfC4sA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GGZFDQK0x2TthHuOrUz3Dusb/U9OWH3OvKmgQmwLTnE=;
 b=OnYycY2cp1HPXZRazPrxFh1mOTsDnJSXZ0iUMVAat9y698OBdmCajdSqFbG8N994DIAtpeAQwZALvapmWhi5ElnDBPvz4c0FiwJy1g88TTIXV8ZVHvSK5X0M21aceUW0TSI+eGZtsCSuevGfPCgbCU0kDIf1CnA78+rPcOxrBtg=
Received: from MW2PR2101MB1052.namprd21.prod.outlook.com (2603:10b6:302:a::16)
 by MW2PR2101MB1002.namprd21.prod.outlook.com (2603:10b6:302:4::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.2; Thu, 19 Mar
 2020 21:46:31 +0000
Received: from MW2PR2101MB1052.namprd21.prod.outlook.com
 ([fe80::71ee:121:71bd:6156]) by MW2PR2101MB1052.namprd21.prod.outlook.com
 ([fe80::71ee:121:71bd:6156%10]) with mapi id 15.20.2856.003; Thu, 19 Mar 2020
 21:46:31 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: RE: [PATCH v6 09/10] arm64: efi: Export screen_info
Thread-Topic: [PATCH v6 09/10] arm64: efi: Export screen_info
Thread-Index: AQHV+hZM60S+LKGqSUO5qXQSEIBQyahK416AgAKQkECAAKacAIACYGNw
Date: Thu, 19 Mar 2020 21:46:30 +0000
Message-ID: <MW2PR2101MB1052E413218D295EF24E5E05D7F40@MW2PR2101MB1052.namprd21.prod.outlook.com>
References: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
 <1584200119-18594-10-git-send-email-mikelley@microsoft.com>
 <CAK8P3a1YUjhaVUmjVC2pCoTTBTU408iN44Q=QZ0RDz8rmzJisQ@mail.gmail.com>
 <MW2PR2101MB10524254D2FE3EFC72329465D7F70@MW2PR2101MB1052.namprd21.prod.outlook.com>
 <CAK8P3a1YCtc3LJ-_3iT90_Srehb96gLHvTXsbJ0wT6NFYCG=TQ@mail.gmail.com>
In-Reply-To: <CAK8P3a1YCtc3LJ-_3iT90_Srehb96gLHvTXsbJ0wT6NFYCG=TQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=mikelley@ntdev.microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2020-03-19T21:46:28.6393005Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=a1aef6bc-6f76-4372-a95f-2f5410092062;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-originating-ip: [24.22.167.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 88dd4c6e-b82e-4804-5377-08d7cc4efc6b
x-ms-traffictypediagnostic: MW2PR2101MB1002:|MW2PR2101MB1002:|MW2PR2101MB1002:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <MW2PR2101MB100230876759C2A56EA5B5AED7F40@MW2PR2101MB1002.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0347410860
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(136003)(376002)(346002)(366004)(396003)(199004)(478600001)(81166006)(10290500003)(9686003)(76116006)(54906003)(55016002)(81156014)(66446008)(33656002)(66946007)(7416002)(66556008)(66476007)(64756008)(8676002)(8936002)(6916009)(26005)(53546011)(7696005)(186003)(6506007)(71200400001)(2906002)(5660300002)(52536014)(8990500004)(86362001)(316002)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MW2PR2101MB1002;
 H:MW2PR2101MB1052.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HUM9vSPrPgIGmimBtitJzzIZoI9/+wKTz2Zxh2V7Al/xXBgGGftKYCdeRRUvr2On99gLeb0edSUEwMdNhd7fcJ82X2o+dZQE2pl3haGS5XpnwYrj/y9xtjjkg4XuSkHHV7uTVI/LIzt2iW9sW92ZQYTzcRdzA+RAMRGE98i3me/QCz8sq04boUfXfzWKtoYLlgzJs9J/W/TcjJKXQ39Iri9cj+mB3eI4mqdUFYCMqqFOeoxGBKRdQjPVrzITlTMCBx91damvnkZBICi34F4zK40Ov6rp8NdAldnHWnxlDuM3bb9dPjxXX9QffQZhpHWv6z5nr65Dou3KlZnJRzkZTEF7eUItM460INRMgrYNiq3Tf0ILCKMDAoL5ErxfEqwzPgoDFjpo0RKAlIQON8wQR23lBmrwnObK/R0OsQ4fg0Y5qLg0HYn/k1ddmyTomGn4
x-ms-exchange-antispam-messagedata: w+KyCdwA5hDK+9GQekTuLmxBsHXXZYZsrS0+/BAv9iiqXWDA73uKmYRfHX5gkIu/THjheE55zqjo/0YtKIVWLOEwpHZbEQStR9v2jrv/o3rraDGDkWcNUSxSwJJXrcq8Fa4k02BEeTrWafNYRWCAaA==
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88dd4c6e-b82e-4804-5377-08d7cc4efc6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2020 21:46:30.9752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OBggJ0tCyhhShH51osoGYn5xMAEd7+JD5W4m53hXsyprEgMVKSLtLTWNGJfTavQp1K026Ie1Si9lkM0BLkFYZw9jo4AoRVkGAHNBFMxa4Ko=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR2101MB1002
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_144633_470691_FC05DA50 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

From: Arnd Bergmann <arnd@arndb.de> Sent: Wednesday, March 18, 2020 2:27 AM
> 
> On Wed, Mar 18, 2020 at 1:18 AM Michael Kelley <mikelley@microsoft.com> wrote:
> > From: Arnd Bergmann <arnd@arndb.de>
> > > On Sat, Mar 14, 2020 at 4:36 PM Michael Kelley <mikelley@microsoft.com> wrote:
> > > >
> > > > The Hyper-V frame buffer driver may be built as a module, and
> > > > it needs access to screen_info. So export screen_info.
> > > >
> > > > Signed-off-by: Michael Kelley <mikelley@microsoft.com>
> > >
> > > Is there any chance of using a more modern KMS based driver for the screen
> > > than the old fbdev subsystem? I had hoped to one day completely remove
> > > support for the old CONFIG_VIDEO_FBDEV and screen_info from modern
> > > architectures.
> > >
> >
> > The current hyperv_fb.c driver is all we have today for the synthetic Hyper-V
> > frame buffer device.  That driver builds and runs on both ARM64 and x86.
> >
> > I'm not knowledgeable about video/graphics drivers, but when you
> > say "a more modern KMS based driver", are you meaning one based on
> > DRM & KMS?  Does DRM make sense for a "dumb" frame buffer device?
> > Are there any drivers that would be a good pattern to look at?
> 
> It used to be a lot harder to write a DRM driver compared to an fbdev
> driver, but this has changed to the opposite over the years.
> 
> A fairly minimal example would be drivers/gpu/drm/pl111/pl111_drv.c
> or anything in drivers/gpu/drm/tiny/, but you may want to look at the
> other hypervisor platforms first, i.e drivers/gpu/drm/virtio/virtgpu_drv.c,
> drivers/gpu/drm/vmwgfx/vmwgfx_drv.c, drivers/gpu/drm/xen/xen_drm_front.c,
> drivers/gpu/drm/qxl/qxl_drv.c, and drivers/gpu/drm/bochs/bochs_drv.c.
> 

Thanks for the pointers, especially for the other hypervisors.

Michael
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
