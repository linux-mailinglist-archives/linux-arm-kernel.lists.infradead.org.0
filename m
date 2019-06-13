Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7FF43D1E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:39:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ojvSvEOTSAhY3Xid40/gdwQ5+9h8DJ2ZeNLp6UqZIHE=; b=sxAOWq52LLjvr0
	WGPJEAh0SrVgHPghilMwa3p7VzNHPCdI11ztXmkVdAHUNKeKTxLzONL9E0DedO/+lhcvIbsJ9jHAn
	HWzOnLbC9nKcF12CIsMhRK50hdmo1e5XbGqqpVzKxPTXr9wCjyugjKxediawL+waH233pb5GJpbcJ
	j9ebpbAcoZskR3fk+JKeYts0pFydLFMxQB77Wf9oejoLjTykbxtoR1d0DLHlTJsSjl2sfigZW834j
	q9gB2MsnwZSZvoRYWzCJiClExFtR1ZUS7QvmyOUH8w96Zr++gBPD/+g7Fg+zgy6XMvIcG/De6Id37
	Z8MGz3wZfxfndnZAqVuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRpE-0001Nt-KD; Thu, 13 Jun 2019 15:39:40 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRn9-000871-3B
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:37:32 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,369,1557212400"; d="scan'208";a="34303746"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Jun 2019 08:37:16 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 13 Jun 2019 08:37:09 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 13 Jun 2019 08:37:09 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2jTwSK+Ec5teQ0EnGS5ktoWxmIj9nN0/cSWrt/acqvk=;
 b=bVLGy5i+yV3U8mkko5/MisEQsdj0jWtWtspz/ana5OllV1l/NTGFgRTJquX6JIEP76bVbFoB4xyNUzLoyp+0Ay7I11LAvdNY5Bwp9RUkHITbd5qS1Y3KdwTqZM9Xz7RL5mizY5XwGXq9hHLghd3Wr20WwtDDXn+RzJkgqoTQwNI=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB1822.namprd11.prod.outlook.com (10.175.54.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Thu, 13 Jun 2019 15:37:06 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::316b:7774:8db6:30ec]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::316b:7774:8db6:30ec%7]) with mapi id 15.20.1987.012; Thu, 13 Jun 2019
 15:37:06 +0000
From: <Claudiu.Beznea@microchip.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>,
 <Nicolas.Ferre@microchip.com>, <alexandre.belloni@bootlin.com>
Subject: [PATCH 0/7] clk: at91: sckc: improve error path
Thread-Topic: [PATCH 0/7] clk: at91: sckc: improve error path
Thread-Index: AQHVIf3bUSmswP0Le0qxy3Tkv6UCZA==
Date: Thu, 13 Jun 2019 15:37:06 +0000
Message-ID: <1560440205-4604-1-git-send-email-claudiu.beznea@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR09CA0174.eurprd09.prod.outlook.com
 (2603:10a6:800:120::28) To MWHPR11MB1549.namprd11.prod.outlook.com
 (2603:10b6:301:c::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3e7e0e79-43b3-438a-64c5-08d6f014fd68
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR11MB1822; 
x-ms-traffictypediagnostic: MWHPR11MB1822:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MWHPR11MB1822EBEB043474AA667130F487EF0@MWHPR11MB1822.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0067A8BA2A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(366004)(376002)(39860400002)(396003)(189003)(199004)(14454004)(478600001)(110136005)(54906003)(256004)(68736007)(966005)(2906002)(72206003)(316002)(71200400001)(71190400001)(2501003)(36756003)(50226002)(4326008)(107886003)(25786009)(6306002)(6512007)(8676002)(8936002)(81156014)(2616005)(476003)(6436002)(6486002)(81166006)(5660300002)(66066001)(99286004)(305945005)(4744005)(53936002)(7736002)(52116002)(66946007)(3846002)(6116002)(86362001)(486006)(66446008)(66556008)(186003)(26005)(6506007)(73956011)(386003)(102836004)(64756008)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1822;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: FIHGhxA0oYEEU6JGJOaexUk+OwwXBexZyKjZV41/JuVfmYkTO5PZUPkgGfm9NiD9t3aAGCF1ju4Z7Fd2IXmGsuCod7gLVia/Wg9526KOb77S2TujEGYq+Zz7PIxjGTQaf5iWGFx4zvjN9Dz6kQ+bTqrtMFBWPWXrnXWf4Ik4kXGBGgUCvu1AU16YDpr954p+ie+VMmaC8XfdSd/sahHMRdJACnslxdML0HZbRzqcuJV8xllU5gitwOYuwQm2gO/8CeIk90B4MR9SCqDGEh+ARm7iTUCqmxOPWtwnXwM4Xudly9pMZsibn8CF181pSbHB5YcmYGoQ4CzPeJfkocaXZqXvartMfsD5ps46m+tms3iTXtNshOOP/chSz+2YqsQIBoUewOlFmU9dnEfDunGvp4KcRr8o0GrVsbtMxBOiSW8=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e7e0e79-43b3-438a-64c5-08d6f014fd68
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2019 15:37:06.5246 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: claudiu.beznea@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1822
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_083731_353684_4DCBC9EA 
X-CRM114-Status: UNSURE (   6.79  )
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
Cc: claudiu.beznea@gmail.com, Claudiu.Beznea@microchip.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Claudiu Beznea <claudiu.beznea@microchip.com>

Hi,

This series tries to improve error path for slow clock registrations
by adding functions to free resources and using them on failures.

It is created on top of patch series at [1].

Thank you,
Claudiu Beznea

[1] https://lore.kernel.org/lkml/1558433454-27971-1-git-send-email-claudiu.beznea@microchip.com/

Claudiu Beznea (7):
  clk: at91: sckc: add support to free slow oscillator
  clk: at91: sckc: add support to free slow rc oscillator
  clk: at91: sckc: add support to free slow clock osclillator
  clk: at91: sckc: improve error path for sam9x5 sck register
  clk: at91: sckc: remove unnecessary line
  clk: at91: sckc: improve error path for sama5d4 sck registration
  clk: at91: sckc: use dedicated functions to unregister clock

 drivers/clk/at91/sckc.c | 122 ++++++++++++++++++++++++++++++++++--------------
 1 file changed, 86 insertions(+), 36 deletions(-)

-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
