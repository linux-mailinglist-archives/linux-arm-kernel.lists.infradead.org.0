Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 071F4A53D3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 12:16:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6IJZ270eOC6mA/nLxWhzfTUIQWLr+nBQq8nKLpevw78=; b=ebigOqyOmptt9x
	KmKz1UGgwKYyimL5SxNitAsaBbyZW5yLSXXHBWg/vdYtepc+nQ94Ckg1yR7lxSmQC50wIiylfH5qf
	eTfUGvZkiFWooo+tc+Hijzw/PDcZcBhKGNgO9G4644WrfWI6GNWYiDYTdfx0qHy9CdkNyctj72rh4
	fahAdLgx8hMXRJyRAIMOxtlqEca9bSyIvSkA0Oy+Uv8c3wyE5ZBgVLRMQEnGrxZ9DoQWoKAVa6IM9
	/fcJXB4rH0Por2l4wrQQhNaSsVPEQfBEAVnRPCmftxsFjtGNomC3faSiraL8UlCU28tJZ7J4pFftI
	q+Brr4MIzZU1WC6wNSRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4jNM-0003Y0-C2; Mon, 02 Sep 2019 10:15:56 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4jKE-0000vb-27
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 10:12:43 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: uAleM8fmxKmtg+PpYRosDm73BYE/z7cYCZ23I990a8a51x8MDSBGoz4wOrLujoDBOcIl4prvVd
 3RdGUo+u5ZItKppEsXfzaTE9xJ7QObs5FgPGclacovfWiQr73ibHP0yy4VQaP/mZphwVFuOPOJ
 qqiTJPEGXy5Sc+9b13NH07bLMVhSr9tBqWQ/EyI6E9GUP3QmT2AJoQbx3bkDA7QMT4z7S7g8Ku
 4fJdF9dL5k/t8FgRHdMVo7jb79GNy945/vLlf3rlUzLBwHFWP4qXhWsgW3W9bcATTKAiTxXGw+
 09Q=
X-IronPort-AV: E=Sophos;i="5.64,457,1559545200"; d="scan'208";a="44561100"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Sep 2019 03:12:37 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Sep 2019 03:12:21 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 2 Sep 2019 03:12:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NAFpnSEb+eoC5fewbyzo3EgVZqt5um2Y4rszfD5mkpMsyGXkz8GaVD0y3szXsi0WlQ+gV0ZgyEppj7sQ7VymJbjGTDq1N1FpQEuidH46Tc8u1YzlQu2woEQmrTSPXY+1AOSPFnEv5OcB3EmrGh4clG9FS6kkf6RlpMM/rw6ZODH87FVMmBvC+VBGMAit4GBPGjwItUY4comprbpQXADumq3Bx2OR/2+QmbFvPnoUTHyz946R4X3lI/GoLLuRJ83PzEHkKb5Tv+Yjgtvuijg9VR2NA+9bOD4/OSvB3ODRvJfQgXFRB6kUmGYw1MthR2/hxZTVCRIJr0lFujHR6g+B8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d9IBcdoZOiF2OFUwwq5xd7VoCpgH+rEzEOB0u5csHOE=;
 b=ax9levRsbWKykQfvjscYiJHf64fFnZbU8rXq+7SAE6rPP/inUqySK7/wVHYmu/TLAfVg4/ptMQ4vI0uLCgK9V9TNJlOFdOneGZv5/1OAahUsjCWrsRmFbmDuYSkt1VibCDEoWhq5KrOBF8Vop2uX911AXB4zMOD32fJKS2rZu/72qfIXdhLoRtEwbvu0zTZG6qG1zDaUo6xE0im7yKbSi5f0dMRYGuIsJhsjcu30NAToSKBmCDXDUuv6ifNbthe2COm4APY6UNBBGXBTKBhYKEE0E/eNqpjzgtTgu86X0Ma/Pq2dlTRbw6dtiqzY8SkNjKHcpUj0wgefxq1K9wURww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d9IBcdoZOiF2OFUwwq5xd7VoCpgH+rEzEOB0u5csHOE=;
 b=eiQPq9ktTXvt/E3wqUufgLJSclArrPQkDX1lP4Jsqjhg5GaQ8kyBeVoHdSGi5HIVoUNbcmjUAWkP+DqtZuRKoZTL0i3gE3xv6c3hAhaVzkE9iVLCnBUXB+PweqfAS9VQknDe8G5DzbazNkpzVDJc9cCoyWucrFNRq9txAVjIsDU=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB0044.namprd11.prod.outlook.com (10.164.155.38) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.16; Mon, 2 Sep 2019 10:12:20 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::c457:dc57:6e6f:f4f3]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::c457:dc57:6e6f:f4f3%10]) with mapi id 15.20.2220.022; Mon, 2 Sep 2019
 10:12:20 +0000
From: <Eugen.Hristev@microchip.com>
To: <wsa@the-dreams.de>, <peda@axentia.se>, <mark.rutland@arm.com>,
 <Ludovic.Desroches@microchip.com>, <linux-i2c@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <pierre-yves.mordret@st.com>,
 <alexandre.belloni@bootlin.com>, <robh+dt@kernel.org>
Subject: [PATCH v4 9/9] ARM: dts: at91: sama5d4_xplained: add digital filter
 for i2c
Thread-Topic: [PATCH v4 9/9] ARM: dts: at91: sama5d4_xplained: add digital
 filter for i2c
Thread-Index: AQHVYXbnlQUIVEL80UaOkK0PZOxmvA==
Date: Mon, 2 Sep 2019 10:12:20 +0000
Message-ID: <1567418773-2427-10-git-send-email-eugen.hristev@microchip.com>
References: <1567418773-2427-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1567418773-2427-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P189CA0018.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:802:2a::31) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2ea66726-ee68-47b0-a7ae-08d72f8e0a4f
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB0044; 
x-ms-traffictypediagnostic: DM5PR11MB0044:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB00444B1DD28DAB9F6E511250E8BE0@DM5PR11MB0044.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1079;
x-forefront-prvs: 01480965DA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(136003)(39850400004)(346002)(366004)(189003)(199004)(2906002)(66446008)(2201001)(66556008)(66476007)(64756008)(8936002)(305945005)(3846002)(7736002)(66946007)(6512007)(446003)(6116002)(86362001)(36756003)(5660300002)(52116002)(2501003)(11346002)(476003)(2616005)(256004)(6486002)(486006)(50226002)(14454004)(386003)(6506007)(53936002)(76176011)(186003)(99286004)(66066001)(81166006)(110136005)(7416002)(4326008)(107886003)(54906003)(4744005)(71190400001)(26005)(102836004)(6436002)(71200400001)(316002)(8676002)(81156014)(478600001)(25786009)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB0044;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: xpVnW3p8NQX5WQ6jbdee5ae819u6q1KZ2w3y6myY0eAH0y26Q/yOjHS7y8EC0XQhTj6kEPQLIUIKHnl8cRkOzmqmVcRtHfD3l9HPccKDRccFMXi2qs3eqi2MkGMeai8ZedJ4evlLSPMxHQCGu6W87+UFZAHmuNPbqLZTTsQK77LRWoL0Cbkeq78Rrw4F9G6MK7/eivv0JV3IJ6VeFxS6yleuWgFKqJTa4vWnqDWTjzq5ToKqmfdHtiM8lVvHgOrk5JXMdDjSI1FcCk5LzGSJb8SQ5rNLChwLd11TvvZyeLWYoUWndPOpWrQt0FoUM4qH+372yzETaz5RzlQXv71PBJpZvkn0o6e6YF240Hu4hsmGgizKY9YfLOT6f9SDaCGLNLwvI3y+mejJR9E3jtdx7clpyWA+BBVhGXJsf8ZA7fw=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ea66726-ee68-47b0-a7ae-08d72f8e0a4f
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2019 10:12:20.3497 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CcGGwxg18v0vD62G78dSNdy+W+MgrlhJup4A5QC2BCwZ9FUJosDxiYf8Bue57TpDOHaLk7S2gLAhbIuRzTsQV3yn8tcWyWqq7N0cigkXfFc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_031242_188593_426B278F 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Eugen.Hristev@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

Add property for digital filter for i2c0 node sama5d4_xplained

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 arch/arm/boot/dts/at91-sama5d4_xplained.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/at91-sama5d4_xplained.dts b/arch/arm/boot/dts/at91-sama5d4_xplained.dts
index fdfc37d..924d949 100644
--- a/arch/arm/boot/dts/at91-sama5d4_xplained.dts
+++ b/arch/arm/boot/dts/at91-sama5d4_xplained.dts
@@ -49,6 +49,7 @@
 			};
 
 			i2c0: i2c@f8014000 {
+				i2c-digital-filter;
 				status = "okay";
 			};
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
