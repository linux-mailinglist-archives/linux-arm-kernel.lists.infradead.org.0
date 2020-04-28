Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E912F1BB5E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 07:26:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ux3r3z9fs9CXdbhAZ6xjqbpj+kk2FHSjJDO9FKo/b4c=; b=QK0Xx6Rtqoj+DP
	g9Md1PPzu6Bz/WJPeRcD1gKD4uBPGJPU/6FRZRUUGtMpcw/7D+X8u9TBWyM045XiIsW5X3tWJSUUK
	2G2RKqpM8OcYF6DaUEuSF8zZihSdAfIo9u6v/RixN/dFPs+CQU5iYzPYyC9Bkpbu5xR4bbCPBQYxu
	MF61/B4ubrAuZop83TpOH+9GwCmotWGfoPhYhpbnpGCB/RNqkXjZpphICacxsHU97bX8WCh5istln
	x4NANwWcb4T1Dt9CqvtXnjL2z9UyFfikTCUpBw3MzzvFEwZgsypm2doI6RVHAAjD+a8wcq8zO8Ur8
	ZJKW+Ze6YtxGyJPDPXIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTIkk-0002Bq-OV; Tue, 28 Apr 2020 05:25:54 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTIkI-00020e-Kw; Tue, 28 Apr 2020 05:25:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588051526; x=1619587526;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=askazfUyw2e73qwx0VflbvWWRC8nIg8IV4RxJBVcztg=;
 b=hrwwgO0VG0X5kJ+oJI9lb5lv+ylLO0kLNtWaNbtS6Yh8a/Ad+paS+8jy
 WE2n723x9YOv+qPk2f145M8k7sw4nb+tMZGCqKWo2k3wqqv3a5uJt8dUl
 Cj1zymXfEhHfdl6ANROXxUnJq/g+A93SLXerWIUhc7cuTYvYvMnwG2E8Y
 Ew0R4YM/trZi1s+ux1vxtOBAOp1PuWFIzItbXJOqyitei/0npbtPBgtAr
 tMf8Eio8KNAx2NGgLmoNNcn4dzi1uodTu02Yc2ej9jjk9MUnm3AP5gchU
 gnccq+yAqU4gP7nl21cjZECqM4mSmv4W9n5mGLIadd5s6894PakCJj2WY Q==;
IronPort-SDR: b5j2Cbd28r94XAaeNHmYvq6Wwtx3bhlYV7VOOzr3N7yfzWb7Gg3MCPLwe2vXmpdWGZT93Vzls7
 aSwAsFuouXFl6Ip4Sg5tJBfq65apnpnsY7+84sV2mxUZ4S3gIC7JXzRZCI2BgqjNGzHSPhq7tf
 +EOUlvZV2azAe3xjJ5IFKvdX5jLBZAxx6/dvNunL1hi+EPm4UUOHBrNK1WuofVgJ18slIyZAtB
 vd+cICm+sjZOIe3118StTq6i80reLXseSvDpH/XY320FOpLs3lDEXIoGHRXJ2AO4YOV5q/6CEq
 gYU=
X-IronPort-AV: E=Sophos;i="5.73,326,1583218800"; d="scan'208";a="71726627"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 Apr 2020 22:25:21 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 27 Apr 2020 22:25:19 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 27 Apr 2020 22:25:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SIwRds6AlAORSHX4oIBDesoqz2mKko2BDHKkGlesGhduZU3sF1w+mcFQfUZ0z1PFRl0NQ2Lk0GHAqphogN7X8KIcQp//hmN/3d3F3irng1OSJAd+Lr4Vpupus5CgcIum/ZuHdnuKcoaXopXRz5935Zd5Lf2xqkB+lntJXC5IAM0Vq6coIexND3g0D/8anY2zmeLBnRE50AELs4rdbPCiY1HQRTpgXnijrwsJAll27W9SUeX+mKh8pxFxh4jHfCVNdeQDyfZweQRbroswzHfrfAM7k3KVRrjvmdgwpH6s/YDObycwvkUjM4cxzx4Rl4LKRHyVPoRN3xvTsOVy+5IFpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oVC18K9BtI/AKktrklZ3dHNsnTKEF2AEl7XyjguVkTY=;
 b=Xjm+K6QHl3fTJmGNOsootW1fI9NsQPHQ7F3H3cjbOHiIAJuI+K9tMKJ0f2TY+uUezLX883vz9bcX8mc3F2fje9SphPOyL9VbpiViYiaqpNqUDP8HSKUwXCb+Wgn8szkKPk5wzHBOg30VU/IK/vt/1ZqnF29lLDRmaqxg1sSJPBfqXXrF6Cgw2uFdNJJxesWf85nM901Ol3ttoFioPlrvO82AQJn1UW4wxloEiQ1xyByWJ8Tr3Q4XdYU5dQXF5eH3FZ5AWmnCoVv3V93JRwon9feG69yCGMfFV0mzOx2GljYwHEP8igpicW6m0h7BCNt/oGRd81UA3hnbaQtOLj1gYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oVC18K9BtI/AKktrklZ3dHNsnTKEF2AEl7XyjguVkTY=;
 b=bExNrrj2RK7hYNSrgBXMlGl5hRV/7mY6+s59NsWlNdyoaphfUrsYRIgKPtHhad6mFst9aoWIb3y1GZYGlxxe8An9rxHZx4ERCUzHLvjuxIbM7H5HITwJT+O/UEngwSOGRnybAO10CniMcCQBvP92+dssap5g1xOrWcntjy98zDo=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4388.namprd11.prod.outlook.com (2603:10b6:a03:1c9::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Tue, 28 Apr
 2020 05:25:17 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536%7]) with mapi id 15.20.2937.023; Tue, 28 Apr 2020
 05:25:17 +0000
From: <Tudor.Ambarus@microchip.com>
To: <yangyicong@hisilicon.com>
Subject: Re: [PATCH v4 05/16] mtd: spi-nor: default to address width of 3 for
 configurable widths
Thread-Topic: [PATCH v4 05/16] mtd: spi-nor: default to address width of 3 for
 configurable widths
Thread-Index: AQHWHLkjDWuKSC8VwkCztQzj3fjN/6iNwPMAgABAZYA=
Date: Tue, 28 Apr 2020 05:25:17 +0000
Message-ID: <2970660.P4alVuHkju@192.168.0.120>
References: <20200424184410.8578-1-p.yadav@ti.com>
 <20200427172336.ihezwq3wn75m7k3l@yadavpratyush.com>
 <f6a593ab-8685-18e0-04c8-25edd1cab11a@hisilicon.com>
In-Reply-To: <f6a593ab-8685-18e0-04c8-25edd1cab11a@hisilicon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Tudor.Ambarus@microchip.com; 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 095a901a-fb80-4d4a-3d5e-08d7eb34897b
x-ms-traffictypediagnostic: BY5PR11MB4388:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB43883D87AD67509081F303CBF0AC0@BY5PR11MB4388.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0387D64A71
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(346002)(366004)(136003)(396003)(376002)(478600001)(6916009)(66476007)(7416002)(71200400001)(86362001)(66946007)(66556008)(66446008)(91956017)(64756008)(2906002)(8936002)(4326008)(8676002)(81156014)(54906003)(9686003)(76116006)(186003)(53546011)(6512007)(5660300002)(6506007)(6486002)(316002)(14286002)(26005)(39026012);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JO0JQRqy5u4tYzgOi569b/PRpYGR35Hf2hch0aNwWt0Xe7/unTfbELJBHM50TH1ZM4UkWb7Q0LFSICLuHhoyb0NdiAeoSEnve3gUct1iGueQ68s1vEgBzKsYhHEE3D5GjRQ9XGxnGkyvkTUTrcXBZpijpwcx29m8BUWdUuozUOVWETfh9NcG8GGjv1NJaDIDpUHgk3WwUlFpWMNhHtc0Clt0ppNaXbecOlSKwhoSuU2pbehMFMoWRz640oMaHCPmI0T4CgwNxnlznWoisPupubOtLngGeN290qi5C6EByM4CdPqlV2G2/iOD0WFSjE2dNvK3K5dSq4x/Zq43rSMzh935Kl1ExTkOfMGHz/4/MpEchbQ3o8JbrEUFr5P3qS8RLzKau6A9xFJ54qQSrEz25k5auQUPEjE1Xa0Bz7qUN7drq3Uad2b48ewDEdDju/6NPJv4uoLfzIfd5+PLX4UsZntAammObbny5n85SpjJcKc4XiHDW1Ov/CJBHFdoWQEj
x-ms-exchange-antispam-messagedata: 9ETPCM5ft8La19ri868JeF8Vs3+D+IKrZWWBERiqEYVZzwCwnuJdQog7KGY3D1dI2nZ/or9aUiJUJJx8U4hqs2un2y9REkxMwYpl2hvyD3FWyhaI4QKEJIaNc8mEiVhrwnmZHr3xT5oGKFyz/Yp0WBt0Ctjgh1vcteq2T4XYO5HRmhkfovgKsUbHwG12Aypn55fG9oB9J/2aFldvZzK3YmRXhenndrAtGrdTfjhzPm1vPPtauXJr9jRqg+NmUESsWEmU89AlE8jckMYcVkWJSzgwgroUqIutApk2ghBbAMAYUPh51k+c+Ry+ZIHmSQ4bLKR2vNZ7XecYT9WAeS7wsNIKabZKPxPZ34MIj420eDT5u8NOi3KEgb5wdRDqfWnZKGsOT1Lij6X7NTfA010acrj6/I7IpWMBvXs5WCORDWt4qRTRQ5eLWpEb9jige8uBXJ6cjcKBi+HpdM+jZBMS6jBjt0Ehu5SdjJquSc+YfO57UuDQIAgyBRzILVGQGIC7FDin4zfePpW+BvC1eoUnuLr+Z+lSszeE+0EV7ZnWyH2BYW4C2eyLMBA3781u6YIF3KyMj4OhNk47ki1Bf2lt0cXHey+KNQT1Z4Mg1z4kt7WHWfAf6AwERlnqtZHm4RO0VOVa8Hb6YTIDYA4E5aOT0s3y4WKupvBz6/HiPGilXj5OJm5ebXXy4nbXu5N4wzOTlGK9iyWe4yyRCkvRyAeOCnNbaUn8ltxh37DT4Hd3te3a51zcWU5TJe/NBCBhgXJcTat05t36/EMZLZR6207hGt5DgGPuy/52AuaM62lxHkI=
Content-ID: <F1C82EB13DDCBB4987623865C3BAB382@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 095a901a-fb80-4d4a-3d5e-08d7eb34897b
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2020 05:25:17.2177 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: is1jLxdD6o3cL5bz14IJTy4tikIHjTBNkM+MFjmX0CYSOOChgkwqdmDA3LeF/0H8L0kr6eF/CafXIbpsARFH5qD8YvioZ596LEsvRyzTqZc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4388
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_222526_786274_3D21D93C 
X-CRM114-Status: GOOD (  22.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alexandre.belloni@bootlin.com, vigneshr@ti.com, richard@nod.at,
 me@yadavpratyush.com, nsekhar@ti.com, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, broonie@kernel.org,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 linux-spi@vger.kernel.org, p.yadav@ti.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tuesday, April 28, 2020 4:34:46 AM EEST Yicong Yang wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the
> content is safe
> 
> Hi Pratyush,
> 
> On 2020/4/28 1:23, Pratyush Yadav wrote:
> > Hi Yicong,
> > 
> > On 26/04/20 11:53AM, Yicong Yang wrote:
> >> On 2020/4/25 2:43, Pratyush Yadav wrote:
> >>> JESD216D.01 says that when the address width can be 3 or 4, it defaults
> >>> to 3 and enters 4-byte mode when given the appropriate command. So, when
> >>> we see a configurable width, default to 3 and let flash that default to
> >>> 4 change it in a post-bfpt fixup.
> >>> 
> >>> This fixes SMPT parsing for flashes with configurable address width. If
> >>> the SMPT descriptor advertises variable address width, we use
> >>> nor->addr_width as the address width. But since it was not set to any
> >>> value from the SFDP table, the read command uses an address width of 0,
> >>> resulting in an incorrect read being issued.
> >>> 
> >>> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> >>> ---
> >>> 
> >>>  drivers/mtd/spi-nor/sfdp.c | 1 +
> >>>  1 file changed, 1 insertion(+)
> >>> 
> >>> diff --git a/drivers/mtd/spi-nor/sfdp.c b/drivers/mtd/spi-nor/sfdp.c
> >>> index f917631c8110..5cecc4ba2141 100644
> >>> --- a/drivers/mtd/spi-nor/sfdp.c
> >>> +++ b/drivers/mtd/spi-nor/sfdp.c
> >>> @@ -460,6 +460,7 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
> >>> 
> >>>     /* Number of address bytes. */
> >>>     switch (bfpt.dwords[BFPT_DWORD(1)] & BFPT_DWORD1_ADDRESS_BYTES_MASK)
> >>>     {
> >>> 
> >>>     case BFPT_DWORD1_ADDRESS_BYTES_3_ONLY:
> >>> +   case BFPT_DWORD1_ADDRESS_BYTES_3_OR_4:
> >>>             nor->addr_width = 3;
> >>>             break;
> >> 
> >> Should we also assign address width to 3 in default condition. At least
> >> we should not leave it uninitialized here.
> > 
> > The default condition would be taken when this field is 3. The value 3
> > is reserved, and so no current device should use this value. That said,
> > I don't see any downsides of doing so. If the value 3 means something
> > else in later revisions of the standard, this code would need to change
> > anyway. If not, we would use a relatively sane default for devices with
> > a faulty BFPT.
> 
> The purpose is to set one possible value which may be used later in parsing
> smpt. In current driver, if we do nothing with the post-bfpt fixup, then
> the width will be unset. Otherwise, maybe the width can also be set in
> spi_nor_smpt_addr_width()
> 
>     default:
>    +    if (!nor->addr_width)
>    +        nor->addr_width = 3;
>         return nor->addr_width;
> 
> But set when parsing bfpt seems more reasonable.

Please don't. Any deviations from the standard should be addressed with fixup 
hooks.

> 
> > I haven't received any comments on my series so far. If end up having to

Thanks for the patience, they are in my todo list, I will get soon to them.

Cheers,
ta


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
