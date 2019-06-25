Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 376CB556EC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 20:18:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h227uJFx6ZE4eZpxYXzK/Q0YVLuFJfU4uYqz/kQpYi4=; b=bb0NldTYcCD/QO
	sq5pDCKns9Sm3hYGAediiCQl49YbSNLR1PNNu9krUZLqFA/Tc1pJWLv3XqCU3RxUnb0PayiMdB20d
	ggr/f2h3PiWrFyu358r9/FSf8H/WJcvSdy//B/cp80YdDh9tk3Qj40CNmKZnO4vm+cbRc7pXxlpQR
	iJj/P1TwlSXCnNa/KFN5didgY2XWYOiOBH8l3NVm89mLbnMkZiK1dt6HEfa0EDYCQhoTu06AtgpvK
	WQD3KnLYYUI89yzNEMwBxgzb+LiUXXWR0oD/LZVP5S8/ZCQ7jtXpv2ty4DZWaiMNwTvI0+ktT9N0c
	EmR+BRsh8SkCahggCmYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfq1D-000401-BF; Tue, 25 Jun 2019 18:18:11 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfq0X-0003g6-Pa; Tue, 25 Jun 2019 18:17:31 +0000
Received: by mail-pf1-x442.google.com with SMTP id i189so9886652pfg.10;
 Tue, 25 Jun 2019 11:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Bbu2tK3sSakQNVnTXMl1WxahFU6YdysIhCNxY10qcCo=;
 b=tKeM1nGfAFy82ijO53OzXbiMonpIclXTfbiFrjUIX6LNGP9WTd+3/aapkGSqfzAYZa
 J3IRSfzOrSta/n7Jf8cHooKALNszdjpL81TLbuciwWNrhNzQ8GWxX1FS8JyMRq3ghoH1
 iun0X3fs0/XpKbh9CuoDLNxhDYqhCVSQi2wewfn7K9qz3wEVll/Y7tD+X7XgHB5M6NQG
 2iQ9vqe0HFB5troq5IRVo1yUXXJjgcO5uSpyoIcy3xgbgSDVPJBpnjU9pJO1BRAqJ7Er
 qkCdrF9gcVW3YhH8TcATTeo5uAOpc3mMiZdJzcUI5eEZnHXFpOGQs+JWAlgf5R8z/yli
 o6FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Bbu2tK3sSakQNVnTXMl1WxahFU6YdysIhCNxY10qcCo=;
 b=gtHSWK0918sykLq4tuNY40Ii6rPLlFi5cMQiP3HlantIRvPBsKe31VzxwL78m1RHY3
 mI3DxAGh2jeth1bvW2AHZ/orRoWN6ADh2kFqql8TsxxDbpFS6DVUMzTq+SuimemYYJjl
 4lxsO0FkCWTHvswIxqjGhpMciD6PywT+yAle83k8AW/LtDw5WK5toyt7WLnJAkb2TBOw
 yWOFBQujyZJdGfN4QuT7M3HVDBTY4DQumqyeXVqV0hak6dr/rXrNTZiRDUcj1YAl3oFv
 p9nqegQIM6FAB23U3VflDADExmB+Exf9+2oxeMcprCOqBzQgvZ7OUk+c9/G4Uy56nGsZ
 /4cQ==
X-Gm-Message-State: APjAAAUzAcl/OQS8MHNt70zDqHVCMExaQdjR+f+9I+a9tCP5d/yVKZPl
 Gs9yVEl1rDmXVT3AH2j16I0=
X-Google-Smtp-Source: APXvYqy/6zI05cRtN3eini2aVDksTAmfLNCv+u3083Kd+IS7U9vzKapIqMvIz+7VpFR658J/vgZ5Xw==
X-Received: by 2002:a63:3f48:: with SMTP id m69mr1507421pga.17.1561486648208; 
 Tue, 25 Jun 2019 11:17:28 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id w7sm14042959pfb.117.2019.06.25.11.17.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 11:17:27 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: eric@anholt.net, wahrenst@gmx.net, gregkh@linuxfoundation.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org
Subject: [PATCH 2/9] staging: vc04_services: Remove function
 vchiq_arm_allow_resume()
Date: Tue, 25 Jun 2019 23:47:02 +0530
Message-Id: <20190625181710.2267-2-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190625181710.2267-1-nishkadg.linux@gmail.com>
References: <20190625181710.2267-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_111730_339601_5C6389C1 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

Remove unused function vchiq_arm_allow_resume.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 43 -------------------
 .../interface/vchiq_arm/vchiq_arm.h           |  3 --
 2 files changed, 46 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 9264a07cf160..bf7c1e2bce67 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2883,49 +2883,6 @@ vchiq_check_suspend(struct vchiq_state *state)
 	vchiq_log_trace(vchiq_susp_log_level, "%s exit", __func__);
 }
 
-int
-vchiq_arm_allow_resume(struct vchiq_state *state)
-{
-	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
-	int resume = 0;
-	int ret = -1;
-
-	if (!arm_state)
-		goto out;
-
-	vchiq_log_trace(vchiq_susp_log_level, "%s", __func__);
-
-	write_lock_bh(&arm_state->susp_res_lock);
-	unblock_resume(arm_state);
-	resume = vchiq_check_resume(state);
-	write_unlock_bh(&arm_state->susp_res_lock);
-
-	if (resume) {
-		if (wait_for_completion_interruptible(
-			&arm_state->vc_resume_complete) < 0) {
-			vchiq_log_error(vchiq_susp_log_level,
-				"%s interrupted", __func__);
-			/* failed, cannot accurately derive suspend
-			 * state, so exit early. */
-			goto out;
-		}
-	}
-
-	read_lock_bh(&arm_state->susp_res_lock);
-	if (arm_state->vc_suspend_state == VC_SUSPEND_SUSPENDED) {
-		vchiq_log_info(vchiq_susp_log_level,
-				"%s: Videocore remains suspended", __func__);
-	} else {
-		vchiq_log_info(vchiq_susp_log_level,
-				"%s: Videocore resumed", __func__);
-		ret = 0;
-	}
-	read_unlock_bh(&arm_state->susp_res_lock);
-out:
-	vchiq_log_trace(vchiq_susp_log_level, "%s exit %d", __func__, ret);
-	return ret;
-}
-
 /* This function should be called with the write lock held */
 int
 vchiq_check_resume(struct vchiq_state *state)
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index c1d5a9d17071..61b15278c999 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -115,9 +115,6 @@ vchiq_arm_vcsuspend(struct vchiq_state *state);
 extern VCHIQ_STATUS_T
 vchiq_arm_force_suspend(struct vchiq_state *state);
 
-extern int
-vchiq_arm_allow_resume(struct vchiq_state *state);
-
 extern VCHIQ_STATUS_T
 vchiq_arm_vcresume(struct vchiq_state *state);
 
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
