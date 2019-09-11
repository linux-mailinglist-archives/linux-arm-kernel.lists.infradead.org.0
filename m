Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C38D8AF424
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 04:08:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zxTm0FBWgYpkdJWbd1IyDF1tZdr0NoRO6JVFAmxjMMI=; b=lPD5i9CzuKVAUt
	qvfTQDJPJFGcAQVh1nvEoGJvTEl0ALV77eVJuaOxV7ptSpwQ6+j9Xy72pK4sghyd763nDd2e9Ja0d
	Zb64MWwDnAQ/aX8fZ98zlhkvbhzAqHr4grfy5a8zfGHobRF73JRiHXn5LMoBlTQwv1phcaX7NN+c0
	ZrvSKowqa0vQcG8D+o4wloYXKI8CpEAJOJAuQwmsHiB9VdPte9ZHEP5mDw8lkqw2xCt84GXsrLT/k
	Xduaw8dZiHvoz64DMKGQp+PQHYxjoz6wphqauz9ZjRup25tuD1Pwcuel4XdyRWfXcPX8XL4HTLbqY
	zUzj00blT/p3qWcxOGsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7s3j-0000qf-Ts; Wed, 11 Sep 2019 02:08:39 +0000
Received: from mail-eopbgr20071.outbound.protection.outlook.com ([40.107.2.71]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7s3W-0000qI-SL
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 02:08:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U5Mqi76CBH/tBwzVthZs3NSasHK/C2vAyfXH2o7BJrezXhmCbh0LE6/qSasXEM+JvF1lgfs3a1jQXqeD2LCAAA1ETOILZnYkN2db2Avwpzj1/y9ef687z4E+HQnOL2WVTji/aQNmaNwcJegRFcjjSP6yhZSgjO1AxyRGAq0DHHiNqLVlmq9Pzxp08rzGGzvkzKdN1BcKFGL89u0CrDs9sA56zI/g8giDAW/X7f6K9CO+V23ez8PL5QI4A03NRHu62jvuKxPB9ewirIkc1RgiGLHS9FKKhj0mG7RmGDELg/Pews4vt3Rpw3BPkGBz1HWN7f30lEBzzHpQa9yRxY3b8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tb2ETKokaVuDE1uKPXbrgkE2B1D+6xetfdMOqm4EtKg=;
 b=eos7EqPa9fvNwxx7ehFz6FXWXl8c+G0+vR2JC9+51GjpNDOKQxpCyzd88KJCNAajMBQuT8ETSS/0JSEj43uF1sIyE2pVqsxo3vpZW7D13mVz2EDbrRna8BcP/cKUW27Jsuf1LLsgFwbh6xAU6Fog5CfBR5pL5AqJ14Z0Z/DEPZEjrDemEBauCgDuw+6T0A78hGZZAsd1NF+Ry0rRLU6Q5vTKP55UgO1itggFBKA9KIPY4EvkM8POjZMycEsTlaJvwZxe75ylhdtx9dshfiXU9UL6l19a3CUrifL954budWlkdwG/DIw/R05RXXgCCwuy352lePNv/8Jh/OHfTIep+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tb2ETKokaVuDE1uKPXbrgkE2B1D+6xetfdMOqm4EtKg=;
 b=H0VT7tgjJ8TqdjEQQQwLWKCxpgZ08BHMBbVh7NCh2TK7sdSfpVWz2Fcq0SgzxEbtGoxvfdefFHUDWbqq+IkoCR5y4vec3MOOWDdwKf7VTwA1BmrijjlqDd9kzv2NMATfqVQ2W0nwWDXojkDnuuFYn0uq0lH+ec014MKYL4VXTf4=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5874.eurprd04.prod.outlook.com (20.178.202.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.18; Wed, 11 Sep 2019 02:06:52 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8%6]) with mapi id 15.20.2241.018; Wed, 11 Sep 2019
 02:06:52 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Stefano Stabellini <sstabellini@kernel.org>, Christoph Hellwig
 <hch@infradead.org>
Subject: RE: [PATCH V2] arm: xen: mm: use __GPF_DMA32 for arm64
Thread-Topic: [PATCH V2] arm: xen: mm: use __GPF_DMA32 for arm64
Thread-Index: AQHVXtqjidV/KwEkYkeguLx++Vlcn6cTXzGAgAAFLoCAASjiAIARPvgQ
Date: Wed, 11 Sep 2019 02:06:52 +0000
Message-ID: <AM0PR04MB448166E527EF4ABFCE3DD59688B10@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1567175255-1798-1-git-send-email-peng.fan@nxp.com>
 <d7477406-a8a0-5c3c-13dc-2c84e27b8afa@arm.com>
 <20190830085807.GA15771@infradead.org>
 <alpine.DEB.2.21.1908301926500.21347@sstabellini-ThinkPad-T480s>
In-Reply-To: <alpine.DEB.2.21.1908301926500.21347@sstabellini-ThinkPad-T480s>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bfbcc44e-9097-4ba8-ce07-08d7365cb690
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5874; 
x-ms-traffictypediagnostic: AM0PR04MB5874:|AM0PR04MB5874:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5874D796A60C52FFD1D2366F88B10@AM0PR04MB5874.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(39860400002)(376002)(366004)(346002)(199004)(189003)(25786009)(55016002)(6246003)(99286004)(64756008)(14444005)(256004)(14454004)(66556008)(316002)(110136005)(66476007)(76116006)(6436002)(5660300002)(54906003)(71190400001)(71200400001)(66946007)(4326008)(446003)(11346002)(86362001)(7696005)(81156014)(26005)(229853002)(8676002)(44832011)(486006)(81166006)(9686003)(53936002)(102836004)(186003)(33656002)(6506007)(76176011)(7416002)(8936002)(3846002)(6116002)(52536014)(478600001)(7736002)(2906002)(74316002)(305945005)(66066001)(476003)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5874;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: V9e56MdmfhrL12xVzH3HILbv6Mrfh1jSINf/mHizV5nkF4ENRj098CCy8rWa69wtRHMd8ZHWt9gsmQnMbKfwOdKvNjzqj2TX0+O9d2IA+EKYzt+d0zlXSWBvPbFbXkK4ogIehFUTs+SoPck1GWPrdmLPysZve20zE7dbS1YgzX937TIjU/l2BgAQ/UPB6EMcDL3GwYBoqlEywCVIY8fMfj7RKR0VtBa9zUiWwVJxuklYJHKIXHrEbvNtFROGUvGjSSFslHNiRmxD8tLu5cvCqJe5txzGIQFsYwf8O5DW2gWJndXhlbgGB/kCNKCMPaLHWxlvXlkiyBxyCpvK3gOn62U1F3Xjwfp6zRRPs5WmMB53FAKqxOzjYV5IKmbY4w7KBGmq1TyR+r3NhLYehyZphYsuORoqkjJTdfx82vtg50o=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfbcc44e-9097-4ba8-ce07-08d7365cb690
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 02:06:52.2489 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Gb4CdVNsDOVnmBcZI4lucbV8xCi1CohTHtaa5Bzzn7MOFuDp1ZdPC7igttbLETKoLgezarKpfvlvR1ESRi3ANQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5874
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_190826_919909_AB8EF903 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.71 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "jgross@suse.com" <jgross@suse.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 Julien Grall <Julien.Grall@arm.com>, dl-linux-imx <linux-imx@nxp.com>,
 "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>,
 "boris.ostrovsky@oracle.com" <boris.ostrovsky@oracle.com>, nd <nd@arm.com>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <Robin.Murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH V2] arm: xen: mm: use __GPF_DMA32 for arm64
> 
> + Juergen, Boris
> 
> On Fri, 30 Aug 2019, Christoph Hellwig wrote:
> > Can we take a step back and figure out what we want to do here?
> >
> > AFAICS this function allocates memory for the swiotlb-xen buffer, and
> > that means it must be <= 32-bit addressable to satisfy the DMA API
> > guarantees.  That means we generally want to use GFP_DMA32
> everywhere
> > that exists, but on systems with odd zones we might want to dip into
> > GFP_DMA.  This also means swiotlb-xen doesn't actually do the right
> > thing on x86 at the moment.  So shouldn't we just have one common
> > routine in swiotlb-xen.c that checks if we have CONFIG_ZONE_DMA32 set,
> > then try GFP_DMA32, and if not check if CONFIG_ZONE_DMA is set and
> > then try that, else default to GFP_KERNEL?
> 
> Yes, for ARM/ARM64 it makes a lot of sense given that dom0 is 1:1 mapped
> (pseudo-physical == physical).  I'll let Juergen and Boris comment on the x86
> side of things, but on x86 PV Dom0 is not 1:1 mapped so
> GFP_DMA32 is probably not meaningful.

If we only take ARM/ARM64, so could the following patch be ok?

diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c
index d33b77e9add3..e5a6a73b2e06 100644
--- a/arch/arm/xen/mm.c
+++ b/arch/arm/xen/mm.c
@@ -28,7 +28,11 @@ unsigned long xen_get_swiotlb_free_pages(unsigned int order)

        for_each_memblock(memory, reg) {
                if (reg->base < (phys_addr_t)0xffffffff) {
+#ifdef CONFIG_ZONE_DMA32
+                       flags |= __GFP_DMA32;
+#else
                        flags |= __GFP_DMA;
+#endif
                        break;
                }
        }

Thanks,
Peng.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
