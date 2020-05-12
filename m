Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8194A1CF359
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 13:30:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3k0cFoSa8kYlijbveGHPCGSzSpdl6iV4T4unYULnjI=; b=i4Glvisq9q5Q27
	A8PqgEbTHNCb+F3GeyyrmYwtw2X6Y3WcfaX7dw7NvDSnEj/eRS3+bgdpgSpIQqE+vCF5q+qfFJyiE
	Mo9M8wQpZV7j+MBF9R/fR9R7R+r2Dg0GjnpvGWLrP7Pzim9KR+9ObK5syF7Lfub0ydRJkjdVWY/cz
	Pbk7RJSMgSbwdbOKJlKsu+cirO0Ecbdf+OvitFt1ATPEtggKHLFNcy3SdZRU+8Kf3rfDV5i98UD80
	lqKkYZm0+KVBSGG3cgjkywvnfUqo0Rc84PHiyH1hkJrZIqdEMAYJss7I9MZxCsk7qlW98JfZSNPS3
	8+PpY5z3v5TG5imOfOyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYT7P-00047R-0J; Tue, 12 May 2020 11:30:39 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYT70-0003wc-2X; Tue, 12 May 2020 11:30:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589283014; x=1620819014;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=dxXmUhUPpxBKko4J3joFmmQRuvEUizeiEmBAqHTdng0=;
 b=JsXJcElVuoPFTBcSII7WOMh90Yu7c2wO5pZPrpkL3E63TCuOC1ibSTJZ
 X14KCLVd3fEYpvmp2KiwUUWDh+O9EFaj/Bsah3YAYBL1LOZmHBHErJUw3
 kkYQAHt+xvGx6+nAUzD0cc/2iU86fqUblHAykqT75h5KDqsUP/2NTxcXN
 Er6QzjXIPymSP5Bf+uIFJ4Y9ReWZ94lTMuKMXfitI6n7F1a/Q7Z7Uckew
 ADpNdumQ8jZLASUfbfuNEEs/5BHT7uxah64Aw4ZadSGMEMbmgVA4ngUca
 E0cY0ptSQCrcxFJT9opyiHhtLfHqX/694qr7Bb4HIg3XqWjnfu2u1CcxG w==;
IronPort-SDR: 5M8CTnBYortKXeUXnXoaWD43z8iq4uXFSiMmFNKQUa0HYmvyHUtNioYCYEmd8JhlWEvtNftJH4
 SrqbDPwYCgVgK60V47+5j9n0Eq674akHwdDbaMaSbkuMyx9l8JaLa7i0QVxtVbPOwK1AgJ3Xtj
 siQWsTSoESVTtRmFtqoDDHj4iwX9VfW1JgQ3MdG/mh2d/98k40YIzi/fFgIaTtkO9cTa/uaTCe
 g1ZUOOi5mVJSit2nkdck789HegZFbz1Gqcy9XlFyYyh4CmVKqONE6d7m9ah+BtP6WvNhX/ViSv
 n84=
X-IronPort-AV: E=Sophos;i="5.73,383,1583218800"; d="scan'208";a="75610674"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 May 2020 04:29:57 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 12 May 2020 04:29:58 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 12 May 2020 04:29:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aC5x1LyfSHAa+XdkBuQ7lJZutuTazpgDZ8vCaUpJBR4f7d+HMrTyF93gc582X1vciVjuLxsvrD2bvaA9R4Tij01e0IIrkjdCWJo0lAbgr/QEOKw48dQoCbxPsuBjg3B3gEwmNdQFCkJkGn3+u0JkVPMX87Pf9vxth/apcOFLet+gQGmhq65YTtIVmuzkE/9mNe4TgbtoLGJSsmt5A2dVk73/xq1yJoZOfxHj18fpTRt3xW3xCkS5JZjZ/JA5kz6c8xFMQGIYXK7rszAIEBIzWHPfBhRQggU+nKxMCeDPbf00djokbgtdC3xcIXZL4GTUFuY27xDPl445vIaToBsztg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dxXmUhUPpxBKko4J3joFmmQRuvEUizeiEmBAqHTdng0=;
 b=CVy574zK5msFvTX0B+Tf9fnwpX/0THhSlnlMAaAZfFETAi2MkCqsQNVYKZkN4b0UEn9LNjR+1khilZRcxafy1CCrvD6xauSMs2ny+FJmyMNAMVUWKyoNPi3HjDsfMM4J4IIRocPr+o52xBEVN9NBSrugOZnJKEG+b8DnLOvXSUMEfArzfq7XiO4RAgd0JptiybVwdaf+tw+qW5gSS2Dhv8HhGytlRhZmajUhiSrNMc1XV/dhlXdrlghqiDBTezTLIFodzavb1Pcqjh+qIb0/bos3E9cuP3nfnpT+LBwzWe8Ji4Eq+d1gBGcR0cXsGdubKaNFm+5ol3haPnVSwM49ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dxXmUhUPpxBKko4J3joFmmQRuvEUizeiEmBAqHTdng0=;
 b=o8ubR84TsqTKlrbeH5Qboe10KvxqaqEfwJBXK+bJSfLwdjqAU8OgMstkKZBW1flx1sRPY7Jx2elm6YrnerAS7DM25jnS0ny3UJ4tF3eCqDyupwLz9QUbtvauFfeZlNgcrtrRAVZdJWDOJi9sPBUGIie8H2SRpm0HzChxV3AHRQw=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4273.namprd11.prod.outlook.com (2603:10b6:a03:1c9::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20; Tue, 12 May
 2020 11:29:52 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536%7]) with mapi id 15.20.2979.033; Tue, 12 May 2020
 11:29:51 +0000
From: <Tudor.Ambarus@microchip.com>
To: <linux-mtd@lists.infradead.org>
Subject: Re: [PATCH v4 00/16] mtd: spi-nor: add xSPI Octal DTR support
Thread-Topic: [PATCH v4 00/16] mtd: spi-nor: add xSPI Octal DTR support
Thread-Index: AQHWJ3Khn/aolf/mv0usqjltSIxTLg==
Date: Tue, 12 May 2020 11:29:51 +0000
Message-ID: <2352513.UHBGRE98Z5@192.168.0.120>
References: <20200424184410.8578-1-p.yadav@ti.com>
 <144878625.o7txgtY6sz@192.168.0.120>
 <49abc8f3-5bb5-bc6d-b2ec-f14b115c58dc@ti.com>
In-Reply-To: <49abc8f3-5bb5-bc6d-b2ec-f14b115c58dc@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=microchip.com;
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a709c7c3-0de1-4d26-de04-08d7f667c97e
x-ms-traffictypediagnostic: BY5PR11MB4273:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4273E99AF8E2073EAD9CE1DCF0BE0@BY5PR11MB4273.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0401647B7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4Gv0WOjS+9tYsBLjdISMnxZsyY9Jv77VM6xy06AZZ2r/iQweAreCiYPj1OD0Y1KVSgxXez0ct8CfAwH4VGxWsy/Y6ywKy4lle/0BoGtmwE2n89iOdB432vGOQqUOi7LKvFFRujIhfPxnnNg/mH1UUa+W58+xPayZGnJZ5+6GrS5ov4GEVL5wYCqyj9XYI8GTBw0iOycX5tadsrSs4LQ6bpH2TmkUmG93hFs7v9TbnCNYPCkaJW5ss/dRs4XRb8JGVZI1tfxFoyL83TjAu4W4XaRaywtvIZwraDNgTDUd/837dHa2iVTvi66Sgn20jWz3gbsjLcq3dE5nku3aSAKD93Ze9F/rDpHZt38j4JzreiKi1/t23jatdq240cicqNIZjhALrwbcPi/jQ1+MUClLJ+/P2SKq5KQ5Sqovgew0FUy+gmR5R+8D0URZHZk1MWN/U/1a/9ExNazNJrgd/u+tgrCB0UZCXxq1Iqze/a0kKKklwMpip8sfQvsVKV8kzRnTdfiDcrqdD3g10OaBfqD3Bg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(39860400002)(366004)(346002)(136003)(396003)(33430700001)(6512007)(9686003)(6506007)(8676002)(53546011)(54906003)(6486002)(316002)(26005)(186003)(2906002)(14286002)(5660300002)(33656002)(86362001)(71200400001)(478600001)(4326008)(8936002)(7416002)(6916009)(33440700001)(66946007)(64756008)(66556008)(66446008)(66476007)(91956017)(76116006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 0z/9iDby6r1RomoUT3gx21JWxqrI3EYVWQLLFJi8jVtrhXxxYhJos+kiyjBaBuEbINB7Yut+1BS7RYLATStFiQVB9Hin/yGEDQyngsglkEtxCWTVWVi4YKOGQuoGnb8vuUit3LGMWu+PqKJDElC6o+7yDUXIlDZpl+VhBVhekW5ZKRH+BQ49coEQQAwSekBerkdd2FHBG53rPS7ajcOoTPhYgQOnJ8dQHomtZWqg66ncY370sDG7HP/7JksGO+tF0k9iu4FUY7ouza4eHorXs1HPwyH/2AyYa7HWSAogyeskJYgVLBC5ve4+MgY0s6xh+Bt22Q+8vqguJOTtvs/4VMAP1F8bzIB02UuUT6uaOfSCMnH6fqXBVH9gDW5BocI20gY5pNGobcCosEpocvCPajZR/Vy8jes95mJN+xFTgJPxQLAM+jC5Iyh4UOxEbfPpuxYSptFI4+zPWMpaxHRwvlEA68SdrYIYg0eG40A1Wa4=
Content-ID: <44CDA89EFFB0AE4D9EC0B1C246CED218@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a709c7c3-0de1-4d26-de04-08d7f667c97e
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2020 11:29:51.6335 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z468bkByZ2ePhuJQZSoQnWSjgQw18GCKblKph7YUtgNcrIkd4qfNYzyvlkusdQlQo+RfuO6hymhUdA/Yok6xr7p3AkyyGTNx11Oj901DsjM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4273
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_043014_176763_AD8F3E0E 
X-CRM114-Status: GOOD (  19.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alexandre.belloni@bootlin.com, vigneshr@ti.com, richard@nod.at,
 broonie@kernel.org, nsekhar@ti.com, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, boris.brezillon@collabora.com,
 miquel.raynal@bootlin.com, linux-spi@vger.kernel.org, p.yadav@ti.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Vignesh,

On Tuesday, May 12, 2020 12:49:07 PM EEST Vignesh Raghavendra wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the
> content is safe
> On 12/05/20 11:46 am, Tudor.Ambarus@microchip.com wrote:
> > Hi, Boris, Pratyush,
> > 
> > I stripped case 2/, we'll not treat it for now.
> > 
> > On Monday, May 11, 2020 12:27:12 PM EEST Boris Brezillon wrote:
> >> EXTERNAL EMAIL: Do not click links or open attachments unless you know
> >> the
> >> content is safe
> >> 
> >> On Mon, 11 May 2020 09:00:35 +0000
> >> 
> >> <Tudor.Ambarus@microchip.com> wrote:
> >>> Hi, Pratyush, Boris,
> >>> 
> >>> On Friday, April 24, 2020 9:43:54 PM EEST Pratyush Yadav wrote:
> >>>> This series adds support for octal DTR flashes in the spi-nor
> >>>> framework,
> >>> 
> >>> I'm still learning about this, but I can give you my 2 cents as of now,
> >>> to
> >>> open the discussion. Enabling 2-2-2, 4-4-4, and 8-8-8 modes is dangerous
> >>> because the flash may not recover from unexpected resets. Entering one
> >>> of
> >>> these modes can be:
> >>> 1/ volatile selectable, the device return to the 1-1-1 protocol after
> >>> the
> >>> next power-on. I guess this is conditioned by the optional RESET pin,
> >>> but
> >>> I'll have to check. Also the flash can return to the 1-1-1 mode using
> >>> the
> >>> software reset or through writing to its Configuration Register, without
> >>> power-on or power- off.
> >> 
> >> My understanding is that there's no standard software reset procedure
> >> that guarantees no conflict with existing 1S commands, so even the
> >> software reset approach doesn't work here.
> > 
> > The software reset procedure can't protect you from unexpected resets, but
> > the hardware with its optional reset pin can. Pratyush to confirm.
> > 
> > cut
> > 
> >>> Not recovering from unexpected resets is unacceptable. One should always
> >>> prefer option 1/ and condition the entering in 2-2-2, 4-4-4 and 8-8-8
> >>> with
> >>> the presence of the optional RESET pin.
> >> 
> >> Totally agree with you on that one, but we know what happens in
> >> practice...
> > 
> > What I proposed is to condition the entering in the state-full modes with
> > the presence of the optional RESET pin. We would introduce an optional
> > device tree property for the RESET pin. If hardware doesn't implement the
> > optional RESET# signal, then we will not enter in the state-full modes.
> 
> Are you asking for dedicated SW controllable reset line or just an
> indication from DT that OSPI reset line is connected to board level
> soft/hard reset lines?

I don't see a need for the reset line to be SW controllable, a simple 
indication from the device tree should be enough.

> 
> Mandating SW controllable RESET line is bit of a stretch IMO... Board
> design may not allow wasting dedicated pin due to lack of GPIOs perhaps..
> 
> For eg.: TI EVM has OSPI reset line connected to board level reset out.
> This ensures any soft/warm/hard CPU reset will trigger OSPI Flash reset,
> but there is no SW control that allows OSPI flash alone to be reset.
> Isn't such a reset mechanism sufficient?
> 

I think it is, yes.

Cheers,
ta


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
