Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E917210E755
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 10:01:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7v6Vde7UwOm+2WSZpmvAyAgxy0wk0thhw1wxxClRies=; b=blRPgmYVYlTat4
	lvgbTwZvkTHCIybJTIy8gHpqjtPujm1NTZ6CkTs/dSXQ2K8enbfDHZZf86k2/tey2z39WXpcQMRgW
	VJ5aJ8Jg/2UnmoMXh3Fc3AuAlRXxIE5/HzmAtQntNMG/o6Jd5g93SHuP1AkpBHX6kyllE0sYdU5j9
	bPqd/jbgm0r5ugMsiM4EWGRtAbgyh+9FtWX5MfDVi/kC3Z4yWp5YWGjP3lZVtYqCUbutjCVITOY29
	TFZU5wcvWgFAdog7xyhxZPbMa8OLAtsy/bAGU4YXNXHDIm3+8bz21WI7hpckeYxL9mr2wzPvHmBcN
	fnrEJFGbGb0ObbscT+VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibhaA-0005WM-H7; Mon, 02 Dec 2019 09:01:26 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibha3-0005Vg-Ja
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 09:01:20 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
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
IronPort-SDR: +g/1ZStFkDyxlWwCsRVIP6xBWOwoH+2WC1A/DtFhqVxKOEFMEHCOBR/RTbewKj8TeaSr65WSVA
 BsJ3a/DL2wvkIPiDePxvG3HmT9yoHuexzNDvh83EG7U0RTNwnBGARDoLRBF4Y4QtQRbhtOQPK5
 e297WYRROjnYX9NbO8fytggl2CDP+V28mrpm9oLk7HXbqCOd2EmNxTMBPJ0y6v/YL0ptBlRGez
 Iq+27QV7nm7gdtevnCGovht3i+g2P9IA8Td6LKHo2AnYJw5471pws3TmVLqm15JUU66ClstO+n
 9Vg=
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; d="scan'208";a="56244110"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Dec 2019 02:01:19 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Dec 2019 02:01:18 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 2 Dec 2019 02:01:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R3bbcsimqSWojY5kMuhoCsKrIanu8/0XcqE2o8DYI02Y326WdRXhTt2ppr2rsFI7sutl/a2QIjHOIM87gepoTxkDzHsMD5rnSVrjjJm4hQ4q9S7AVSF1lWAMchrXCcDQvmeBujaK1pJaacrHRY1OmzhPtHNjYHXXyVKn/2JGRTORUESLEuNAySgArci6X4NxhGQ5ZBCOGmieLIg3E1sDemcvqItrZdBU0qX86rFIDLkMmu+49gYIzUJk7qLSZcXDyQDyf2uhUV636zvNyaKkM5huRZiRJ8WH9/mw/NeDu5Ki8Ijx5w86kLcQ+N3oFdHwULHNwy2dGOGsoaxR06O1Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qkw4z/3vCUlvnrz3f1OxecHB+Swzihx9E8604zMW8SE=;
 b=H9bRl6qOH4a3xRmDXhiuMn7wESgupV9S6smAY+jnC5mOJlXOlUvdWMehcAyfA1U5l4RW5shC95BTsMLgZc/UulLrMptgjE8bZyZM78B7768FRWbSTs8JxSlnKmhzqMH69oQPbuoc7LyV34a3vDn+NM4kXd8IN2YD8zHX7GnF0ytRoFdCP3YpVV98dCL2LDitGX6SUjOlAxsXclXPM09WIqJCJuSng5PVHFpzNU1ZfW747Q76QgTJZuekwbwtd+a5dVitfpdPRTIfJXT517Z3X+J69iJ7MlhqOyzV64IOyn1w8hMjopvcG+Qmmq4gtMf0GXb3WOZb6Zrmt1XjaYgzwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qkw4z/3vCUlvnrz3f1OxecHB+Swzihx9E8604zMW8SE=;
 b=dsMnb2v2Pq1559rWFV9OOCcsl5jUgPaYCyZnD2mj6EgLqMmWHZwV/jm0eNIOGGsxsY0JqAQwwxzYAqfrhZkgkATCfxUkvTxyc0MXUEnnY+g/p8ta8m3G8nhe34RoWQTdCbeLVrdX/wftZYn5pVhHA9OjPgBS5FLHvUNuxspUaXw=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1482.namprd11.prod.outlook.com (10.172.34.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.22; Mon, 2 Dec 2019 09:01:17 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2495.014; Mon, 2 Dec 2019
 09:01:17 +0000
From: <Eugen.Hristev@microchip.com>
To: <robh+dt@kernel.org>, <Ludovic.Desroches@microchip.com>,
 <wsa@the-dreams.de>, <linux-i2c@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <peda@axentia.se>
Subject: [PATCH v2 2/3] i2c: at91: fix clk_offset for sam9x60
Thread-Topic: [PATCH v2 2/3] i2c: at91: fix clk_offset for sam9x60
Thread-Index: AQHVqO8OzLdBo17vRkajx8p6uElnnA==
Date: Mon, 2 Dec 2019 09:01:17 +0000
Message-ID: <1575277244-6507-1-git-send-email-eugen.hristev@microchip.com>
References: <1575276957-5615-2-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1575276957-5615-2-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR02CA0090.eurprd02.prod.outlook.com
 (2603:10a6:208:154::31) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 26e7d654-16aa-4005-7ab3-08d7770630ba
x-ms-traffictypediagnostic: DM5PR11MB1482:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB14821155256C037242DAF31BE8430@DM5PR11MB1482.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0239D46DB6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(136003)(346002)(396003)(376002)(199004)(189003)(14454004)(305945005)(2906002)(6512007)(4326008)(54906003)(110136005)(4744005)(316002)(71190400001)(71200400001)(76176011)(5660300002)(6436002)(6486002)(2501003)(256004)(2201001)(36756003)(11346002)(386003)(6506007)(446003)(102836004)(52116002)(2616005)(186003)(26005)(7736002)(86362001)(81156014)(50226002)(8676002)(8936002)(107886003)(14444005)(25786009)(6116002)(81166006)(66556008)(66476007)(66446008)(64756008)(66946007)(99286004)(66066001)(478600001)(3846002)(138113003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1482;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rYonHbOcABI4FcPucQINXhW7TWhmPM0A7/KkpiYLF0RxDAHV64Emr/LHNM1EECq/ncNLHU7YxvjCn8UyO5blNhTFdppRWUc0XYZD/VQ8x/Ci4cgdK1Q7iKkuP1MM8kI98NUQhCrWwFRWxfDmeq+52u/X/Uq6oI1VhFG2ttWb9Ji/3SiiHYzTOSKEh9F/jYTsPqfarTVROUccaEZSo3LcxLH4rMiFJoytTdVDU4M7G6EDYy71Dezzt9Jn9yW5t9zONoH6nxdD9z0B7yT3QcdhG55UBIIc+rHKKtOJkXr8ZcrOy9MrnrVA4OjhikZQYyWr2kKvihlS6zLN49osRhu27n0RlH6XsNR6isZauiuqEO4YSTgZUFN6fFzFERQltusZeM+nL5pg/ZD+EGS8PWrgPdfUE3FOY7BZmha+RicL9QqJT2koZCuIyzjz2afThpNB
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 26e7d654-16aa-4005-7ab3-08d7770630ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2019 09:01:17.1009 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UwKBC7i8C7pe17a/myUXqNWFsn933Q69gpPyyxHynlF9oJV06K0un5IEq2h/hjZ7cMl44pd+i/dYWVH/6888Pv7xy7IcYF++fAcJIXTBTwU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1482
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_010119_716571_3F2A51D3 
X-CRM114-Status: GOOD (  10.02  )
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
Cc: Eugen.Hristev@microchip.com, Codrin.Ciubotariu@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

In SAM9X60 datasheet, FLEX_TWI_CWGR register rescription mentions clock
offset of 3 cycles (compared to 4 in eg. SAMA5D3).
This is the same offset as in SAMA5D2.

Fixes: b00277923743 ("i2c: at91: add new platform support for sam9x60")
Suggested-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---

Sorry, wrong subject line. Modified to SAM9X60 .


 drivers/i2c/busses/i2c-at91-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-at91-core.c b/drivers/i2c/busses/i2c-at91-core.c
index e13af48..5137e62 100644
--- a/drivers/i2c/busses/i2c-at91-core.c
+++ b/drivers/i2c/busses/i2c-at91-core.c
@@ -174,7 +174,7 @@ static struct at91_twi_pdata sama5d2_config = {
 
 static struct at91_twi_pdata sam9x60_config = {
 	.clk_max_div = 7,
-	.clk_offset = 4,
+	.clk_offset = 3,
 	.has_unre_flag = true,
 	.has_alt_cmd = true,
 	.has_hold_field = true,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
