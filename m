Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC76558A8F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 21:01:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0CjfyfHNUgebZBVzI5L49YLUqarlMuypX/XeikPB960=; b=NpT
	xaqFBwmy+7Vh1gATv5TFD7nBnSJGTnDQuVIFd47jcaOVh0PQzvTbZznOmy66AhGjdeWBf880EBZbR
	Ku9B/FqdbKjWIaUjkQffNJVjuUyix5rJjSeWvy7Ps2ATkrXAi83kpWxhmXBeG4lWYYrQPfad/E7uG
	JZbF1ODZ0CyRDZfhCxcbJLwLb2N9urBsGKRzWiTWUYlxpgRmlRWfCsIeHEA7SyhSH07+AunxFIFQK
	zTd9480cb8zthBBswMErKZFpvX0/N/v/jrxD5nnbEMQbkwcikh/kiEOZzUwKyROYvS4/66qe564rI
	NQ78+EFXhxbYg8WG5v1RIUJWu/u/diw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgZeS-0006qI-7D; Thu, 27 Jun 2019 19:01:44 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZZu-0002Ri-RW; Thu, 27 Jun 2019 18:57:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561661808;
 bh=DXyEL84Fhwic9IwOQd4ecx8Bzy/Ux/PAo++faZcFMWg=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=Nr8i+5iIX0Ss7odRtqbnO3Z582pC9O5maYlaVwiPk9aRQ5fe4oRccCmtLNheW+pc5
 FpEm+t3IM0NaSoFpBSBqVKDp2yAqh1GUq/aabo1nwbTe3I60g514EQcbduxmkhCtLN
 upHN8PEl74Irl4ZKh70kkXcTBaLNyiJTU4awV/jk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx002 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0MN0jA-1heMeG1kE4-006bb9; Thu, 27 Jun 2019 20:56:48 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 00/31] staging: bcm2835-camera: Improvements
Date: Thu, 27 Jun 2019 20:55:57 +0200
Message-Id: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:8Eqgko+EnTeRwglBG9QqHkcenf6ctqYS1XJThx9/cgBmPM0yjgc
 bJSV21uSZaYRtlnkLtLj70aZ89Xz39nyheGu26ma0Wn+TVzR+Zjbx6RDSNth3ySyIRhxVUn
 ho8Nd87tVSLtZZTc04JZUzTJSiJHbHgn/nINCoLDWBQoqSZ3wdzutUemH61423vFDPOL6at
 Ouw8rkfdKqrNqnWwlSGkg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:aYEhy3KH+30=:5ImWLnoveFbbB3DwxG2Otx
 FYq7BDwVzhhJfaOy82+YzNNFYdIRA4Z3hmt9On9UK0UXtRz58UdtEmkDVpUwxkQ23NDi/8kJX
 f4osxGlARFIwXFzCSWXnTisyYKbMFseZsFTUC7R9XKIEZXenM4y3WFG3P3LpOGlehZoVpJ1qK
 ZiabUM+8C9ZzKDsPOwPuSCiGbChPstvbxlCOdu1mEX3rL5hv7X07ii+D9l96inhYqllRcmSFh
 WzmYTbc/bn2Ly2D0RVQMFfbhf8MqrX5cJNpm08iu5ome4drsIDVz3Jyow0GC+GYyeAZaOU0fG
 NK6bXmJIirKbHpz36QSC3y2K0gGDiu0o4bDCGM5Q5ahlm/Vjl+p8fZJ05VvEl113AK3LhTIxS
 zuuAuB6sWirgkYZVoRvB3aC/31y0wmWZ02XRX3eFDz0isPT3Stk2Rf3giN4G3LmboZ51XS2Df
 GsZtVqOylJNVgDktOR+eOrllrZWBPN2zwbX1JImkeJR9n9+bXArLvcVsKvAIfe+/OgM0X9Ixs
 z0exYBANnqgF5oIEL8EvFwICi+Z944+4Lxg1OAscbNQR02s0hLbsIWQOACuD4g6q0gcAfw/ZB
 eAwLrtM7efjD4JFcjwbIWuhQXMnmkuI+yjAV1pyfSHJ8xVefEaDBGD118EC3wOQB3RQMcH1ho
 b4PDd79nLIyFlxJkSdGGl7NJzDkCtT78LMCfx6jv1xtq50YXE0mK5BTR/GWiPaJBMcHT9CDQj
 0NK5Fk8zGp2u8l5CYAu05MTXpVn7tvKosXrD/1xvTyoWjzf2TkonHdlKFi3nEeq+XTl22pwE0
 37+5me83vvdLtOoIDarC3hVgHb2G3VNVNIDeGvlYNhOdhrwNkaCHWN68+FH/Zzb1UvxFyOfhx
 j1vHI0spt7DOp/PtjfUPQBsmF/nIRWLMweggxB9P/bY3yuak4gGtgWUQl7ZzzWnR8rgvIvT5k
 dABQmyDgwyepl/UulX3zv7+upI+vN7N7D+Fed4r/8Re/66TAudvb0L2PxPLDD7i+5eFAlYsZD
 DXkn7bh+bcDYHnVq5xGvnTH3hjFyw9FF3j5pyIxHQ5d/7zDsAC+EQ+deB8FTfcj8RqPiIwo6s
 s/RRnNOQ6UhMcA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_115703_180983_62B1ECCB 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Dave Stevenson (31):
  staging: bcm2835-camera: Ensure H264 header bytes get a sensible
    timestamp
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
  staging: bcm2835-camera: Ensure timestamps never go backwards.
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
  staging: bcm2835-camera: Set the field value within ach buffer
  staging: bcm2835-camera: Correct ctrl min/max/step/def to 64bit

 .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 378 ++++++++++++---------
 .../vc04_services/bcm2835-camera/bcm2835-camera.h  |  34 +-
 .../vc04_services/bcm2835-camera/controls.c        | 184 +++++-----
 .../vc04_services/bcm2835-camera/mmal-common.h     |  12 +-
 .../vc04_services/bcm2835-camera/mmal-encodings.h  |   9 +-
 .../vc04_services/bcm2835-camera/mmal-msg-common.h |   9 +-
 .../vc04_services/bcm2835-camera/mmal-msg-format.h | 104 +++---
 .../vc04_services/bcm2835-camera/mmal-msg-port.h   | 133 ++++----
 .../vc04_services/bcm2835-camera/mmal-msg.h        | 150 ++++----
 .../vc04_services/bcm2835-camera/mmal-parameters.h | 286 +++++++++-------
 .../vc04_services/bcm2835-camera/mmal-vchiq.c      | 159 +++++----
 .../vc04_services/bcm2835-camera/mmal-vchiq.h      |  22 +-
 12 files changed, 826 insertions(+), 654 deletions(-)

--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
