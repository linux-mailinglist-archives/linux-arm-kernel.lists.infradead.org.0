Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1110F7A244
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 09:28:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aMcPQHiWd+Y1D+uk1d7YJh5Zu9U5oYv46NIKFshORFw=; b=MNcuyiAihNBf+E
	3GbZHz3Bq7uWkS63ozS2CAo6RZg7K49BoZFOHXAR/NvdXjCcmApzZXRuincaFbDhivwnllLcb2vpG
	6jIaK/QEpwzWzR7V33alcjDRRjmINTXwT0tAAXB3qQKfyTYBOgG9zDkTINOnsErJteJkyGF/3jfOe
	tH3Xk1DzzA4/GIxi2M7sRPvmeymRAdppLm33e8lgoWgeBgSs7Eh8R9Bcb7twTAnuMrpeUtlZd73Rp
	Lt3aDJlimb+ip3QmIxywQnLFy12PGyKJl8Z6fN1cp6KoHxxUp/HebXw3BEmOdREhFuDqpjSUvmrDL
	euOu+J0RQpEpOYrFQwbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsMYg-0006CL-Ly; Tue, 30 Jul 2019 07:28:30 +0000
Received: from lb3-smtp-cloud8.xs4all.net ([194.109.24.29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsMYR-0006BW-DX
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 07:28:18 +0000
Received: from [IPv6:2001:983:e9a7:1:3159:f139:4aff:7185]
 ([IPv6:2001:983:e9a7:1:3159:f139:4aff:7185])
 by smtp-cloud8.xs4all.net with ESMTPA
 id sMXyhAf44qTdhsMY0hku6b; Tue, 30 Jul 2019 09:28:06 +0200
Subject: Re: [PATCH v7 0/4] HEVC/H.265 stateless support for V4L2 and Cedrus
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
References: <20190725185602.22522-1-paul.kocialkowski@bootlin.com>
 <7fa38a2c-8e16-5e88-d073-1d04e9feaa84@xs4all.nl>
 <20190727095729.GD16618@aptenodytes>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <91a028b6-7f25-1a38-24e4-7dac02f34039@xs4all.nl>
Date: Tue, 30 Jul 2019 09:27:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190727095729.GD16618@aptenodytes>
Content-Language: en-US
X-CMAE-Envelope: MS4wfBewvWgEAJTsxgAIAXc8MXzsbwCHZcetrXfelodGvcMlLjAVd+M527/5r1ztnEHKgPcpxLllIXbWjrfO+VGNfWJ6ucu0SF1oW9VMQj+NoFVrNBSn0YSI
 e59ZwMiWJYIWVSJBrnml1+TUjsSkKm76pi8t8YHKFUnOFTreq6ttLx+NfrNbWRd2W5oycM0uDQ4lXcxvhIscqJRJsRwEPFywPXSR9Cb4VFNfG8K0W3zWt/x5
 SwTXLDBJVr9ZxfvhIBPLXCNJJJbwT/q0q6R6Tw6aMPyT/6BtktNT/7VRQraPsih+v2wC8h5Mc7Z75wa2RcTWyAup3UdFnwbJb7gCOcUsbLkF9y2tnA3AgjsC
 MSgtE2IXQEJKSdOZiQiogH112pMlOGGlw0aqITtox0ZFyBef4dHfPMXXVdLfpiZ7iosjomRv1FtxzUBw+3SdA6KDAdv7p4IPkWlVTlCAjO5Rs+4GB8DWYUEH
 SUAcTlodpU/JntZfScP2IqQhYRRv7WAIn2cqf5Jf0OKyqWs7WhF2VHThABYeUq6Z+rpBat7/fyKWIt3WLHODJcA5pWbhiBHlLbQyXbVbsR2AYieMVCqdlaAS
 yHlpiV9goQtmh0X5UHMmkoMVPtEcbqCeFGvHK1SM6YztkBnnm4qe1XWoDVZxZSYsO2s/L7K9DBLL5qRgK+zdcbXul2daw84jZY6EKY+kUkNrYzctUA9GuUJW
 qV+bqda85SAxwOcr0BkmueUztL/+99C/dMCB2hRcrZgYqXBwhc1w4qHbecvXSrpgMqxZtpuRuSpS/0V5e6fOQaZNIBznBDbZdaSrIIIFYlFXf0g/ZDI4TwTR
 XQ5psPS3xvyPn1UTPqz1XdplOAiCrqLWU0jX6gaNuLIQcO1p5w8ViuFGRwny/WKyAgtBm7YdgTjiZQV3hdeojB+pMwXibgbQfxUTgKG74FHuLeV/68SQh7oL
 L/hWNQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_002815_623068_9525C752 
X-CRM114-Status: GOOD (  18.95  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.29 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devel@driverdev.osuosl.org, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Tomasz Figa <tfiga@chromium.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-sunxi@googlegroups.com,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/27/19 11:57 AM, Paul Kocialkowski wrote:
> Hi Hans,
> 
> On Fri 26 Jul 19, 10:33, Hans Verkuil wrote:
>> On 7/25/19 8:55 PM, Paul Kocialkowski wrote:
>>> HEVC/H.265 stateless support for V4L2 and Cedrus
>>>
>>> This is early support for HEVC/H.265 stateless decoding in V4L2,
>>> including both definitions and driver support for the Cedrus VPU
>>> driver, which concerns Allwinner devices.
>>>
>>> A specific pixel format is introduced for the HEVC slice format and
>>> controls are provided to pass the bitstream metadata to the decoder.
>>> Some bitstream extensions are intentionally not supported at this point.
>>>
>>> Since this is the first proposal for stateless HEVC/H.265 support in
>>> V4L2, reviews and comments about the controls definitions are
>>> particularly welcome.
>>>
>>> On the Cedrus side, the H.265 implementation covers frame pictures
>>> with both uni-directional and bi-direction prediction modes (P/B
>>> slices). Field pictures (interleaved), scaling lists and 10-bit output
>>> are not supported at this point.
>>>
>>> Changes since v6:
>>> * Rebased on latest media tree from Hans;
>>
>> Which tree is that? Or are you just referring our media_tree master
>> branch? (which isn't 'my' tree :-) )
> 
> I'm usually rebasing on the tree you use to send PRs to Mauro, at:
> https://git.linuxtv.org/hverkuil/media_tree.git/

There are lots of branches there, and none are stable branches.

Just base it on the master branch of git://linuxtv.org/media_tree.git.

Regards,

	Hans

> 
> which is usually the best up-to-date stateless codec support tree :)
> 
> Cheers,
> 
> Paul
> 
>> Regards,
>>
>> 	Hans
>>
>>> * Reordered some fields to avoid holes and multi-padding;
>>> * Updated the documentation.
>>>
>>> Changes since v5:
>>> * Rebased atop latest next media tree;
>>> * Moved to flags instead of u8 fields;
>>> * Added padding to ensure 64-bit alignment
>>>   (tested with GDB on 32 and 64-bit architectures);
>>> * Reworked cedrus H.265 driver support a bit for flags;
>>> * Split off codec-specific control validation and init;
>>> * Added HEVC controls fields cleanup at std_validate to allow reliable
>>>   control comparison with memcmp;
>>> * Fixed various misc reported mistakes.
>>>
>>> Changes since v4:
>>> * Rebased atop latest H.254 series.
>>>
>>> Changes since v3:
>>> * Updated commit messages;
>>> * Updated CID base to avoid conflicts;
>>> * Used cpu_to_le32 for packed le32 data;
>>> * Fixed misc minor issues in the drive code;
>>> * Made it clear in the docs that the API will evolve;
>>> * Made the pixfmt private and split commits about it.
>>>
>>> Changes since v2:
>>> * Moved headers to non-public API;
>>> * Added H265 capability for A64 and H5;
>>> * Moved docs to ext-ctrls-codec.rst;
>>> * Mentionned sections of the spec in the docs;
>>> * Added padding to control structures for 32-bit alignment;
>>> * Made write function use void/size in bytes;
>>> * Reduced the number of arguments to helpers when possible;
>>> * Removed PHYS_OFFSET since we already set PFN_OFFSET;
>>> * Added comments where suggested;
>>> * Moved to timestamp for references instead of index;
>>> * Fixed some style issues reported by checkpatch.
>>>
>>> Changes since v1:
>>> * Added a H.265 capability to whitelist relevant platforms;
>>> * Switched over to tags instead of buffer indices in the DPB
>>> * Declared variable in their reduced scope as suggested;
>>> * Added the H.265/HEVC spec to the biblio;
>>> * Used in-doc references to the spec and the required APIs;
>>> * Removed debugging leftovers.
>>>
>>> Cheers!
>>>
>>> Paul Kocialkowski (4):
>>>   media: v4l2-ctrl: Add a comment on why we zero out compound controls
>>>     fields
>>>   media: v4l: Add definitions for the HEVC slice controls
>>>   media: pixfmt: Document the HEVC slice pixel format
>>>   media: cedrus: Add HEVC/H.265 decoding support
>>>
>>>  Documentation/media/uapi/v4l/biblio.rst       |   9 +
>>>  .../media/uapi/v4l/ext-ctrls-codec.rst        | 486 +++++++++++++-
>>>  .../media/uapi/v4l/pixfmt-compressed.rst      |  21 +
>>>  .../media/uapi/v4l/vidioc-queryctrl.rst       |  18 +
>>>  .../media/videodev2.h.rst.exceptions          |   3 +
>>>  drivers/media/v4l2-core/v4l2-ctrls.c          |  93 +++
>>>  drivers/media/v4l2-core/v4l2-ioctl.c          |   1 +
>>>  drivers/staging/media/sunxi/cedrus/Makefile   |   2 +-
>>>  drivers/staging/media/sunxi/cedrus/cedrus.c   |  31 +-
>>>  drivers/staging/media/sunxi/cedrus/cedrus.h   |  18 +
>>>  .../staging/media/sunxi/cedrus/cedrus_dec.c   |   9 +
>>>  .../staging/media/sunxi/cedrus/cedrus_h265.c  | 616 ++++++++++++++++++
>>>  .../staging/media/sunxi/cedrus/cedrus_hw.c    |   4 +
>>>  .../staging/media/sunxi/cedrus/cedrus_regs.h  | 271 ++++++++
>>>  .../staging/media/sunxi/cedrus/cedrus_video.c |  10 +
>>>  include/media/hevc-ctrls.h                    | 198 ++++++
>>>  include/media/v4l2-ctrls.h                    |   7 +
>>>  17 files changed, 1789 insertions(+), 8 deletions(-)
>>>  create mode 100644 drivers/staging/media/sunxi/cedrus/cedrus_h265.c
>>>  create mode 100644 include/media/hevc-ctrls.h
>>>
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
