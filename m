Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A05CB6394B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 18:25:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aTEUl3oVvBKwC2nBYicjh68OGPQhabqtYhjrTy1gEhY=; b=OJxwBvr58DmG8q
	9fDM6fdUxOAVr5ycyfSKQxYghOmgsTs4JbqGFFbzssmHm7YziLsFPVOgZoQ4c+MTgwB+8KyWhGKIe
	lOvIh7kHuoEqLRYidj2Q8EYJVfkBCOiZe/NLJwOglgsSvMAi8cOf2+h7mr2fvH9VZKIQmC/ebbmjg
	EmulMDebHA7EMKLHz+F6h8u3EJXsxDttc9kBdndNKElxPdm5cXWPRt50kVB6WTcb4kdMvpWjVNG2j
	46ZghwEs32ngMI5xfqQSa3f51FdWT9kBHtyHhsgkkwS9yiJ+mLVwbFFiUUt3JDiW9OAu08T4okny0
	9ZsdQMo+0sHLsCeF3wNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hksva-0005tn-8E; Tue, 09 Jul 2019 16:25:14 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hksvK-0005sC-LV
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 16:25:00 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Nicolas.Ferre@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="Nicolas.Ferre@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: zq5nIXG1+hmWDqopAW2SsZlZNdGqGrbS7syFp9E8b8nhay8fJxWjVG/nO5UZBVkN8bHiKHAAl8
 MpLqOD6ASftRqloKwdn4WimpXIWu/UimxwzjijOKxCHJvkLVd5RaH9J/l01TbNOzyu1KGMmg9K
 2dlKrFs2mg1+u9Xp+aOhwbpFY7Scqb4uXZ//Xd7uYLO3G9SdPc+B8w4vbb8iP706hdzrXiEyj/
 5PqxIrLivl3L2heVQsMBwLng6Fd6cLJJdCVLAYPm/UCFcmMKcmBCAoas0Z6PQIAoD726pV6jm1
 8yM=
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="37495532"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jul 2019 09:24:54 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex04.mchp-main.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 9 Jul 2019 09:24:52 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 9 Jul 2019 09:24:52 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qzpU393+ErV/wSZV5KBYY30BN4kZCxO4qbcA3mHDmhM=;
 b=yXwu/in0Vrs4oBL6HVhKySdRxbf63fYcq4pBv/wlWQv7ynSFjJBfvz1rZfQdgEGSvGfiPMoDamdjTdVMWZgQCGOQBIxjfgYXzMYNaokVrG7iyYqhDr7H/8ytIl1s4T3RKvc1RD3PDL8PzC5GFUPFKwxlL64wXjdaE2uhFrcS7y4=
Received: from DM5PR11MB1658.namprd11.prod.outlook.com (10.172.36.9) by
 DM5PR11MB1308.namprd11.prod.outlook.com (10.168.105.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.19; Tue, 9 Jul 2019 16:24:49 +0000
Received: from DM5PR11MB1658.namprd11.prod.outlook.com
 ([fe80::ac00:e9e5:9236:a53b]) by DM5PR11MB1658.namprd11.prod.outlook.com
 ([fe80::ac00:e9e5:9236:a53b%6]) with mapi id 15.20.2052.019; Tue, 9 Jul 2019
 16:24:49 +0000
From: <Nicolas.Ferre@microchip.com>
To: <Joshua.Henderson@microchip.com>, <bbrezillon@kernel.org>,
 <airlied@linux.ie>, <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH] drm/atmel-hlcdc: set layer REP bit to enable replication
 logic
Thread-Topic: [PATCH] drm/atmel-hlcdc: set layer REP bit to enable replication
 logic
Thread-Index: AQHVNnLUp3D4BDdODU6yB+9d2PU0ng==
Date: Tue, 9 Jul 2019 16:24:49 +0000
Message-ID: <13aa50e4-a726-3f82-b186-79b452199a02@microchip.com>
References: <1562686509-8747-1-git-send-email-joshua.henderson@microchip.com>
In-Reply-To: <1562686509-8747-1-git-send-email-joshua.henderson@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR04CA0029.namprd04.prod.outlook.com
 (2603:10b6:a03:40::42) To DM5PR11MB1658.namprd11.prod.outlook.com
 (2603:10b6:4:8::9)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [213.41.198.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 62245927-3bd6-4118-01be-08d70489f6dc
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1308; 
x-ms-traffictypediagnostic: DM5PR11MB1308:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DM5PR11MB1308F77FDC29F5387E107390E0F10@DM5PR11MB1308.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0093C80C01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(136003)(346002)(376002)(396003)(199004)(189003)(446003)(966005)(476003)(68736007)(2616005)(11346002)(26005)(81156014)(81166006)(8676002)(486006)(31686004)(8936002)(186003)(14454004)(86362001)(36756003)(6506007)(386003)(52116002)(256004)(31696002)(99286004)(76176011)(71190400001)(71200400001)(2906002)(25786009)(478600001)(72206003)(4326008)(3846002)(6116002)(14444005)(6246003)(66556008)(110136005)(54906003)(229853002)(66946007)(6306002)(102836004)(66066001)(316002)(53546011)(305945005)(6436002)(6512007)(5660300002)(73956011)(7736002)(53936002)(66476007)(64756008)(6486002)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1308;
 H:DM5PR11MB1658.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 50CNWcAuCXwrGnE9pqzMPizA65j1Si8QXij5ao+SjCvZSM10OwHDgLX03DxlZo7bay5ZZF43LWwuR/ld82NKi5eXf/UnmIl8AWd4Qg0zhaYJJl9htWmIKv+imkVZjkviYAEpD3yhCRbSlhPsBWhfhAxowPRGNPMR/umGAE3gG3CNLo37NGFF2gx523K7y+GCjXVHVmHi4BcO9DL/cLGwtHUoVyA0SLXgBxETkLyJyeGs8LPXkUOTkaL9Fapn74JQwpz9Sc+u/UHaG8eiKw/8alHdUsnZYsT0WLLMdODTBTQcA+wdDS9c5HMQVVRYsASJztjnPMcHZpa1ZTVI97TDENryTQl3fhil2uken7elyi428n12WWG3CxrENAuNHqyUqhA1z7WzcMc2Kcx3rEjY9Jdayuz/yOZuElRLx7E2cLk=
Content-ID: <FD2526B8CCCAF349AEF9DF04105D5153@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 62245927-3bd6-4118-01be-08d70489f6dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2019 16:24:49.6700 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nicolas.ferre@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1308
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_092458_746106_54B91E4C 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: sam@ravnborg.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/07/2019 at 17:35, Joshua Henderson wrote:
> This bit enables replication logic to expand an RGB color less than 24
> bits, to 24 bits, which is used internally for all formats.  Otherwise,
> the least significant bits are always set to zero and the color may not
> be what is expected.
> 
> Signed-off-by: Joshua Henderson <joshua.henderson@microchip.com>

Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Here is patchwork entry:
https://patchwork.kernel.org/patch/11037167/

Thanks, best regards,
   Nicolas

> ---
>   drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
> index eb7c4cf..6f6cf61 100644
> --- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
> +++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
> @@ -389,7 +389,7 @@ atmel_hlcdc_plane_update_general_settings(struct atmel_hlcdc_plane *plane,
>   	atmel_hlcdc_layer_write_cfg(&plane->layer, ATMEL_HLCDC_LAYER_DMA_CFG,
>   				    cfg);
>   
> -	cfg = ATMEL_HLCDC_LAYER_DMA;
> +	cfg = ATMEL_HLCDC_LAYER_DMA | ATMEL_HLCDC_LAYER_REP;
>   
>   	if (plane->base.type != DRM_PLANE_TYPE_PRIMARY) {
>   		cfg |= ATMEL_HLCDC_LAYER_OVR | ATMEL_HLCDC_LAYER_ITER2BL |
> 


-- 
Nicolas Ferre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
