Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE2759890
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 12:40:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V+H3koVN7YO6eJO1/rVej377q0gla7na2jozB85va0k=; b=pqkVX5pJDSdXbl
	8211G4H6FBmJ9ODU56jkZed2ZkMjU1PtqBHpxRyZ/Gbnz2+Gq9UJFhsay7rfrF7Ih8J7y/Q2cNPay
	ywHvaDHk7MANEMJ02fdCKoTnT4C7upClxIkvqXDuI87EqkpoqJYI27j7M3xCBP4DVqc16uOXP4aLB
	FuQlIrLuB19fY7QImBLEL6eoesp2j9cTcN0m+KFiZXAfVUZ77nrSoiWhcHixSHHolFOdNIdggsXww
	zpfDYtPwz2xl7n9cmPFDu8kj8+qTUg8xyOh1stdpHjoDYC2uqqdAQKKi47QJk4elv0AzMiSUxFCC8
	tluWJhtW1gEEJnQGkfQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgoIM-0000AR-Ad; Fri, 28 Jun 2019 10:39:54 +0000
Received: from mx08-00252a01.pphosted.com ([91.207.212.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgoI6-000091-ET
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 10:39:41 +0000
Received: from pps.filterd (m0102629.ppops.net [127.0.0.1])
 by mx08-00252a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x5SAdZSa005157
 for <linux-arm-kernel@lists.infradead.org>; Fri, 28 Jun 2019 11:39:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=raspberrypi.org;
 h=mime-version :
 references : in-reply-to : from : date : message-id : subject : to : cc :
 content-type; s=pp; bh=MgvxS7rVwy/049YflKjnKGTKQ+HL2aJJ079s/pHhqUs=;
 b=hpy5Hahv7e6rq0h0AOZ3GoHHWIGAfbzxmIyMcZ+Yitlks0cbCM3zhnAYd12jLID4rJXl
 3uFWlo43taSWyUodBTdRoiiG/wJnOEJSx7tLpMgBikXnkXp9Gx93hRc1Fzlp68LwfVMh
 we9rUBRSGNKET9E5CXoziTNrXn9jIW0oARGXGyCa82rUIFSyXiy3LGHw6u2PuTZWI0Hr
 nwYpGnlaSL46weTOip9h6kEZdxa4mGOcltsMcekMdCOpr+V0G7Ku2P0BXyC9o2TTyYLH
 3aSPFcisbQWyaNYRDUQHK/xM0FdqoMX0c2IjpGDFAqjr+EAH6y3yDAu17plLHDTTNFKc wA== 
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com
 [209.85.215.199])
 by mx08-00252a01.pphosted.com with ESMTP id 2t9exhk23r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK)
 for <linux-arm-kernel@lists.infradead.org>; Fri, 28 Jun 2019 11:39:35 +0100
Received: by mail-pg1-f199.google.com with SMTP id 3so3005211pgc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 03:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MgvxS7rVwy/049YflKjnKGTKQ+HL2aJJ079s/pHhqUs=;
 b=QP3bpBBqfTQcuIPIL35AL6V59Bly7/8OOBFN3vei2qCmLvwQX/x5dUpyUeJwcnJ/G8
 5PWgIWQnOQUBbgBaRnAnIKGk+fYVKlGMfk3Hz7QQyQO7PBnHugGnlWW1JHPuIAeYveD7
 d+cQ8d2Fn/aju88j02cuciMojKrByqcz6LAIANh9q571GMfShmWfaYBaTWP5WeR90Qyo
 wLkNfMfvErt91FUfFv/BG6UDPm3x8wSBpv2zU3ar1kAzoYvF8+4L4l5IQ1+/LDJfUiNB
 JO7PnO+e3WcIgptvxpamCvYXTPq7znnTIVLZYwGvUSqCkpaZWM6HKvKF/r/HEclve2Aw
 Z64g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MgvxS7rVwy/049YflKjnKGTKQ+HL2aJJ079s/pHhqUs=;
 b=OFROleM5vE/iRxzVa0MHYTzAaDDx+8LNYrpPgAl9SDjX5ZlFHmeIE64b/vgm/c1vM8
 9LxDgHeDAcIpqLPw39XUr9Gk9UiayjtLIKhPk0XsANE+kEru/2Ej8+c+N7IJUbF5EBSz
 lrjZIjJSTYS39gpCmzYtYR558R4ol9y3XPXNlIg/ECtmvEbXB9a4uNXDDPmm0mcwxMND
 O6GqLCVC5/yPini9Lwz8ogxpt4wSbBPb5ZIMUmhb+g81W+Veha5N8Dl2BPRMnIeShsz9
 kb7OZk4GcLjkS4UJkrnSu97sACdBTIuv2BSCcocmsMxBoVU7382DP/0s5TuKpotePL73
 zltw==
X-Gm-Message-State: APjAAAXB5+GKLed6ldkEShJIXtKxFDDanVz0yMhG04r8vKODN+Y5pE+5
 XTCIguhz78MLA7CYzacu62yXR6wFhfBLwXhh/vvrt5kVqAcLo36EAceIboYiUuHgbHhwhj5rhcO
 6Z6xWklOiW11H3gkGjO3UhYP/8gaFt0odndLR81rBuDEgZAvyHg==
X-Received: by 2002:a63:360d:: with SMTP id d13mr8663273pga.80.1561718373360; 
 Fri, 28 Jun 2019 03:39:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzYUiO45rSRH0WJ6NDrEAeD1snwBUde7nzBvYLWt2tIOkSofz2vvGr8F/fz5p4u5n/tfNWRReppS1ngXIFCH/s=
X-Received: by 2002:a63:360d:: with SMTP id d13mr8663231pga.80.1561718372896; 
 Fri, 28 Jun 2019 03:39:32 -0700 (PDT)
MIME-Version: 1.0
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
 <f4492041-2587-eedb-8ae5-ae610e90fde2@xs4all.nl>
In-Reply-To: <f4492041-2587-eedb-8ae5-ae610e90fde2@xs4all.nl>
From: Dave Stevenson <dave.stevenson@raspberrypi.org>
Date: Fri, 28 Jun 2019 11:39:19 +0100
Message-ID: <CAAoAYcMxqNiHLVB=9PyiU1QmLNkzqBEVabdO35-ZTBB5ijSwxA@mail.gmail.com>
Subject: Re: [PATCH 00/31] staging: bcm2835-camera: Improvements
To: Hans Verkuil <hverkuil@xs4all.nl>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-06-28_04:2019-06-25,2019-06-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_033938_800487_EF0B4DB9 
X-CRM114-Status: GOOD (  27.87  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.211 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 KHOP_DYNAMIC           Relay looks like a dynamic address
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LMML <linux-media@vger.kernel.org>, Eric Anholt <eric@anholt.net>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stefan

Firstly a huge thank you for picking this up - it's been on my to-do
list for ages, and just hasn't made it to the top.

On Fri, 28 Jun 2019 at 09:06, Hans Verkuil <hverkuil@xs4all.nl> wrote:
>
> Hi Stefan,
>
> On 6/27/19 8:55 PM, Stefan Wahren wrote:
> > This is an attempt to help Dave Stevenson to get all the fixes and
> > improvements of the bcm2835-camera driver into mainline.
> >
> > Mostly i only polished the commit logs for upstream.
> >
> > The series based on the latest bugfix V2 of staging: bcm2835-camera: Resto=
> > re
> > return behavior of ctrl_set_bitrate().
>
> Thank you for working on this.
>
> Three high-level questions:
>
> 1) Can you post the output of 'v4l2-compliance -s' using the latest v4l2-compliance
>    from https://git.linuxtv.org/v4l-utils.git ?  I'm interested to see what the
>    status is of this driver w.r.t. the compliance tests.

Hi Hans.

Running it against the downstream driver (which should be nearly
identical based on this set of patches), 4.19, on a Pi4 I get
pi@raspberrypi:~/v4l-utils/utils/v4l2-compliance $ ./v4l2-compliance -s
v4l2-compliance SHA: b16f9e945d74aa552abdd6f873821cb77faaf13a, 32 bits

Compliance test for bm2835 mmal device /dev/video0:

Driver Info:
    Driver name      : bm2835 mmal
    Card type        : mmal service 16.1
    Bus info         : platform:bcm2835-v4l2
    Driver version   : 4.19.56
    Capabilities     : 0x85200005
        Video Capture
        Video Overlay
        Read/Write
        Streaming
        Extended Pix Format
        Device Capabilities
    Device Caps      : 0x05200005
        Video Capture
        Video Overlay
        Read/Write
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
    Standard Controls: 33 Private Controls: 0

Format ioctls (Input 0):
    test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
    test VIDIOC_G/S_PARM: OK
    test VIDIOC_G_FBUF: OK
    test VIDIOC_G_FMT: OK
    test VIDIOC_TRY_FMT: OK
    test VIDIOC_S_FMT: OK
    test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
    test Cropping: OK (Not Supported)
    test Composing: OK (Not Supported)
    test Scaling: OK

Codec ioctls (Input 0):
    test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
    test VIDIOC_G_ENC_INDEX: OK (Not Supported)
    test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)

Buffer ioctls (Input 0):
    test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
    test VIDIOC_EXPBUF: OK (Not Supported)
    test Requests: OK (Not Supported)

Test input 0:

Streaming ioctls:
    test read/write: OK
    test blocking wait: OK
            warn: v4l2-test-buffers.cpp(1429): Can free buffers even
if still mmap()ed
    test MMAP (no poll): OK
            warn: v4l2-test-buffers.cpp(1429): Can free buffers even
if still mmap()ed
    test MMAP (select): OK
            warn: v4l2-test-buffers.cpp(1429): Can free buffers even
if still mmap()ed
    test MMAP (epoll): OK
    test USERPTR (no poll): OK
    test USERPTR (select): OK
    test DMABUF (no poll): OK (Not Supported)
    test DMABUF (select): OK (Not Supported)

Total for bm2835 mmal device /dev/video0: 53, Succeeded: 53, Failed:
0, Warnings: 3

The warnings are because downstream we have an early version of
"media: vb2: Allow reqbufs(0) with "in use" MMAP buffers" that doesn't
set the flag to userspace. I need to revert that and apply the
accepted one (it's not a clean cherrypick though).

I do try and run compliance every few months because I'm aware that
you frequently add extra tests.

> 2) What is the status of this driver from your point of view? What is needed to
>    get it out of staging?

I think the main issue is the dependency on vchiq. I'm hoping that the
V4L2 side of this is now relatively clean, but it probably wants a
full review when someone has the time.

> 3) Out of curiosity: is this driver still valid for RPi4?

Yes, it is still valid. The imaging side hasn't changed significantly,
it just runs a bit faster.

  Dave

> Regards,
>
>         Hans
>
> >
> > Dave Stevenson (31):
> >   staging: bcm2835-camera: Ensure H264 header bytes get a sensible
> >     timestamp
> >   staging: bcm2835-camera: Check the error for REPEAT_SEQ_HEADER
> >   staging: bcm2835-camera: Replace spinlock protecting context_map with
> >     mutex
> >   staging: bcm2835-camera: Do not bulk receive from service thread
> >   staging: bcm2835-camera: Correctly denote key frames in encoded data
> >   staging: bcm2835-camera: Return early on errors
> >   staging: bcm2835-camera: Remove dead email addresses
> >   staging: bcm2835-camera: Fix comment style violations.
> >   staging: bcm2835-camera: Fix spacing around operators
> >   staging: bcm2835-camera: Reduce length of enum names
> >   staging: bcm2835-camera: Fix multiple line dereference errors
> >   staging: bcm2835-camera: Fix brace style issues.
> >   staging: bcm2835-camera: Fix missing lines between items
> >   staging: bcm2835-camera: Fix open parenthesis alignment
> >   staging: bcm2835-camera: Ensure all buffers are returned on disable
> >   staging: bcm2835-camera: Remove check of the number of buffers
> >     supplied
> >   staging: bcm2835-camera: Handle empty EOS buffers whilst streaming
> >   staging: bcm2835-camera: Set sequence number correctly
> >   staging: bcm2835-camera: Ensure timestamps never go backwards.
> >   staging: bcm2835-camera: Add multiple inclusion protection to headers
> >   staging: bcm2835-camera: Unify header inclusion defines
> >   staging: bcm2835-camera: Fix multiple assignments should be avoided
> >   staging: bcm2835-camera: Fix up mmal-parameters.h
> >   staging: bcm2835-camera: Use enums for max value in controls
> >   staging: bcm2835-camera: Correct V4L2_CID_COLORFX_CBCR behaviour
> >   staging: bcm2835-camera: Remove/amend some obsolete comments
> >   staging: mmal-vchiq: Avoid use of bool in structures
> >   staging: bcm2835-camera: Fix stride on RGB3/BGR3 formats
> >   staging: bcm2835-camera: Add sanity checks for queue_setup/CREATE_BUFS
> >   staging: bcm2835-camera: Set the field value within ach buffer
> >   staging: bcm2835-camera: Correct ctrl min/max/step/def to 64bit
> >
> >  .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 378 ++++++++++++----=
> > -----
> >  .../vc04_services/bcm2835-camera/bcm2835-camera.h  |  34 +-
> >  .../vc04_services/bcm2835-camera/controls.c        | 184 +++++-----
> >  .../vc04_services/bcm2835-camera/mmal-common.h     |  12 +-
> >  .../vc04_services/bcm2835-camera/mmal-encodings.h  |   9 +-
> >  .../vc04_services/bcm2835-camera/mmal-msg-common.h |   9 +-
> >  .../vc04_services/bcm2835-camera/mmal-msg-format.h | 104 +++---
> >  .../vc04_services/bcm2835-camera/mmal-msg-port.h   | 133 ++++----
> >  .../vc04_services/bcm2835-camera/mmal-msg.h        | 150 ++++----
> >  .../vc04_services/bcm2835-camera/mmal-parameters.h | 286 +++++++++-------
> >  .../vc04_services/bcm2835-camera/mmal-vchiq.c      | 159 +++++----
> >  .../vc04_services/bcm2835-camera/mmal-vchiq.h      |  22 +-
> >  12 files changed, 826 insertions(+), 654 deletions(-)
> >
> > =2D-
> > 2.7.4
> >
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
