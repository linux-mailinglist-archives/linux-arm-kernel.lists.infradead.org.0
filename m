Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 385E472F19
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 14:40:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Cy0Ze9Utnxj6QsHk3rduCIpCDdyoDwm5zrO0C9gpeXQ=; b=cxHSK2FjPcWNrwIeOs67k3sM2
	T9UPkce88+gC8YT+JruyWlKHZkh8MVXqzSJu1ufMeIpfYbTLEIRJmCJUyshIJ0XUNAo8/9vvQ6aFt
	VKTPO4xvwtw6xkiF2TcYYVGjHMLwC3Hsj9/dtQfT8Nw/dW5/Xo492YfL+6UCWT2yBSSMTHpwqNIBP
	nppNXb9t5kNlrAGA6EAjEq0CYO2zD8qQvhkDezgY4kUWnEerEOFa0Z3loDSqL3A0ETqAm1vsNdRJ2
	JFqiEgwWtA/lYT7u+8rVYA0H/Gjq9z3tMcdKIkBq8OKyLW3a1V/HuiDl3JkGwZKhMW5fwGs/7Idr2
	xoJfYG6Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqGZK-0004uI-3g; Wed, 24 Jul 2019 12:40:30 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqGYC-0002mH-2C
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 12:39:22 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 44B87C000F;
 Wed, 24 Jul 2019 12:39:11 +0000 (UTC)
Date: Wed, 24 Jul 2019 14:39:10 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: Re: [PATCH v6 0/5] media: Allwinner A10 CSI support
Message-ID: <20190724123910.lr6lipnlr7o5dxar@flea>
References: <cover.34bcd988943a26671681eaf849aacab51fab1cfe.1562847292.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <cover.34bcd988943a26671681eaf849aacab51fab1cfe.1562847292.git-series.maxime.ripard@bootlin.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_053920_493626_12AD2706 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4163107848661988906=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4163107848661988906==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7galzcqmm5r5acql"
Content-Disposition: inline


--7galzcqmm5r5acql
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Jul 11, 2019 at 02:15:02PM +0200, Maxime Ripard wrote:
> Hi,
>
> Here is a series introducing the support for the A10 (and SoCs of the same
> generation) CMOS Sensor Interface (called CSI, not to be confused with
> MIPI-CSI, which isn't support by that IP).
>
> That interface is pretty straightforward, but the driver has a few issues
> that I wanted to bring up:
>
>   * The only board I've been testing this with has an ov5640 sensor
>     attached, which doesn't work with the upstream driver. Copying the
>     Allwinner init sequence works though, and this is how it has been
>     tested. Testing with a second sensor would allow to see if it's an
>     issue on the CSI side or the sensor side.
>   * We don't have support for the ISP at the moment, but this can be added
>     eventually.
>
> Here is the v4l2-compliance output (commit f61132e81d79 of v4l-utils), and
> after running media-ctl -d /dev/media1 -v --set-v4l2 "'ov5640 1-0021':0
> [fmt:YUYV8_2X8/640x4 80 field:none]"
>
> Compliance test for device /dev/video1:
>
> Driver Info:
> 	Driver name      : sun4i_csi
> 	Card type        : sun4i-csi
> 	Bus info         : platform:1c09000.csi
> 	Driver version   : 5.2.0
> 	Capabilities     : 0x84201000
> 		Video Capture Multiplanar
> 		Streaming
> 		Extended Pix Format
> 		Device Capabilities
> 	Device Caps      : 0x04201000
> 		Video Capture Multiplanar
> 		Streaming
> 		Extended Pix Format
> Media Driver Info:
> 	Driver name      : sun4i-csi
> 	Model            : Allwinner Video Capture Device
> 	Serial           :
> 	Bus info         :
> 	Media version    : 5.2.0
> 	Hardware revision: 0x00000000 (0)
> 	Driver version   : 5.2.0
> Interface Info:
> 	ID               : 0x03000008
> 	Type             : V4L Video
> Entity Info:
> 	ID               : 0x00000006 (6)
> 	Name             : sun4i_csi
> 	Function         : V4L2 I/O
> 	Pad 0x01000007   : 0: Sink, Must Connect
> 	  Link 0x0200000a: from remote pad 0x1000005 of entity 'sun4i-csi-0': Data, Enabled, Immutable
>
> Required ioctls:
> 	test MC information (see 'Media Driver Info' above): OK
> 	test VIDIOC_QUERYCAP: OK
>
> Allow for multiple opens:
> 	test second /dev/video1 open: OK
> 	test VIDIOC_QUERYCAP: OK
> 	test VIDIOC_G/S_PRIORITY: OK
> 	test for unlimited opens: OK
>
> Debug ioctls:
> 	test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
> 	test VIDIOC_LOG_STATUS: OK (Not Supported)
>
> Input ioctls:
> 	test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
> 	test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
> 	test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
> 	test VIDIOC_ENUMAUDIO: OK (Not Supported)
> 	test VIDIOC_G/S/ENUMINPUT: OK
> 	test VIDIOC_G/S_AUDIO: OK (Not Supported)
> 	Inputs: 1 Audio Inputs: 0 Tuners: 0
>
> Output ioctls:
> 	test VIDIOC_G/S_MODULATOR: OK (Not Supported)
> 	test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
> 	test VIDIOC_ENUMAUDOUT: OK (Not Supported)
> 	test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
> 	test VIDIOC_G/S_AUDOUT: OK (Not Supported)
> 	Outputs: 0 Audio Outputs: 0 Modulators: 0
>
> Input/Output configuration ioctls:
> 	test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)
> 	test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)
> 	test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)
> 	test VIDIOC_G/S_EDID: OK (Not Supported)
>
> Control ioctls (Input 0):
> 	test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK (Not Supported)
> 	test VIDIOC_QUERYCTRL: OK (Not Supported)
> 	test VIDIOC_G/S_CTRL: OK (Not Supported)
> 	test VIDIOC_G/S/TRY_EXT_CTRLS: OK (Not Supported)
> 	test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK (Not Supported)
> 	test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
> 	Standard Controls: 0 Private Controls: 0
>
> Format ioctls (Input 0):
> 	test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
> 	test VIDIOC_G/S_PARM: OK (Not Supported)
> 	test VIDIOC_G_FBUF: OK (Not Supported)
> 	test VIDIOC_G_FMT: OK
> 	test VIDIOC_TRY_FMT: OK
> 	test VIDIOC_S_FMT: OK
> 	test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
> 	test Cropping: OK (Not Supported)
> 	test Composing: OK (Not Supported)
> 	test Scaling: OK
>
> Codec ioctls (Input 0):
> 	test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
> 	test VIDIOC_G_ENC_INDEX: OK (Not Supported)
> 	test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)
>
> Buffer ioctls (Input 0):
> 	test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
> 	test VIDIOC_EXPBUF: OK
>
> Test input 0:
>
> Streaming ioctls:
> 	test read/write: OK (Not Supported)
> 	test blocking wait: OK
> 	test MMAP: OK
> 	test USERPTR: OK (Not Supported)
> 	test DMABUF: OK (Not Supported)
>
> Total: 49, Succeeded: 49, Failed: 0, Warnings: 0

As requested by Sakari, here is the media-ctl -p output, both at boot,
and after the link setup.

# media-ctl -p -d /dev/media1
Media controller API version 5.2.0

Media device information
------------------------
driver          sun4i-csi
model           Allwinner Video Capture Device
serial
bus info
hw revision     0x0
driver version  5.2.0

Device topology
- entity 1: ov5640 1-0021 (1 pad, 1 link)
            type V4L2 subdev subtype Sensor flags 0
            device node name /dev/v4l-subdev0
	pad0: Source
		[fmt:UYVY8_2X8/640x480@1/30 field:none colorspace:srgb xfer:srgb ycbcr:601 quantization:full-range]
		-> "sun4i-csi-0":0 [ENABLED,IMMUTABLE]

- entity 3: sun4i-csi-0 (2 pads, 2 links)
            type V4L2 subdev subtype Unknown flags 0
            device node name /dev/v4l-subdev1
	pad0: Sink
		<- "ov5640 1-0021":0 [ENABLED,IMMUTABLE]
	pad1: Source
		[fmt:unknown/0x0]
		-> "sun4i_csi":0 [ENABLED,IMMUTABLE]

- entity 6: sun4i_csi (1 pad, 1 link)
            type Node subtype V4L flags 0
            device node name /dev/video1
	pad0: Sink
		<- "sun4i-csi-0":1 [ENABLED,IMMUTABLE]

# media-ctl -d /dev/media1 -v --set-v4l2 "'ov5640 1-0021':0 [fmt:YUYV8_2X8/640x4
80 field:none]"
Opening media device /dev/media1
Enumerating entities
Found 3 entities
Enumerating pads and links
Setting up format YUYV8_2X8 640x480 on pad ov5640 1-0021/0
Format set: YUYV8_2X8 640x480
Setting up format YUYV8_2X8 640x480 on pad sun4i-csi-0/0
Format set: YUYV8_2X8 640x480
# media-ctl -p -d /dev/media1
Media controller API version 5.2.0

Media device information
------------------------
driver          sun4i-csi
model           Allwinner Video Capture Device
serial
bus info
hw revision     0x0
driver version  5.2.0

Device topology
- entity 1: ov5640 1-0021 (1 pad, 1 link)
            type V4L2 subdev subtype Sensor flags 0
            device node name /dev/v4l-subdev0
	pad0: Source
		[fmt:YUYV8_2X8/640x480@1/30 field:none colorspace:srgb xfer:srgb ycbcr:601 quantization:full-range]
		-> "sun4i-csi-0":0 [ENABLED,IMMUTABLE]

- entity 3: sun4i-csi-0 (2 pads, 2 links)
            type V4L2 subdev subtype Unknown flags 0
            device node name /dev/v4l-subdev1
	pad0: Sink
		<- "ov5640 1-0021":0 [ENABLED,IMMUTABLE]
	pad1: Source
		[fmt:YUYV8_2X8/640x480]
		-> "sun4i_csi":0 [ENABLED,IMMUTABLE]

- entity 6: sun4i_csi (1 pad, 1 link)
            type Node subtype V4L flags 0
            device node name /dev/video1
	pad0: Sink
		<- "sun4i-csi-0":1 [ENABLED,IMMUTABLE]


--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--7galzcqmm5r5acql
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXThRaQAKCRDj7w1vZxhR
xfneAQCqVblAWBiXZyLmtv/VgoYllTAICjSZPmzuQRvh0vTbbwEA/YglnsR5zwUA
IZkVR/YSQVPFbJ88ZyRSSMmNmAHo2wo=
=YNV2
-----END PGP SIGNATURE-----

--7galzcqmm5r5acql--


--===============4163107848661988906==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4163107848661988906==--

