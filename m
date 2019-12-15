Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE3211F849
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 16:13:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8JJ903EIfU15VNvab+RSkNuRZhu02cnvmeajd4kmMV0=; b=TL5htSuo1pMG3g
	qrq+ucJoPmB4TWPcKTRycvUUJh+ul3VHxX9qi7Jb9XIRjPDHzbafzulYxARYqfE7/lnIibW4u5NoU
	r0MUGJmoTfgqMWBFsV3fe3POHhFspKEcDzngspGC8g15O1ha2nBTOKPsINFwSVIPYQI0R2QooGfu8
	RXtItMQgeiK1oNYw2P97Qt0CWXFkssQ2T0r3AIFw8djMX1u/cT7cNPyfLNILtrZlzv9RQWh12Z7Ns
	Goo5l7ZPJViyzPQKDt9qPO2mobnz2PstnwRrG4lmkXyAFcEaaUpF9i7DPqAGATQo84ZRymGpzT2d+
	/GKhoF+NmfukwCL2bDmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igVa1-0005MQ-0C; Sun, 15 Dec 2019 15:13:09 +0000
Received: from mail-eopbgr140080.outbound.protection.outlook.com
 ([40.107.14.80] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igVZr-0005Ls-Sh
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 15:13:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LeOsMEWCTMVuxVJtHuq1D76hdRpp7ZJLWOMHi4JqYJyvkLfipLIgOVrtppzCQLsLfs3c2iR5Mv0UieFE5vPVgT7unwRGMW9CV9k2whBU/tmGYCOUZHOFedgedvwTWSUAT71Bv48Yt8Qr+rVxow6E5tgldK9E6tauocLT5Xh6nCqFVLHunBpi753jUR/hvFnbimuRAFm1V+A+hNPbLyMTQ+PEgS36arYhj5i0lGAG8VUO0GEQeVHMI9h9Ra+ewbLc1f71PUwYC87iT6aopFaDg65kFlG7U/voGQ4+UQoOYS2GpKixrPmVarWThCKkuLFK+/v7BcNTw43NgqZ+VBMIOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Tm6bigb9pw6q5wkD2O4cHpNdQ9yYpIxCCo22z4izG4=;
 b=WPVwfn1r2vEhRx+AhxqYmFqMPdT/FD85MbB2drab+xT/NhTaBZvwpsoRv73RjcR9R9uxa/qBdytbe5Di7mLXbUWqcbNOej2nwrV+iRxM+LeONJwPASXXHaX/gN3AwZY6AaLm0eYYrJIAhEEs0cnN/Ic8mT0rYMkut5oZtmqE4QsFnpc6hgZPSzFvSCO8TgWApSjYWHu2bdVc6vnPEKYWWMaE7CL06Xmm9inQO5S/sfxsNXcT2idjrT1ZuJrIq3Qq9A6UIuEKG84pqj7kipcVSverY/xaDDCnelqE1LdCRbvKx1V1OGXe6CmgCwPSV6GzoaaRI4gReH+HmTrZxprXQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Tm6bigb9pw6q5wkD2O4cHpNdQ9yYpIxCCo22z4izG4=;
 b=la6cKcNUEGXAMkvdOyCX16gEwkt8zzu30Yf0WSBBk/YXg88mW0r5lTJROitU4rjXHHvdB1Gu+X5qVSXRQ511ENMoHE7k6QN1RgVdKbhpOlRUE1wjGEDjab2O8jGmOqj0pd3SXj+bi7FpuhlHZwie+ccJpjFFguERlymCz5y9fj8=
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com (10.168.65.10) by
 VI1PR0401MB2477.eurprd04.prod.outlook.com (10.168.64.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.16; Sun, 15 Dec 2019 15:12:53 +0000
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::8823:663d:c6ed:cbd6]) by VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::8823:663d:c6ed:cbd6%12]) with mapi id 15.20.2538.019; Sun, 15 Dec
 2019 15:12:52 +0000
From: Pankaj Bansal <pankaj.bansal@nxp.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Hanjun Guo
 <guohanjun@huawei.com>, Sudeep Holla <sudeep.holla@arm.com>, "Rafael J .
 Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>
Subject: [PATCH] ACPI/IORT: fix the iort_id_map function
Thread-Topic: [PATCH] ACPI/IORT: fix the iort_id_map function
Thread-Index: AQHVs1oeh+jJ/g/JdU2kvN0Bjpwx5w==
Date: Sun, 15 Dec 2019 15:12:52 +0000
Message-ID: <20191215203303.29811-1-pankaj.bansal@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PN1PR0101CA0054.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c00:d::16) To VI1PR0401MB2496.eurprd04.prod.outlook.com
 (2603:10a6:800:56::10)
x-mailer: git-send-email 2.17.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pankaj.bansal@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [92.120.1.69]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e1fa71a8-ddb2-4fe7-9b3a-08d781714141
x-ms-traffictypediagnostic: VI1PR0401MB2477:|VI1PR0401MB2477:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0401MB2477375FE040EEA25CDAB94DF1560@VI1PR0401MB2477.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 02524402D6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(39860400002)(376002)(366004)(396003)(189003)(199004)(8936002)(66556008)(66476007)(64756008)(2906002)(5660300002)(66946007)(66446008)(4326008)(86362001)(8676002)(52116002)(2616005)(81166006)(316002)(6512007)(71200400001)(110136005)(6486002)(54906003)(186003)(36756003)(6506007)(81156014)(478600001)(44832011)(1076003)(966005)(4744005)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2477;
 H:VI1PR0401MB2496.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a+Yr4wEMl+vOocw6btbDzsDn8LMw9d3SBAYqXuglpCUqs+Clz+XJdje0SyROXNprfoZsylbdXoUFVWd3rB8uLA0gd772ISkapGPIO0b94Ln/Y3/WjdQ7dXHPnc/Y3p+tU+QQBzNEvFZ3i8p8ZMvtlsM6jXaFxpKQJwwwzBIMm0djWTsvz69NGSiCRAwW5a3OqZwIpYv57VwChzNqlap4/6ocaWtUhmkTJCZKCD02UuoVfWPkMo6QH8+nT2FILfOAy5K1vDGTHDiziMMG4wFNZ9SKRHA9l7RW8egQ6ok6BQLFFrCCjCzFg+girB7QmHU64lgYlqgdwDf4xLfM1nc673y0OvUdgJZ7Pl2Xse1xs4uMdXvpk0Fzsr/9isDaf51i2udpoxUoL0LEcogYOsTUVpA60rJs/Dj2YVAfKgpusFj9NWO9yvDnrHxKA3Zjvl0e+sDaad7yl7f0M7A29gAJY+rYlO7vlRMpjLuTIASDpa8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1fa71a8-ddb2-4fe7-9b3a-08d781714141
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2019 15:12:52.6458 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gGWa8tpoABN7o1KQJ6rf/la3citPNxvtrTwh5GnDZz0POUvXUgvduDIBiCo1x/FKdOJ+3p/kAPwVeKh24wP32Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2477
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_071300_035723_87E8A976 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.80 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Pankaj Bansal <pankaj.bansal@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As per http://infocenter.arm.com/help/topic/com.arm.doc.den0049d/DEN0049D_IO_Remapping_Table.pdf
in ID mappings:
Number of IDs = The number of IDs in the range minus one.

Therefore, it's valid for ID mapping to contain single device mapping which
would have Number of IDs field 0.

The iort_id_map doesn't handle this case, fix this case.

Signed-off-by: Pankaj Bansal <pankaj.bansal@nxp.com>
---
 drivers/acpi/arm64/iort.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index 33f71983e001..b9b108d0ca0b 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -315,7 +315,7 @@ static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
 	}
 
 	if (rid_in < map->input_base ||
-	    (rid_in >= map->input_base + map->id_count))
+	    (rid_in > map->input_base + map->id_count))
 		return -ENXIO;
 
 	*rid_out = map->output_base + (rid_in - map->input_base);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
