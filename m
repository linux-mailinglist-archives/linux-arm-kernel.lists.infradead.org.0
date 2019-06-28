Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EC7595A4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 10:07:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KqsdVNXw6UuKYtcAfD8/3Cs8vUwxZTqX6IC+nuKZqS0=; b=k131DBnGlJu5QE
	EdusucNQ07qjX+ThL2ihogwE+bipe9oUrCCESiiOv0/nBAqrmG2h3Rt9oz5i2e1Lpj1KezFbNlDIu
	UjUan4v1baTysibRSQSoepjUr1ovvwfUDyBV30uOlMAdyQUoDzbqtLrj7MHA2JMzIRpx/Lr1+bW/D
	27jsMINvchrH+vzhdE2ZmcAylypvzNy6tS4jeuGMkm9H1LWUps2Yx6SHKH2fLHAAr01lcTit1PvKa
	8wloMz9Ma0K1COwnMTGsF6PTGnR9fP88o0ZJMdY1EiOOWGnUwmLlgLhEuNb+jYxigShAp/wkAi7jo
	myngGPPrW404b3BMJe2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgluR-0004aG-4d; Fri, 28 Jun 2019 08:07:03 +0000
Received: from lb2-smtp-cloud9.xs4all.net ([194.109.24.26])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgluC-0004YK-5w; Fri, 28 Jun 2019 08:06:50 +0000
Received: from [192.168.2.10] ([46.9.252.75])
 by smtp-cloud9.xs4all.net with ESMTPA
 id gltthk77qSfvXgltwhQpwi; Fri, 28 Jun 2019 10:06:40 +0200
Subject: Re: [PATCH 00/31] staging: bcm2835-camera: Improvements
To: Stefan Wahren <wahrenst@gmx.net>, Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <f4492041-2587-eedb-8ae5-ae610e90fde2@xs4all.nl>
Date: Fri, 28 Jun 2019 10:06:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
Content-Language: en-US
X-CMAE-Envelope: MS4wfH5mWIQQ+78Ft5mokEb9dqgknieKCSU+WaLX+MeaWiZ5p3zjqcmUvQBpisGm3LIy6d4crj85Wc9aM3vkZWInMAGi+qqQ4uW8d3ZIqHCHLGX/KnSPsl9M
 vAduhvd2ME1dFsHoOmGryN8elr+I0oY5IdYFYmb9o1F4RuQtWM9z95P5jqkeplwDOtgSNMO23vOd4BK4OfsV8Z+D6V0CzES/Og6mI5xg+9j7njQxJ7zMGsaa
 6WkeXWbDSG8GPAmmgc7cjVbHpJMQaJ1WI29CzciOMfT8X2rKYrSYz6XMAqr1Vp5XZO+XbPemkoSC7UMlrOPKNcgbo7brPq3xN6giJSx+BDH8OeRgNhAtSPQI
 1u86xWxF2EPmMYnFIMdPYJypdPPSV05VUtctFPpEFW6XdV3mn7iDil/dTB9CZTOKBptAkqXpbjJqr//V8bCN2sHbMWyBqMXxRV1cBNsQlVTB1CFWZEccgNRS
 VFxkIpiet0MUVI7p
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_010648_385115_96A554FC 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.26 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stefan,

On 6/27/19 8:55 PM, Stefan Wahren wrote:
> This is an attempt to help Dave Stevenson to get all the fixes and
> improvements of the bcm2835-camera driver into mainline.
> 
> Mostly i only polished the commit logs for upstream.
> 
> The series based on the latest bugfix V2 of staging: bcm2835-camera: Resto=
> re
> return behavior of ctrl_set_bitrate().

Thank you for working on this.

Three high-level questions:

1) Can you post the output of 'v4l2-compliance -s' using the latest v4l2-compliance
   from https://git.linuxtv.org/v4l-utils.git ?  I'm interested to see what the
   status is of this driver w.r.t. the compliance tests.

2) What is the status of this driver from your point of view? What is needed to
   get it out of staging?

3) Out of curiosity: is this driver still valid for RPi4?

Regards,

	Hans

> 
> Dave Stevenson (31):
>   staging: bcm2835-camera: Ensure H264 header bytes get a sensible
>     timestamp
>   staging: bcm2835-camera: Check the error for REPEAT_SEQ_HEADER
>   staging: bcm2835-camera: Replace spinlock protecting context_map with
>     mutex
>   staging: bcm2835-camera: Do not bulk receive from service thread
>   staging: bcm2835-camera: Correctly denote key frames in encoded data
>   staging: bcm2835-camera: Return early on errors
>   staging: bcm2835-camera: Remove dead email addresses
>   staging: bcm2835-camera: Fix comment style violations.
>   staging: bcm2835-camera: Fix spacing around operators
>   staging: bcm2835-camera: Reduce length of enum names
>   staging: bcm2835-camera: Fix multiple line dereference errors
>   staging: bcm2835-camera: Fix brace style issues.
>   staging: bcm2835-camera: Fix missing lines between items
>   staging: bcm2835-camera: Fix open parenthesis alignment
>   staging: bcm2835-camera: Ensure all buffers are returned on disable
>   staging: bcm2835-camera: Remove check of the number of buffers
>     supplied
>   staging: bcm2835-camera: Handle empty EOS buffers whilst streaming
>   staging: bcm2835-camera: Set sequence number correctly
>   staging: bcm2835-camera: Ensure timestamps never go backwards.
>   staging: bcm2835-camera: Add multiple inclusion protection to headers
>   staging: bcm2835-camera: Unify header inclusion defines
>   staging: bcm2835-camera: Fix multiple assignments should be avoided
>   staging: bcm2835-camera: Fix up mmal-parameters.h
>   staging: bcm2835-camera: Use enums for max value in controls
>   staging: bcm2835-camera: Correct V4L2_CID_COLORFX_CBCR behaviour
>   staging: bcm2835-camera: Remove/amend some obsolete comments
>   staging: mmal-vchiq: Avoid use of bool in structures
>   staging: bcm2835-camera: Fix stride on RGB3/BGR3 formats
>   staging: bcm2835-camera: Add sanity checks for queue_setup/CREATE_BUFS
>   staging: bcm2835-camera: Set the field value within ach buffer
>   staging: bcm2835-camera: Correct ctrl min/max/step/def to 64bit
> 
>  .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 378 ++++++++++++----=
> -----
>  .../vc04_services/bcm2835-camera/bcm2835-camera.h  |  34 +-
>  .../vc04_services/bcm2835-camera/controls.c        | 184 +++++-----
>  .../vc04_services/bcm2835-camera/mmal-common.h     |  12 +-
>  .../vc04_services/bcm2835-camera/mmal-encodings.h  |   9 +-
>  .../vc04_services/bcm2835-camera/mmal-msg-common.h |   9 +-
>  .../vc04_services/bcm2835-camera/mmal-msg-format.h | 104 +++---
>  .../vc04_services/bcm2835-camera/mmal-msg-port.h   | 133 ++++----
>  .../vc04_services/bcm2835-camera/mmal-msg.h        | 150 ++++----
>  .../vc04_services/bcm2835-camera/mmal-parameters.h | 286 +++++++++-------
>  .../vc04_services/bcm2835-camera/mmal-vchiq.c      | 159 +++++----
>  .../vc04_services/bcm2835-camera/mmal-vchiq.h      |  22 +-
>  12 files changed, 826 insertions(+), 654 deletions(-)
> 
> =2D-
> 2.7.4
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
