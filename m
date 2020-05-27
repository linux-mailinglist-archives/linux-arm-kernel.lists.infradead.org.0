Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D36A91E40D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 13:56:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GOYA0O0/2S4DKvDiQBpN9/RZjvFyiUzRINTzuZcx0o0=; b=sPAY7E/rb8IlsF
	yDMfBbTIcu06f9MbGAn0E6d3oSh0yjB8OLO7ifZd4OcsN2+hDE1MIqUW7ieQaMKj1E8ScAAgmbs5P
	0cHX9LGMiwe30rvDyCkZt7QT/hVFYX/1MxgAgXGFquvFznm1+tlCRxFGKmvevaA5oBD7E1S2pWQGS
	PAS7qW24d+wbAvjaDo14mCTYufO/R83sfBN0utTC0bJqIcKfzRANgCVXupljR36MTPelSzwLJSRwS
	9Y1toqBhNEfQPUoY+KgXJHDIVN68uoIp3c0lvPj/j/eOElfDUBnwsiZ74LqU2XMaDlvJWQevSJ7l2
	STCr9Re8Zve/tkUvY1Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdufA-0001uB-It; Wed, 27 May 2020 11:56:00 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdudV-0006Xk-Mx; Wed, 27 May 2020 11:54:22 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 10013AC5B;
 Wed, 27 May 2020 11:54:15 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: [RFC 00/50] staging: vchiq: Getting rid of the vchi/vchiq split
Date: Wed, 27 May 2020 13:53:05 +0200
Message-Id: <20200527115400.31391-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045418_061464_4A106B04 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org, kernel-list@raspberrypi.com,
 linux-kernel@vger.kernel.org, laurent.pinchart@ideasonboard.com,
 gregkh@linuxfoundation.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

vchi acts as a mid layer between vchiq and its kernel services, while
arguably providing little to no benefit: half of the functions exposed
are a 1:1 copy of vchiq's, and the rest provide some functionality which
can be easly integrated into vchiq without all the churn. Moreover it
has been found in the past as a blockage to further fixes in vchiq as
every change needed its vchi counterpart, if even possible.

Hence this series, which merges all vchi functionality into vchiq and
provies a simpler and more concise API to services.

I'm aware that kernel's vchi API tries to mimic its userspace
counterpart (or vice versa). Obviously this breaks the parity, but I
don't think it's a sane goal to have. There is little sense or gain from
it, and adds impossible constraints to upstreaming the driver.

Overall the series falls short of removing 1500 lines of code, which is
pretty neat on itself.

So far it has been tested trough bcm2835-camera, audio and vchiq-test. I
can't do much about vc-sm-cma for now, but the changes are done in a way
that shouldn't affect its behaviour.

Note that the series builds up on RPi/Laurent's camera support series[1]
and can't yet be merged. We'd have to coordinate here. We could either
wait for the vc_sm_cma rework (if it's not going to take months and
months to finish), or factor out all the vc-sm-cma stuff, merge that into
the downstream kernel and take the rest of the series on top of
Laurent's mmal-vchiq changes.

Regards,
Nicolas

[1] https://lwn.net/ml/linux-media/20200504092611.9798-1-laurent.pinchart@ideasonboard.com/

---

Nicolas Saenz Julienne (50):
  staging: vchi: Get rid of vchi_service_destroy()
  staging: vchi: Get rid of vchi_queue_user_message()
  staging: vchiq: Move copy callback handling into vchiq
  staging: vchi: Merge vchi_msg_queue() into vchi_queue_kernel_message()
  staging: vchi: Get rid of vchi_service_set_option()
  staging: vchi: Get rid of vchiq_status_to_vchi()
  staging: vchi: Get rid of not implemented function declarations
  staging: vchi: Get rid of C++ guards
  staging: vchiq: move vchiq_release_message() into vchiq
  staging: vchiq: Get rid of VCHIQ_SERVICE_OPENEND callback reason
  staging: vchi: Get rid of all useless callback reasons
  staging: vchi: Get rid of vchi_msg_peek()
  staging: vchi: Get rid of struct vchi_instance_handle
  staging: vchi: Unify struct shim_service and struct
    vchi_service_handle
  staging: vc04_services: bcm2835-audio: Use vchi_msg_hold()
  staging: vchi: Get rid of vchi_msg_dequeue()
  staging: vchi_common: Get rid of all unused definitions
  staging: vc04_services: vc-sm-cma: Get rid of the multiple connections
    option
  staging: vchi: Get rid of unnecessary defines
  staging: vc04_services: Get rid of vchi_cfg.h
  staging: vchi: Get rid of flags argument in vchi_msg_hold()
  staging: vchi: Use enum vchiq_bulk_mode instead of vchi's transmission
    flags
  staging: vchi: Use vchiq's enum vchiq_reason
  staging: vchi: Get rid of effect less expression
  staging: vchiq: Introduce vchiq_validate_params()
  staging: vchiq: Move message queue into struct vchiq_service
  staging: vchiq: Get rid of vchiq_util.h
  staging: vchi: Expose struct vchi_service
  staging: vchiq: Export vchiq_get_service_userdata()
  staging: vchiq: Export vchiq_msg_queue_push
  staging: vchi: Get rid of vchiq_shim's message callback
  staging: vchiq: Don't use a typedef for vchiq_callback
  staging: vchi: Use struct vchiq_service_params
  staging: vchi: Get rid of struct vchi_service
  staging: vchiq: Pass vchiq's message when holding a message
  staging: vchi: Rework vchi_msg_hold() to match vchiq_msg_hold()
  staging: vchiq: Unify fourcc definition mechanisms
  staging: vchi: Get rid of struct vchiq_instance forward declaration
  staging: vchi: Don't include vchiq_core.h
  staging: vchiq: Get rid of unnecessary definitions in vchiq_if.h
  staging: vchiq: Make vchiq_add_service() local
  staging: vchiq: Move definitions only used by core into core header
  staging: vchi: Get rid of vchi_bulk_queue_receive()
  staging: vchi: Get rid of vchi_bulk_queue_transmit()
  staging: vchi: Move vchi_queue_kernel_message() into vchiq
  staging: vchiq: Get rid of vchi
  staging: vchiq: Move conditional barrier definition into vchiq_core.h
  staging: vchiq: Use vchiq.h as the main header file for services
  staging: vchiq: Move defines into core header
  staging: vchiq: Move vchiq.h into include directory

 drivers/staging/vc04_services/Makefile        |   4 +-
 .../vc04_services/bcm2835-audio/Makefile      |   2 +-
 .../bcm2835-audio/bcm2835-vchiq.c             | 100 ++-
 .../vc04_services/bcm2835-audio/bcm2835.h     |   4 +-
 .../bcm2835-audio/vc_vchi_audioserv_defs.h    |   5 +-
 .../linux/raspberrypi/vchiq.h}                |  71 +-
 .../vc04_services/interface/{vchi => }/TODO   |   0
 .../vc04_services/interface/vchi/vchi.h       | 240 ------
 .../vc04_services/interface/vchi/vchi_cfg.h   | 238 ------
 .../interface/vchi/vchi_common.h              | 138 ----
 .../vc04_services/interface/vchiq_arm/vchiq.h |  21 -
 .../interface/vchiq_arm/vchiq_2835_arm.c      |   1 +
 .../interface/vchiq_arm/vchiq_arm.c           |  86 +-
 .../interface/vchiq_arm/vchiq_core.c          | 110 ++-
 .../interface/vchiq_arm/vchiq_core.h          |  53 +-
 .../interface/vchiq_arm/vchiq_ioctl.h         |   2 +-
 .../interface/vchiq_arm/vchiq_shim.c          | 751 ------------------
 .../interface/vchiq_arm/vchiq_util.c          |  85 --
 .../interface/vchiq_arm/vchiq_util.h          |  50 --
 .../staging/vc04_services/vc-sm-cma/Makefile  |   1 -
 .../staging/vc04_services/vc-sm-cma/vc_sm.c   |  10 +-
 .../vc04_services/vc-sm-cma/vc_sm_cma_vchi.c  | 108 ++-
 .../vc04_services/vc-sm-cma/vc_sm_cma_vchi.h  |   5 +-
 .../vc04_services/vc-sm-cma/vc_sm_defs.h      |   3 -
 .../staging/vc04_services/vchiq-mmal/Makefile |   1 +
 .../vc04_services/vchiq-mmal/mmal-msg.h       |   1 -
 .../vc04_services/vchiq-mmal/mmal-vchiq.c     | 177 ++---
 27 files changed, 419 insertions(+), 1848 deletions(-)
 rename drivers/staging/vc04_services/{interface/vchiq_arm/vchiq_if.h => include/linux/raspberrypi/vchiq.h} (55%)
 rename drivers/staging/vc04_services/interface/{vchi => }/TODO (100%)
 delete mode 100644 drivers/staging/vc04_services/interface/vchi/vchi.h
 delete mode 100644 drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
 delete mode 100644 drivers/staging/vc04_services/interface/vchi/vchi_common.h
 delete mode 100644 drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h
 delete mode 100644 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
 delete mode 100644 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c
 delete mode 100644 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
