Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B83F510218D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 11:04:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cFub5+z2ZflhsBLWUivQHce45WHZVIFZZtRPaGWIOek=; b=oeXdYeThMw+ozq
	m3/KGXoccfiN24NXzEr5tDyE+JgVzDKuBK/gBYF3FDKMIalWTPAz5XNdpBisWuvmt5VwJ5UayUgD9
	+d4/v+N78qxVIR0Q5pbJHFALvQTMgPx8QI7UHne+EIzmOZRkf91VNTbPTGsU2yBH7+1USWA/yEj12
	uJCAn6NRhwZFuRFRkIdRRuvjZGYbo0OTMMLt1ZNdB3FdHztaZ3ahsctz7ndp9Yx11HhxjTOghDjr9
	xr6wOC2t6OlK+dnsBP8YQQt81ZeyNIEJ5pI/9RfEowjbYcY4/TnP03YdBb0A6z/xsJjMij9YlMTig
	eCVTexZ5ttrjWWQxbtbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX0Mw-0005tg-6w; Tue, 19 Nov 2019 10:04:22 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX0Mg-0005rg-Gm
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 10:04:10 +0000
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
IronPort-SDR: OIG3wRtl+l/KkKAZ4mgkw+kNKi/5VamhqMZDMArs9bu1N3jtLotsQ/3P6xldT3oNxhmBL2kTA8
 lhqWNcK6e2rK6SJV1VZoATPGZuF46IrZ4sXds3THOh93TWgpvcxpkybA8eeA7ZC0Fis1uBmhb0
 3hJsLwxUlKJVLFPO/wJYSuA+7a0hG0oTJpmIqjTcpxqPJs/NYLnCr06/9YpLctH4J0614Hipds
 fptqN3MxFfTo2OvhBTYYt5FshZVUrND16XuTo6qBLmTsVNm1JLO4tNzWD5SlajwHj8Yk6Q3/vN
 qGE=
X-IronPort-AV: E=Sophos;i="5.68,322,1569308400"; d="scan'208";a="57179968"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Nov 2019 03:03:55 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 19 Nov 2019 03:03:56 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 19 Nov 2019 03:03:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jJRndIb3MZFSAJXqwOxuFYuZA5Kb6sSGGFCqVK/FQa8Wsq9L9iPzCBTJ3p/OVVzsrpjckX3Cd+PMkbUhSdQ/Q7KkpkCTWyYRPhMj3ATzsJ05DMhpyp3jxGz4Ej57ehrtccUxGs/am4r/V9NYV7UanxNRtShISjDV9rs8mRgK4NZkVozorXH1PUkcOpDgVxjYYTODgrMKXkX9qZH9KcZsSWasU2IarSCgz5k2/sU/Wown96n5/dzaMChQOEQ1akHbrsLYTcgFnAbQc0PZcEF4M+rEC2IlptSD+Q5HhDLFjyRBczy1gnsB0Oxo7gdGzPmwPF80pyHsdlXeCSmeLKZRNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iNOHpTH8jTCIBeiE764bNPhbT0nR4QrDKvr/ACrNBeI=;
 b=UMJLoCHbZMVGufw+RvD5wAszaK5D4uR51Hl6bWoOHKfWtfYejDFMhKODXMQoK6BlxN+HY8PJm88/O/HuI/6wfW9DW6Yl+tJipWxEwje2I2jn0LtYfpstVPRW1Ep9akYZp4rAVVMN2IdVXgTPEufXS/6dXfsSjH9CKhsIBjYObCpzrrZoWmdOl1/blq6YBpDQ+eCHnKZrP/9jNUWGxLtx7sI/mGFL6JoiD5X9LR/ix9Kdb6+geiuUvZxCeTRfwWiKsFROi0gEQR1XlVLmj7Jt/gJpvrlm6GR0TjYbx+tUxgvVJY4/D76g5lBpxxJIF+vwphHRZcAuYTlf0CXKtidfMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iNOHpTH8jTCIBeiE764bNPhbT0nR4QrDKvr/ACrNBeI=;
 b=VgL1cPLxwU+pdBxHLDgX/I/7ojS15+FdteQIoejMou/6PuCJwAMhVcOnWTNrE7fzA6JYzenicpi8mnz8JSEVOl1rxPkbGnX4z5hxWQzpn4+MaI+2GNM1sZ7Np2nzvba6mGAq53qSxAlCoeOlcemhxgmRRykjcJapDRjFfh4Q0Jg=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1484.namprd11.prod.outlook.com (10.172.36.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.29; Tue, 19 Nov 2019 10:03:52 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::d594:bcd0:98a9:d2c8]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::d594:bcd0:98a9:d2c8%4]) with mapi id 15.20.2451.031; Tue, 19 Nov 2019
 10:03:52 +0000
From: <Eugen.Hristev@microchip.com>
To: <hverkuil@xs4all.nl>, <linux-media@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2] media: atmel: atmel-isc-base: expose white balance as v4l2
 controls
Thread-Topic: [PATCH v2] media: atmel: atmel-isc-base: expose white balance as
 v4l2 controls
Thread-Index: AQHVnsClVQv9j8gJtkCUJHxdYILugg==
Date: Tue, 19 Nov 2019 10:03:52 +0000
Message-ID: <1574157784-6505-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR05CA0062.eurprd05.prod.outlook.com
 (2603:10a6:208:be::39) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 19311641-884b-4a3e-1f70-08d76cd7c7c9
x-ms-traffictypediagnostic: DM5PR11MB1484:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1484DA5DEC12CB2497B95A8EE84C0@DM5PR11MB1484.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 022649CC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(396003)(39860400002)(366004)(136003)(189003)(199004)(186003)(256004)(26005)(486006)(6512007)(14444005)(4326008)(14454004)(2201001)(2616005)(476003)(99286004)(66066001)(386003)(8676002)(52116002)(71200400001)(71190400001)(107886003)(6436002)(6506007)(25786009)(478600001)(102836004)(110136005)(81156014)(36756003)(81166006)(86362001)(3846002)(6116002)(6486002)(316002)(8936002)(5660300002)(2906002)(66556008)(64756008)(66476007)(66946007)(66446008)(305945005)(7736002)(2501003)(50226002)(30864003)(579004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1484;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yMz6/iTHE+7tjN2EuF4aUtT7tXS6/RD8eYlHhq+iTGPuNXoWp6BLj/qDuNhFraa8LyRdTvTiBh+HG2C57u33aFZm8jN/GP9G1NvONeREc8GlnC1hcS9LW5qEyLhAPrAsR2gAiY/+SBbTUZ35WzQJgIh/pcIyZ3vU7SWqdeDZcvjcg2y7i9wCaPTIZK5U9q09dH9ki94WiLf2ALCnPwTDnuU3UipGJpGoXVAn4kLrE/mO9QglFSzeEmzsyx2TWCGTbkXRSRBoRzmHqNsEtIdJcUrY/EhZerktEZhn6Kh4V46h5oevqZNsWLvVqpJmd09mTaypwmj7uCGkk0Qc0KAeD/6M3dlG9k+JnOstuLkZnNqUb9i8GdgLgcFpHjivW6KdgbKQLdBDVf23tug1JXGqTIFAmhhY7XbJ1qVN/dFrNbPaupDGNVmWWT6mQlkAi/5j
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 19311641-884b-4a3e-1f70-08d76cd7c7c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2019 10:03:52.5757 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Px97l92EHpqaU4/LA5XFGj2ldtnaJV7ULB7dlli0SyhcSD3u59A/szdPOhV9TbIm5T/DetArk/qo+6BBaQtCiSscbFVYJM6YAlZPoBSl0XQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1484
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_020406_671969_45AD16A4 
X-CRM114-Status: UNSURE (   7.26  )
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

This exposes the white balance configuration of the ISC as v4l2 controls
into userspace.
There are 8 controls available:
4 gain controls , sliders, for each of the BAYER components: R, B, GR, GB.
These gains are multipliers for each component, in format unsigned 0:4:9 with
a default value of 512 (1.0 multiplier).
4 offset controls, sliders, for each of the BAYER components: R, B, GR, GB.
These offsets are added/substracted from each component, in format signed
1:12:0 with a default value of 0 (+/- 0)

To expose this to userspace, added 8 custom controls, in an auto cluster.

To summarize the functionality:
The auto cluster switch is the auto white balance control, and it works
like this:
AWB ==1 : autowhitebalance is on, the do_white_balance button is inactive,
the gains/offsets are inactive, but volatile and readable.
Thus, the results of the whitebalance algorithm are available to userspace to
read at any time.
AWB ==0: autowhitebalance is off, cluster is in manual mode, user can configure
the gain/offsets directly. More than that, if the do_white_balance button is
pressed, the driver will perform one-time-adjustment, (preferably with color
checker card) and the userspace can read again the new values.

With this feature, the userspace can save the coefficients and reinstall them
for example after reboot or reprobing the driver.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
Changes in v2:
- Created some macros to make the code smaller, for declaring the bal/off
controls, and to convert to 2's complements required values (0 to ZERO_VAL)

v4l2-compliance SHA: 7ead0e1856b89f2e19369af452bb03fd0cd16793, 32 bits

Compliance test for atmel-isc device /dev/video0:atmel-isc f0008000.isc: =================  START STATUS  =================
v4l2-ctrls: atmel-isc f0008000.isc: Brightness: 0
v4l2-ctrls: atmel-isc f0008000.isc: Contrast: 256

v4l2-ctr Info:
        Driver name      : atmel-isc
        Card type        : Atmel Image Sensor Controller
        Bus info         : platform:atmel-isc f0008000.isc
        Driver version   : 5.4.0
        Capabilities     : 0x84200001
                Video Capture
                Streaming
                Extended Pix Format
                Device Capabilities
        Device Caps      : 0x04200001
                Video Capture
                Streaming
                Extended Pix Format

Required ioctls:
        test VIDIOC_QUERYCAP: OK

Allow for multiple opens:
        test second /dev/video0 open: OK
        test VIDIOC_QUERYCAP: OK
        test VIDIOC_G/S_PRIORITY: OK
        test for unlimited opens: OK

Debug ioctls:
        test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
rls: atmel-isc f0008000.isc: Gamma: 2
v4l2-ctrls: atmel-isc f0008000.isc: White Balance, Automatic: true
v4l2-ctrls: atmel-isc f0008000.isc: Red Component Balance: 512 inactive volatile
v4l2-ctrls: atmel-isc f0008000.isc: Blue Component Balance: 512 inactive volatile
v4l2-ctrls: atmel-isc f0008000.isc: Green Red Component Balance: 512 inactive volatile
v4l2-ctrls: atmel-isc f0008000.isc: Green Blue Component Balance: 512 inactive volatile
v4l2-ctrls: atmel-isc f0008000.isc: Red Component Offset: 0 inactive volatile
v4l2-ctrls: atmel-isc f0008000.isc: Blue Component Offset: 0 inactive volatile
v4l2-ctrls: atmel-isc f0008000.isc: Green Red Component Offset: 0 inactive volatile
v4l2-ctrls: atmel-isc f0008000.isc: Green Blue Component Offset: 0 inactive volatile
atmel-isc f0008000.isc: ==================  END STATUS  ==================
        test VIDIOC_LOG_STATUS: OK

Input ioctls:
        test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
        test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
        test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
        test VIDIOC_ENUMAUDIO: OK (Not Supported)
        test VIDIOC_G/S/ENUMINPUT: OK
        test VIDIOC_G/S_AUDIO: OK (Not Supported)
        Inputs: 1 Audio Inputs: 0 Tuners: 0

Output ioctls:
        test VIDIOC_G/S_MODULATOR: OK (Not Supported)
        test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
        test VIDIOC_ENUMAUDOUT: OK (Not Supported)
        test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
        test VIDIOC_G/S_AUDOUT: OK (Not Supported)
        Outputs: 0 Audio Outputs: 0 Modulators: 0

Input/Output configuration ioctls:
        test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)
        test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)
        test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)
        test VIDIOC_G/S_EDID: OK (Not Supported)

Control ioctls (Input 0):
        test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK
        test VIDIOC_QUERYCTRL: OK
        test VIDIOC_G/S_CTRL: OK
        test VIDIOC_G/S/TRY_EXT_CTRLS: OK
        test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK
        test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
        Standard Controls: 15 Private Controls: 0

Format ioctls (Input 0):
        test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
        test VIDIOC_G/S_PARM: OK
        test VIDIOC_G_FBUF: OK (Not Supported)
        test VIDIOC_G_FMT: OK
        test VIDIOC_TRY_FMT: OK
        test VIDIOC_S_FMT: OK
        test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
        test Cropping: OK (Not Supported)
        test Composing: OK (Not Supported)
        test Scaling: OK (Not Supported)

Codec ioctls (Input 0):
        test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
        test VIDIOC_G_ENC_INDEX: OK (Not Supported)
        test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)

Buffer ioctls (Input 0):
        test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
        test VIDIOC_EXPBUF: OK
        test Requests: OK (Not Supported)

Total for atmel-isc device /dev/video0: 44, Succeeded: 44, Failed: 0, Warnings: 0


 $ v4l2-ctl -L

User Controls

                     brightness 0x00980900 (int)    : min=-1024 max=1023 step=1 default=0 value=0 flags=slider
                       contrast 0x00980901 (int)    : min=-2048 max=2047 step=1 default=256 value=256 flags=slider
        white_balance_automatic 0x0098090c (bool)   : default=1 value=1 flags=update
               do_white_balance 0x0098090d (button) : flags=inactive, write-only, volatile, execute-on-write
                          gamma 0x00980910 (int)    : min=0 max=2 step=1 default=2 value=2 flags=slider

Camera Controls

          red_component_balance 0x009a0ce8 (int)    : min=0 max=8191 step=1 default=512 value=512 flags=inactive, slider, volatile
         blue_component_balance 0x009a0ce9 (int)    : min=0 max=8191 step=1 default=512 value=512 flags=inactive, slider, volatile
    green_red_component_balance 0x009a0cea (int)    : min=0 max=8191 step=1 default=512 value=512 flags=inactive, slider, volatile
   green_blue_component_balance 0x009a0ceb (int)    : min=0 max=8191 step=1 default=512 value=512 flags=inactive, slider, volatile
           red_component_offset 0x009a0cec (int)    : min=-4095 max=4095 step=1 default=0 value=0 flags=inactive, slider, volatile
          blue_component_offset 0x009a0ced (int)    : min=-4095 max=4095 step=1 default=0 value=0 flags=inactive, slider, volatile
     green_red_component_offset 0x009a0cee (int)    : min=-4095 max=4095 step=1 default=0 value=0 flags=inactive, slider, volatile
    green_blue_component_offset 0x009a0cef (int)    : min=-4095 max=4095 step=1 default=0 value=0 flags=inactive, slider, volatile


 drivers/media/platform/atmel/atmel-isc-base.c | 221 ++++++++++++++++++++++----
 drivers/media/platform/atmel/atmel-isc.h      |  32 +++-
 2 files changed, 225 insertions(+), 28 deletions(-)

diff --git a/drivers/media/platform/atmel/atmel-isc-base.c b/drivers/media/platform/atmel/atmel-isc-base.c
index c1c776b..604374a 100644
--- a/drivers/media/platform/atmel/atmel-isc-base.c
+++ b/drivers/media/platform/atmel/atmel-isc-base.c
@@ -211,10 +211,35 @@ const u32 isc_gamma_table[GAMMA_MAX + 1][GAMMA_ENTRIES] = {
 #define ISC_IS_FORMAT_RAW(mbus_code) \
 	(((mbus_code) & 0xf000) == 0x3000)
 
+#define ISC_CTRL_ISC_TO_V4L2(x) ((x) == ISC_WB_O_ZERO_VAL ? 0 : (x))
+#define ISC_CTRL_V4L2_TO_ISC(x) ((x) ? (x) : ISC_WB_O_ZERO_VAL)
+
+static inline void isc_update_v4l2_ctrls(struct isc_device *isc)
+{
+	struct isc_ctrls *ctrls = &isc->ctrls;
+
+	/* In here we set the v4l2 controls w.r.t. our pipeline config */
+	v4l2_ctrl_s_ctrl(isc->r_bal_ctrl, ctrls->gain[ISC_HIS_CFG_MODE_R]);
+	v4l2_ctrl_s_ctrl(isc->b_bal_ctrl, ctrls->gain[ISC_HIS_CFG_MODE_B]);
+	v4l2_ctrl_s_ctrl(isc->gr_bal_ctrl, ctrls->gain[ISC_HIS_CFG_MODE_GR]);
+	v4l2_ctrl_s_ctrl(isc->gb_bal_ctrl, ctrls->gain[ISC_HIS_CFG_MODE_GB]);
+
+	v4l2_ctrl_s_ctrl(isc->r_off_ctrl,
+			 ISC_CTRL_ISC_TO_V4L2(ctrls->offset[ISC_HIS_CFG_MODE_R]));
+	v4l2_ctrl_s_ctrl(isc->b_off_ctrl,
+			 ISC_CTRL_ISC_TO_V4L2(ctrls->offset[ISC_HIS_CFG_MODE_B]));
+	v4l2_ctrl_s_ctrl(isc->gr_off_ctrl,
+			 ISC_CTRL_ISC_TO_V4L2(ctrls->offset[ISC_HIS_CFG_MODE_GR]));
+	v4l2_ctrl_s_ctrl(isc->gb_off_ctrl,
+			 ISC_CTRL_ISC_TO_V4L2(ctrls->offset[ISC_HIS_CFG_MODE_GB]));
+}
+
 static inline void isc_update_awb_ctrls(struct isc_device *isc)
 {
 	struct isc_ctrls *ctrls = &isc->ctrls;
 
+	/* In here we set our actual hw pipeline config */
+
 	regmap_write(isc->regmap, ISC_WB_O_RGR,
 		     (ISC_WB_O_ZERO_VAL - (ctrls->offset[ISC_HIS_CFG_MODE_R])) |
 		     ((ISC_WB_O_ZERO_VAL - ctrls->offset[ISC_HIS_CFG_MODE_GR]) << 16));
@@ -649,11 +674,9 @@ static void isc_set_pipeline(struct isc_device *isc, u32 pipeline)
 
 	bay_cfg = isc->config.sd_format->cfa_baycfg;
 
-	if (ctrls->awb == ISC_WB_NONE)
-		isc_reset_awb_ctrls(isc);
-
 	regmap_write(regmap, ISC_WB_CFG, bay_cfg);
 	isc_update_awb_ctrls(isc);
+	isc_update_v4l2_ctrls(isc);
 
 	regmap_write(regmap, ISC_CFA_CFG, bay_cfg | ISC_CFA_CFG_EITPOL);
 
@@ -1339,6 +1362,7 @@ static int isc_set_fmt(struct isc_device *isc, struct v4l2_format *f)
 	    isc->try_config.sd_format != isc->config.sd_format) {
 		isc->ctrls.hist_stat = HIST_INIT;
 		isc_reset_awb_ctrls(isc);
+		isc_update_v4l2_ctrls(isc);
 	}
 	/* make the try configuration active */
 	isc->config = isc->try_config;
@@ -1758,10 +1782,6 @@ static void isc_awb_work(struct work_struct *w)
 	ctrls->hist_id = hist_id;
 	baysel = isc->config.sd_format->cfa_baycfg << ISC_HIS_CFG_BAYSEL_SHIFT;
 
-	/* if no more auto white balance, reset controls. */
-	if (ctrls->awb == ISC_WB_NONE)
-		isc_reset_awb_ctrls(isc);
-
 	pm_runtime_get_sync(isc->dev);
 
 	/*
@@ -1786,6 +1806,8 @@ static void isc_awb_work(struct work_struct *w)
 		if (ctrls->awb == ISC_WB_ONETIME) {
 			v4l2_info(&isc->v4l2_dev,
 				  "Completed one time white-balance adjustment.\n");
+			/* update the v4l2 controls values */
+			isc_update_v4l2_ctrls(isc);
 			ctrls->awb = ISC_WB_NONE;
 		}
 	}
@@ -1817,6 +1839,27 @@ static int isc_s_ctrl(struct v4l2_ctrl *ctrl)
 	case V4L2_CID_GAMMA:
 		ctrls->gamma_index = ctrl->val;
 		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static const struct v4l2_ctrl_ops isc_ctrl_ops = {
+	.s_ctrl	= isc_s_ctrl,
+};
+
+static int isc_s_awb_ctrl(struct v4l2_ctrl *ctrl)
+{
+	struct isc_device *isc = container_of(ctrl->handler,
+					     struct isc_device, ctrls.handler);
+	struct isc_ctrls *ctrls = &isc->ctrls;
+
+	if (ctrl->flags & V4L2_CTRL_FLAG_INACTIVE)
+		return 0;
+
+	switch (ctrl->id) {
 	case V4L2_CID_AUTO_WHITE_BALANCE:
 		if (ctrl->val == 1)
 			ctrls->awb = ISC_WB_AUTO;
@@ -1827,36 +1870,142 @@ static int isc_s_ctrl(struct v4l2_ctrl *ctrl)
 		if (!isc->config.sd_format)
 			break;
 
-		if (ctrls->hist_stat != HIST_ENABLED)
-			isc_reset_awb_ctrls(isc);
+		/* configure the controls with new values from v4l2 */
+		if (ctrl->cluster[ISC_CTRL_R_BAL]->is_new)
+			ctrls->gain[ISC_HIS_CFG_MODE_R] = isc->r_bal_ctrl->val;
+		if (ctrl->cluster[ISC_CTRL_B_BAL]->is_new)
+			ctrls->gain[ISC_HIS_CFG_MODE_B] = isc->b_bal_ctrl->val;
+		if (ctrl->cluster[ISC_CTRL_GR_BAL]->is_new)
+			ctrls->gain[ISC_HIS_CFG_MODE_GR] = isc->gr_bal_ctrl->val;
+		if (ctrl->cluster[ISC_CTRL_GB_BAL]->is_new)
+			ctrls->gain[ISC_HIS_CFG_MODE_GB] = isc->gb_bal_ctrl->val;
+
+		if (ctrl->cluster[ISC_CTRL_R_OFF]->is_new)
+			ctrls->offset[ISC_HIS_CFG_MODE_R] =
+				ISC_CTRL_V4L2_TO_ISC(isc->r_off_ctrl->val);
+		if (ctrl->cluster[ISC_CTRL_B_OFF]->is_new)
+			ctrls->offset[ISC_HIS_CFG_MODE_B] =
+				ISC_CTRL_V4L2_TO_ISC(isc->b_off_ctrl->val);
+		if (ctrl->cluster[ISC_CTRL_GR_OFF]->is_new)
+			ctrls->offset[ISC_HIS_CFG_MODE_GR] =
+				ISC_CTRL_V4L2_TO_ISC(isc->gr_off_ctrl->val);
+		if (ctrl->cluster[ISC_CTRL_GB_OFF]->is_new)
+			ctrls->offset[ISC_HIS_CFG_MODE_GB] =
+				ISC_CTRL_V4L2_TO_ISC(isc->gb_off_ctrl->val);
 
-		if (isc->ctrls.awb == ISC_WB_AUTO &&
+		isc_update_awb_ctrls(isc);
+
+		if (vb2_is_streaming(&isc->vb2_vidq)) {
+			/*
+			 * If we are streaming, we can update profile to
+			 * have the new settings in place.
+			 */
+			isc_update_profile(isc);
+		} else {
+			/*
+			 * The auto cluster will activate automatically this
+			 * control. This has to be deactivated when not
+			 * streaming.
+			 */
+			v4l2_ctrl_activate(isc->do_wb_ctrl, false);
+		}
+
+		/* if we have autowhitebalance on, start histogram procedure */
+		if (ctrls->awb == ISC_WB_AUTO &&
 		    vb2_is_streaming(&isc->vb2_vidq) &&
 		    ISC_IS_FORMAT_RAW(isc->config.sd_format->mbus_code))
 			isc_set_histogram(isc, true);
 
-		break;
-	case V4L2_CID_DO_WHITE_BALANCE:
-		/* if AWB is enabled, do nothing */
-		if (ctrls->awb == ISC_WB_AUTO)
-			return 0;
+		/*
+		 * for one time whitebalance adjustment, check the button,
+		 * if it's pressed, perform the one time operation.
+		 */
+		if (ctrls->awb == ISC_WB_NONE &&
+		    ctrl->cluster[ISC_CTRL_DO_WB]->is_new &&
+		    !(ctrl->cluster[ISC_CTRL_DO_WB]->flags &
+		    V4L2_CTRL_FLAG_INACTIVE)) {
+			ctrls->awb = ISC_WB_ONETIME;
+			isc_set_histogram(isc, true);
+			v4l2_dbg(1, debug, &isc->v4l2_dev,
+				 "One time white-balance started.\n");
+		}
+		return 0;
+	}
+	return 0;
+}
 
-		ctrls->awb = ISC_WB_ONETIME;
-		isc_set_histogram(isc, true);
-		v4l2_dbg(1, debug, &isc->v4l2_dev,
-			 "One time white-balance started.\n");
+static int isc_g_volatile_awb_ctrl(struct v4l2_ctrl *ctrl)
+{
+	struct isc_device *isc = container_of(ctrl->handler,
+					     struct isc_device, ctrls.handler);
+	struct isc_ctrls *ctrls = &isc->ctrls;
+
+	switch (ctrl->id) {
+	/* being a cluster, this id will be called for every control */
+	case V4L2_CID_AUTO_WHITE_BALANCE:
+		ctrl->cluster[ISC_CTRL_R_BAL]->val =
+					ctrls->gain[ISC_HIS_CFG_MODE_R];
+		ctrl->cluster[ISC_CTRL_B_BAL]->val =
+					ctrls->gain[ISC_HIS_CFG_MODE_B];
+		ctrl->cluster[ISC_CTRL_GR_BAL]->val =
+					ctrls->gain[ISC_HIS_CFG_MODE_GR];
+		ctrl->cluster[ISC_CTRL_GB_BAL]->val =
+					ctrls->gain[ISC_HIS_CFG_MODE_GB];
+
+		ctrl->cluster[ISC_CTRL_R_OFF]->val =
+			ISC_CTRL_ISC_TO_V4L2(ctrls->offset[ISC_HIS_CFG_MODE_R]);
+		ctrl->cluster[ISC_CTRL_B_OFF]->val =
+			ISC_CTRL_ISC_TO_V4L2(ctrls->offset[ISC_HIS_CFG_MODE_B]);
+		ctrl->cluster[ISC_CTRL_GR_OFF]->val =
+			ISC_CTRL_ISC_TO_V4L2(ctrls->offset[ISC_HIS_CFG_MODE_GR]);
+		ctrl->cluster[ISC_CTRL_GB_OFF]->val =
+			ISC_CTRL_ISC_TO_V4L2(ctrls->offset[ISC_HIS_CFG_MODE_GB]);
 		break;
-	default:
-		return -EINVAL;
 	}
-
 	return 0;
 }
 
-static const struct v4l2_ctrl_ops isc_ctrl_ops = {
-	.s_ctrl	= isc_s_ctrl,
+static const struct v4l2_ctrl_ops isc_awb_ops = {
+	.s_ctrl = isc_s_awb_ctrl,
+	.g_volatile_ctrl = isc_g_volatile_awb_ctrl,
 };
 
+#define ISC_CTRL_OFF(_name, _id, _name_str) \
+	static const struct v4l2_ctrl_config _name = { \
+		.ops = &isc_awb_ops, \
+		.id = _id, \
+		.name = _name_str, \
+		.type = V4L2_CTRL_TYPE_INTEGER, \
+		.flags = V4L2_CTRL_FLAG_SLIDER, \
+		.min = -4095, \
+		.max = 4095, \
+		.step = 1, \
+		.def = 0, \
+	}
+
+ISC_CTRL_OFF(isc_r_off_ctrl, ISC_CID_R_OFFSET, "Red Component Offset");
+ISC_CTRL_OFF(isc_b_off_ctrl, ISC_CID_B_OFFSET, "Blue Component Offset");
+ISC_CTRL_OFF(isc_gr_off_ctrl, ISC_CID_GR_OFFSET, "Green Red Component Offset");
+ISC_CTRL_OFF(isc_gb_off_ctrl, ISC_CID_GB_OFFSET, "Green Blue Component Offset");
+
+#define ISC_CTRL_BAL(_name, _id, _name_str) \
+	static const struct v4l2_ctrl_config _name = { \
+		.ops = &isc_awb_ops, \
+		.id = _id, \
+		.name = _name_str, \
+		.type = V4L2_CTRL_TYPE_INTEGER, \
+		.flags = V4L2_CTRL_FLAG_SLIDER, \
+		.min = 0, \
+		.max = 8191, \
+		.step = 1, \
+		.def = 512, \
+	}
+
+ISC_CTRL_BAL(isc_r_bal_ctrl, ISC_CID_R_BAL, "Red Component Balance");
+ISC_CTRL_BAL(isc_b_bal_ctrl, ISC_CID_B_BAL, "Blue Component Balance");
+ISC_CTRL_BAL(isc_gr_bal_ctrl, ISC_CID_GR_BAL, "Green Red Component Balance");
+ISC_CTRL_BAL(isc_gb_bal_ctrl, ISC_CID_GB_BAL, "Green Blue Component Balance");
+
 static int isc_ctrl_init(struct isc_device *isc)
 {
 	const struct v4l2_ctrl_ops *ops = &isc_ctrl_ops;
@@ -1867,7 +2016,7 @@ static int isc_ctrl_init(struct isc_device *isc)
 	ctrls->hist_stat = HIST_INIT;
 	isc_reset_awb_ctrls(isc);
 
-	ret = v4l2_ctrl_handler_init(hdl, 5);
+	ret = v4l2_ctrl_handler_init(hdl, 13);
 	if (ret < 0)
 		return ret;
 
@@ -1877,10 +2026,13 @@ static int isc_ctrl_init(struct isc_device *isc)
 	v4l2_ctrl_new_std(hdl, ops, V4L2_CID_BRIGHTNESS, -1024, 1023, 1, 0);
 	v4l2_ctrl_new_std(hdl, ops, V4L2_CID_CONTRAST, -2048, 2047, 1, 256);
 	v4l2_ctrl_new_std(hdl, ops, V4L2_CID_GAMMA, 0, GAMMA_MAX, 1, 2);
-	v4l2_ctrl_new_std(hdl, ops, V4L2_CID_AUTO_WHITE_BALANCE, 0, 1, 1, 1);
+	isc->awb_ctrl = v4l2_ctrl_new_std(hdl, &isc_awb_ops,
+					  V4L2_CID_AUTO_WHITE_BALANCE,
+					  0, 1, 1, 1);
 
 	/* do_white_balance is a button, so min,max,step,default are ignored */
-	isc->do_wb_ctrl = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_DO_WHITE_BALANCE,
+	isc->do_wb_ctrl = v4l2_ctrl_new_std(hdl, &isc_awb_ops,
+					    V4L2_CID_DO_WHITE_BALANCE,
 					    0, 0, 0, 0);
 
 	if (!isc->do_wb_ctrl) {
@@ -1891,6 +2043,21 @@ static int isc_ctrl_init(struct isc_device *isc)
 
 	v4l2_ctrl_activate(isc->do_wb_ctrl, false);
 
+	isc->r_bal_ctrl = v4l2_ctrl_new_custom(hdl, &isc_r_bal_ctrl, NULL);
+	isc->b_bal_ctrl = v4l2_ctrl_new_custom(hdl, &isc_b_bal_ctrl, NULL);
+	isc->gr_bal_ctrl = v4l2_ctrl_new_custom(hdl, &isc_gr_bal_ctrl, NULL);
+	isc->gb_bal_ctrl = v4l2_ctrl_new_custom(hdl, &isc_gb_bal_ctrl, NULL);
+	isc->r_off_ctrl = v4l2_ctrl_new_custom(hdl, &isc_r_off_ctrl, NULL);
+	isc->b_off_ctrl = v4l2_ctrl_new_custom(hdl, &isc_b_off_ctrl, NULL);
+	isc->gr_off_ctrl = v4l2_ctrl_new_custom(hdl, &isc_gr_off_ctrl, NULL);
+	isc->gb_off_ctrl = v4l2_ctrl_new_custom(hdl, &isc_gb_off_ctrl, NULL);
+
+	/*
+	 * The cluster is in auto mode with autowhitebalance enabled
+	 * and manual mode otherwise.
+	 */
+	v4l2_ctrl_auto_cluster(10, &isc->awb_ctrl, 0, true);
+
 	v4l2_ctrl_handler_setup(hdl);
 
 	return 0;
diff --git a/drivers/media/platform/atmel/atmel-isc.h b/drivers/media/platform/atmel/atmel-isc.h
index bfaed2f..23adb4e 100644
--- a/drivers/media/platform/atmel/atmel-isc.h
+++ b/drivers/media/platform/atmel/atmel-isc.h
@@ -213,7 +213,6 @@ struct isc_device {
 	struct fmt_config	try_config;
 
 	struct isc_ctrls	ctrls;
-	struct v4l2_ctrl	*do_wb_ctrl;
 	struct work_struct	awb_work;
 
 	struct mutex		lock; /* serialize access to file operations */
@@ -223,6 +222,28 @@ struct isc_device {
 
 	struct isc_subdev_entity	*current_subdev;
 	struct list_head		subdev_entities;
+
+	struct {
+#define ISC_CTRL_DO_WB 1
+#define ISC_CTRL_R_BAL 2
+#define ISC_CTRL_B_BAL 3
+#define ISC_CTRL_GR_BAL 4
+#define ISC_CTRL_GB_BAL 5
+#define ISC_CTRL_R_OFF 6
+#define ISC_CTRL_B_OFF 7
+#define ISC_CTRL_GR_OFF 8
+#define ISC_CTRL_GB_OFF 9
+		struct v4l2_ctrl	*awb_ctrl;
+		struct v4l2_ctrl	*do_wb_ctrl;
+		struct v4l2_ctrl	*r_bal_ctrl;
+		struct v4l2_ctrl	*b_bal_ctrl;
+		struct v4l2_ctrl	*gr_bal_ctrl;
+		struct v4l2_ctrl	*gb_bal_ctrl;
+		struct v4l2_ctrl	*r_off_ctrl;
+		struct v4l2_ctrl	*b_off_ctrl;
+		struct v4l2_ctrl	*gr_off_ctrl;
+		struct v4l2_ctrl	*gb_off_ctrl;
+	};
 };
 
 #define GAMMA_MAX	2
@@ -242,4 +263,13 @@ int isc_clk_init(struct isc_device *isc);
 void isc_subdev_cleanup(struct isc_device *isc);
 void isc_clk_cleanup(struct isc_device *isc);
 
+#define ISC_CID_R_BAL			(V4L2_CID_CAMERA_CLASS_BASE + 1000)
+#define ISC_CID_B_BAL			(V4L2_CID_CAMERA_CLASS_BASE + 1001)
+#define ISC_CID_GR_BAL			(V4L2_CID_CAMERA_CLASS_BASE + 1002)
+#define ISC_CID_GB_BAL			(V4L2_CID_CAMERA_CLASS_BASE + 1003)
+#define ISC_CID_R_OFFSET		(V4L2_CID_CAMERA_CLASS_BASE + 1004)
+#define ISC_CID_B_OFFSET		(V4L2_CID_CAMERA_CLASS_BASE + 1005)
+#define ISC_CID_GR_OFFSET		(V4L2_CID_CAMERA_CLASS_BASE + 1006)
+#define ISC_CID_GB_OFFSET		(V4L2_CID_CAMERA_CLASS_BASE + 1007)
+
 #endif
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
