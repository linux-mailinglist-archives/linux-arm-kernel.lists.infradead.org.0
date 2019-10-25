Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E15E41DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 04:52:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mVK9vdc8uDd0hnBm7H3X3a72GAwkfPv/+GYbd7NEMgM=; b=qPOa7qA3Zi7fiB
	fxgdQIjGJusAtb4Yb5k7q7WiFhntldEMJJbTWHib3H6DGYzsv1m/dbaiO/3hW5lN5qnAwOngcuh0d
	yLbf3RbEEJHPlP9QAzR9/tTbppU8drg+RudLKw8Gt0VEW2yX8OLFTd0bM5KXQG0Hpbo8AUP6lFJW7
	JeKoDRa9CXE7I+vYkFzi9uDqcAIVwGeGzO7gBvqXzjG8Oy9xtkiL3AHPgQssaecuT3khDyW3Zf7Sd
	BKDOjddQBF3jGCOvCflpXCuVNbZ4+AHN/L5kGia2eKCTNpkGEAeacQD/W3Irkqpntr84FMEj/hUbT
	y2s9pfXA3ALRuoeGMt0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNpie-0001qW-Tz; Fri, 25 Oct 2019 02:52:52 +0000
Received: from mail-eopbgr1400128.outbound.protection.outlook.com
 ([40.107.140.128] helo=JPN01-TY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNpiU-0001ov-7t
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 02:52:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aklBFH99vG9xIi80qqRRIrqESCZU70Uv6xoJLfcnoXmcxJRu2vAQ04NJoijkuYH2+l+HHXDoI00Rxr0/lEDKYmxaWzXwc5uFR+qAcaGKciUKh66661RzCj00GjDdk63xh61AdsCIsDBUUGJ5K9oCcQ0CGDnvO2kt1k222vD5JI4rnBYGo4oCkpNpOf5yYAoCRCs077j3MzmBeGkbf0Z+7ApmsSwYQuM6XRqRndvtsO9JI0+2fFaVWY8qXBjW51f52VykeX9ZeLWtsZkeXByvpgDa4fONFrkTjGUGZWHFfKDK8kdVGsNMurVrukYFIYWkzouFNeSIadYPCYJpicxYiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PPWe3yeEQMNhYykgbHflZ6CQKxpAv4ljpYH/6D+B718=;
 b=XPPCI2LJpR8xyD1FiPQvmeR7uJb6istMV47TtcPtltXldSK9QTn9bT9sybq19THuQbcM2jTm2gxJmIm8equJUFlKY1tvNUA1hrv7b/AEh5G+Xj7EFGA6bsL1reTV2VgONFpH3M+6aNDov+tePV3MTEil5moj8cCRMWJwwx3V4ibX7m7EZGHlr4wXfjfURHFy30IXWoKBe737p0yYoPA6px8WKq+CZEgAhhJ/X/nRbZRShVUIpFBpOjnYeWbsxnwecLZjArNBPS12ouaItT9t30nyRz2GnYacqt6IeHgeYvxvEEuVjajsuBoa6W2x7y9od5hnItj4+G/kmZKtRC0N+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PPWe3yeEQMNhYykgbHflZ6CQKxpAv4ljpYH/6D+B718=;
 b=ofkgmHW5K7cs7fNBceRXPJSRDdntraq4inSzP8VFv4h96fXAaQglw+w+do2e9YNutcEeAl/IK8MlTdE7l6fGdUYXqZWSNeymiCIe1SDB9lj6962zjrtU1ocJOKQntd2kmUGGVmTKROcodGfY51JF2lLt2wSExJgxhcCF5WTtt+s=
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com (20.179.175.203) by
 TYAPR01MB4381.jpnprd01.prod.outlook.com (20.179.186.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.21; Fri, 25 Oct 2019 02:52:38 +0000
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::548:32de:c810:1947]) by TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::548:32de:c810:1947%4]) with mapi id 15.20.2387.025; Fri, 25 Oct 2019
 02:52:38 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm
 <magnus.damm@gmail.com>
Subject: RE: [PATCH v2 07/11] arm64: dts: renesas: Prepare for rename of
 ARCH_R8A7796 to ARCH_R8A77960
Thread-Topic: [PATCH v2 07/11] arm64: dts: renesas: Prepare for rename of
 ARCH_R8A7796 to ARCH_R8A77960
Thread-Index: AQHViZ4rKskMR7cIOkyfg2MM6vfcyadqqyOQ
Date: Fri, 25 Oct 2019 02:52:38 +0000
Message-ID: <TYAPR01MB45444DAF3E0921859E01F2E0D8650@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <20191023123342.13100-1-geert+renesas@glider.be>
 <20191023123342.13100-8-geert+renesas@glider.be>
In-Reply-To: <20191023123342.13100-8-geert+renesas@glider.be>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com; 
x-originating-ip: [150.249.235.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d6848a2e-ccc8-446d-1563-08d758f6659f
x-ms-traffictypediagnostic: TYAPR01MB4381:
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-microsoft-antispam-prvs: <TYAPR01MB43814A7C2A67AC307010D190D8650@TYAPR01MB4381.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 02015246A9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(366004)(376002)(396003)(136003)(346002)(189003)(199004)(64756008)(76116006)(66946007)(256004)(66476007)(5660300002)(486006)(25786009)(74316002)(11346002)(71200400001)(71190400001)(316002)(4326008)(66556008)(66446008)(66066001)(110136005)(54906003)(476003)(14454004)(6246003)(446003)(478600001)(99286004)(86362001)(33656002)(7736002)(76176011)(8936002)(2906002)(9686003)(7696005)(6116002)(3846002)(55016002)(6436002)(102836004)(4744005)(186003)(26005)(6506007)(229853002)(81166006)(52536014)(305945005)(8676002)(81156014);
 DIR:OUT; SFP:1102; SCL:1; SRVR:TYAPR01MB4381;
 H:TYAPR01MB4544.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LpX4jgxIVrKoKTvhoRnY5Lpli3Gg91hb+iOnO+WkpbBzoD3DrOhC30IOtRR1hsOkjIjVcFUh7b5/Tqbm/o4rB4Ez+gdERatLFjy+wG5lBMMlOvZPst59QA/VVx2qzdpytTKhJRr1WS0F+cGUb57m/nTj5eUF2pRiddNxEoSQK912CvPEsIkgryC3857dSph5B8JgOUaC2TZlY5uA5mELnaCLHiq2PN1hsHKxhV1K7243VV3Mwd00dehoz1kNKnbm7IvFkCrItM3l9cTGAFrTrEEWelRn7s99iVPeFaDiK9TgSqwqsq0Hv/Bn63whTOVdbkFfzDqGR7dgcmTtTktao81FeJ6BI5Cox4oNQOYggzW85hNxk7Aj3X4d3urA9E7hxt5x0nITkrhYiamtVOBEw8fBAfwu311SENkOr79SQ4jsLJRYhCNjr/i4o5ek7HD/
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6848a2e-ccc8-446d-1563-08d758f6659f
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2019 02:52:38.4509 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IoSHGFLdyQmjG714/mfeF8QeLilMTqukfKUBj9BYuzciEo13lo1ptpr9gwNvBEATjfxUoQPSWl555mUF82oaDxXfI/vGOr+T7I2SlgifYnFkcxDDs806WOWyKUJBVsFK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB4381
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_195242_285297_78DF0C1F 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.140.128 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "REE erosca@DE.ADIT-JV.COM" <erosca@DE.ADIT-JV.COM>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert-san,

> From: Geert Uytterhoeven, Sent: Wednesday, October 23, 2019 9:34 PM
> 
> CONFIG_ARCH_R8A7796 for R-Car M3-W (R8A77960) will be renamed to
> CONFIG_ARCH_R8A77960, to avoid confusion with R-Car M3-W+ (R8A77961),
> which will use CONFIG_ARCH_R8A77961.
> 
> Relax dependencies by handling both symbols.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Thank you for the patch!

Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>

Best regards,
Yoshihiro Shimoda


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
