Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7879A1D8D53
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 03:56:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sGYUkFeTGYlj1GrEE7nF+43nn5dR67MhXIgQjPQ1k5k=; b=ZqKi2EAGVrEGsO
	3EUQVjrwYh8Ae2UEVadkm/FYmVh6vRg/jikjd8oyqieA9VAPXoOGve4ldk78wlYB32QAUl2Wo512m
	eZ0xfW/+WQ0k8PyG5BKWr2UkCjlDOdl3hj80gAtBKITE5dqp+KzrOVcxjmTBZB73xlrPx3MWOJZ6m
	C/0VQjWBIfA1S3MZlmwmd6Uf1l6sDtPxXyiVR+VEL4tdWZY/i/T+q8cqgM2DViJ2Zb1sxGRGlN8Y2
	ndkso+jL9ToRtE2tNCtIbXZWb0bxtw53YAd12WSiyFuTBbDAwtqKxdKpx0fmqHZXlWtdsznBkRDzp
	qZ0QSCOQv1ELMrcGJ74Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jarUF-0004NH-EY; Tue, 19 May 2020 01:56:07 +0000
Received: from mail-db8eur05on2064.outbound.protection.outlook.com
 ([40.107.20.64] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jarU6-0004MP-Mw
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 01:56:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HaWcu8qh8TDZPQK7yvGUlf7FJb7N4oW1SpOp0xv9i6fwLHYXt45PLveQw84WclkV9sbERQy978kod5thPvQ+KXutlGPczmqkTsPL/kZ44VkSmeyDwMNiZveuzyK+xvwTAAfTWMn+oCwCk7xKqtCaRdIEx2GZtVP/HrFkPuDRGtWHo6vMPfBJ4nA1QEYJ0+KO6onb5NGYedokSGT/gD01EdcAfA4DcwR5u6zOeaAP4FUzhnISYBoEBWe7I6ivg+84nDBlG8XFrIksF5bJ9aVi2SzGEtQmZFYMJjlxVbOsirizeptFZ/B2bqjZv2sAALPq8/HwHVuy7VItLG56l8lePw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K281OByOC9Veu/4xwl1A7anoWAjqEa9JL+WyRXRpSWk=;
 b=Cq15UIm5A9XppM/f8COO5y5T8ToNgrdpgBAb3S2HpgKOFPnthODwP5+crjJ9E3bJCB/NwXWynl8ohKnD0zrJ9ehXl1hrIapTxVNoKx1bjRZtwB5ywyX8+ClwkT/jpujK/xbDd8+B1jseiyovWMzQVwXa4rcCDV87BgnBTBWP4L8lS3+CQrgLwN92GtZMVBOY+oN2iXrNKwpChdwlKhN6IYQnSOpE6OI6PJ8djG9SSGeYbt6tuYlAHFqXBfCGrAQgi2BzkP6R6xOYoPs7Bu5C0U/vZePRC+ZIs9FcGKysSn6LWLmhWRrSaOhUZLMOqOnEn6UxY8Qtpwfmi3a5bWpYKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K281OByOC9Veu/4xwl1A7anoWAjqEa9JL+WyRXRpSWk=;
 b=tECEhEONzXKwhNHDoygDzhdLFoNfMRqCakV4/0kmJ3Fbq67H1vOm38NlvFmKm5+lesQ6B7X3x+7/+Ahhja6jZdfaGvEzKLj+pjbkFvCDrk0m4Fwfw8iyeRFXScuutDw81IecHepDRwMYZV1RNOiT37wgK+VHGB1fNJU+sOCbG7g=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB6486.eurprd04.prod.outlook.com (2603:10a6:20b:f9::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.25; Tue, 19 May
 2020 01:55:54 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.034; Tue, 19 May 2020
 01:55:54 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 1/2] ARM: dts: imx50: Add src node interrupt
Thread-Topic: [PATCH 1/2] ARM: dts: imx50: Add src node interrupt
Thread-Index: AQHWLRTOXDDXY0JHIU2iJhxYM5fKLqiupvBg
Date: Tue, 19 May 2020 01:55:54 +0000
Message-ID: <AM6PR04MB496622E779B65E16CCB7108080B90@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589806460-19592-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1589806460-19592-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 54f3d9d6-b0bd-4613-bcb2-08d7fb97c437
x-ms-traffictypediagnostic: AM6PR04MB6486:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB6486D444179049D0ABDF5F6580B90@AM6PR04MB6486.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-forefront-prvs: 040866B734
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BE4y7F4nhe5fI9CSiHV9EJmJB7E37dM6SsQU1ATBm/nzvoteLH+TNOR99qIUloVLzf0eBSbhF0Y0Jtj+od4A7eFcvivx1fD+kmFI62GGugsxzrhPAFERaKAEEDoYNKfrpRTOAet3jD5iwzJn1GJ1Ylysscr4Rf0c6RWgB88k1nto/z1J1nBtoMXmEa1TEQcycGNuYBM146epTV2NE7+iSBtEeyiMqZX9yRgbh2dEesiROn53tx84qsXPthbYHzV7rEyOFg7eud6o6vVYiVt08cpMJWKfunY3Uo+aiQxStdrr6I95tFK+bpNNWXSZEsxwMqF3+NZ4GGV0qsSpHwEpgHuyyhtfxoHgBnxkq/t/FDcO3kSq8ZzPRQHLE8018adDtWlfKsGADYwketDFKV2IAchW95dyFD3SfbIUvBs90mGgvqBwX4oqTEAEJZbfyDEn
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(39860400002)(136003)(366004)(396003)(346002)(2906002)(478600001)(71200400001)(110136005)(7696005)(86362001)(9686003)(5660300002)(186003)(8676002)(52536014)(76116006)(8936002)(66446008)(66476007)(66556008)(64756008)(44832011)(66946007)(26005)(55016002)(33656002)(316002)(558084003)(4326008)(6506007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 79YjQk6FN8M11zQEA8eEBoRhX5EYGf65mCTkS8woIJ1GDNEXA0PPauQydcNp1zhsz9GppccZDeyh0JjgNU9MOOZ9Tj7/IMehfYgySAVs/ehLf/nEDD25zE6PlyrcNaCnpPxsWtBvhW+ECOsnAErYxF9eNmhOXbe6k1qBCyrYZSS2Ci9J0MvGDedbldbv9K0J7fQMxceHR+3HtqrpRLHwycSgGvx67xJsNz8je0YiXT8RdDoYUOFhRHOLqWjTyhM2a8bRkgt+SOMg6W8j2UXSsSdQJhlWhHB54yLyn6LvRIn9dNbiYp9WLLgXsrtwlgVnMhcupx2hSRORkyHRdn1boDTcFKKa691klMkQDdIwzWUZzsWEXeyc5FhUtnQMih+qYPtt2im4/q7RN+WbJbstxqJSko09dXFZYKByZ3mM3HN/GeNvLKdG/93cNYrZG6hoW6EFM1KAbVjXbcXb7LEAsJ7kb4j1NnBLB0Usz8EgRWrKNNRkcric8E1BFsdhz600
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54f3d9d6-b0bd-4613-bcb2-08d7fb97c437
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2020 01:55:54.5745 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6INB3qPvSknzq1sJnJxEAScelhiEeOdCBZR2anACnuq7heZ1cPCBc94Jog4uOg97iLa9AtM/95Z2jkM4UoCIMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6486
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_185558_824946_75F2FD86 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.64 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.64 listed in wl.mailspike.net]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang <Anson.Huang@nxp.com>
> Sent: Monday, May 18, 2020 8:54 PM
> 
> Interrupt is a required property according to SRC binding, add it for SRC node.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
