Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4DF59CB7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 15:13:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z24kzIQm34SHDmGN3jDC/kr0sc4CVf8Ky32eK6MTwHo=; b=cKUo4OzvDA5BiZ
	F4sbsbwlD2oTHhWoEEHkhlRA6rBFwXlHebMYwI+MBlIitVlwuZnLB0UvcRzu+Az64WHCGPoIa+Ya6
	gqMMwiBRQ6hmQd8F1NJWv/ZsBhh18DgXdnfuZyDG96uT6M7RFlLfYfY/lOuDoDGcbLYCFa28DxvB9
	COZoqq2YWZSyQxWtuLkm5DKb0XsDLS3yTIxV0eDiw8qUcmv1eiSHI2lLh0gKpDZJL1KnJpBvMBqKR
	PW/RUgU4zYsVm70UjcMX2cqmuhLesoxO7rweKbE2iDvS8EjNedT4K27Rnn99u0McuFX1/ovcHyr4c
	S5Jx023gzsymV52ozL+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgqgy-0006zY-Rd; Fri, 28 Jun 2019 13:13:28 +0000
Received: from lb1-smtp-cloud9.xs4all.net ([194.109.24.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgqgi-0006yp-Qg; Fri, 28 Jun 2019 13:13:14 +0000
Received: from [192.168.2.10] ([46.9.252.75])
 by smtp-cloud9.xs4all.net with ESMTPA
 id gqgahmB0KSfvXgqgdhS3hH; Fri, 28 Jun 2019 15:13:07 +0200
Subject: Re: [PATCH 00/31] staging: bcm2835-camera: Improvements
To: Stefan Wahren <wahrenst@gmx.net>, Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <a276361b-a111-aa2e-ce9b-37ad2c1646dc@xs4all.nl>
Date: Fri, 28 Jun 2019 15:13:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
Content-Language: en-US
X-CMAE-Envelope: MS4wfPX0wKdI6YJjmGSGjyolqCwjE4HsrSV3REhpkyUvMFCR4n8JtR3FopzDG9Y912VSq0dqocUiM1X1dMWc4BD0rWXi160fiXbAAdQM/8xoSwg+k2NqBQbd
 gbmwYyYuP2QVFrMLPDFbpXemgFBds82dLVpV8IXZC0s2cdUwWplyIgkQcUsrY7/QnoRuXcvcQW2qeX9mv4P686/udBCY4t4COT1iB2sbHZpX5FGpRH+XBpal
 mwqWp5E2OIvTnE1ReXAe9GfKZeH0AG6W+iVsrnMp5crLIpgQlZDmtBHrYHI9BmVv/Ap6ozlNGcrwt3a2I7HXJzXSh39tUz+vDmL3zaGjFfJm7T/KoM1Ov2U2
 zHHyxHhBIY4EbxG+szAt93uc/Ci3bFwUQb3wPubFbnbesPE4VzxuR+nYjj26odnOuZnobMNrqD6IDlQgpp6pj3nNhKeLR4xIShGog2vt7YXIC+MQTslz2ns1
 VODv9BhcqN1uAM6V
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_061313_030986_5F8C9AF1 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.22 listed in list.dnswl.org]
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

On 6/27/19 8:55 PM, Stefan Wahren wrote:
> This is an attempt to help Dave Stevenson to get all the fixes and
> improvements of the bcm2835-camera driver into mainline.
> 
> Mostly i only polished the commit logs for upstream.
> 
> The series based on the latest bugfix V2 of staging: bcm2835-camera: Resto=
> re
> return behavior of ctrl_set_bitrate().
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

ach -> each

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

This series looks good. Others made some comments that should be addressed,
and the H264 changes should, I think, be dealt with in a separate patch
series.

I guess this should go in via Greg? When you make a v2 (excluding the H264
changes, and incorporating Dan's comments), then you can add my:

Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>

Thanks!

	Hans

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
