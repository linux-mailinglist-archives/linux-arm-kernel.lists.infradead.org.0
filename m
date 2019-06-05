Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1949235C50
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 14:09:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9oWM3LxBcWYpqjBsAdMr7qMmgGBp8xDTiw+secDOGOA=; b=cB3xGL8AEVki6P
	/0daJ90DZnwF17u6vOh1MJPWh+kMPso+Y4P4/4Qjd/p64IJ/de5DycUUxI8PMM4WSrWjFFn2mMP2l
	bdzIxQ+b/FGZUtT+5/VuqgnSr2jXmSe+EDAFNMffmQivOaxvzn1E98QldP71HCK1NQCK9H0fw7zJt
	Lp5zkWLLI8jDOooLccKuJiVuMHFWl+2q1xxPPmxKQce5pvDzW1pvVu2NCCjBco2bz59UaOJNSKKy+
	Pe9guOYlxCJDrvMil0lOtrHt7FeWmHT303j2elZYsLFft1dXMKph9j4Ryr6mP7sY5ud5Cbab9YZUc
	RPanK0nlflpiz+/V6o3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYUis-0002DX-F7; Wed, 05 Jun 2019 12:08:54 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYUik-0002Cl-3J
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 12:08:48 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
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
X-IronPort-AV: E=Sophos;i="5.60,550,1549954800"; d="scan'208";a="33174611"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 Jun 2019 05:08:43 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.87.151) by
 chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 5 Jun 2019 05:08:43 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 5 Jun 2019 05:08:43 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=91e0t0Nuqmb6b0khNhfo9Y9EqXIZL4gnIVBkUQAOZRI=;
 b=ZhbkAVc1eCG4RAOoGsDPyPMC8OOVBSzjWMWUggoA2vmPz1rDZwUda2d6LwQb1sb9eI1f9URPC+GX9Cyselwrt2kKPVhNdhr9oz9bCudtvr6P3KpZ9/rOrZyIWll0cQp+gLG+LH0TDTqihM8D3X+pQQQXT9q9YVRefRHyq5DpPUw=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1676.namprd11.prod.outlook.com (10.172.40.7) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Wed, 5 Jun 2019 12:08:41 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::2807:f606:3b7c:cce9]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::2807:f606:3b7c:cce9%9]) with mapi id 15.20.1943.018; Wed, 5 Jun 2019
 12:08:41 +0000
From: <Eugen.Hristev@microchip.com>
To: <hverkuil@xs4all.nl>, <linux-media@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] media: atmel: atmel-isc: split driver into driver base
 and isc
Thread-Topic: [PATCH v2] media: atmel: atmel-isc: split driver into driver
 base and isc
Thread-Index: AQHVFrxThsCvxgIDlEymA9iRK8Mn9qaM/daAgAACVwA=
Date: Wed, 5 Jun 2019 12:08:40 +0000
Message-ID: <613e2e74-6ac7-93ce-6fb7-d570852bf1e3@microchip.com>
References: <1559202331-15397-1-git-send-email-eugen.hristev@microchip.com>
 <4f1925a5-9361-7f57-4526-3d28be8291dd@xs4all.nl>
In-Reply-To: <4f1925a5-9361-7f57-4526-3d28be8291dd@xs4all.nl>
Accept-Language: ro-RO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P194CA0010.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:800:be::20) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190605150428781
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f2887ec3-ceaa-4683-0666-08d6e9ae8c4a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1676; 
x-ms-traffictypediagnostic: DM5PR11MB1676:
x-microsoft-antispam-prvs: <DM5PR11MB16768DFDA1C0B994863213CAE8160@DM5PR11MB1676.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00594E8DBA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(136003)(346002)(376002)(366004)(199004)(189003)(8676002)(72206003)(14454004)(7736002)(25786009)(53936002)(305945005)(2501003)(76176011)(110136005)(316002)(81156014)(2201001)(99286004)(81166006)(73956011)(53546011)(52116002)(102836004)(386003)(6506007)(66066001)(8936002)(6512007)(478600001)(6246003)(86362001)(31696002)(36756003)(31686004)(14444005)(5660300002)(71190400001)(71200400001)(4326008)(229853002)(2906002)(26005)(186003)(6486002)(66946007)(11346002)(66446008)(64756008)(66556008)(66476007)(68736007)(476003)(2616005)(6436002)(486006)(256004)(446003)(6116002)(3846002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1676;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bYPpOMbIK+zKkHtIFbNbo0mEJfRPfMqeqatM1ezlGeQBGwbrvjkZMxTgCfh3OWudrtyf42s6Z32Ap3Jk0M84cG9K4S+4ZrfFrmxg+ajo80BIYot73IEjJ5SeLIRu22+k4zWoqwjqp2CiwzChj5qYu/Lwm4smj6IQrSI9xeA7Pd1SDtvtssBqfGfMf1haFzB6SgjgmrrCy8TehA7QGqseuaJtycjQcglGS238xl5OiOuN3kQhkIRN6b9P7kx5h6EVwIV3KV65iFtqapUkS/YJv6nhIIMtx9oEPBjdvCm5lHkPRQ0hLlu/MJiM2QL9ZrW+8SNGemp+qp4m0rZ+5cZpVCtPB1mEJV96sGQv/1bb4l6FN0AA0Kh/y3KGfDXvxwxe5arWvzmkWOj4ifspCWHFTi8tL2ur/V1D2BN2KMjwajc=
Content-ID: <BA8459016C905C4BB9F55234BC05C184@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f2887ec3-ceaa-4683-0666-08d6e9ae8c4a
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2019 12:08:40.9869 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eugen.hristev@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1676
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_050846_242113_AED98E72 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: ksloat@aampglobal.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05.06.2019 14:56, Hans Verkuil wrote:

> 
> Hi Eugen,
> 
> On 5/30/19 9:50 AM, Eugen.Hristev@microchip.com wrote:
>> From: Eugen Hristev <eugen.hristev@microchip.com>
>>
>> This splits the Atmel ISC driver into a common base: atmel-isc-base.c
>> and the driver probe/dt part , atmel-sama5d2-isc.c
>> This is needed to keep a common ground for the sensor controller which will
>> be reused.
>> The atmel-isc will use the common symbols inside the atmel-isc-base
>> Future driver will also use the same symbols and redefine different aspects,
>> for a different version of the ISC.
>> This is done to avoid complete code duplication by creating a totally
>> different driver for the new variant of the ISC.
>>
>> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
>> ---
>>
>> Hello Hans,
>>
>> I am resending this with the required fixes.
>> You asked me about the #ifdef around ATMEL_ISC_NAME, it's because I was
>> thinking to have the ATMEL_ISC_NAME different by each driver that use
>> the atmel-isc.h, but for now I removed any ifdef around it, and will
>> consider a different define for new drivers.
>>
>> Changes in v2:
>> - renamed atmel-isc.c to atmel-sama5d2-isc.c as sama5d2 is the SoC that
>>    includes this hardware block. The module will still be named atmel-isc.ko
>> - removed ifdef around definition of ATMEL_ISC_NAME
>> - moved external declarations in the specific files, this was breaking
>>    module loading
>>
>> v4l2-compliance SHA: 0d61ddede7d340ffa1c75a2882e30c455ef3d8b8, 32 bitatmel-isc f0008000.isc: =================  START STATUS  =================
>>
>> atmelpliance test for atmel-isc device /dev/video0:
>>
>> Driver Info:
>>          Driver name      : atmel-isc
>>          Card type        : Atmel Image Sensor Controller
>>          Bus info         : platform:atmel-isc f0008000.isc
>>          Driver version   : 5.2.0
>>          Capabilities     : 0x84200001
>>                  Video Capture
>>                  Streaming
>>                  Extended Pix Format
>>                  Device Capabilities
>>          Device Caps      : 0x04200001
>>                  Video Capture
>>                  Streaming
>>                  Extended Pix Format
>>
>> Required ioctls:
>>          test VIDIOC_QUERYCAP: OK
>>
>> Allow for multiple opens:
>>          test second /dev/video0 open: OK
>>          test VIDIOC_QUERYCAP: OK
>>          test VIDIOC_G/S_PRIORITY: OK
>>          test for unlimited opens: OK
>>
>> Debug ioctls:
>>          test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
>> -isc f0008000.isc: Brightness: 0
>> atmel-isc f0008000.isc: Contrast: 256
>> atmel-isc f0008000.isc: Gamma: 2
>> atmel-isc f0008000.isc: White Balance, Automatic: true
>> atmel-isc f0008000.isc: ==================  END STATUS  ==================
>>          test VIDIOC_LOG_STATUS: OK
>>
>> Input ioctls:
>>          test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
>>          test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
>>          test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
>>          test VIDIOC_ENUMAUDIO: OK (Not Supported)
>>          test VIDIOC_G/S/ENUMINPUT: OK
>>          test VIDIOC_G/S_AUDIO: OK (Not Supported)
>>          Inputs: 1 Audio Inputs: 0 Tuners: 0
>>
>> Output ioctls:
>>          test VIDIOC_G/S_MODULATOR: OK (Not Supported)
>>          test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
>>          test VIDIOC_ENUMAUDOUT: OK (Not Supported)
>>          test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
>>          test VIDIOC_G/S_AUDOUT: OK (Not Supported)
>>          Outputs: 0 Audio Outputs: 0 Modulators: 0
>>
>> Input/Output configuration ioctls:
>>          test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)
>>          test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)
>>          test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)
>>          test VIDIOC_G/S_EDID: OK (Not Supported)
>>
>> Control ioctls (Input 0):
>>          test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK
>>          test VIDIOC_QUERYCTRL: OK
>>          test VIDIOC_G/S_CTRL: OK
>>          test VIDIOC_G/S/TRY_EXT_CTRLS: OK
>>          test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK
>>          test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
>>          Standard Controls: 6 Private Controls: 0
>>
>> Format ioctls (Input 0):
>>          test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
>>          test VIDIOC_G/S_PARM: OK
>>          test VIDIOC_G_FBUF: OK (Not Supported)
>>          test VIDIOC_G_FMT: OK
>>          test VIDIOC_TRY_FMT: OK
>>          test VIDIOC_S_FMT: OK
>>          test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
>>          test Cropping: OK (Not Supported)
>>          test Composing: OK (Not Supported)
>>          test Scaling: OK (Not Supported)
>>
>> Codec ioctls (Input 0):
>>          test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
>>          test VIDIOC_G_ENC_INDEX: OK (Not Supported)
>>          test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)
>>
>> Buffer ioctls (Input 0):
>>          test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
>>          test VIDIOC_EXPBUF: OK
>>          test Requests: OK (Not Supported)
>>
>> Total for atmel-isc device /dev/video0: 44, Succeeded: 44, Failed: 0, Warnings: 0
>>
>>
>>   MAINTAINERS                                      |    4 +-
>>   drivers/media/platform/atmel/Makefile            |    4 +-
>>   drivers/media/platform/atmel/atmel-isc-base.c    | 2148 ++++++++++++++++++
>>   drivers/media/platform/atmel/atmel-isc.c         | 2634 ----------------------
>>   drivers/media/platform/atmel/atmel-isc.h         |  192 ++
>>   drivers/media/platform/atmel/atmel-sama5d2-isc.c |  365 +++
>>   6 files changed, 2711 insertions(+), 2636 deletions(-)
>>   create mode 100644 drivers/media/platform/atmel/atmel-isc-base.c
>>   delete mode 100644 drivers/media/platform/atmel/atmel-isc.c
>>   create mode 100644 drivers/media/platform/atmel/atmel-isc.h
>>   create mode 100644 drivers/media/platform/atmel/atmel-sama5d2-isc.c
>>
> 
> Checkpatch gave me various warnings that I think should be addressed:


Hello Hans,

I saw the checkpatch issues as well, but most of them are inherited and 
appear now because of code move...
I would think it would be cleaner to solve these issues in a an a-priori 
patch, and then do the split as a "clean,just-split" patch afterwards.
What do you think?

And for the externs, I can handle it, but I would create a separate 
header file for them that would be included in new atmel-sama5d2-isc.c

Are you ok with this approach ?

Thanks for review,
Eugen

> 
> WARNING: externs should be avoided in .c files
> #249: FILE: drivers/media/platform/atmel/atmel-isc-base.c:40:
> +extern unsigned int sensor_preferred;
> 
> It looks like these module parameters can be moved to atmel-isc-base.c
> and only an extern unsigned int debug should be added to the atmel-isc.h.
> 
> Externs in a source is indeed dubious.
> 
> CHECK: spinlock_t definition without comment
> #681: FILE: drivers/media/platform/atmel/atmel-isc.h:27:
> +       spinlock_t      lock;
> 
> I know there was no comment before, but it might be nice to add one
> now.
> 
> CHECK: Macro argument reuse 'hw' - possible side-effects?
> #688: FILE: drivers/media/platform/atmel/atmel-isc.h:34:
> +#define to_isc_clk(hw) container_of(hw, struct isc_clk, hw)
> 
> This seems really wrong. One hw refers to the argument, the
> other is the name of a field in a struct. Use a different
> name as the macro argument to avoid this confusion.
> 
> 
> CHECK: spinlock_t definition without comment
> #814: FILE: drivers/media/platform/atmel/atmel-isc.h:160:
> +       spinlock_t              dma_queue_lock;
> 
> CHECK: struct mutex definition without comment
> #832: FILE: drivers/media/platform/atmel/atmel-isc.h:178:
> +       struct mutex            lock;
> 
> CHECK: spinlock_t definition without comment
> #833: FILE: drivers/media/platform/atmel/atmel-isc.h:179:
> +       spinlock_t              awb_lock;
> 
> Comments would be nice.
> 
> WARNING: externs should be avoided in .c files
> #909: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:57:
> +extern struct isc_format formats_list[];
> 
> WARNING: externs should be avoided in .c files
> #910: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:58:
> +extern struct isc_format controller_formats[];
> 
> WARNING: externs should be avoided in .c files
> #911: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:59:
> +extern const u32 isc_gamma_table[GAMMA_MAX + 1][GAMMA_ENTRIES];
> 
> WARNING: externs should be avoided in .c files
> #912: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:60:
> +extern const struct regmap_config isc_regmap_config;
> 
> WARNING: externs should be avoided in .c files
> #913: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:61:
> +extern const struct v4l2_async_notifier_operations isc_async_ops;
> 
> This should be in a header.
> 
> WARNING: externs should be avoided in .c files
> #915: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:63:
> +extern irqreturn_t isc_interrupt(int irq, void *dev_id);
> 
> WARNING: externs should be avoided in .c files
> #916: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:64:
> +extern int isc_pipeline_init(struct isc_device *isc);
> 
> WARNING: externs should be avoided in .c files
> #917: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:65:
> +extern int isc_clk_init(struct isc_device *isc);
> 
> WARNING: externs should be avoided in .c files
> #918: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:66:
> +extern void isc_subdev_cleanup(struct isc_device *isc);
> 
> WARNING: externs should be avoided in .c files
> #919: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:67:
> +extern void isc_clk_cleanup(struct isc_device *isc);
> 
> Should also be in a header. No need to extern when just declaring the
> function prototype, BTW.
> 
> CHECK: Alignment should match open parenthesis
> #964: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:112:
> +               subdev_entity = devm_kzalloc(dev,
> +                                         sizeof(*subdev_entity), GFP_KERNEL);
> 
> Please fix this as well.
> 
> Regards,
> 
> 	Hans
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
