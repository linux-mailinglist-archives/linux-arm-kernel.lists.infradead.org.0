Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FD4177487
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 11:53:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5y53c9WuIYV+J0HJPb9zC115GWkxV9u74b04kF6Ghac=; b=TkAKQj/R2tlEOh
	vnhjv/oSpyshYDZ2Wp7alTHylE3ZrJw6UaWXrO6o9gl/7hX7u2Yh2XXjX9f8INMZ6qAFgCcnc7+qn
	fBihnYLZr5D2P2IHsrrV+Jk971CH5vOlUgvqzqmPTHrTpqWU5uDAGUwRCW0BV4Bg1m/UPdmt48UGY
	axnY8nyTHrRRXz4tJB+lEBu6FlVEeZ8mZBlJG1aqxE3yBbCued+JyVPXmWV75vMbwraAvCB9JqG85
	9FqllIRD/NXdvlr/fULEImNf3UrLb8566tyypRGuK7BAyUqiDB/z2z5IzedzP7Oe4ToccG+5LU8am
	5xrjdHgn3fx6D1EZYLTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j95BJ-0000hR-6h; Tue, 03 Mar 2020 10:53:45 +0000
Received: from mail-eopbgr00078.outbound.protection.outlook.com ([40.107.0.78]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j95BA-0000gn-S0; Tue, 03 Mar 2020 10:53:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DdIjeztbu4suoMrtRh5LJc3vAdFk+ORXzTNqLB9I1DQ=;
 b=miGjpXjeWuKhal3oqdGKl2nZQbHH2EMvW60CIKFz5OPHy5mFRB5LhNki9Hd+VfHwYDVwLdjQToB9jLfaHAjG2hEfWbZ+tCD4C4pNONHM245gsX2xHK4EH/ped8E8DpFtg1FkXE6TRPxr1p4ImRgvXb+Z0Ei3imsOyxjNGme2M4k=
Received: from VI1PR0802CA0001.eurprd08.prod.outlook.com
 (2603:10a6:800:aa::11) by AM0PR08MB3860.eurprd08.prod.outlook.com
 (2603:10a6:208:10b::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.15; Tue, 3 Mar
 2020 10:53:31 +0000
Received: from AM5EUR03FT044.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::203) by VI1PR0802CA0001.outlook.office365.com
 (2603:10a6:800:aa::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.18 via Frontend
 Transport; Tue, 3 Mar 2020 10:53:31 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT044.mail.protection.outlook.com (10.152.17.56) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.14 via Frontend Transport; Tue, 3 Mar 2020 10:53:31 +0000
Received: ("Tessian outbound 846b976b3941:v42");
 Tue, 03 Mar 2020 10:53:31 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 2fb315371c14d04a
X-CR-MTA-TID: 64aa7808
Received: from 37e9f0de91be.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 D554EB7A-A13B-4AF5-A4B8-84DBDC75D929.1; 
 Tue, 03 Mar 2020 10:53:26 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 37e9f0de91be.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 03 Mar 2020 10:53:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DrFds+ImEgWXXOaAkcEXfQ69QMAcceNGcj39KRfmajMXmrspi6LCI76jEqwevEER5VK1r1oqtEcxS/6mrE564zzJjLu4Kh/otNqB622W/8qltOPsQLA+FNeACCLZR6P6naxuwi8ZaD1Aa7yr1PwvWHn4YTx1Hst/yygAvb0ML/UpB+Yg8WIkcIPYLqTkXiGtd1CaoPKciBehIQacPxXihrFRkYXW5AaloY5Y06Tw8aqiVnXGPgT9ImGdgnSk4GjBDneH8ZWFmTCmvqWLhF5mN5iVMcu5xxorNlSjgIsS3SpdcczgStoCRjO0/yLcDfJdZ7DuJfZrqic4QRtIH2jiyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DdIjeztbu4suoMrtRh5LJc3vAdFk+ORXzTNqLB9I1DQ=;
 b=a0i9LtBZ4lTI3DHzCg7acRg1QFaZk7k/ZHfAr6N4tQ+dlYOQOwu8PxMgI5SldevIcJOFqq3hNqnM6L+NSEuIFTrE+twK/w3KRNVD9TSa2PXVVTveqTCVbhd0oB96o8N2+LrCaWw3ZzQZqOUu18FY7zswyO0WGyOo/DXkUhqgma1OD2VwudizuNh6wWJzmAANYxKRIBmeaTHVz9D5lrY7o8B7nvFXNFn+r6sQWfeNNeAVXBUgzvkP9xxeASRY5XgAhd+zKTdHh7sh2rqLqQO/mfXGc/7ZUsF1vH2u6lCGRSYlGBRhxGfpZArjgcXwrZRdPHDRAf1hQbprAmTS+/o/JQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DdIjeztbu4suoMrtRh5LJc3vAdFk+ORXzTNqLB9I1DQ=;
 b=miGjpXjeWuKhal3oqdGKl2nZQbHH2EMvW60CIKFz5OPHy5mFRB5LhNki9Hd+VfHwYDVwLdjQToB9jLfaHAjG2hEfWbZ+tCD4C4pNONHM245gsX2xHK4EH/ped8E8DpFtg1FkXE6TRPxr1p4ImRgvXb+Z0Ei3imsOyxjNGme2M4k=
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Brian.Starkey@arm.com; 
Received: from AM6PR08MB3829.eurprd08.prod.outlook.com (20.178.89.14) by
 AM6PR08MB3046.eurprd08.prod.outlook.com (52.135.165.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.15; Tue, 3 Mar 2020 10:53:24 +0000
Received: from AM6PR08MB3829.eurprd08.prod.outlook.com
 ([fe80::75a9:e388:c1ff:6352]) by AM6PR08MB3829.eurprd08.prod.outlook.com
 ([fe80::75a9:e388:c1ff:6352%5]) with mapi id 15.20.2772.018; Tue, 3 Mar 2020
 10:53:24 +0000
Date: Tue, 3 Mar 2020 10:53:25 +0000
From: Brian Starkey <brian.starkey@arm.com>
To: Pekka Paalanen <ppaalanen@gmail.com>
Subject: Re: [PATCH 1/4] drm/fourcc: Add modifier definitions for describing
 Amlogic Video Framebuffer Compression
Message-ID: <20200303105325.bn4sob6yrdf5mwrh@DESKTOP-E1NTVVP.localdomain>
References: <20200221090845.7397-1-narmstrong@baylibre.com>
 <20200221090845.7397-2-narmstrong@baylibre.com>
 <20200303121029.5532669d@eldfell.localdomain>
Content-Disposition: inline
In-Reply-To: <20200303121029.5532669d@eldfell.localdomain>
User-Agent: NeoMutt/20180716-849-147d51-dirty
X-ClientProxiedBy: LO2P265CA0471.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a2::27) To AM6PR08MB3829.eurprd08.prod.outlook.com
 (2603:10a6:20b:85::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from DESKTOP-E1NTVVP.localdomain (217.140.106.52) by
 LO2P265CA0471.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:a2::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.14 via Frontend Transport; Tue, 3 Mar 2020 10:53:24 +0000
X-Originating-IP: [217.140.106.52]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 7f25d5af-1073-4524-b57e-08d7bf611cfb
X-MS-TrafficTypeDiagnostic: AM6PR08MB3046:|AM0PR08MB3860:
X-Microsoft-Antispam-PRVS: <AM0PR08MB3860BFF2D47F798396ABE82CF0E40@AM0PR08MB3860.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;OLM:10000;
X-Forefront-PRVS: 03319F6FEF
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(376002)(396003)(366004)(346002)(189003)(199004)(5660300002)(186003)(52116002)(7696005)(16526019)(9686003)(44832011)(86362001)(55016002)(6506007)(2906002)(1076003)(66946007)(81166006)(8676002)(4326008)(8936002)(478600001)(316002)(6916009)(66476007)(66556008)(26005)(81156014)(956004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR08MB3046;
 H:AM6PR08MB3829.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: xZdJFGg77MD31b6coOgyxJsP6RdCvLqeFuKObUhZakFdYzzO9lkiam02zAik4ljgixfV92m9yJMk4wIYEkA64vStMcGIcDtnxb2taRAc9A3nJdjvTvdXjtyollbv+WjeLH98y85SyyoakdmGW4+SChIo6xy3xQsIjsbPgotiMly5LKv8tVVDQmnLmA6v/hzexDTQCEg9lXuoOgUT3bsxJPZM5qn0CdxUdHnbCYOoqZoMdH5saShcmUwZh7y33zgx6b6YpPMo0x3PnezyBbKff72hz5n23OY/DM65kdVG0aKga9wp07dEtJS6QJbpMQDEmn7ghoAYLGSrRCu8AmF6bTdc3/jGktOLht+2/V7NMFFe0vSw9WP6vBBZjpKJB2PoErjEDzPCtUovxDnUZPF7gx5xu2iGJd8LTETGsEDMpcqV9PSuBEg2qE07c4EMzI6G
X-MS-Exchange-AntiSpam-MessageData: VlCO4z76c5qkgy8Q5XpMLWY00qPK7QORb3BZzNkAqjqK0Mt6Y4m3yH0eZKMZq4bOr1JOUFXfyim1gIA7SYNgTFhKzIow3lB7DcZo5q/NI5DwniEy50mPx/79v6i4x0viURSjX30nwAQ+6w5PUtFprQ==
X-MS-Exchange-Transport-Forked: True
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3046
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Brian.Starkey@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT044.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(346002)(39860400002)(396003)(189003)(199004)(44832011)(5660300002)(55016002)(186003)(6862004)(336012)(7696005)(16526019)(6506007)(356004)(9686003)(86362001)(2906002)(450100002)(26826003)(81166006)(1076003)(70586007)(4326008)(8936002)(478600001)(8676002)(316002)(36906005)(956004)(26005)(81156014)(70206006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR08MB3860;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 61529b82-9df9-454f-c4c1-08d7bf6118bd
X-Forefront-PRVS: 03319F6FEF
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BVA7KgzH5WXU5wA0OjthXhSby73mQ/Kfbj092a6B9eOrg6MiuGJzOkYYh/ujEnf6nfdasIsOHPTBQFmLjiTS5G9ua5E2DHusJbyeiFVKhZt6v7WuzEKSOI4w26paOVXK3c9aOfGrVoUzbDQnWvATwpHyuRLEmoETU6cNS4Ui15tXcJar+gjYiJOQfKj4gQ96UfOtHmVZSC0DSJY9/tGrknooSk7Du/jtIh6jAYQziYY8qfkkh24n5N0IYRw5WTdC8bAUj2lZQIG2Iwn+/z4ApsE/hJSYwQYTHc4/u15DhCL+wGdj6oo7i8hqs/McwpqgJISDT6B2IowSJnHFBHqB/c7YJgz8jdPIkhbIsH7ix1Rh/sdcY02KohMCg5RcZaPjLsBA/2KBd4N3ZO8+86ZFKD971S4T4DdJfeKBaSdozl2qPGqxq9W6/174XAq1bWiD
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2020 10:53:31.4434 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f25d5af-1073-4524-b57e-08d7bf611cfb
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB3860
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_025337_316982_4C277242 
X-CRM114-Status: GOOD (  28.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-amlogic@lists.infradead.org, nd@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, Mar 03, 2020 at 12:10:29PM +0200, Pekka Paalanen wrote:
> On Fri, 21 Feb 2020 10:08:42 +0100
> Neil Armstrong <narmstrong@baylibre.com> wrote:
> 
> > Amlogic uses a proprietary lossless image compression protocol and format
> > for their hardware video codec accelerators, either video decoders or
> > video input encoders.
> > 
> > It considerably reduces memory bandwidth while writing and reading
> > frames in memory.
> > 
> > The underlying storage is considered to be 3 components, 8bit or 10-bit
> > per component, YCbCr 420, single plane :
> > - DRM_FORMAT_YUV420_8BIT
> > - DRM_FORMAT_YUV420_10BIT
> > 
> > This modifier will be notably added to DMA-BUF frames imported from the V4L2
> > Amlogic VDEC decoder.
> > 
> > At least two options are supported :
> > - Scatter mode: the buffer is filled with a IOMMU scatter table referring
> >   to the encoder current memory layout. This mode if more efficient in terms
> >   of memory allocation but frames are not dumpable and only valid during until
> >   the buffer is freed and back in control of the encoder
> > - Memory saving: when the pixel bpp is 8b, the size of the superblock can
> >   be reduced, thus saving memory.
> > 
> > Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> > ---
> >  include/uapi/drm/drm_fourcc.h | 56 +++++++++++++++++++++++++++++++++++
> >  1 file changed, 56 insertions(+)
> > 
> > diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
> > index 8bc0b31597d8..8a6e87bacadb 100644
> > --- a/include/uapi/drm/drm_fourcc.h
> > +++ b/include/uapi/drm/drm_fourcc.h
> > @@ -309,6 +309,7 @@ extern "C" {
> >  #define DRM_FORMAT_MOD_VENDOR_BROADCOM 0x07
> >  #define DRM_FORMAT_MOD_VENDOR_ARM     0x08
> >  #define DRM_FORMAT_MOD_VENDOR_ALLWINNER 0x09
> > +#define DRM_FORMAT_MOD_VENDOR_AMLOGIC 0x0a
> >  
> >  /* add more to the end as needed */
> >  
> > @@ -804,6 +805,61 @@ extern "C" {
> >   */
> >  #define DRM_FORMAT_MOD_ALLWINNER_TILED fourcc_mod_code(ALLWINNER, 1)
> >  
> > +/*
> > + * Amlogic Video Framebuffer Compression modifiers
> > + *
> > + * Amlogic uses a proprietary lossless image compression protocol and format
> > + * for their hardware video codec accelerators, either video decoders or
> > + * video input encoders.
> > + *
> > + * It considerably reduces memory bandwidth while writing and reading
> > + * frames in memory.
> > + * Implementation details may be platform and SoC specific, and shared
> > + * between the producer and the decoder on the same platform.
> 
> Hi,
> 
> after a lengthy IRC discussion on #dri-devel, this "may be platform and
> SoC specific" is a problem.
> 
> It can be an issue in two ways:
> 
> - If something in the data acts like a sub-modifier, then advertising
>   support for one modifier does not really tell if the data layout is
>   supported or not.
> 
> - If you need to know the platform and/or SoC to be able to interpret
>   the data, it means the modifier is ill-defined and cannot be used in
>   inter-machine communication (e.g. Pipewire).
> 

Playing devil's advocate, the comment sounds similar to
I915_FORMAT_MOD_{X,Y}_TILED:

 * This format is highly platforms specific and not useful for cross-driver
 * sharing. It exists since on a given platform it does uniquely identify the
 * layout in a simple way for i915-specific userspace.

Isn't the statement that this for sharing between producer and decoder
_on the same platform_ a similar clause with the same effect?

What advantage is there to exposing the gory details? For Arm AFBC
it's necessary because IP on the SoC can be (likely to be) from
different vendors with different capabilities.

If this is only for talking between Amlogic IP on the same SoC, and
those devices support all the same "flavours", I don't see what is
gained by making userspace care about internals.

Thanks,
-Brian

> Neil mentioned the data contains a "header" that further specifies
> things, but there is no specification about the header itself.
> Therefore I don't think we can even know if the header contains
> something that acts like a sub-modifier or not.
> 
> All this sounds like the modifier definitions here are not enough to
> fully interpret the data. At the very least I would expect a reference
> to a document explaining the "header", or even better, a kernel ReST
> doc.
> 
> I wonder if this is at all suitable as a DRM format modifier as is. I
> have been assuming that a modifier together with all the usual FB
> parameters should be enough to interpret the stored data, but in this
> case I have doubt it actually is.
> 
> I have no problem with proprietary data layouts as long as they are
> fully specified.
> 
> I do feel like I would not be able to write a software decoder for this
> set of modifiers given the details below.
> 
> 
> Thanks,
> pq
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
