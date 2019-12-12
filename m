Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC7311C2CE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 02:56:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HM3n2r6hmUxtbaGHTbAceFSymZ+GaTCM/PO0em9LVIE=; b=dhuGrlnqpulX9b
	KwR9sjW4vKj8k3rj7HKXy550NkVo+XpS3klmsSVwUICPXkOJ/50+rgTvVah+z/7rPNG1ihEvVq1o4
	1iRU84MJW2sSPv8iD1pRbb8UQKmf3RghfBPz/w/heUazeaXANoytnZbOjOXgGvKipd1KOqx/JfFTQ
	KACEGVsOc3X7CJw7ty0dZZofMAqzpZ7gJNxd17QXWA+wd0rlTsB/GWm8v4MJ0V0ShYzwcjeZtWPC8
	3xjANB5xS0ByIGjJ75z0xRysyey8jrsYnGw8Q391J71JJnnDqDIVkjIwanXoPFe4W/i71Hod/4cnf
	8cR63l8rF8MU22yb7EVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifDiY-0000jR-At; Thu, 12 Dec 2019 01:56:38 +0000
Received: from mail-eopbgr60086.outbound.protection.outlook.com ([40.107.6.86]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifDiQ-0000ig-C4
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 01:56:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NaIsc90vgofJ/NQL5OBc/aQSIRl2047Hna8Wj7MM4ug/9fC2AeJFPv2RAJXGvTH0I2HYlzlIJidJUwXR9xwgjwL12KXZlf+QWjMnFAjxkkjceovPvxBC+X+vJsniFo3WOE04WDPNGtL8lBRiL5Xm7haWaab9OLiQAZUyjm8yJeiTe63w5QCAswqmM1UDPddkIwFZr7TKj/Ea35r+flwQclexRbxhv6ldisX5F2hKF+Dg4T7/nlCW7nm89kbQ25tELKQu4A4N68p2d1ObM+tH8Fzoac07SNUpGiL+tWVIXiwDeqlY1vExY9DMqcEgOlVH2G1UEAWHvJGMEWUXb570Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NGNsv+Yn3CX+aUNKzN0PTi9u1GNxvEgvZ9Pv5K6wZks=;
 b=EseKOL/6NK6lWW0P3iDqof/BL3HmDhWUl+UZ/Kexo6c79MX51VHLXahTDxeOF2gKyC9FsdX2fm5HMxCc2Ho/zPpqS7qa043IjGNVyeOgeYr+DswsEgqYKCY4rc33p2D0/jk4Pgi2AeD4fXUbtWrCPOa3AXGCj40VL1rL9bhY5fdXUUDS09eo1rF7Cx4Qa5rQ4rIeU72LNvcv3b1XGkgpm+tE2GCxq2kgIz3Z+CM9P9hlbV2K3kLt4r91qywtPZ0VZPhStK4NwzbutufHl24GRYVWpRD+8wxhzDcAnXMJsECGgnPOEYkVY8ZROaQqyjYmB35sN/GEGpuLNhmXquPJoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NGNsv+Yn3CX+aUNKzN0PTi9u1GNxvEgvZ9Pv5K6wZks=;
 b=SH7Am+5FwLE2H7j5FbM+u3rfNfjZr5A2LUFRJ13vvQhjtGZ/ttrgi9hzKuGGxDsLIaViOqFVTBAwvCYbv5ldTm5yqBd3zFbLY50qBviYIwkbeNdm+sy4AldgYrVvlMH5G7ybs8t3mubqnT4DhLd5CnHyoab5ozMHHB2/uDesKyM=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6464.eurprd04.prod.outlook.com (20.179.233.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.15; Thu, 12 Dec 2019 01:56:26 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::100:f42b:82a1:68c2]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::100:f42b:82a1:68c2%7]) with mapi id 15.20.2538.017; Thu, 12 Dec 2019
 01:56:26 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Peng Ma <peng.ma@nxp.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo Li
 <leoyang.li@nxp.com>, "dan.j.williams@intel.com" <dan.j.williams@intel.com>
Subject: RE: [v4 1/2] dmaengine: fsl-edma: Add eDMA support for QorIQ LS1028A
 platform
Thread-Topic: [v4 1/2] dmaengine: fsl-edma: Add eDMA support for QorIQ LS1028A
 platform
Thread-Index: AQHVr/pSW2nKczVFpUqjkN1Zue3zHqe1vhDg
Date: Thu, 12 Dec 2019 01:56:26 +0000
Message-ID: <VE1PR04MB6638C482BFA65327668D181E89550@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <20191211080749.30751-1-peng.ma@nxp.com>
In-Reply-To: <20191211080749.30751-1-peng.ma@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: cdec6179-d1b3-45e7-26b5-08d77ea67f83
x-ms-traffictypediagnostic: VE1PR04MB6464:|VE1PR04MB6464:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6464B998DF5304C48A50A0E389550@VE1PR04MB6464.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:669;
x-forefront-prvs: 0249EFCB0B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(366004)(396003)(39860400002)(376002)(189003)(199004)(110136005)(54906003)(81156014)(8676002)(8936002)(81166006)(26005)(186003)(4326008)(86362001)(9686003)(55016002)(71200400001)(316002)(2906002)(53546011)(66446008)(6506007)(64756008)(7696005)(66946007)(478600001)(66476007)(76116006)(66556008)(52536014)(5660300002)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6464;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BU2sLz04DAuRhhIrjsUfPu1wFqbEO0V1pN9BRYg93ZnNReoVHuDouDa7NF/XD7HEpUBCcyFqZZY5Cwl3/2K07Sc1vT3KFZ5DeAKdcPO2Z9NkoKNqeuey283l7GOpw5scOW8onqit39mUnd3iBJhjfjekL2rQi4+oaMvtMovWvmXOW7RTvlpbvskM0aYvYbfDH4uuISmUtpV17gcL84Dk/TdLGIzyMgoraClGcyrYwdg3IfJrNTpKDdkkoAkv2YRWUtt507MDIQkBajYspqN/fXXwGEkdNaQe5Bs8cbBRL8HyhUr0nP1FtQe+U7qNLC9BCbSQEUIzXGqIPwl2J856Z2wangsdIjvbx+i8T33+ZtJYFLYnwTZN3+Y8/QrJd5MdojtagBBzFIbyJHyksP7hiez4kBAqTlnG4a1JKurA92RD73jlCY9u073FN1MQZNAd
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cdec6179-d1b3-45e7-26b5-08d77ea67f83
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2019 01:56:26.3797 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5KiLbeRV5KUsGC09KBoNm6LQP3VpnnNYtHpUJl6qcVjhI1kOtQT5LU6JrhZM+J04S8Zd4aR6Hz1K9EYofmuWMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6464
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_175630_415379_7CE71966 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/11/12 16:10 Peng Ma <peng.ma@nxp.com> wrote:
> Our platforms(such as LS1021A, LS1012A, LS1043A, LS1046A, LS1028A) with
> below registers(CHCFG0 - CHCFG15) of eDMA as follows:
> *-----------------------------------------------------------*
> |     Offset   |	OTHERS      |		LS1028A	    |
> |--------------|--------------------|-----------------------|
> |     0x0      |        CHCFG0      |           CHCFG3      |
> |--------------|--------------------|-----------------------|
> |     0x1      |        CHCFG1      |           CHCFG2      |
> |--------------|--------------------|-----------------------|
> |     0x2      |        CHCFG2      |           CHCFG1      |
> |--------------|--------------------|-----------------------|
> |     0x3      |        CHCFG3      |           CHCFG0      |
> |--------------|--------------------|-----------------------|
> |     ...      |        ......      |           ......      |
> |--------------|--------------------|-----------------------|
> |     0xC      |        CHCFG12     |           CHCFG15     |
> |--------------|--------------------|-----------------------|
> |     0xD      |        CHCFG13     |           CHCFG14     |
> |--------------|--------------------|-----------------------|
> |     0xE      |        CHCFG14     |           CHCFG13     |
> |--------------|--------------------|-----------------------|
> |     0xF      |        CHCFG15     |           CHCFG12     |
> *-----------------------------------------------------------*
> 
> This patch is to improve edma driver to fit LS1028A platform.
> 
> Signed-off-by: Peng Ma <peng.ma@nxp.com>
Reviewed-by: Robin Gong <yibin.gong@nxp.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
