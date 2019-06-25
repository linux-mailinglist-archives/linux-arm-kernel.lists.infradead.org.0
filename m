Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E315570F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 20:21:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QHxfBINXfMbsHjr7NdKIeQUKNfjeghYvp2amRyHAcJA=; b=BWOHHIHW2mkutz
	jC5l/1z59dmYGHte+bPapk2wSWkdceWdR9N7VYYR0dY8ccpES0/y+gLZaGrzuYkPczncoBSSw0aob
	ZCqDKH+t/CrxI2NJjaWeOKI3HhCX58hpja3Iqq7JmVJpkCkrFSysjvspBZ5y6Got2rkGtgkuSufwC
	QBZrlKYREj3q5mEX0AMYRV73VkLV4qfml+cFy3CHL2EJe1akLD+nEmnhnORF/KA0ELC2OFzwkyeUv
	Ue1LVlMA9ysIYbMyMPkzteW7DgoVmXhZLmB3ORp8iysxGyNzuQTQ9+zUSW4U+LgzTCa8ePkwiOsnG
	E7CRLSuimmeUjourFLqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfq40-0007bk-BO; Tue, 25 Jun 2019 18:21:04 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfq0w-00040I-Ca; Tue, 25 Jun 2019 18:17:57 +0000
Received: by mail-pl1-x644.google.com with SMTP id i2so9266487plt.1;
 Tue, 25 Jun 2019 11:17:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yuHblpfu5i68xJ6EQkdjloP0O8Tt/QPPF6JuJ1uV5XQ=;
 b=NXofPKhwS8Li19Fm0qYYRh60USSNiUUxcmSm7u5FQTA78Z3TWQVE+qTmBSWdmFoXqI
 Ch1EpzFu925iz6D2OsrsopmWWQdpdapUKKIEeaHyLbj5pxs159q1LxwUFbkNuXfVYmQ7
 OveFAMOqerAovsILc2nnOGDr2nO7VCpG7zJjqjrt2Kk8Y/vxYuSJQ/mXoayGE5LAXxLR
 sxmxonI6utk6uA3jeweOB5U0w0+e4alpq9vzZ0khhYcNYRUHdTweGp+z4fvfaqwOZtjY
 B7gM2P/Xrxgg75gxy19aEBBMZBsSfoWiCqvmNkDkPDxPi+jk+c2T8/aYNfGuOfs1e7nN
 r4tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yuHblpfu5i68xJ6EQkdjloP0O8Tt/QPPF6JuJ1uV5XQ=;
 b=MB8VhL8G2yKDmjMinfuHagFFHOesnutLv4CdCanGPUUsncvGpUhtOgTyMc7O/vDF5z
 sQ1KUKez01IhzUtvENtvmejethMvSg1sQ0koS6vCHlyOpWih0DWH+V/O0oQ+caAJxPlC
 Hc4SS+xc3SClnn0Ufmsb99gwsq3Nqyp3XbYDuPgNNt4EkE5m2NVFoTLvtLUGz0q2D6lV
 rOsFvFu25uw+t1qxCNE4lgfdO/ud68ZZxeM7kEA8AgvBmvQdTP4MUpuytG8EafQyW6YK
 V1N7cFRb1QZz1U0yhbq/IUy4kN816dzg3rvqQJo0WyYydu9Tg6ijm6RP2GCqWVlmy35C
 eOtw==
X-Gm-Message-State: APjAAAXiU+pu34Pwt/XGy4NhA7PkurrdxdUyyGiPKLJk/anOyYe0BM22
 sC47W5q54AE1T0VpyBQsw5c=
X-Google-Smtp-Source: APXvYqxnGY9Wr6s8gpGV/odUIOfRZg8u/r4QEu70F5gaNfKnHVHycE5N/Jdnjm9pzvNeTKHeGedlYA==
X-Received: by 2002:a17:902:2e81:: with SMTP id r1mr97555plb.0.1561486672980; 
 Tue, 25 Jun 2019 11:17:52 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id w7sm14042959pfb.117.2019.06.25.11.17.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 11:17:52 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: eric@anholt.net, wahrenst@gmx.net, gregkh@linuxfoundation.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org
Subject: [PATCH 9/9] staging: vc04_services: Remove function block_resume()
Date: Tue, 25 Jun 2019 23:47:09 +0530
Message-Id: <20190625181710.2267-9-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190625181710.2267-1-nishkadg.linux@gmail.com>
References: <20190625181710.2267-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_111754_782839_69C0D95D 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove function block_resume as it was only called by
vchiq_arm_force_suspend, which was removed in a previous patch.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 66 -------------------
 1 file changed, 66 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index ebf7e2a3bd3b..cc4383d1ec3e 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2554,72 +2554,6 @@ need_resume(struct vchiq_state *state)
 			vchiq_videocore_wanted(state);
 }
 
-static int
-block_resume(struct vchiq_arm_state *arm_state)
-{
-	int status = VCHIQ_SUCCESS;
-	const unsigned long timeout_val =
-				msecs_to_jiffies(FORCE_SUSPEND_TIMEOUT_MS);
-	int resume_count = 0;
-
-	/* Allow any threads which were blocked by the last force suspend to
-	 * complete if they haven't already.  Only give this one shot; if
-	 * blocked_count is incremented after blocked_blocker is completed
-	 * (which only happens when blocked_count hits 0) then those threads
-	 * will have to wait until next time around */
-	if (arm_state->blocked_count) {
-		reinit_completion(&arm_state->blocked_blocker);
-		write_unlock_bh(&arm_state->susp_res_lock);
-		vchiq_log_info(vchiq_susp_log_level, "%s wait for previously "
-			"blocked clients", __func__);
-		if (wait_for_completion_interruptible_timeout(
-				&arm_state->blocked_blocker, timeout_val)
-					<= 0) {
-			vchiq_log_error(vchiq_susp_log_level, "%s wait for "
-				"previously blocked clients failed", __func__);
-			status = VCHIQ_ERROR;
-			write_lock_bh(&arm_state->susp_res_lock);
-			goto out;
-		}
-		vchiq_log_info(vchiq_susp_log_level, "%s previously blocked "
-			"clients resumed", __func__);
-		write_lock_bh(&arm_state->susp_res_lock);
-	}
-
-	/* We need to wait for resume to complete if it's in process */
-	while (arm_state->vc_resume_state != VC_RESUME_RESUMED &&
-			arm_state->vc_resume_state > VC_RESUME_IDLE) {
-		if (resume_count > 1) {
-			status = VCHIQ_ERROR;
-			vchiq_log_error(vchiq_susp_log_level, "%s waited too "
-				"many times for resume", __func__);
-			goto out;
-		}
-		write_unlock_bh(&arm_state->susp_res_lock);
-		vchiq_log_info(vchiq_susp_log_level, "%s wait for resume",
-			__func__);
-		if (wait_for_completion_interruptible_timeout(
-				&arm_state->vc_resume_complete, timeout_val)
-					<= 0) {
-			vchiq_log_error(vchiq_susp_log_level, "%s wait for "
-				"resume failed (%s)", __func__,
-				resume_state_names[arm_state->vc_resume_state +
-							VC_RESUME_NUM_OFFSET]);
-			status = VCHIQ_ERROR;
-			write_lock_bh(&arm_state->susp_res_lock);
-			goto out;
-		}
-		vchiq_log_info(vchiq_susp_log_level, "%s resumed", __func__);
-		write_lock_bh(&arm_state->susp_res_lock);
-		resume_count++;
-	}
-	reinit_completion(&arm_state->resume_blocker);
-	arm_state->resume_blocked = 1;
-
-out:
-	return status;
-}
-
 static inline void
 unblock_resume(struct vchiq_arm_state *arm_state)
 {
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
