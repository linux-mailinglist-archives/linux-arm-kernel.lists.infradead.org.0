Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 433B6437D8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:01:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fREefLuxHIUs0x0d4kshgqXgiLwRECYOpUmK27E28cw=; b=U/b3pmwR74DIt8
	ZTUdaeDbp4wA62Cvypzl44G4/rzj5Bhxi3XnAjvzK9lIMebybAMSGeSl3sqdxVio/6cfNcp78lcTu
	7vWPurIQaA7ODjt8PLV3v8zQoew3u8ztYJfpcavLs6DLP/yWwUAMdIlvHPr4EosBHU7eOXiFzPCxE
	L4AR73K0t293NFAM64eqgoG8HXwTep8gUsNSiAr6AcFI1gp1oSx6NsPWmTMTevz4VUdtUIkCYZbBE
	JP10Tf0vL+E+tbrJ8n6GOLfMW3rXl3peKlD0ZDVZbeWhz1aYo4SGobi1EFOv2DVSgoFKNpkd5DTMy
	Bqvt0GRKiDCCtAtnmw/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRET-0001Ra-Ai; Thu, 13 Jun 2019 15:01:41 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRED-0001Ok-Lh
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:01:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:Content-Type:MIME-Version:
 Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mmB6+EcRyCm7veyBlsY9CCysvQL/Xu6GOodFV4+BnY4=; b=egsfOa3W2bTawkMJ6aJLwWF1s
 tTMljS6tzi1+fI1wIjxcnNrw0R5VZKNqnSlELHWyTCCdi/0nI5jGwDWdGDHeg7mzXeIIOQLXiGTw1
 0iM06FOxa7fHkvpnoDDl66CFW3jyrzs0ettchPGV6ZLLP3W+EHI8uP8ymBEaGvbogo6H3bKTNrSCu
 TIqUHTtRP4VsE9TTDeNHmLAAwsgWoilSeTA3uZq48vGnWykHL5mJfJzgKMc7aFqFZ3+rxqei9L5bv
 IkaLd/L+u/Yn+t8vXBfFlN8xz/JiB/FHgDreDBD576keIRLfyCDINtPz9TReQ+aTTEWWCeLdt8X7H
 8E0rYcqGw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:56364)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hbRE4-0003iq-6V; Thu, 13 Jun 2019 16:01:16 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hbRE2-0001Jo-NW; Thu, 13 Jun 2019 16:01:14 +0100
Date: Thu, 13 Jun 2019 16:01:14 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 00/18] Armada DRM updates
Message-ID: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_080125_713460_C462B4B6 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This series updates Armada DRM:

- Fix interlace support.
- use __drm_atomic_helper_plane_reset in overlay reset.
- since the overlay and video planes use essentially the same format
  registers, precompute their values while validating.
- fix a long-standing deficiency with overlay planes and interlace modes
- calculate plane starting address at atomic_check stage rather than
  when we're programming the registers.
- add gamma support.
- ensure mode adjustments made by other components are properly handled
  in the driver and applied to the CRTC-programmed mode.
- add and use register definitions for the "REG4F" register.
- use drm_atomic_helper_shutdown() when tearing down to ensure that the
  hardware is properly shutdown.
- add CRTC-level mode validation to ensure that we don't allow a mode
  that the CRTC-level hardware can not support.
- improve the clocking selection for Armada 510 support.
- move CRTC debugfs files into the crtc-specific directory, using the
  DRM helper to create these files.
- patch from Lubomir Rintel to replace a simple framebuffer.
- use the OF graph walker rather than open-coding this.
- eliminate a useless check for the availability of the remote's parent
  which isn't required.

 drivers/gpu/drm/armada/armada_510.c     | 130 ++++++++++++++------
 drivers/gpu/drm/armada/armada_crtc.c    | 212 ++++++++++++++++++++++++++++++--
 drivers/gpu/drm/armada/armada_crtc.h    |  21 +++-
 drivers/gpu/drm/armada/armada_debugfs.c |  98 ++++++---------
 drivers/gpu/drm/armada/armada_drm.h     |   1 +
 drivers/gpu/drm/armada/armada_drv.c     |  38 +++---
 drivers/gpu/drm/armada/armada_hw.h      |  29 +++--
 drivers/gpu/drm/armada/armada_overlay.c |  56 ++++-----
 drivers/gpu/drm/armada/armada_plane.c   | 124 +++++++++++++------
 drivers/gpu/drm/armada/armada_plane.h   |  23 ++++
 10 files changed, 520 insertions(+), 212 deletions(-)

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
