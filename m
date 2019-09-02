Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9E1A53AA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 12:13:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zl55PBUJsoRR38vVeRJLYHat2JBAAvL2P6hT3QgakTM=; b=shg7Yfc80BSfzM
	cIRLwPOFxdMcuuM8UDCjo8bkgqRX6g7SMBodF8L2s5vaGnC/YFGl3QbFAf6juR3HRSeHGJjjDqLsw
	RNmru02/zwcT5nOkGuSosGx668MwcALzkYBD8KXsAi1dz5xS6jjCXxmnIbY+/PnXmxPnijhbRDA/E
	CVUTZDlxDKEdEt4HrhdANYGEO8VnBo1vKhcUs4W1G1zLaspxP89MiG8wgxrHLatC9bIm2dpE9/0W6
	E1pLC/bpImIS3HD6TiWD8wqmyhwsLLwfwWLrk7tlZT0hb797VOdrzeKeKtbjx3x7tj2v55Y839rwk
	bdM9nKjA+4U1q5mS6fXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4jKn-00018t-Nc; Mon, 02 Sep 2019 10:13:17 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4jJg-0000NB-16
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 10:12:09 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: SBJc+6AR3VacsUSkjdhOl11w83iDnVBtnh8/70CeB+PYFnC+12cLU76cd10CC719RcfD5gS/pY
 wWqGcyRxeNLcbLZSN6/6390ndFK7xfOi/g+IT3xWZg5NyOc5dNWSqniXTVSlSYRKMMN13ng20R
 7m+qe9RPMYMsD9fBFkiwKo7YE8NhjGV2AaUh6d3T2dWmp4oz0tBtamts4Fwr1ATFK+ZEAvHb2G
 BE7NHUcGuXX1WClnN0oumJp7UGFObEPxavEJ2+5609vFSZlISYTFwETFYqe5p29Q/ELXzUC4Ib
 hMk=
X-IronPort-AV: E=Sophos;i="5.64,457,1559545200"; d="scan'208";a="46450647"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Sep 2019 03:12:05 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Sep 2019 03:12:05 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 2 Sep 2019 03:12:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=han8F3RMcYHS5tUdv5nLmLfHGai9LXbogKvM+hj/cY8OyQvQVhofAJ+crIqXxqalsbdjskqXZi2AsPYX73EXvBDzj6HwAYMaJbBsdp3CeCwYXViv0rejxbYB6igAFd3Rt3J9XCUl47jWS1yMxoONZdfwmrKl7dOnA4tUa6VsxQKbWj3wmtYE79Jg6MkzDiwHvs33mnVj301xQbOAuXip01YhSCCHMaSh17wUx0iBvGCa2FiyyWedDJ2CgjT1MrDTXzz/xYYvzWIxU0zB7GuaSrDxdg4P0jxMef8ZCwRRLa/2UJmpl3Pg6mvdavHawGGVVu0U3BAAxWjLWvfun0Ajfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0ZuGHMRCOCzMv4vM9bqLG1Dhgp0ANrQSnxCO0uk71Yc=;
 b=Xo9myj29/libRRmwDEUNkKtiJYKkZoH6v1yen8XJIq9hU+lnzit6oYxBSnaZOho/GPbNuCuheR+gyO0NyeVTDGP+44nLRDi/EabpFvnDcxKcu++CBGFyLs2uYuis3PPyVPr+tK0P/QZrDLdCUJAn3zS0Wz80QnnuN9Xca/trt1sqFbOVQNNs08PZvcFwdrSfGjxQiDEcoLPpJRjrH8GeI0NmUCst1i7bRGdHRh9uilaBYzdqiJiYUSfZkpW8ZV9udK7Cp2Zs0wQ3DZmC6T8WONskj5TEYHy80A3QyOhmZITdxqyOk1lnahGhf5BOu2r120SmcmsRZNW7y5agG3spgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0ZuGHMRCOCzMv4vM9bqLG1Dhgp0ANrQSnxCO0uk71Yc=;
 b=imOrB6x0mQ3xCvRy2CYOka0dZTF/Yih3HfZkNdxRjJiLlBHAv1puPcfWC9TC69NjkHcbtL8oahV3TBl7QkHhB52fOVtbFEnIcSMKi4SFWgsTUiEzApsbna1JeEFHBqdQvi5NmDaD5ip7APoKh7NXLsm3lcVY3MuIk06PQ++Ewls=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB0044.namprd11.prod.outlook.com (10.164.155.38) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.16; Mon, 2 Sep 2019 10:12:03 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::c457:dc57:6e6f:f4f3]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::c457:dc57:6e6f:f4f3%10]) with mapi id 15.20.2220.022; Mon, 2 Sep 2019
 10:12:03 +0000
From: <Eugen.Hristev@microchip.com>
To: <wsa@the-dreams.de>, <peda@axentia.se>, <mark.rutland@arm.com>,
 <Ludovic.Desroches@microchip.com>, <linux-i2c@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <pierre-yves.mordret@st.com>,
 <alexandre.belloni@bootlin.com>, <robh+dt@kernel.org>
Subject: [PATCH v4 3/9] i2c: add support for filter-width-ns optional property
Thread-Topic: [PATCH v4 3/9] i2c: add support for filter-width-ns optional
 property
Thread-Index: AQHVYXbe4i8JT1GoJ0iKnLMqRQlcag==
Date: Mon, 2 Sep 2019 10:12:03 +0000
Message-ID: <1567418773-2427-4-git-send-email-eugen.hristev@microchip.com>
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
x-ms-office365-filtering-correlation-id: 3538e756-1c2c-4567-8eb3-08d72f8e0070
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB0044; 
x-ms-traffictypediagnostic: DM5PR11MB0044:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB00440716CF90835139B1C77AE8BE0@DM5PR11MB0044.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 01480965DA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(136003)(39850400004)(346002)(366004)(189003)(199004)(2906002)(66446008)(2201001)(66556008)(66476007)(64756008)(8936002)(305945005)(3846002)(7736002)(66946007)(6512007)(446003)(6116002)(86362001)(36756003)(14444005)(5660300002)(52116002)(2501003)(11346002)(476003)(2616005)(256004)(6486002)(486006)(50226002)(14454004)(386003)(6506007)(53936002)(76176011)(186003)(99286004)(66066001)(81166006)(110136005)(7416002)(4326008)(107886003)(54906003)(71190400001)(26005)(102836004)(6436002)(71200400001)(316002)(8676002)(81156014)(478600001)(25786009)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB0044;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: McgCoFgG07tef6tfSvuCUDGoBGMhjPqpM5wvybgDpy/1a4u97mJBpxtmHm/Cy7MGVQ5ilEPKYC5zOVX4ZXwRAQsdB/spbtcnW/kSmBbkq9+h4092U9Ze48kgA+ojsv59Zm0hW+zbNMYSJ71Q0KGFPF7T/5NxENbE+NL7225HwaiSOsjcS+H9h6O4Z57sgILTuUisR4s3/yjYHPU6IUNns6CkveM6UAYSrIpFiedWc/m6I/m7jESpehx5hl5UbAwFMo6n9doXMrOjzhMOPsqB66DNSjfR10EyCarq6kwVkTwLOq+XIgz0N3BEnJE2CBsmgi47LcSehDBfXjcS62VpYb5Xgl7TC0UbiFCGnOnwMFEmnrSM0XoNBZxR8uk3UVvADn2Va1uxRB0dLJl5YTdsVPucJiN2ZWGdzK3KGSEmJrk=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3538e756-1c2c-4567-8eb3-08d72f8e0070
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2019 10:12:03.7051 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9Ta+dKR4z60tBV9SkiJobAjF8pNR2AtyCnWMMxt4bVs/79oKtA1qRpKS06OpO+/5LAPuKF3+4D9u6I7gCzYXnfE2t/z500oN+ewFGjXcsHg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_031208_204905_A06199C1 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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

This optional timing property specifies the width of the spikes on the i2c
lines (in ns) that can be filtered out by built-in analog or digital filters
which are embedded in some i2c controllers.
Include it in the timings structure and read it as integer property.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 drivers/i2c/i2c-core-base.c | 2 ++
 include/linux/i2c.h         | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/drivers/i2c/i2c-core-base.c b/drivers/i2c/i2c-core-base.c
index f26ed49..804197e 100644
--- a/drivers/i2c/i2c-core-base.c
+++ b/drivers/i2c/i2c-core-base.c
@@ -1658,6 +1658,8 @@ void i2c_parse_fw_timings(struct device *dev, struct i2c_timings *t, bool use_de
 		t->sda_fall_ns = t->scl_fall_ns;
 
 	device_property_read_u32(dev, "i2c-sda-hold-time-ns", &t->sda_hold_ns);
+
+	device_property_read_u32(dev, "i2c-filter-width-ns", &t->filter_width_ns);
 }
 EXPORT_SYMBOL_GPL(i2c_parse_fw_timings);
 
diff --git a/include/linux/i2c.h b/include/linux/i2c.h
index fa5552c..b1e9c39 100644
--- a/include/linux/i2c.h
+++ b/include/linux/i2c.h
@@ -575,6 +575,7 @@ struct i2c_lock_operations {
  * @scl_int_delay_ns: time IP core additionally needs to setup SCL in ns
  * @sda_fall_ns: time SDA signal takes to fall in ns; t(f) in the I2C specification
  * @sda_hold_ns: time IP core additionally needs to hold SDA in ns
+ * @filter_width_ns: width in ns of spikes on i2c lines that the IP core can filter out
  */
 struct i2c_timings {
 	u32 bus_freq_hz;
@@ -583,6 +584,7 @@ struct i2c_timings {
 	u32 scl_int_delay_ns;
 	u32 sda_fall_ns;
 	u32 sda_hold_ns;
+	u32 filter_width_ns;
 };
 
 /**
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
