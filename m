Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC070143A71
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:06:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ykCvtrtg6dz12j+KcTK7bHbJjJ1N5YD8vPDomyyGijs=; b=q+b0lILOo8PJ4I
	T5VxXyDoCueNq4spztEug8fNKOjFVnmHI/yHly4m0qamZp+RCDWaLyz8LHxrzdzZNvz0Q7sg++326
	sQ9Ax2aYaEFzKSHIfSIJe4HWDUMCh8kBaH4drWPszSVZM6Sfd6H+Kt0J3lVbrv28WeoruCU8M2mLM
	nvk2Oe3sD/Y+Nsvl034/yzs2ToZa7UEkln1Fr8BeaBYubHGMpbJNa7ngiuXjThyv0ueULGpMRpBx+
	pGwI8nT8b/pQSCXorgO5eI62fMjlXyRFccEbmHxLKO+601frp14ts5apU7rj67HGZ5cE+a+KYJRWG
	WrCIHYyxpps6LXtVgI1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqQO-00087B-6L; Tue, 21 Jan 2020 10:06:20 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqNl-0005ec-5K
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:03:45 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
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
IronPort-SDR: sAgMJ+qS2Wva6we+NCcDFMepw7yDl+KoR9089mufQTc0BPAP2gU0b0Ij9XURmpAnv4wP5Tlg6z
 VzAHeGpGQVxiL9KUBy7TN34Zqy2etXZXvNTs9GmeeVqvEIQXWvWqoQYWehaoSmnNR8pG8hsKyi
 ttrKHlsJsX5jrSh0o7sdNDSMtf8nIwmgC1f3eBAkkHySl2/cYA+483Q0+UEQ2ZrD30X7ZXBapk
 NnvheMYgx/2pT3xPPAStMsmNEf4vFJtUjHydFJvh+Wh700OSM96JkEeUu+cskUURKZp/tr0r21
 xrg=
X-IronPort-AV: E=Sophos;i="5.70,345,1574146800"; d="scan'208";a="61481930"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Jan 2020 03:03:32 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 21 Jan 2020 03:03:31 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 21 Jan 2020 03:03:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PX7YeN1LGTN9MWw5Yf2P2andwnNoJA9fcSfMFNNv7nE4ZLHyb1OISThGCQYMM832TlTteNuFYOwS/0Pmc6YV8ZQuhS9EMYlBNMlXnSLLsj4w/p3zJUSVrfRuAhVvqy0NyCVQ333y/CdJJe38yd7IQyOy+1kKWHu7zlifRa3dbTYwEmFKWhk3Q4iQD5OvxvgQ/o1ZuB7ydp5YizljZlNxC7QlCjatkPps1bNnJF0H16QRGCoekBa46FpdY+4dLAGnFQlXW3uqT1kq33dB37gjKLREijq4pM8Rz1dtP83GXHwIaUxcrMSGvNGhjLKZ9y35te6KL4brDeXiUtM7Ss0ncQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r/gm0vMPRCCQYjrErM2K3x3pv/CYsatkgSqFR+foS4U=;
 b=O0lwt3qUOtxS/1lYvPiP8Inp9ZUAVcNsx559TsbxeG1pAz9Di967/0mBnp+wWpGHA/pDc9cr6d+qSf/cYCSbUuqzbp7rZSGXkqXh+YZsooVrMr/kZSpaNZ0mP0CyDdJcW2cry1Kmp28u3NSnIu+eWy00+WOdaPVERybtpj72vMMCmZbI3SijsZPQxClkfx+2LNKm+HJle9qjP1ByICRChB9rhfURKXTxH3ER1sDrqRd+R0pPTvBrspPq/SIgmpkbYeDmoJpVuOZawL16bx9xlWpQNaFyv7+4geVPEoywZd1lklUcSgqpP6cca0HpL0+KcX5XcMexA8bLzIFQsBW/5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r/gm0vMPRCCQYjrErM2K3x3pv/CYsatkgSqFR+foS4U=;
 b=KDa70kaXPeatTGGn+TWvTNo38X6Ulf02vNmLhlJVVWJDelwH8YAnqJXm1q8N6uDurTEz0BszyC88xN/0ODraSMvoHMZuXEzu+lS++sBs0LCTwEAeXrEBAdhs+nPe4P7W/FSwBfGgai3kS5h562prjUfUWkn/wX2AQff+cgYAnsg=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.224) by
 DM6PR11MB3195.namprd11.prod.outlook.com (20.176.121.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.23; Tue, 21 Jan 2020 10:03:29 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::dc6b:1191:3a76:8b6a]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::dc6b:1191:3a76:8b6a%7]) with mapi id 15.20.2644.024; Tue, 21 Jan 2020
 10:03:29 +0000
From: <Claudiu.Beznea@microchip.com>
To: <sre@kernel.org>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>
Subject: [PATCH 00/15] rework at91-reset driver
Thread-Topic: [PATCH 00/15] rework at91-reset driver
Thread-Index: AQHV0EIHtIcFpF8lzUOUJpmaavR/Iw==
Date: Tue, 21 Jan 2020 10:03:29 +0000
Message-ID: <1579601001-5711-1-git-send-email-claudiu.beznea@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 009ab9ff-9653-4ee5-add1-08d79e592a2f
x-ms-traffictypediagnostic: DM6PR11MB3195:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3195536EAC4610F7DE4EF110870D0@DM6PR11MB3195.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0289B6431E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(396003)(136003)(346002)(39860400002)(199004)(189003)(107886003)(26005)(186003)(36756003)(5660300002)(110136005)(54906003)(4326008)(66556008)(66476007)(6506007)(2906002)(76116006)(91956017)(6486002)(86362001)(64756008)(6512007)(66946007)(66446008)(8676002)(81156014)(2616005)(81166006)(8936002)(6636002)(71200400001)(316002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB3195;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GdcVNa6gSKQiSSfz63OKcjAEQMgMh7ygop8WZVZHCq3RuJhtgfDOxXg77YuF42CGtlDOPFUR6s8yVvkRUaLcf3z7LFDhcG5zKPIM4v/u2lZzOc1WhrUUzBsf9ArXf9MkwglrM4yPUN24ffbBwJbxnQqgJm+hZQ+gqlZwq1voMVPQe3L7kTN1bOan6hq6+2bCvIhFFruobf5x2X5wC6RG4ZYUAAopEV1BMsrU2EHq4Mp71GNoNxBJeCWhC0oxqUzg3yv71SM6lCy/v5yCwzLtGR9pr2TqgJJJoPD6/96Wu+GuO7utYHnKG2kz0C1ts3Ju/p/yN+Tt6HLj43+gpcIlGaYsmf4SJE5eqg4eupZtRO2V20/p76FVFqEvg8FjiZwcj7hF5+G3WEFUmN1p+iU0KsLGfrwDnZbuOqnCZ7Ckmlw0dpy1S9XUtbg3opskRtxs
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 009ab9ff-9653-4ee5-add1-08d79e592a2f
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2020 10:03:29.2250 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zd93GEecR96a6/jKPOyDrmF/bX/zWtsv2RwhNPUNi5SAeseBTeHUosLLvoHvAjyXcDuW16idQ4GCbIUyWQ85/32j/Vf3u1bUPnq+QAp9rKg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3195
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_020337_279172_3DA67C64 
X-CRM114-Status: UNSURE (   4.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Claudiu.Beznea@microchip.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

The following patches rework the at91-reset driver and solves
the SAM9X60 VDDCORE fast drop in the first 100us after power down.

Thank you,
Claudiu Beznea

Claudiu Beznea (15):
  power: reset: at91-reset: introduce struct at91_reset
  power: reset: at91-reset: add ramc_base[] to struct at91_reset
  power: reset: at91-reset: add sclk to struct at91_reset
  power: reset: at91-reset: add notifier block to struct at91_reset
  power: reset: at91-reset: convert reset in pointer to struct
    at91_reset
  power: reset: at91-reset: pass rstc base address to
    at91_reset_status()
  power: reset: at91-reset: devm_kzalloc() for at91_reset data structure
  power: reset: at91-reset: introduce struct at91_reset_data
  power: reset: at91-reset: introduce args member in at91_reset_data
  power: reset: at91-reset: use r4 as tmp argument
  power: reset: at91-reset: introduce ramc_lpr to struct at91_reset
  power: reset: at91-reset: make at91sam9g45_restart() generic
  power: reset: at91-reset: keep only one reset function
  power: reset: at91-reset: get rid of at91_reset_data
  power: reset: at91-reset: handle nrst async for sam9x60

 drivers/power/reset/at91-reset.c | 190 +++++++++++++++++++--------------------
 1 file changed, 94 insertions(+), 96 deletions(-)

-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
