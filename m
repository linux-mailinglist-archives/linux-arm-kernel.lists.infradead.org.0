Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBF46D1B7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 18:15:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=En/wynQXDZ2S6FrSuVxCqgLuLXirWUTI24RuTS3oAAo=; b=pMH9VwimJ0zkVS
	WXeHEixU8/76DLIWz2R4akv8YmvjCslFIDltADkob8XTY9Lsr/I854xW6Uqqlcw20JCmdhtvDBUy/
	oVxkOmYeHo9izz1p1DDei8PAC/nCGRtubMMuQSEWOA53SaaADtsJqQygfPvj/PIthjghg5M8JW5kR
	fGVOhpVmmjDiMKlJnV63I8MLiylXG6/ivpr2rsQw07MVlVigpGzTgWeHz2zUUf4fwu0WfaXexVcz7
	Q52FaNPNrJp5tWQ7LoJKjea2/wwkozkoLaqJXEAsnfamtoPxx4h9JLrTQKbv+eeVWaYR6HKGN2rks
	mwUYB3kzDXewSTTsZp+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho94O-0007mD-Ic; Thu, 18 Jul 2019 16:15:48 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho942-0007kr-PL; Thu, 18 Jul 2019 16:15:28 +0000
Received: by mail-lj1-x242.google.com with SMTP id x25so27968844ljh.2;
 Thu, 18 Jul 2019 09:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EY90CNEDdHNbOElz8YZpDtXjzPT/Q84D5PZmTmIpGX8=;
 b=itZM25Ur2DNSgdCPTYxc1+6AWdelUsfTCuPKiH4yU0Vxvl/HFKVUgLIbY0oYYwPT4n
 5xegi+nIKfQQDNCkDw5ccvNyOYjupF/8DHrwJSYqXf+M3AqvdYj7L2O1E/y/QZc3jiL7
 USryYEk/mVNS/AjvpUEKhtWHJB7WekMcwvrx0Yjy5ispcLeDsDGH7iwm2OaUZWrHN5ln
 m+Qz2ysC2BChEippJPXiRw4C3gld6ecmxppxIrOJ5rTT2B4uZH4qttge580bz4xXgQv1
 71M/11WaguMQMZi6Xj8bdlbWW3UVQEiMmIjy6JWDnWYeBLMkspFvdfzw/EtNtJ973MH9
 Ox9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=EY90CNEDdHNbOElz8YZpDtXjzPT/Q84D5PZmTmIpGX8=;
 b=rvgaMfWFgRSwnMyiao2QqyQ2CxGkUQb9rhWdF7joxk3lyj97WztGglcid7OfP7oT9p
 +Ni8qMucbHiqKPykgC+wnsHJE0ubhyv7wXPpBflaM/recCrPJvpm6ztqAX+qFEly0c0t
 iI99L603mIuXgLyBtk4sv1lPuNOjnt+dAw3IdcZchGERLcgG5yxqJs/2EdC0nxIKGQn0
 um7ivngvKr86FiWjcZN6TrFTARO7tyyak7sez+R02r7eCTVbE+B37RgIeX3GF6Cl59yK
 K+8gmWyLfhlbDc5OEFQWALr7H7V/1Ei27doW7TalVNmXA485yqTUIPEYzj4sVoASZY8u
 bA5A==
X-Gm-Message-State: APjAAAX8sv2rQOPNuZEqC4Zro7qRi+wf8Wg9TTbskbV7RVfJ3UMd+LHO
 PObbiTqzDzpmwhag/8n0k3A=
X-Google-Smtp-Source: APXvYqzVjo2ZCjNil0fwN9rUrxtrZjDevN1yhDPv0wEE2mg0vhc7qvUO5C/iYAPZpjsQ0AAV3icYmA==
X-Received: by 2002:a2e:8741:: with SMTP id q1mr24568969ljj.144.1563466524176; 
 Thu, 18 Jul 2019 09:15:24 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 d21sm4057995lfc.73.2019.07.18.09.15.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 09:15:23 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Subject: [PATCH v1 0/11] drm: header maintenance
Date: Thu, 18 Jul 2019 18:14:56 +0200
Message-Id: <20190718161507.2047-1-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_091526_856679_DC40354C 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sam.ravnborg[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: David Airlie <airlied@linux.ie>, Liviu Dudau <Liviu.Dudau@arm.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh@kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <treding@nvidia.com>,
 Daniel Vetter <daniel@ffwll.ch>, Chunming Zhou <david1.zhou@amd.com>,
 Jani Nikula <jani.nikula@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-mediatek@lists.infradead.org, Stefan Agner <stefan@agner.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Boris Brezillon <bbrezillon@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

First patch from Jani fixes so drm_print.h is self-contained.
Next two patches are trivial removal of uapi dependencies.

ati_pcigart is fixed to drop use of drm_os_linux.h

drm_vblank is likewise fixed to drop use of drm_os_linux.h
This was a non-trivial conversion, *review requested!*

The remaining patches are preparation for and removal of
uapi/drm/drmh from drm_file.h.
There were a few files where we had to push include
of drm/drm.h out to to have a clean build.

CK Hu - please let me apply the mediatek patch to
drm-misc-next, as it is required for the final patch.
Or push it to drm-misc-next yourself.

	Sam

Jani Nikula (1):
      drm/panel: make drm_panel.h self-contained

Sam Ravnborg (10):
      drm: drop uapi dependency from drm_print.h
      drm: drop uapi dependency from drm_vblank.h
      drm/ati_pcigart: drop dependency on drm_os_linux.h
      drm/vblank: drop use of DRM_WAIT_ON()
      drm: direct include of drm.h in drm_gem.c
      drm: direct include of drm.h in drm_gem_shmem_helper.c
      drm: direct include of drm.h in drm_prime.c
      drm: direct include of drm.h in drm_syncobj.c
      drm/mediatek: direct include of drm.h in mtk_drm_gem.c
      drm: drop uapi dependency from drm_file.h

 drivers/gpu/drm/ati_pcigart.c          | 10 ++++++----
 drivers/gpu/drm/drm_gem.c              |  1 +
 drivers/gpu/drm/drm_gem_shmem_helper.c |  1 +
 drivers/gpu/drm/drm_prime.c            |  1 +
 drivers/gpu/drm/drm_syncobj.c          |  1 +
 drivers/gpu/drm/drm_vblank.c           | 29 ++++++++++++++++++++---------
 drivers/gpu/drm/mediatek/mtk_drm_gem.c |  1 +
 include/drm/drm_file.h                 |  4 +---
 include/drm/drm_panel.h                |  1 +
 include/drm/drm_print.h                |  4 +---
 include/drm/drm_vblank.h               |  1 -
 11 files changed, 34 insertions(+), 20 deletions(-)



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
