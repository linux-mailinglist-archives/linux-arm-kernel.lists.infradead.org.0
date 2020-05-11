Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A74C1CD74D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:11:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EAwqaKnrYCQPFpQMahB83S1ZMugO+ix/BhPT1/yXsh4=; b=GevJmwRypZKK2m
	xsBnacahCFoal8dZHW+R48odEPhOw9CirGZFQgxiXUkG+X5k+T+Lg7uLWdGyXEbRLtyZzg/cyVSlG
	eJA5DctF5g72tuhj23mTt7e9QBI9usuw5GSmZ7SwtlHBSXYLc07uHRpK/uHUilNFd7YeyLGr0ZO2M
	5X1jCfm7UzUPgg5NlivDWZWf5Qleg6nIlUnKe46yETRD9w/CFsgnzzdw2looqUqXwQvJk1nHrxRKS
	DIdlLwM9Dut5+3fgKk5krolPbdP4XjzFo02/UC4n5avcEtdPVKQjUUElbhpmm4FaB+E9Ty4l8LBII
	m/opOpyYKVeqxL16LvuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6Kz-000858-9g; Mon, 11 May 2020 11:11:09 +0000
Received: from mail-eopbgr60065.outbound.protection.outlook.com ([40.107.6.65]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6Kn-00083r-2D
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:10:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=exMnq0W7c7esuf/L8IP+NwuBKHFo09cGrFmqes6o+y8N5modiRVJ+mCRLJkbmQTvPUO+lKgvWMrfDpxSFuqoJgPD3QwXJVy/58EjBmxeJzJBWRzrSv82vdtEluJ9Ky4JBouftlzpdr0sLm34qP5r54Cb7Ow7B6kCQ0SEs4oIG2cUJILwjkirF/9ympB7WaBqMAWGmjTVBCFHmwFALAb8tLoPP1IUkfMnaPhnWd3aWDXNvpub/+QrHajsPcKLx6L5gWzdliNvxGFMUzNLtUDYnugaRoGOMoOb/arXyjf0tzBxZwRcIBKEirNsckB7KE+q3Uy07McpL7Z+duPhJmYWGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jBHRX+NCfW9OUJSreUNfE88O/DzDXLDG+uHMsez8Y1w=;
 b=gDBiUpukjhtZtgzItQK6a0WIuaWbzZeymQSIiJubyRHGfVzvhwhhVGDRcAxZpdR4ZzxYCR5uOcGW9IQ1MOuCmbfaCdsLoRCd9eb3wtoMz/io0tpWZBf+4VE/X5ilpkN/9cd0bfrg7RTTQE+aE/zIFemjSpMi46RarkcUhi2v+tacpvAfAtvr5u07OCP4+I8tTC81LHZD+VuFiUo4/hG8rZpLN6Gr3en2Y4zf099qNNoC46TWRefaJytmJdlgvBGKbpPAho6wdCAkEKvAMVEDnAB7LYbBgYSvovOwAZlYzaM0vJ5T6oVx/cR73yNPIvkTTd9yAOa49eCLVXTH1H/osA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jBHRX+NCfW9OUJSreUNfE88O/DzDXLDG+uHMsez8Y1w=;
 b=eCcMk8whZkd68Y4xlSG+4c9gYO4Mj0V0tK1EewHLvxNUNVtHwPQGeQ9Xu1X2d/aYQb87ffHDfekrmIY6ePOQQl34OmSsONC/AVmpv3IsX4OrZscWkifXR+Xt6iynzyLz75QZVKnsuy1rJsCYp73u9AkR0gX93TWkjz2f8nCP/+4=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5925.eurprd04.prod.outlook.com (2603:10a6:20b:ab::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.34; Mon, 11 May
 2020 11:10:54 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 11:10:54 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>, Horia
 Geanta <horia.geanta@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>, "agx@sigxcpu.org"
 <agx@sigxcpu.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>, Jun Li
 <jun.li@nxp.com>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 2/2] arm64: dts: imx8mp: Add src node interrupts
Thread-Topic: [PATCH 2/2] arm64: dts: imx8mp: Add src node interrupts
Thread-Index: AQHWJdumWve+yy8KZke1xaVTXiUFTKiivd6A
Date: Mon, 11 May 2020 11:10:54 +0000
Message-ID: <AM6PR04MB49662146049364DFA24E205D80A10@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589012271-12740-1-git-send-email-Anson.Huang@nxp.com>
 <1589012271-12740-2-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1589012271-12740-2-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9f4060d6-1801-4b0d-14f0-08d7f59bf922
x-ms-traffictypediagnostic: AM6PR04MB5925:|AM6PR04MB5925:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB59250CC24E2C0DAC4828BE2280A10@AM6PR04MB5925.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-forefront-prvs: 04004D94E2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: U+RAf/dfezkcqiTyUqekV6eRwn78UMg+uqpr3alG3NVV5VWwEmT/rW0NVg0xZaCCAQM4MPjjtmh5BNBt41bz1UJrpbxlZ/p1IX17LW/oQ2fiEIOWSMmXw4rxqLBf2oOPnWTIRTzZlX//TVOvCmd5uvBKUErMRKmGGGKVO1qavo0XpRBRgx+9FWZr+jQ0D+V+6x0M5J5Ja9RRC/aUizFDyN62tOWW068BxKUvVkvA5DEJwgzHEavH788mlWA/ikpeT5fzyWpeUdFzFCZw9Jrwmj8hQ9hNDqtQJey8epk/UIabBUuqpyPVXd4sJ4tRPhTfdv9HBYGCOtfvThgSxs5wC/WOCfplJd3Yu940S7PL9/ZTsV/WLy53jOQ3kMMwUEcGFWwtXa0qGO/qzIWBjBabRTPb0tPbbu5bridSU/TUtABKqRXC0xUWYUixObmrxv2Gg7C3T/Qqe7XMNdKD4Hn+d4Qa7PIBq6bCRcJkgsD0I7FIAqD3KTDqiPwOJnaT1YNytKggrt0Tty9J4CuJ8qGGQJXN79ftI1wQft7Q1FzQnSEFI/dp3zOFI43adwQzJJs0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(376002)(366004)(39860400002)(136003)(346002)(33430700001)(316002)(7696005)(9686003)(5660300002)(7416002)(55016002)(44832011)(558084003)(86362001)(76116006)(8936002)(8676002)(33440700001)(2906002)(4326008)(66556008)(66476007)(64756008)(186003)(52536014)(6506007)(66446008)(26005)(478600001)(66946007)(33656002)(71200400001)(110136005)(921003)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 4lzzLYKf1G7l1mnTvow9LjX5mLAO66I8VXBlFz8AGFVt+2eDBSsHwFt6xKaSOuuCAPQk5o3NE4bvNp439YR1kKyIr5uubJ59qos6f88Nc8xXGJhA8NFIDPYJ1ho0UW8Yj3uedfyMogfJHw1/CP0v9F0DicVC+cvizoaxrFZkWnw5yRQg7QINQZD5m3aNjJysdfRFcDj89Is/RoOduQNwumtX3AkekVHXA/9FqBZJzPbJv68NiBpWFgq1uSjp8s7e6tKA5AUlQnN8yNWWaPl52853DYRVb57/zND9/CvoYe4ABVwGgCrK0lYx/clA+9EE43hX2IzEP29a4t6pJvkc43nx7u7+5y6iw4xzLcqZC+7iJak1ndwvR+3MVOnIhByZPWaNqzwY3OWFrueXu1lGgJNJwviZIZvb+yE7N1tDq7ENmAkELEujJriwvtmAzBTy/lsi9PGdSRMtQnp90qp+GJFPLUoAlv1/RpRarFHLXLg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f4060d6-1801-4b0d-14f0-08d7f59bf922
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2020 11:10:54.3291 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uzNeiWY22dGlmsm6l9Ydjk9D9I9uupHgV4lwwyQGabfYkmP8JCifoufLiDm0A4JwxQLTtBBid/Ys5FuM4gjz5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5925
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_041057_103588_AE0F8A0B 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.65 listed in wl.mailspike.net]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang <Anson.Huang@nxp.com>
> Sent: Saturday, May 9, 2020 4:18 PM
> 
> Interrupts is a required property according to SRC binding, add it for SRC node.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>


Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
