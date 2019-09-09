Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B4CADC20
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 17:31:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=50zzfKJjnp87sLUmwNniAwaRr6pERqS44jSp0O86aJ4=; b=fJtrmZ463o/LMM
	ZyxoZp9CowglWDfB9TE/UMwWw3LyBQKJY/SKuxQO/DHZHWgv8xADStNokua+mtMvlwJb43h3tcSl+
	c8RpbMHYztSu96SNcDEIB/pJlIBooHw2qI1sbUlwcexndSKsQnWk7k8ZdVTFVzcGznYLfD8+7LfxH
	yaF+lvgQUo1yyF9x8UDTvyWBExJJ98aMlEK3iqwQoiIIYXBDn3G9NP3g3clKKlQ9X1+sK1262oRNy
	cF4aVilnEGsYF4VvlEGw4Yg8/Gr40PjzJl7uaOFo/N1zo0e8YskVURJKg/+h/nmxae4HzSp0/w/9R
	Khup/lRhBuDM7q/kvBUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7LdI-0005hZ-17; Mon, 09 Sep 2019 15:31:12 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Lcz-0005YV-71
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 15:30:54 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: jSqiRYevo/KKLynuArCmlaNFfB63DQFLw5yov61/yqo0aDK9BX5dPyPfRJX0wKm9yjkxZWMG0e
 pQmjz4sTT37roBk5XWJmxoHuzsEDFZHy0ALssVuqHgr/TSJaQ1EZknyT6asjoDbYIVA3CuipYv
 fEiorDChFYEezN9pLocyQZMiwcuo9mw9lkJzhPL+PqFF/cu2nOqqGACxeC9/s4u4TLJyKM8bwQ
 V+DlYoPte4ayfF0p4RjU5I5EPLk27yI+LNyPcvxpQa9E8vDgbMtBWRe0yiC28Q5lxkVKONL7S/
 myw=
X-IronPort-AV: E=Sophos;i="5.64,486,1559545200"; d="scan'208";a="48227775"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Sep 2019 08:30:33 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 9 Sep 2019 08:30:33 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 9 Sep 2019 08:30:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gihRW+FBNaTfip4A8qbx+gK6qHvlR5UZDB4o4lJmsm1gqN/BrGEafU8l8OSXBkVEi/cCjUidoSVZ9tVbWt9uGeAEKEcwlC9P3oUS0PnQXNRTsiJqhPIp6Wr5g9TcBBlO99n2s4+clD7YaXiIgoy++IpJBCfqdrjgv1HBf7OdIcH5iZoohOYqtmDrmuFmb40zSkx2qXVQ+5kYcExMc1TODoZGvje0mhenQvj21Znnv6PHdg5s0zJxKOm49k0jDSlf8X3i8cp3yxF3HTVOFF6V4xBSQtJ6mxGDU/OwcLxrMBK5/ann4jar2O9atZjc5WNn1XL53T+ZYtAhjK2RncJCJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=grW6ysqqSk5ZRRbyFDA+0V7NWPDD7oWitlhBOcNTWGI=;
 b=jJch7N97qWkV/uxdnND2LDEoDTNsMMFcIPPg+90Zxcs+27eS+ag5GY1qozy5/U22w/PkMSPZca1SsdNN5dyvoVScn8CMkolja8mTXVKiHHjeS+yuhkoSDWEtD0Hnr8EyloeV5A3NscJVhDkHri5E91p/MKwSx4cLBDPeMbNgTqTYD2JYkaH5HL8pEBAMHpMHkGB8MzfjtgP5X8kb/nth6b5+/lnyL5mSed3xOD0k42plMLqUijXvke7v3bjpKJAqtqM2+QTcxxDJLFQy6JSMJSxhaySsWwTYR1Ix2WpC4Wfv/4WZKorJogvDsgLu5V9sWzPfuyxv4Vc0FUa9uaWKfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=grW6ysqqSk5ZRRbyFDA+0V7NWPDD7oWitlhBOcNTWGI=;
 b=Sj7mytouE4B1ni65OqgqQj578ymn6sUa49wC/zb9wVjU6Ripgpx3oeGjRLc7ywGWVgeol5guBExhMhREPHnTxEmRUKQT8szOw5IFg6La2nby246tODR5o7+Y3lyLioU+4q3sVJQHkZKfIosxp0k8A9pO9l73LLBrXHnWoCrxKsU=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1899.namprd11.prod.outlook.com (10.175.87.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.15; Mon, 9 Sep 2019 15:30:31 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::a141:1974:9668:fbe2]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::a141:1974:9668:fbe2%12]) with mapi id 15.20.2241.018; Mon, 9 Sep 2019
 15:30:31 +0000
From: <Eugen.Hristev@microchip.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>,
 <alexandre.belloni@bootlin.com>, <linux-clk@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/2] clk: at91: fix update bit maps on CFG_MOR write
Thread-Topic: [PATCH 1/2] clk: at91: fix update bit maps on CFG_MOR write
Thread-Index: AQHVZyOErB+auWwbkU29bShNogGERg==
Date: Mon, 9 Sep 2019 15:30:31 +0000
Message-ID: <1568042692-11784-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR09CA0132.eurprd09.prod.outlook.com
 (2603:10a6:803:12c::16) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c7698ad3-a1aa-4e43-3caf-08d7353aa657
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1899; 
x-ms-traffictypediagnostic: DM5PR11MB1899:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB18996E442C3AD545E8CE0C97E8B70@DM5PR11MB1899.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-forefront-prvs: 01559F388D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(39860400002)(136003)(376002)(346002)(396003)(366004)(199004)(189003)(316002)(4744005)(99286004)(14454004)(2501003)(486006)(66556008)(305945005)(66446008)(64756008)(2906002)(5660300002)(66476007)(6512007)(476003)(2616005)(26005)(102836004)(2201001)(53936002)(6436002)(8936002)(15650500001)(8676002)(52116002)(36756003)(54906003)(81166006)(81156014)(86362001)(110136005)(6506007)(66946007)(14444005)(256004)(3846002)(6116002)(186003)(7736002)(6486002)(71190400001)(71200400001)(66066001)(107886003)(478600001)(386003)(25786009)(4326008)(50226002)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1899;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cwJtJOLttR4V/RPe8ZlpKh1+SWbf6FWpnvVUUhmwRCpykdxuAM+ET05zS3V8CTYPrjI7fuzPRZoB3WJOdhQklpO3F+p3CmWtS9kXm9PoEETZbymrLZn2htlHZLr7Te4XEnnXIBYilF4ei62WAzohbn9ljlUHAkZ7XSqdlTPqRQuPu5g/Ar2CGU+U4P0EH8BnfgU6oRY+qt1YPJq5V1/v7Z9OpvlC3bFFbGPsczHqqxN6gYapM+QO6CBnb76tZXxIfIUwGWEPDg/6+cRiFdHLvJ+PmVh052/6uP+2b6yBTn3ptoDyKhrwncMNDQt9Guhah24O3CIOHOs4Y/x+sDs2RRN6V9cIOcrOvvzzUgxgNvliAL/ZR90XZFZnMdE98v5eTuvWfk/uLrljl4FT3H7Abq63sLD6OgYkklf+3qiYVlI=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c7698ad3-a1aa-4e43-3caf-08d7353aa657
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2019 15:30:31.5992 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 46G8rA3xbY7x5gTkkRAaDNEv8Pa0DD5Ku59Qe5AIJA6YDx91DkdhNdj3aSUNis6NaMRcZHsAM6KUxnhV8AK8tpvxhHT5NKUXCW/+m/pdRUs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1899
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_083053_330791_791CF6D7 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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
Cc: Eugen.Hristev@microchip.com, Ludovic.Desroches@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

The regmap update bits call was not selecting the proper mask, considering
the bits which was updating.
Update the mask from call to also include OSCBYPASS.
Removed MOSCEN which was not updated.

Fixes: 1bdf02326b71 ("clk: at91: make use of syscon/regmap internally")
Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 drivers/clk/at91/clk-main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/at91/clk-main.c b/drivers/clk/at91/clk-main.c
index f607ee7..ebe9b99 100644
--- a/drivers/clk/at91/clk-main.c
+++ b/drivers/clk/at91/clk-main.c
@@ -152,7 +152,7 @@ at91_clk_register_main_osc(struct regmap *regmap,
 	if (bypass)
 		regmap_update_bits(regmap,
 				   AT91_CKGR_MOR, MOR_KEY_MASK |
-				   AT91_PMC_MOSCEN,
+				   AT91_PMC_OSCBYPASS,
 				   AT91_PMC_OSCBYPASS | AT91_PMC_KEY);
 
 	hw = &osc->hw;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
