Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CE2118628
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 12:25:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rBB01yMU9NKLnMXidA5rXXFeh3tX0652j9ECbmc0vyA=; b=rsUerZoOEuWaUN
	nFlsSjnyb+igPYicCBe0hOaGp8qCWNsLMlCVARtWc2L3qGI59TePMnN9SkyiXhq/36KldvRFIO94u
	9QGhdR8m5Ww6gQnph7idMSQLLcOX4xnb4tP2Ga/Q5bempFf+TD0A0l6mGE9/Apffl3Nf7FZDqn1EB
	uTdiQmvmsDIqD8txMeiOMUmLFGjM6wzNFcJlRV7l+d4RGera1YkUyu0u3RC6a/horw0uH7nlNpyJZ
	EYRXEAopOTEEMRMfG6kZNaT9tgK6h/06+mqFR9DiM7XAiPNYB9guuA1A5uA/zVVHss54yT9hivreL
	Ub8gIpNswNZMFJB3/fPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iede2-0005NF-Os; Tue, 10 Dec 2019 11:25:34 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieddt-0005Mw-Vk
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 11:25:27 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: K2CDqsVHx0qJasyK/F6sCP9m05GI79fRm+/dMeT0zCARxozDxNFhPrUWAA8Qfl7+Jl2tvWkwvv
 NVurGr3KZ2zVZVJEcDmB9UNmI3fH9k6yPqIDhMicKIcgmDyE2himPhUzcKtx/fumVfLreprgU+
 wv5caxFPfdB2lyYrJgwnSsGPInTSTIUT9NtQyBvcknxaCYdQmOt8gsmzISHP0SvRNbJqCN3HuQ
 lntdCNAdOX72iAdYZv9JFqr7zHVWrUejQQzpCJ+C9J49NDOKYrMElk8NM9S3OnXjY7D2PoUUY6
 aVs=
X-IronPort-AV: E=Sophos;i="5.69,299,1571727600"; d="scan'208";a="61201737"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Dec 2019 04:25:22 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 10 Dec 2019 04:25:22 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 10 Dec 2019 04:25:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SBHRn4QkLjzLk2lbf3tHb0WfziL3fOVqKPqf3lKceGD6emv89ZIZRbh/8jBcRjHakFQZTsVzFblJCb2Fu7jroKk8qhrjFTgrZDX8WQJcWMxDK4DCsu5J29vOPN5+RW7Pi7MM4SjTerBD89tdnPOZ1PPGgG1HuuPRjeumqsFc/7pRTG4nbAMfPZ3VtuQqjp4P4OCQ1gV2BSt5lBpnHjFF8dNHWmXp9+GbHk8Qauabq8I0lWysW0RjP5o9vYWMy2HNAxx1kJ0zZticEvMxUmMZeZn2IZ44QmMq/5afnX7bBecVyqJCYJNEkE8L5WXkcOwac/bx+RrtHeEyL5+4G7rcCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e98rIWgRgDe18zmweDZtY6zrpYQBRfLW6YQDFK28s+I=;
 b=Ndh+6zjlhPIALFro/oW3jZd+vGs/JxPOBq2D49MNaz0u1GEvifQpZV/n1/pP8qcyn0CSpwVRBxskNLgk5ftxRfMePKjmst7jluVfMxmaK45nmfnw8bQeypLe8edyBbCG8y1sFEbBuHhzTOVVuhC7g5fAIBtoJnsUkU50GykoQzw9G4ov+V/NK1sLOJQxxANbse3xGozo7rafykk2paNk3O1GsttddRGWPi8r/3Pn6kqUVhgJKKRv1dp8m8VJoNuljTtiFij6/D9IB4KMLj66nhEiXbd6kBWi54u1Ffii3EZQTMJCddy0dy9LuZ2xzEmhdpxVPvIhDnFbhk/aVwco6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e98rIWgRgDe18zmweDZtY6zrpYQBRfLW6YQDFK28s+I=;
 b=M2u2SSxQMiEBYID5qVQOy74Bzs2uy9ZyyAau7fPzML3K4QSwfQZilUT9/RjkBGkYBIVrFPEsT3lzD3FGTInDhgBKiNJi56/pmUjaMbqcumS14XrRIebOt6Ke0TVU875f0URrMBz/1ffEl4wHkFr5A+/LuMJLE17ylMUfyz+EUsU=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1419.namprd11.prod.outlook.com (10.168.104.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.21; Tue, 10 Dec 2019 11:25:20 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2516.018; Tue, 10 Dec
 2019 11:25:20 +0000
From: <Eugen.Hristev@microchip.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>,
 <alexandre.belloni@bootlin.com>
Subject: [PATCH] clk: at91: sam9x60: fix programmable clock prescaler
Thread-Topic: [PATCH] clk: at91: sam9x60: fix programmable clock prescaler
Thread-Index: AQHVr0yBHk78Bfo1XUyRKbpCjE+1Hw==
Date: Tue, 10 Dec 2019 11:25:19 +0000
Message-ID: <1575977088-16781-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM4PR07CA0001.eurprd07.prod.outlook.com
 (2603:10a6:205:1::14) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c435ebc7-cf2e-49f2-1724-08d77d63a3ad
x-ms-traffictypediagnostic: DM5PR11MB1419:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB14194693A7E7DA8ADA46FD03E85B0@DM5PR11MB1419.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-forefront-prvs: 02475B2A01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(346002)(366004)(136003)(376002)(199004)(189003)(5660300002)(71200400001)(478600001)(66556008)(66446008)(107886003)(6486002)(6506007)(4326008)(52116002)(6512007)(54906003)(36756003)(186003)(64756008)(8936002)(86362001)(316002)(81166006)(26005)(8676002)(81156014)(110136005)(66476007)(2906002)(66946007)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1419;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BhxlCgd2lxKiB6T9FspfOwWWixqrTUgJZwghjdHI9BeaigwSKhFSxBfHefRcirVfzffkDww1/HkF6/cwn5TXRmHf0Ets4R9pbYmMcKW0qYnKRjpXyU5ni6eQ34KcRS4uLCa4pBJfvPczoRvHkhc4UpGLbG8kZo70UitJtL9hlI6+nQoKM5c9NsO5uZOeTMt/O33GyqVqVpL/sCt7do6xSK0rNyxP+TatO+W3Z4Sni+eQZN26ds3vEyBYI6qiuSp9iLtghbD1KBntU8GlAYkO88nUCHlzek0t8i+dYp/OBYOF6Z+5HhaxWzWN8VWIXOadFnLN86rXs/kZ0u1U0daqiqlzoB4InyT5f1iKSToQYZIHOLKCL90dOM+AtFKGxYpt7Cx324Z+loyOfEaDBb2vqC0qQZUjcT5AP745Qi/5taU1O6i6u77rH7E2B+ZsPFFU
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c435ebc7-cf2e-49f2-1724-08d77d63a3ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2019 11:25:20.0847 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oNMuVy9TX8g1xA/SOuMHj4QlgvDqjAqgD4zSEt0TqOJJ23LplBExTPfSmljbFo0NbgqV7hzaKR/VGJPnw4R+OKK0VZmAkRBt9Ohr3iqwyrg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1419
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_032526_079268_6E3681C3 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, Eugen.Hristev@microchip.com,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

The prescaler works as parent rate divided by (PRES + 1) (is_pres_direct == 1)
It does not work in the way of parent rate shifted to the right by (PRES + 1),
which means division by 2^(PRES + 1) (is_pres_direct == 0)
Thus is_pres_direct must be enabled for this SoC, to make the right computation.
This field was added in
commit 45b06682113b ("clk: at91: fix programmable clock for sama5d2")
SAM9X60 has the same field as SAMA5D2 in the PCK

Fixes: 01e2113de9a5 ("clk: at91: add sam9x60 pmc driver")
Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 drivers/clk/at91/sam9x60.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/at91/sam9x60.c b/drivers/clk/at91/sam9x60.c
index 86238d5..77398ae 100644
--- a/drivers/clk/at91/sam9x60.c
+++ b/drivers/clk/at91/sam9x60.c
@@ -47,6 +47,7 @@ static const struct clk_programmable_layout sam9x60_programmable_layout = {
 	.pres_shift = 8,
 	.css_mask = 0x1f,
 	.have_slck_mck = 0,
+	.is_pres_direct = 1,
 };
 
 static const struct clk_pcr_layout sam9x60_pcr_layout = {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
