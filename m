Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BB164C15
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 20:29:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g89w7pfNZHh+6euP/IKh1GY/87TYGk2YnW78uokcbNw=; b=k2q7pSmx6KuAFN
	gheT93BqU+wDXU8TygwrAqiHYKYHLpSNFwjjlA2ZeuQbCzitX9FdV07GE7jWpvOjtXy8j0jWuzE7n
	58vpdBzi65VC96OQWG+C1iyedxslhGBUYjDrjhLCZ2qSSVcKAF6GhLpqWfcB7D/MyzzC0BO+qV1x8
	SbNbAfmDdDYdi9Zl2QN4uc/GHnxTbaBqQeIG1r3mEpYkDv62HAMSamKoI4Jnv9DzjFykVrlIvKgr9
	GltGd1KfvRoSLJh1PgaW/BvX5TveeXGitJ3UMnHRq+JqKk8t9mcUNMXcgeH2mRz5NWu4hYiTDzOzz
	Mcgd5CVjIPwF4f0etHdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlHL4-00047z-Va; Wed, 10 Jul 2019 18:29:11 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlHKn-00047A-Eg
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 18:28:55 +0000
Received: by mail-pf1-x444.google.com with SMTP id c73so1464597pfb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 11:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X2wPmom3sJSwZ6VYG/6JKsbwq16BGxAUHYVA29t4WUs=;
 b=bdE1SnlndmJmWXI4tshCAMHf1y6EjPIbK8Fbzi7N09M0t7c7CXz9jPaAF+U4zpK2Ar
 qgCiZ/PtW4leBd9a9AxyI8AX8KAj2qjw9PES2Zr2jdM0CYFXuuMwafu1VW3XyuIX85ze
 WyeGDguVLVu37gQ+z7B90eyFqfNkom1MP3LikG5lNXvgTOw7RM96ogRtu5S7/ndJUKBX
 SFSf82JGBHHIEmapCMaggiqsSGmD80h/HwjFTvWjD5i1CXq8qlzCKfCl22YLtstT+vsh
 abGOlhy9STPiO77wHf6EZUAMV63/A7eAJBWH/kg8JCzyNogW1v4N+kxJ1fDAn8+Wu7uz
 ddfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X2wPmom3sJSwZ6VYG/6JKsbwq16BGxAUHYVA29t4WUs=;
 b=BUgDCBRVcEcV2XLmDL4zlplY2aKj/OOf2ILYDdaOYNB5ZXcrXdZjqF+Jfiby3pUtFQ
 r1yB5ep/jl3WruFbCVkv0De5So3ZwtticeKWZvAj3JiWO70VfsxW62ZwBP+DxE7e1o+K
 vv1F327qMpO0tFSK++X0WxrkzCeeGiq93GCj5HMmVd6zLtxeaYguIpIp9CqNkI0PEWNZ
 VcDB4kBL7Zj+PqGHci9l4/XpqQgFa/V989JsPm15ia47h9Eg325yYYC0G7X72N6YAYzr
 6aTYfYPEsqWjXg5SAc6fABIfJ9nB9yYseSV/I8RySoC2pKe/T0h3m5VaSqkNZnVWyogu
 2Q6g==
X-Gm-Message-State: APjAAAVlQWwn8OJQogHx+zzqj61GrhQO+/FdSVIe1M6vQR+kc8EMsBCy
 2WTblMnUyOTVAE4fC3yrybw=
X-Google-Smtp-Source: APXvYqzxVJwORPZh7pa+tFmbtMmG7GfDyUMvQifbBp9D3WGXW+RU3JFqDMMKkm/CNidWkfL1FXSk/Q==
X-Received: by 2002:a65:454c:: with SMTP id x12mr38500524pgr.354.1562783332011; 
 Wed, 10 Jul 2019 11:28:52 -0700 (PDT)
Received: from localhost ([2620:15c:f:fd00:4c3b:936:8dc5:a2ad])
 by smtp.gmail.com with ESMTPSA id d16sm2943054pgb.4.2019.07.10.11.28.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 10 Jul 2019 11:28:51 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: iommu@lists.linux-foundation.org
Subject: [PATCH v2] iommu: add support for drivers that manage iommu explicitly
Date: Wed, 10 Jul 2019 11:28:30 -0700
Message-Id: <20190710182844.25032-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190702202631.32148-2-robdclark@gmail.com>
References: <20190702202631.32148-2-robdclark@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_112853_495476_1429125A 
X-CRM114-Status: GOOD (  17.46  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robdclark[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Rob Clark <robdclark@chromium.org>, aarch64-laptops@lists.linaro.org,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Robin Murphy <robin.murphy@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Joe Perches <joe@perches.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rob Clark <robdclark@chromium.org>

Avoid attaching any non-driver managed domain if the driver indicates
that it manages the iommu directly.

This avoids a problem on devices where the bootloader takes the SMMU out
of bypass and enables scanout, such as is the case on snapdragon aarch64
laptops and newer snapdragon android devices.  Attaching an IDENTITY or
DMA domain before the driver has a chance to intervene will break efifb
scanout and start triggering iommu faults.

If the driver manages the iommu directly (as does drm/msm), it can
shut down scanout when it is ready to take over the display, before
attaching an UNMANAGED domain.

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
v2. Move the check into arm_smmu_attach_dev() (as I *think* this is
    what Robin preferred; update commit msg to focus on the display
    related issue that this solves.

We also need Bjorn's patch set to inherit SMR and CB config during
init:

https://www.spinics.net/lists/arm-kernel/msg732246.html

 drivers/iommu/arm-smmu.c | 11 +++++++++++
 include/linux/device.h   |  3 ++-
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 1a5efa7c8767..4a80710124db 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -1411,6 +1411,17 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
 		return -ENXIO;
 	}
 
+	/*
+	 * If driver is going to manage iommu directly, then avoid
+	 * attaching any non driver managed domain.  There could
+	 * be already active dma underway (ie. scanout in case of
+	 * bootloader enabled display), and interfering with that
+	 * will make things go *boom*
+	 */
+	if ((domain->type != IOMMU_DOMAIN_UNMANAGED) &&
+	    dev->driver && dev->driver->driver_manages_iommu)
+		return 0;
+
 	/*
 	 * FIXME: The arch/arm DMA API code tries to attach devices to its own
 	 * domains between of_xlate() and add_device() - we have no way to cope
diff --git a/include/linux/device.h b/include/linux/device.h
index e138baabe01e..d98aa4d3c8c3 100644
--- a/include/linux/device.h
+++ b/include/linux/device.h
@@ -282,7 +282,8 @@ struct device_driver {
 	struct module		*owner;
 	const char		*mod_name;	/* used for built-in modules */
 
-	bool suppress_bind_attrs;	/* disables bind/unbind via sysfs */
+	bool suppress_bind_attrs:1;	/* disables bind/unbind via sysfs */
+	bool driver_manages_iommu:1;	/* driver manages IOMMU explicitly */
 	enum probe_type probe_type;
 
 	const struct of_device_id	*of_match_table;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
