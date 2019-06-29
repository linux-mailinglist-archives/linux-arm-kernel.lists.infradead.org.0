Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF775AAD8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 14:21:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=EalGf49ajeTNPVPSiuZ1bIYq5mrjalxSAYgorNvRMgY=; b=lyo
	2inrMWCJgeIvEgVBip4dQKM2A5cVuVlXpLuZcQDALCqoQcK9x7yWNkZxj8MR+kcPg0S9VCPPczEI/
	0hoUpekKQ/6w5RdxGOxeA95NaLFB9WUM6VDhlPR9RavsCjp4syKTom97WVovuPmfUs4V6KppwajPa
	jtCecfPgVvfl7/PSm4G5WN+MbBNHttjfV4ofso5OA+g8Bv2a1/VQlbVVnLzqPsCBlOuWdUSKveyJS
	qb2byeTImLDGtk1LAUjJ6VslmkR6LPIkEKUsNlO88iMznois814ClRHbhpHJaeFd6bRKOb5xQX9Na
	WoydCiFAX7XOE4d/eM4VbYuYljQe00g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhCLz-0005br-3N; Sat, 29 Jun 2019 12:21:15 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhCKj-0003e5-4H
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Jun 2019 12:19:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561810795;
 bh=IgtQslhkTRAPZTdIBjC2QqunwNN90a5/Hkx+p3JH1so=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=deiaHMErsid+2SonCEdxB5ltpZ7xn/QwJIqkATB52OGwpcBuVaJzlqztawCng/cyv
 hBRUAMw2HxTA92FFCC6mBKsZJeQHXdQ2JBjzyMQGRMBuD0dKLzLlMtZ/fbwu0QzUgC
 cPiQh4qkKk8QXsKEp2PbS52xP2pvKP1FH/PWsoog=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0LwJko-1id2261skA-0185Vs; Sat, 29 Jun 2019 14:14:04 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 00/29] staging: bcm2835-camera: Improvements
Date: Sat, 29 Jun 2019 14:13:15 +0200
Message-Id: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:P7U/wtS7v06WxFnAVxhWHIE9GlgDT9jYUUoPl+qegISrELkH2qI
 TLdd4N26rGGApPf6GhIj8Reio5vXmnEl7JHHKd/6fuS0rh8keHsidukJBioOLPPm+XRkh/s
 hMUEk34chSkhS4eoZteSeXyZgi0+tjBVfoGf4PIzUCEnCxeEYZt/J0LHUnNQUKMzb8p397w
 cftwDolL+MHP58LV5OI0Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Qeb78S0td/Q=:ng+TCkvsBdMMvn25EyfzYu
 CJP0onZXuVqCTwq1NHd7hupneShrCmMuffNdRbkoURnUxPwJmv6YToGeSHtazOsrSI1DabHGP
 0CnFPkVywrhC4+25qdks6XMH8zZ49pfDcksClE4k5SOZz6qeJHTqkgf5F69i/nuichH8FKZEk
 B7ATr27hEgcRhTcgpuUO11jSxKJotVT8cfbkIG+/XqDR5rtCDBLBlkC8R6XDxfSSjpYxWXF7f
 8w75yvZCsFYfQWYI5EfhU7OszxtDYIVV9UCnEqvApyRjjunbnF/i0AltaxfZMTIg/WTuajGun
 1WHMob6UXC9+SYcsLI+EIq1JzyenkbuQf1O4awsZHL+UthzcU1D7xbXlwkmuygulaHzLE8zRe
 Pb0ZkTG79NvHlArtLQ7cQtCOKiyFmLoNFx4mHxJaGW5z4o/3yB87hnst9CmnaM9tCGnKM4tDS
 LZKhb5RwhZ1ukdhHJA+w9Tjf7MWa8Bge99r/XMnojvNcBc4po+q0NNi3ltzt5yN33OthHAAil
 fBjJsdc2VeHvQttsUw+y0ZVdrJbh6Uut0veNzlln1An+RISrFpsATLlWvq/6lckyzo71yShxq
 xOf0pBwA0wPXnb3r1mIUO5kz3fxIMF+1JAsoxkL0fCtnB06LwveU/I+Kr3DnlVCo6K6ND9Qai
 pnzLsBQvnY0mwm2bEqkDxmssWrR0cW9erjNobg0UHJD8+JFB/Wvcrvial2L5xnkC64UTamA+/
 NvSHZG8WGxwzhV3J34e2JrdCDgaNvw6M9pdQIMlBDVT+B3IqcTCJ2xejGlZ7jl8XPNKvPfpj0
 neSkYr6b+HGlGrsp+kkagF3iVQn81W3zgGtReaS3UczaCTnsFFjEogL8ZrhjHf659SkNtIK4t
 A9eLXwMsp9Qve5NwzSWzwByvUpBlfvwjA47XTH7HbNyWTE+YzXLtYhycYTFigKlW/LNtM99xC
 T26CyP0aEklKumzViwcqLFSBi5N2CiYAUdeIlRsKtOyr+Yxl2CqU3tn/Xb6pLYi9dE3mjwWXT
 bflOIlRhcQyhLk2rl0QYNP4sBVIPOQQFEpuqLcDWEUrSZji0kU0I0J7elU0ogzx6TGtGRGKC2
 uIwDQCYdZvE2E4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_051957_478481_06471E87 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devel@driverdev.osuosl.org, Stefan Wahren <wahrenst@gmx.net>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an attempt to help Dave Stevenson to get all the fixes and
improvements of the bcm2835-camera driver into mainline.

Mostly i only polished the commit logs for upstream.

The series based on the latest bugfix V2 of staging: bcm2835-camera: Restore
return behavior of ctrl_set_bitrate().

Changes in V2:
- add my own SOB
- drop H264 timestamp patches (1,19 from V1) from series
- addressed Dan's and Hans' comments in patch 6, 29 and 30

Dave Stevenson (29):
  staging: bcm2835-camera: Check the error for REPEAT_SEQ_HEADER
  staging: bcm2835-camera: Replace spinlock protecting context_map with
    mutex
  staging: bcm2835-camera: Do not bulk receive from service thread
  staging: bcm2835-camera: Correctly denote key frames in encoded data
  staging: bcm2835-camera: Return early on errors
  staging: bcm2835-camera: Remove dead email addresses
  staging: bcm2835-camera: Fix comment style violations.
  staging: bcm2835-camera: Fix spacing around operators
  staging: bcm2835-camera: Reduce length of enum names
  staging: bcm2835-camera: Fix multiple line dereference errors
  staging: bcm2835-camera: Fix brace style issues.
  staging: bcm2835-camera: Fix missing lines between items
  staging: bcm2835-camera: Fix open parenthesis alignment
  staging: bcm2835-camera: Ensure all buffers are returned on disable
  staging: bcm2835-camera: Remove check of the number of buffers
    supplied
  staging: bcm2835-camera: Handle empty EOS buffers whilst streaming
  staging: bcm2835-camera: Set sequence number correctly
  staging: bcm2835-camera: Add multiple inclusion protection to headers
  staging: bcm2835-camera: Unify header inclusion defines
  staging: bcm2835-camera: Fix multiple assignments should be avoided
  staging: bcm2835-camera: Fix up mmal-parameters.h
  staging: bcm2835-camera: Use enums for max value in controls
  staging: bcm2835-camera: Correct V4L2_CID_COLORFX_CBCR behaviour
  staging: bcm2835-camera: Remove/amend some obsolete comments
  staging: mmal-vchiq: Avoid use of bool in structures
  staging: bcm2835-camera: Fix stride on RGB3/BGR3 formats
  staging: bcm2835-camera: Add sanity checks for queue_setup/CREATE_BUFS
  staging: bcm2835-camera: Set the field value within each buffer
  staging: bcm2835-camera: Correct ctrl min/max/step/def to 64bit

 .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 366 ++++++++++++---------
 .../vc04_services/bcm2835-camera/bcm2835-camera.h  |  32 +-
 .../vc04_services/bcm2835-camera/controls.c        | 184 +++++------
 .../vc04_services/bcm2835-camera/mmal-common.h     |  12 +-
 .../vc04_services/bcm2835-camera/mmal-encodings.h  |   9 +-
 .../vc04_services/bcm2835-camera/mmal-msg-common.h |   9 +-
 .../vc04_services/bcm2835-camera/mmal-msg-format.h | 104 +++---
 .../vc04_services/bcm2835-camera/mmal-msg-port.h   | 133 ++++----
 .../vc04_services/bcm2835-camera/mmal-msg.h        | 150 +++++----
 .../vc04_services/bcm2835-camera/mmal-parameters.h | 286 +++++++++-------
 .../vc04_services/bcm2835-camera/mmal-vchiq.c      | 159 +++++----
 .../vc04_services/bcm2835-camera/mmal-vchiq.h      |  22 +-
 12 files changed, 809 insertions(+), 657 deletions(-)

--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
