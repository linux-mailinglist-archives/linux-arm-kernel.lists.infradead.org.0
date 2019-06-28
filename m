Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A58259CD5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 15:18:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YzQ6nFxb+uvjK//hL8hlVnfSDxeYQWuydcSJZXcXGEk=; b=PIT6e5cwLPwykB
	urKO3yzQgu98pWiTs+xWg2OzDiZ1SBzerLYOFHyVuzxVGX0WnVpLk9E2Ev8YivHRsyjJV2KDLjgzy
	jR0OLXxl+bmEUCFhiRV9io+5r1N+XrlMAhhhc1dBGJPRuMXpSzVFPTjcnhje0TLbEuO/2NqkzA26y
	2S2sgcj+2Ez4X6Mmc7Nrt92gO/pK7KBnMaovddFELwRVaIZ8ilVfZ88ErHa5u7xbq/B8gvKO9gyAW
	lyfPv5Z1yqVEFF+eizsR/NqTDkf07C74HXn6tLNEYtlvoO4FZX6wrKwpXjq5n2bDOgJbK2p81kH2R
	VcXkY2qZjEcEwptahxcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgqmD-0000SK-NN; Fri, 28 Jun 2019 13:18:53 +0000
Received: from [186.213.242.156] (helo=coco.lan)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hgqlx-0000R3-2b; Fri, 28 Jun 2019 13:18:37 +0000
Date: Fri, 28 Jun 2019 10:18:32 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Hans Verkuil <hverkuil@xs4all.nl>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 00/31] staging: bcm2835-camera: Improvements
Message-ID: <20190628101832.76403533@coco.lan>
In-Reply-To: <a276361b-a111-aa2e-ce9b-37ad2c1646dc@xs4all.nl>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
 <a276361b-a111-aa2e-ce9b-37ad2c1646dc@xs4all.nl>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Eric Anholt <eric@anholt.net>,
 Stefan Wahren <wahrenst@gmx.net>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Fri, 28 Jun 2019 15:13:03 +0200
Hans Verkuil <hverkuil@xs4all.nl> escreveu:

> On 6/27/19 8:55 PM, Stefan Wahren wrote:
> > This is an attempt to help Dave Stevenson to get all the fixes and
> > improvements of the bcm2835-camera driver into mainline.
> > 
> > Mostly i only polished the commit logs for upstream.
> > 
> > The series based on the latest bugfix V2 of staging: bcm2835-camera: Resto=
> > re
> > return behavior of ctrl_set_bitrate().
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
> 
> ach -> each
> 
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
> This series looks good. Others made some comments that should be addressed,
> and the H264 changes should, I think, be dealt with in a separate patch
> series.
> 
> I guess this should go in via Greg?

Works for me. I won't be able to handle this before the merge window,
as I'll be on PTO next week.

> When you make a v2 (excluding the H264
> changes, and incorporating Dan's comments), then you can add my:
> 
> Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>

Greg, once the issues get fixed - and if you want to pick this for this
merge window, feel fee to pick with my ack:

Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>

Otherwise, if too late for this merge window, It is probably better to
apply those against the linux-media tree after -rc1.

Thanks,
Mauro

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
