Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DADEF138E29
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 10:49:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YUykVgZ8MA4jfx8POYVhfZi4Brq7wOxQGtb5E35DIgw=; b=TIvHaPe3UdgMYV
	8xGL/uUDSzqt6CMQLd7iDzI1qc1p3rxo0MxjdLtSaX4JfzedMJFJamlRnVM4+zArTtkcZFfaUEZ/o
	GZqF2IhuLaQIyskTFutAu6TpNu35LCLqDtxp7IhEDSNeM8eB80NDkOryUfdkSIWekN6PNmGvArOyy
	XmaiSB4UPo3xXx1lovvOtAZP1UpHhblBU5mRpRekqH/dQNX3yYbwXpz6cVyxhSOqcjI6oP712NsuV
	Zq/Fpsa4FuEwhL3NSXLTUXphZAfPJMLMfJ1YZMRSARtmPuf2qnDWlzhoj+Z/ETFZHx+YZS6z4Lu7K
	Ex+VGoCgS7ht7gcq46xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqwLN-0002zb-Du; Mon, 13 Jan 2020 09:49:09 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqwLB-0002ym-6y
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 09:48:59 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
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
IronPort-SDR: zWSWmZmfzaeTkDmI0HKkyEeUYd3En7gaJZxZfdEoArS2bAGrUuWRe88eHM5dv6q/fOnwb9z4bZ
 XLuyLsTdcuLZ/Lgn5tdkRZxzGZPrHml1B1nsjJDeB32EFOGzqehYbPpXT3OILZaHfTVLSjMTRQ
 foVB/yy0pcGBjn7vnoDDBbYVvyFUv8OJGzg08oL0sekJ9UOrukWnhUJXAF4bO3v70IeHCrVvr6
 pj1tEH1tCaebTvEF2KbS766NznI28ifgET6glU+LILwxUCdR/2UtZqV6r+jx5PvtX8mcZKDZH6
 OrE=
X-IronPort-AV: E=Sophos;i="5.69,428,1571727600"; d="scan'208";a="62417731"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Jan 2020 02:48:56 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 13 Jan 2020 02:48:55 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 13 Jan 2020 02:48:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xb606mADlfdWRg33/pf9fuFW05/kofjSdoyH3HedXgNyj4Vn9zEakc7fmufIZhp8C7UnBuox/+g5AfHqtpOTWNb1dXBEYHjG1UTMv8iDVi7D7eaCQ0I8hELxusy4YUdr+V3giLCJ20+fHjD78viIdrc6LIcYJjBeGDytzD3f1xaAzKAbTrQUIWZ1M30tFz8wsW/MIU2JyedFOSSAjfBJFVMk5zT/tvbieRAN4dxndagaOC9x39w9tF8OHDlIenQKqbyGZa2vVcbYhGlpE+e5TQOXl8ap6CmUhXOuhy78NcThk+pMx+mddREAcIK3r3IoRyMB2HrheI1qwLx0I3Bf/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f3GEFwPsmNWeKWTsTAlCtYPSnlHNFTH02TF+URIp8jo=;
 b=YqYR1e/uti65L5kZ3CkoP5o4mc1tPIKp83ZlFXLar5BlcfwYtC/Guo559c5MWBoi7hrQiGXqxp4XwVulV1oxDGYPVRKzeXZT/lBa+327MVBbDO7/aQUgA/Ca9EFz2/EV8QwnecnosgRxImxzSXjWxC5p78hMuqD306jTLp6fP6Ly1QNECRYzhq73l5TlGHgTonUBgVHXIplMkBexG9W0wCBOXv8UTQmtNArDv3DBAf++pUPMPYOd0aA32tUA0s77Osnr7LAsAk+VzXZA7lzyqA8FK3igJ2jddszWxuMYMxGPqXaO1PVCwoSZsgSrBh6YJpC9KcUysRTRAiPc2OpR/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f3GEFwPsmNWeKWTsTAlCtYPSnlHNFTH02TF+URIp8jo=;
 b=XQFb18al90AtxU1ZWcphwxo+VVrMJCT6R0KVKX1UEr5e/IzJ+kpqGCcb7VLEapfK6+1V9wweoDa7+x3juXnRQb1oliSAdI9fTe5gxPePnxvVrDVdlaEEmfzEVGxN20pbp2RDl2BX3uBoVtQRvPAgs1LwOF4Tls7XfAJjQHs3E5Q=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB0009.namprd11.prod.outlook.com (10.164.154.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10; Mon, 13 Jan 2020 09:48:54 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::e5f6:d07d:d7de:ce79]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::e5f6:d07d:d7de:ce79%6]) with mapi id 15.20.2623.015; Mon, 13 Jan 2020
 09:48:54 +0000
From: <Eugen.Hristev@microchip.com>
To: <hverkuil@xs4all.nl>, <linux-media@vger.kernel.org>
Subject: [PATCH v4 1/2] media: atmel: atmel-isc-base: expose white balance as
 v4l2 controls
Thread-Topic: [PATCH v4 1/2] media: atmel: atmel-isc-base: expose white
 balance as v4l2 controls
Thread-Index: AQHVyfaqe0Z+HnvIX0K/1Ci+SGsGSA==
Date: Mon, 13 Jan 2020 09:48:53 +0000
Message-ID: <1578908877-14575-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1361e4ec-f62d-45e6-4575-08d7980dcd4b
x-ms-traffictypediagnostic: DM5PR11MB0009:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB0009E52C8BA870E00DF5DFDAE8350@DM5PR11MB0009.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 028166BF91
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(136003)(39860400002)(376002)(346002)(189003)(199004)(30864003)(54906003)(110136005)(6512007)(5660300002)(26005)(8936002)(71200400001)(316002)(186003)(4326008)(86362001)(81166006)(6486002)(8676002)(2906002)(2616005)(6506007)(81156014)(107886003)(478600001)(64756008)(66556008)(66446008)(66476007)(66946007)(76116006)(36756003)(91956017)(579004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB0009;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FcFIyMoS7XdA4vbS5Gh3SUBfKz9P+Qf3Y3Df7WmygCgZCfnu7wpAi67qbFjvqnFPW1LEoNRBPfkZyzlAqxLW8cNx9FwaeDVoZsljrfKaRI/Aey+s+Rm5MEC8dRG2589yPpL0FxtODWsvr52WHjc5u3ysT88TUnVNt7U6ExokeIkvHHy3BCyAWKk+2oLjwHFhDycZJI5iqLEYMpEGbRSw1qnWxgfEnVx7Z1dG1vhxdVHmzb2tgYMOnWZsEcAkEEag/eVb9nNKFMvcs8PU8sROrt7IMbiUzGVEl4zj54mhpK4LEpYLOV6xq4hvwqIFte0FZeDbUSDM1xRelqWLNFsRvGl6ZfvLWVyfHvcVA58im8WQK923/3I4BBB9JcaoD8m8/pxIFpJAJ04F4/Qnkreo4JAdT6/HAh3b/qbkO+O3OcQZemF63V6oyqge5FSW3I5+
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1361e4ec-f62d-45e6-4575-08d7980dcd4b
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2020 09:48:53.9984 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Gdep9k7RyhpM9dSdeR7WcrErlWddDakajYlMorBCy3Rx+66MHhIKmm1CbRKRih2mm8RD7g5kLjOvFpIbnxdjC6OJ+tMfsY2ZD4tTT+x9M2o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0009
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_014857_354509_72B34AA4 
X-CRM114-Status: UNSURE (   6.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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
Cc: Eugen.Hristev@microchip.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
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
Changes in v4:
- Added to include/linux-atmel-isc-media.h comments explaining the controls
- renamed weird 'component balance' to correct name: 'gain'
So now we have 'gain controls' and 'offset controls' which all together form the
'white balance controls'

Changes in v3:
- Moved controls definition on separate header as done in imx driver
- reserved range of user controls in v4l2-controls.h

Changes in v2:
- Created some macros to make the code smaller, for declaring the bal/off
controls, and to convert to 2's complements required values (0 to ZERO_VAL)

Compliance test for atmel-isc device /dev/vatmel-isc f0008000.isc: =================  START STATUS  =================
v4l2-ctrls: atmel-isc f0008000.isc: Brightness: 0
v4l2-ctrls: atmel-isc f0008000.isc: Contrast: 256


Driver Info:
        Driver name      : atmel-isc
        Card type        : Atmel Image Sensor Controller
        Bus info         : platform:atmel-isc f0008000.isc
        Driver version   : 5.5.0
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
v4l2-ctrls: atmel-isc f0008000.isc: Gamma: 2
v4l2-ctrls: atmel-isc f0008000.isc: White Balance, Automatic: true
v4l2-ctrls: atmel-isc f0008000.isc: Red Component Gain: 512 inactive volatile
v4l2-ctrls: atmel-isc f0008000.isc: Blue Component Gain: 512 inactive volatile
v4l2-ctrls: atmel-isc f0008000.isc: Green Red Component Gain: 512 inactive volatile
v4l2-ctrls: atmel-isc f0008000.isc: Green Blue Component Gain: 512 inactive volatile
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
        Standard Controls: 6 Private Controls: 8

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
 # v4l2-ctl -L

User Controls

                     brightness 0x00980900 (int)    : min=-1024 max=1023 step=1 default=0 value=0 flags=slider
                       contrast 0x00980901 (int)    : min=-2048 max=2047 step=1 default=256 value=256 flags=slider
        white_balance_automatic 0x0098090c (bool)   : default=1 value=1 flags=update
               do_white_balance 0x0098090d (button) : flags=inactive, write-only, volatile, execute-on-write
                          gamma 0x00980910 (int)    : min=0 max=2 step=1 default=2 value=2 flags=slider
             red_component_gain 0x009819c0 (int)    : min=0 max=8191 step=1 default=512 value=512 flags=inactive, slider, volatile
            blue_component_gain 0x009819c1 (int)    : min=0 max=8191 step=1 default=512 value=512 flags=inactive, slider, volatile
       green_red_component_gain 0x009819c2 (int)    : min=0 max=8191 step=1 default=512 value=512 flags=inactive, slider, volatile
      green_blue_component_gain 0x009819c3 (int)    : min=0 max=8191 step=1 default=512 value=512 flags=inactive, slider, volatile
           red_component_offset 0x009819c4 (int)    : min=-4095 max=4095 step=1 default=0 value=0 flags=inactive, slider, volatile
          blue_component_offset 0x009819c5 (int)    : min=-4095 max=4095 step=1 default=0 value=0 flags=inactive, slider, volatile
     green_red_component_offset 0x009819c6 (int)    : min=-4095 max=4095 step=1 default=0 value=0 flags=inactive, slider, volatile
    green_blue_component_offset 0x009819c7 (int)    : min=-4095 max=4095 step=1 default=0 value=0 flags=inactive, slider, volatile
 #



 drivers/media/platform/atmel/atmel-isc-base.c | 222 ++++++++++++++++++++++----
 drivers/media/platform/atmel/atmel-isc.h      |  23 ++-
 include/linux/atmel-isc-media.h               |  58 +++++++
 include/uapi/linux/v4l2-controls.h            |   4 +
 4 files changed, 279 insertions(+), 28 deletions(-)
 create mode 100644 include/linux/atmel-isc-media.h

diff --git a/drivers/media/platform/atmel/atmel-isc-base.c b/drivers/media/platform/atmel/atmel-isc-base.c
index d7669a0..b6c9a78 100644
--- a/drivers/media/platform/atmel/atmel-isc-base.c
+++ b/drivers/media/platform/atmel/atmel-isc-base.c
@@ -22,6 +22,7 @@
 #include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 #include <linux/videodev2.h>
+#include <linux/atmel-isc-media.h>
 
 #include <media/v4l2-ctrls.h>
 #include <media/v4l2-device.h>
@@ -224,10 +225,35 @@ const u32 isc_gamma_table[GAMMA_MAX + 1][GAMMA_ENTRIES] = {
 	(((mbus_code) == MEDIA_BUS_FMT_Y10_1X10) | \
 	(((mbus_code) == MEDIA_BUS_FMT_Y8_1X8)))
 
+#define ISC_CTRL_ISC_TO_V4L2(x) ((x) == ISC_WB_O_ZERO_VAL ? 0 : (x))
+#define ISC_CTRL_V4L2_TO_ISC(x) ((x) ? (x) : ISC_WB_O_ZERO_VAL)
+
+static inline void isc_update_v4l2_ctrls(struct isc_device *isc)
+{
+	struct isc_ctrls *ctrls = &isc->ctrls;
+
+	/* In here we set the v4l2 controls w.r.t. our pipeline config */
+	v4l2_ctrl_s_ctrl(isc->r_gain_ctrl, ctrls->gain[ISC_HIS_CFG_MODE_R]);
+	v4l2_ctrl_s_ctrl(isc->b_gain_ctrl, ctrls->gain[ISC_HIS_CFG_MODE_B]);
+	v4l2_ctrl_s_ctrl(isc->gr_gain_ctrl, ctrls->gain[ISC_HIS_CFG_MODE_GR]);
+	v4l2_ctrl_s_ctrl(isc->gb_gain_ctrl, ctrls->gain[ISC_HIS_CFG_MODE_GB]);
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
@@ -662,11 +688,9 @@ static void isc_set_pipeline(struct isc_device *isc, u32 pipeline)
 
 	bay_cfg = isc->config.sd_format->cfa_baycfg;
 
-	if (ctrls->awb == ISC_WB_NONE)
-		isc_reset_awb_ctrls(isc);
-
 	regmap_write(regmap, ISC_WB_CFG, bay_cfg);
 	isc_update_awb_ctrls(isc);
+	isc_update_v4l2_ctrls(isc);
 
 	regmap_write(regmap, ISC_CFA_CFG, bay_cfg | ISC_CFA_CFG_EITPOL);
 
@@ -1396,6 +1420,7 @@ static int isc_set_fmt(struct isc_device *isc, struct v4l2_format *f)
 	    isc->try_config.sd_format != isc->config.sd_format) {
 		isc->ctrls.hist_stat = HIST_INIT;
 		isc_reset_awb_ctrls(isc);
+		isc_update_v4l2_ctrls(isc);
 	}
 	/* make the try configuration active */
 	isc->config = isc->try_config;
@@ -1814,10 +1839,6 @@ static void isc_awb_work(struct work_struct *w)
 	ctrls->hist_id = hist_id;
 	baysel = isc->config.sd_format->cfa_baycfg << ISC_HIS_CFG_BAYSEL_SHIFT;
 
-	/* if no more auto white balance, reset controls. */
-	if (ctrls->awb == ISC_WB_NONE)
-		isc_reset_awb_ctrls(isc);
-
 	pm_runtime_get_sync(isc->dev);
 
 	/*
@@ -1842,6 +1863,8 @@ static void isc_awb_work(struct work_struct *w)
 		if (ctrls->awb == ISC_WB_ONETIME) {
 			v4l2_info(&isc->v4l2_dev,
 				  "Completed one time white-balance adjustment.\n");
+			/* update the v4l2 controls values */
+			isc_update_v4l2_ctrls(isc);
 			ctrls->awb = ISC_WB_NONE;
 		}
 	}
@@ -1873,6 +1896,27 @@ static int isc_s_ctrl(struct v4l2_ctrl *ctrl)
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
@@ -1883,36 +1927,142 @@ static int isc_s_ctrl(struct v4l2_ctrl *ctrl)
 		if (!isc->config.sd_format)
 			break;
 
-		if (ctrls->hist_stat != HIST_ENABLED)
-			isc_reset_awb_ctrls(isc);
+		/* configure the controls with new values from v4l2 */
+		if (ctrl->cluster[ISC_CTRL_R_GAIN]->is_new)
+			ctrls->gain[ISC_HIS_CFG_MODE_R] = isc->r_gain_ctrl->val;
+		if (ctrl->cluster[ISC_CTRL_B_GAIN]->is_new)
+			ctrls->gain[ISC_HIS_CFG_MODE_B] = isc->b_gain_ctrl->val;
+		if (ctrl->cluster[ISC_CTRL_GR_GAIN]->is_new)
+			ctrls->gain[ISC_HIS_CFG_MODE_GR] = isc->gr_gain_ctrl->val;
+		if (ctrl->cluster[ISC_CTRL_GB_GAIN]->is_new)
+			ctrls->gain[ISC_HIS_CFG_MODE_GB] = isc->gb_gain_ctrl->val;
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
+		ctrl->cluster[ISC_CTRL_R_GAIN]->val =
+					ctrls->gain[ISC_HIS_CFG_MODE_R];
+		ctrl->cluster[ISC_CTRL_B_GAIN]->val =
+					ctrls->gain[ISC_HIS_CFG_MODE_B];
+		ctrl->cluster[ISC_CTRL_GR_GAIN]->val =
+					ctrls->gain[ISC_HIS_CFG_MODE_GR];
+		ctrl->cluster[ISC_CTRL_GB_GAIN]->val =
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
+#define ISC_CTRL_GAIN(_name, _id, _name_str) \
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
+ISC_CTRL_GAIN(isc_r_gain_ctrl, ISC_CID_R_GAIN, "Red Component Gain");
+ISC_CTRL_GAIN(isc_b_gain_ctrl, ISC_CID_B_GAIN, "Blue Component Gain");
+ISC_CTRL_GAIN(isc_gr_gain_ctrl, ISC_CID_GR_GAIN, "Green Red Component Gain");
+ISC_CTRL_GAIN(isc_gb_gain_ctrl, ISC_CID_GB_GAIN, "Green Blue Component Gain");
+
 static int isc_ctrl_init(struct isc_device *isc)
 {
 	const struct v4l2_ctrl_ops *ops = &isc_ctrl_ops;
@@ -1923,7 +2073,7 @@ static int isc_ctrl_init(struct isc_device *isc)
 	ctrls->hist_stat = HIST_INIT;
 	isc_reset_awb_ctrls(isc);
 
-	ret = v4l2_ctrl_handler_init(hdl, 5);
+	ret = v4l2_ctrl_handler_init(hdl, 13);
 	if (ret < 0)
 		return ret;
 
@@ -1933,10 +2083,13 @@ static int isc_ctrl_init(struct isc_device *isc)
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
@@ -1947,6 +2100,21 @@ static int isc_ctrl_init(struct isc_device *isc)
 
 	v4l2_ctrl_activate(isc->do_wb_ctrl, false);
 
+	isc->r_gain_ctrl = v4l2_ctrl_new_custom(hdl, &isc_r_gain_ctrl, NULL);
+	isc->b_gain_ctrl = v4l2_ctrl_new_custom(hdl, &isc_b_gain_ctrl, NULL);
+	isc->gr_gain_ctrl = v4l2_ctrl_new_custom(hdl, &isc_gr_gain_ctrl, NULL);
+	isc->gb_gain_ctrl = v4l2_ctrl_new_custom(hdl, &isc_gb_gain_ctrl, NULL);
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
index bfaed2f..fc56a74 100644
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
+#define ISC_CTRL_R_GAIN 2
+#define ISC_CTRL_B_GAIN 3
+#define ISC_CTRL_GR_GAIN 4
+#define ISC_CTRL_GB_GAIN 5
+#define ISC_CTRL_R_OFF 6
+#define ISC_CTRL_B_OFF 7
+#define ISC_CTRL_GR_OFF 8
+#define ISC_CTRL_GB_OFF 9
+		struct v4l2_ctrl	*awb_ctrl;
+		struct v4l2_ctrl	*do_wb_ctrl;
+		struct v4l2_ctrl	*r_gain_ctrl;
+		struct v4l2_ctrl	*b_gain_ctrl;
+		struct v4l2_ctrl	*gr_gain_ctrl;
+		struct v4l2_ctrl	*gb_gain_ctrl;
+		struct v4l2_ctrl	*r_off_ctrl;
+		struct v4l2_ctrl	*b_off_ctrl;
+		struct v4l2_ctrl	*gr_off_ctrl;
+		struct v4l2_ctrl	*gb_off_ctrl;
+	};
 };
 
 #define GAMMA_MAX	2
diff --git a/include/linux/atmel-isc-media.h b/include/linux/atmel-isc-media.h
new file mode 100644
index 0000000..02ccf86
--- /dev/null
+++ b/include/linux/atmel-isc-media.h
@@ -0,0 +1,58 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2019 Microchip Technology Inc. and its subsidiaries
+ *
+ * Author: Eugen Hristev <eugen.hristev@microchip.com>
+ */
+
+#ifndef __LINUX_ATMEL_ISC_MEDIA_H__
+#define __LINUX_ATMEL_ISC_MEDIA_H__
+
+/*
+ * There are 8 controls available:
+ * 4 gain controls , sliders, for each of the BAYER components: R, B, GR, GB.
+ * These gains are multipliers for each component, in format unsigned 0:4:9 with
+ * a default value of 512 (1.0 multiplier).
+ * 4 offset controls, sliders, for each of the BAYER components: R, B, GR, GB.
+ * These offsets are added/substracted from each component, in format signed
+ * 1:12:0 with a default value of 0 (+/- 0)
+ *
+ * To expose this to userspace, added 8 custom controls, in an auto cluster.
+ *
+ * To summarize the functionality:
+ * The auto cluster switch is the auto white balance control, and it works
+ * like this:
+ * AWB ==1 : autowhitebalance is on, the do_white_balance button is inactive,
+ * the gains/offsets are inactive, but volatile and readable.
+ * Thus, the results of the whitebalance algorithm are available to userspace to
+ * read at any time.
+ * AWB ==0: autowhitebalance is off, cluster is in manual mode, user can
+ * configure the gain/offsets directly.
+ * More than that, if the do_white_balance button is
+ * pressed, the driver will perform one-time-adjustment, (preferably with color
+ * checker card) and the userspace can read again the new values.
+ *
+ * With this feature, the userspace can save the coefficients and reinstall them
+ * for example after reboot or reprobing the driver.
+ */
+
+enum atmel_isc_ctrl_id {
+	/* Red component gain control */
+	ISC_CID_R_GAIN = (V4L2_CID_USER_ATMEL_ISC_BASE + 0),
+	/* Blue component gain control */
+	ISC_CID_B_GAIN,
+	/* Green Red component gain control */
+	ISC_CID_GR_GAIN,
+	/* Green Blue gain control */
+	ISC_CID_GB_GAIN,
+	/* Red component offset control */
+	ISC_CID_R_OFFSET,
+	/* Blue component offset control */
+	ISC_CID_B_OFFSET,
+	/* Green Red component offset control */
+	ISC_CID_GR_OFFSET,
+	/* Green Blue component offset control */
+	ISC_CID_GB_OFFSET,
+};
+
+#endif
diff --git a/include/uapi/linux/v4l2-controls.h b/include/uapi/linux/v4l2-controls.h
index 5a7bede..95e0291 100644
--- a/include/uapi/linux/v4l2-controls.h
+++ b/include/uapi/linux/v4l2-controls.h
@@ -192,6 +192,10 @@ enum v4l2_colorfx {
  * We reserve 16 controls for this driver. */
 #define V4L2_CID_USER_IMX_BASE			(V4L2_CID_USER_BASE + 0x10b0)
 
+/* The base for the atmel isc driver controls.
+ * We reserve 32 controls for this driver. */
+#define V4L2_CID_USER_ATMEL_ISC_BASE		(V4L2_CID_USER_BASE + 0x10c0)
+
 /* MPEG-class control IDs */
 /* The MPEG controls are applicable to all codec controls
  * and the 'MPEG' part of the define is historical */
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
