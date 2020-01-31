Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E1A14EAF5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 11:39:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B8EOEurpEeRLazxMICLKDCc622J04yzUxGHklOaZadY=; b=paXSHX5YPCdD5h
	OP5B78VoEh/761p0RWdhKoQPxaWOUHrznY5tnHNPbIUyJlr238i+VMhqJWAqIbtpbue+Wd+Z4vGgH
	TyShySKHqsUJRaDHvgMhWYbWE2sYsHMXvn6lL9nDIJUMvzXzOQgnJai9L2svp4MYMe8rHcBDoeLkl
	woo7FDVhtEcdb1rIQkWOxvqxPnxk7uEnVLlhcjMjZYxFolfrGMDp917qA6QP8DUhkwH78rp6Ah9Ce
	CY/zSmlfayRy/OaN4dZaMVVKMTHAlmvZtWkE/lB6ygqx2dUymIUzX1TB+Dk241JnDnrGl1XwN2pd7
	ScLLviUGatZ9c1+f3cEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixTiG-0003lb-MF; Fri, 31 Jan 2020 10:39:48 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixThb-0003TX-P5; Fri, 31 Jan 2020 10:39:09 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 886E3AFF6;
 Fri, 31 Jan 2020 10:39:04 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 00/21] staging: vc04_services: suspend/resume cleanup
Date: Fri, 31 Jan 2020 11:38:16 +0100
Message-Id: <20200131103836.14312-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_023907_964799_A25D958F 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While in the process of preparing vchiq to support the Raspberry Pi 4, I
stumbled upon a bunch of dead code in it. Which this series deletes.

Ultimately the idea is to clean up vchiq_bcm2835_arm.c up to a point
where it'll be easy to join it with vchiq_arm.c, which IIRC the TODO
file states, should be the sole responsible for platform code.

With this we'll be able to introduce RPi4's functionality in a cleaner
way.

Overall it's a 500 line clean up, I tried to keep the patches as small and
manageable as possible, but I'd be happy to squash them if you prefer it
that way.

This was tested on a RPi3-B using the camera and HDMI audio and
vchiq_test app.

---

Changes since v1:
 - Reordered patches so as to have all of the suspend/resume state
   deletion together
 - Fix bug found by kbuild test robot
 - move "staging: vc04_services: Get rid of vc_suspend_state in struct
   vchiq_arm_state" into "staging: vc04_services: Get rid of unused
   suspend/resume states"

Nicolas Saenz Julienne (21):
  staging: vc04_services: Remove unused variables in struct
    vchiq_arm_state
  staging: vc04_services: Get rid of resume_blocked in struct
    vchiq_arm_state
  staging: vc04_services: Get rid of resume_blocker completion in struct
    vchiq_arm_state
  staging: vc04_services: get rid of blocked_blocker completion in
    struct vchiq_arm_state
  staging: vc04_services: Delete blocked_count in struct vchiq_arm_state
  staging: vc04_services: get rid of vchiq_platform_use_suspend_timer()
  staging: vc04_services: Get rid of vchiq_platform_paused/resumed()
  staging: vc04_services: Get rid of vchiq_platform_suspend/resume()
  staging: vc04_services: Get rid of vchiq_platform_videocore_wanted()
  staging: vc04_services: Get rid of vchiq_platform_handle_timeout()
  staging: vc04_services: Get rid of vchiq_on_remote_use_active()
  staging: vc04_services: Get rid of vchiq_arm_vcsuspend()
  staging: vc04_services: Get rid of vchiq_check_resume()
  staging: vc04_services: Delete vc_suspend_complete completion
  staging: vc04_services: Get rid of unused suspend/resume states
  staging: vc04_services: Get of even more suspend/resume states
  staging: vc04_services: Get rid of the rest of suspend/resume state
    handling
  staging: vc04_services: Get rid of USE_TYPE_SERVICE_NO_RESUME
  staging: vc04_services: Delete vchiq_platform_check_suspend()
  staging: vc04_services: Get rid of vchiq_arm_vcresume()'s signature
  staging: vc04_services: vchiq_arm: Get rid of unused defines

 .../interface/vchiq_arm/vchiq_2835_arm.c      |  43 --
 .../interface/vchiq_arm/vchiq_arm.c           | 495 +-----------------
 .../interface/vchiq_arm/vchiq_arm.h           |  76 ---
 .../interface/vchiq_arm/vchiq_core.c          |  16 -
 .../interface/vchiq_arm/vchiq_core.h          |  15 -
 5 files changed, 9 insertions(+), 636 deletions(-)

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
