Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9440BA53A8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 12:12:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WjCaNdQHvO7BfOfi9oX+RcxWXMX35Hnk+uOHHRyo7Ho=; b=cniHkuC12iM6MO
	wMrggUiyl/xOkrqKKZvHPVFCvAYtgFyUpr9w0iIc+fXpgabA8q+U/4yysu2q+d+oy2ou8cpcYt5lm
	LnmM5VOo4A5V8kpMBaADm6KwbPRvd55W9hpS5lOxLkelXQbYHys6DAAKYRcTjWWvtrN/x/MAEU9Jd
	eh++rOdNxlN1O89UU/cFfq9iaWz8P7h8OfU7RElNfjNeX2mvL7lTQY31qn16R6/weAGFpNqJFRQF2
	lSF9/6cxm44KKfUUbQ/A9YVJ7C/n3UCla/f478GOw4tQaYzVXXUcEy8wnUYs/rC+7tyGhthyNwlZN
	lbCbEs4UjbD+NCdLtQJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4jK6-0000Wv-PD; Mon, 02 Sep 2019 10:12:34 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4jJY-0000Ju-3M
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 10:12:04 +0000
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
IronPort-SDR: max52IFBu8GgZQANsOUOhZSUGROA5BLI+W9nH+roz8dqvCtWobpn02P9UjwfUS3KlT5JUKMwAJ
 sS+57X2JFVJk5U/OkmyHkONDlVLxaqgX+toiPPRN9H+1O0Wn4KpMlXq8mYei0h2hXsM9b22Eqi
 /EatTEF8aWyarU1mNwzksZ6mZ5PqPMr7cq6nKyJPBo8jujJw9Ze+3DI711Tqudnpzw2UzA0V+e
 DySIdLO5728LY+je3r8Y8llnSBACWCfdEi25I0PNy3woQrN5Fq+U7kZ/vs7r0/j3TLgvMfDKi3
 /i0=
X-IronPort-AV: E=Sophos;i="5.64,457,1559545200"; d="scan'208";a="47374250"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Sep 2019 03:11:58 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Sep 2019 03:11:57 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 2 Sep 2019 03:11:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HhoXju99gNeX7C9UBY1WWmGf1MNDAwU79hrd19CWxeK9zlw5MUriSRASl8xo27uHrxjVTUYr6TC3BsDIndkVTvR4q01bQTkYQTPvsIloO0ETgzwdumh/v2uXwBYKsfx5Q31KICKYE36sH4VH4DMexySkhaNWmCJIUwcX7tPN1l9MrgLadmRtyqoSzqJiRZEyeeOZpOs/i42t48AN/QcJhCt26/47UbDPxGphuDGlvxBrbjbc3A7AMKh6FZycUHuLFv28NjXosamnH/y1eTJZc6+10slNHSmBAkPqoNDjkjILj/E7ZjLmmMBwFhDYMEYf45cm4rCEGb/McwcOGxz77g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rXQQqGElMSxRZX+kwpKbIvJmtvk2M+mOkmYxeFkJFXE=;
 b=UQZzDizUtAsQsu7SL/9iYlQOcTtFl52DaJC0SXQKVtG8FXa6TAs9KptQNV7i9dgOFzEbyhbZvqjzNvoNqFmx5/aUC9NKPi80m1QSJ6C6TorHvIJ+sKRE+82v3x1WLpjwQlIelEaUVfLJ80K11UKO9Ulnx2x2yppKkxRQVTW2J4TgP/mNc4oSgB//gdhKfdlX0s2BiLABDhuLN1aAOE+4XyVmNiZIlQW62KkWTIdNXKV3UhABnqmZfxRf7cqb11nDE1w2rTWQBMrOC6TX7VX5TL67xxLY7qSmf62q8xnq+KcwG47qKYlb/9r+2v1svNFjKcFOcRF0gJGziKeaLjBUXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rXQQqGElMSxRZX+kwpKbIvJmtvk2M+mOkmYxeFkJFXE=;
 b=OYddnlBow5hFRSCIXDoha7k/6mr9UdWeJjZoVq4HbshoGsPqZ+a/OeBbT0NFsNQM5jU9U3RwwN7deqx+4rewJtYaUV6nDkxg1frBnt8qbPMEskdEs/dK02D73mDFxrGyZH5Q17s8PJmoR5Cy2g2GbL/ZqkCmMMJwrFB1R7EUCCw=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB0044.namprd11.prod.outlook.com (10.164.155.38) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.16; Mon, 2 Sep 2019 10:11:55 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::c457:dc57:6e6f:f4f3]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::c457:dc57:6e6f:f4f3%10]) with mapi id 15.20.2220.022; Mon, 2 Sep 2019
 10:11:55 +0000
From: <Eugen.Hristev@microchip.com>
To: <wsa@the-dreams.de>, <peda@axentia.se>, <mark.rutland@arm.com>,
 <Ludovic.Desroches@microchip.com>, <linux-i2c@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <pierre-yves.mordret@st.com>,
 <alexandre.belloni@bootlin.com>, <robh+dt@kernel.org>
Subject: [PATCH v4 0/9] i2c: add support for filters
Thread-Topic: [PATCH v4 0/9] i2c: add support for filters
Thread-Index: AQHVYXbZTI6KOW7JKE29tY8X4gGgDw==
Date: Mon, 2 Sep 2019 10:11:55 +0000
Message-ID: <1567418773-2427-1-git-send-email-eugen.hristev@microchip.com>
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
x-ms-office365-filtering-correlation-id: b8bd832b-9204-46ce-b6f4-08d72f8dfb6d
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB0044; 
x-ms-traffictypediagnostic: DM5PR11MB0044:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB004408024811417B46185C23E8BE0@DM5PR11MB0044.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 01480965DA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(136003)(39850400004)(346002)(366004)(189003)(199004)(2906002)(66446008)(2201001)(66556008)(66476007)(64756008)(8936002)(305945005)(3846002)(7736002)(66946007)(6512007)(6116002)(86362001)(36756003)(5660300002)(52116002)(2501003)(476003)(2616005)(256004)(6486002)(486006)(50226002)(14454004)(386003)(6506007)(53936002)(186003)(99286004)(66066001)(81166006)(110136005)(7416002)(4326008)(107886003)(54906003)(71190400001)(26005)(102836004)(6436002)(71200400001)(316002)(8676002)(81156014)(478600001)(25786009)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB0044;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6F6UdEQt8hm6CufdCXv9IvHTagO4OYqK6X9EqELXHoIM4N1eQIUEuKK/kwnklMSSMthGayJYM5jd7T9auwasHZrvzJT6+50o5yYrQrX3vzwnv6C0BG6VBrBtQJ0iLZD6C/gxydY0mm5+z9YMA7JVuzMYjo+CtJ7KqMVynbN8THsshaDkskdFq594ItKp8jddcVH5titWVD04QLABLbYym/83MOyYmsz06VxrdFkDrMBUyhQW7dmDR8dUwQFApQWiSMEU1uS8c1rE1unVe1dOoG5rHMhEJESE52lg71obxYPtvb34hocoPnbHMNgG06xsh8lxY5+tTPDAQFftYrhR5Hix8cAOtWVUH6jn8rKZv82SQfbEfTeh0wW9k+LIvlnVIjhmbyyv1ER7BjlYHh1LmWF0RHHtwECxClhh7/RmVtg=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b8bd832b-9204-46ce-b6f4-08d72f8dfb6d
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2019 10:11:55.2729 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FMEYlN+kOZes1VYwg0C3rSK2TQY42t1MuMrf7u0HwpXfINMPtLnpAB3jWCYPmm6K22tfkXrElPo3bzP/WUAaRC2swYX1HCxGPbIFmjNXPs0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_031200_239134_F6C03B54 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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

Hello,

This series adds support for analog and digital filters for i2c controllers

This series is based on the series:
[PATCH v2 0/9] i2c: at91: filters support for at91 SoCs
and enhanced to add the bindings for all controllers plus an extra binding
for the width of the spikes in nanoseconds.

First, bindings are created for
'i2c-analog-filter'
'i2c-digital-filter'
'i2c-filter-width-ns'

The support is added in the i2c core to retrieve filter width and add it
to the timings structure.
Next, the at91 driver is enhanced for supporting digital filter, advanced
digital filter (with selectable spike width) and the analog filter.

Finally the device tree for two boards are modified to make use of the
new properties.

This series is the result of the comments on the ML in the direction
requested: to make the bindings globally available for i2c drivers.

Changes in v4:
- renamed i2c-ana-filter to i2c-analog-filter
- renamed i2c-dig-filter to i2c-digital-filter

Changes in v3:
- made bindings global for i2c controllers and modified accordingly
- gave up PADFCDF bit because it's a lack in datasheet
- the computation on the width of the spike is based on periph clock as it
is done for hold time.

Changes in v2:
- added device tree bindings and support for enable-ana-filt and
enable-dig-filt
- added the new properties to the DT for sama5d4_xplained/sama5d2_xplained

Eugen Hristev (9):
  dt-bindings: i2c: at91: add new compatible
  dt-bindings: i2c: add bindings for i2c analog and digital filter
  i2c: add support for filter-width-ns optional property
  i2c: at91: add new platform support for sam9x60
  i2c: at91: add support for digital filtering
  i2c: at91: add support for advanced digital filtering
  i2c: at91: add support for analog filtering
  ARM: dts: at91: sama5d2_xplained: add analog and digital filter for
    i2c
  ARM: dts: at91: sama5d4_xplained: add digital filter for i2c

 Documentation/devicetree/bindings/i2c/i2c-at91.txt |  3 +-
 Documentation/devicetree/bindings/i2c/i2c.txt      | 11 +++++
 arch/arm/boot/dts/at91-sama5d2_xplained.dts        |  6 +++
 arch/arm/boot/dts/at91-sama5d4_xplained.dts        |  1 +
 drivers/i2c/busses/i2c-at91-core.c                 | 38 +++++++++++++++++
 drivers/i2c/busses/i2c-at91-master.c               | 49 ++++++++++++++++++++--
 drivers/i2c/busses/i2c-at91.h                      | 13 ++++++
 drivers/i2c/i2c-core-base.c                        |  2 +
 include/linux/i2c.h                                |  2 +
 9 files changed, 121 insertions(+), 4 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
