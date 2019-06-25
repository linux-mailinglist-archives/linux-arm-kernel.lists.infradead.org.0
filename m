Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E91556F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 20:18:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CHZCERkCTdcq/nwwmoFnP68DIpkhb4J3hXwmUjj+bP0=; b=M+WKqDr9bkzypt
	qL2c2P2yh6WkZm3ra+3JLRN/lIMZMRPl0Lva0WJvH8QH89Qg8SM/H4u6p1vLA3xwNurGctu69QA9u
	9d86x63wO3kFK+bf4ANcqcnMZ1KDdyLPQHe48cOJUKF3LLpzenHQjyoQsTP/r6AJZJVlBxv55g4Ff
	6gvWAftTgNm61bSmZU5wP4hxUvdm0aZb9KIOMzNncvDYGi1brZZbbe/jQjfrOGUUwZJfH5NZlHhDs
	9x4ZXf8W0sUMuS1ts4Ql4gMD4TdZbSFS5UxuMwUI8uqEVGeoaq8cDHvdjWako74lWb3/4JEigD+bP
	rovP/lKUp+MLDTq3uoJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfq1d-0004JY-De; Tue, 25 Jun 2019 18:18:37 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfq0a-0003hM-5q; Tue, 25 Jun 2019 18:17:34 +0000
Received: by mail-pl1-x642.google.com with SMTP id c14so9280531plo.0;
 Tue, 25 Jun 2019 11:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w7IdLoqaM/pkAnJ/BoKl0kc6qgBZS1ZrZeCfsR3YYF8=;
 b=Se0IbeO6vIvQd+5CJ7kukmA7+d+F4c6uMSZok0m6C/Fs6dAdUTho0JvHEQoy4AgBmP
 mlIQXJWmHXMQBFumYr9HhsRsrP412uAZLK50N/Z4xvpmwrJokY9+63+h3ZO7WB0hASJu
 rtVfDXvLDDBbirz6RivBrEWdkV1ancCKQcZTGQHuOqSJBc0fsMCrq9MnzrXCJ/OTjsE+
 ZOOZUPHPN8nSxCyneH5TcyF7nCOV8NDfhtRdrLKARe8KhGvzrvqXRpApAIhcB6JRBQNR
 rjiSVly6Ao8EBbcnLCe+5uqQBLUmS32NRsFyome56XCpodUkiOP3taRNezEzb+lrBjnH
 oXKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w7IdLoqaM/pkAnJ/BoKl0kc6qgBZS1ZrZeCfsR3YYF8=;
 b=r5RJ2j1U5agax9YLzi8SMytjzsw+kag+BPLdDCuqJUpFsQ0UShiZ982oBxaLYoM4VR
 yAtcZ/OYl72CnRJPw0lT6BMF63+1qRtzPUX1vqdq0zs7EER43Y/CRA73sk5fOZhSJUJ4
 GxsUDE0inxUq468bpfP8whOJ0yKEWvpbx2gDxyWny4ThigB3GTKCJbQBXRSo84PbDbcf
 /VcxqrHXYemT1TaoldOHvCQcIF/Go5o6HZhzlP0i/7c7er7Ktf/9A5rYWRLBcMnBL4tO
 5C1l2HSqM1XfcuBLDRXNh7Ed2VY9W1MItZOIAqF9hJbdBQlNQjgXGhoSiIFtWxKFQCS8
 epFQ==
X-Gm-Message-State: APjAAAXqr6ZJrNpsigS2D1v73uOEfXO+gDDHoFoBXBfWUA519nCcp3yP
 /XNH1wEN2a/8tHtZTMjOMiE=
X-Google-Smtp-Source: APXvYqy4KthWZsAd+dDOYC4XRNhbd4yRpUArFvVQ5rtlvqQuCpnjsLEHIegsA7UtNb4N/3C2s2J4oQ==
X-Received: by 2002:a17:902:4c88:: with SMTP id b8mr43145ple.29.1561486651582; 
 Tue, 25 Jun 2019 11:17:31 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id w7sm14042959pfb.117.2019.06.25.11.17.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 11:17:31 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: eric@anholt.net, wahrenst@gmx.net, gregkh@linuxfoundation.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org
Subject: [PATCH 3/9] staging: vc04_services: Remove vchiq_arm_force_suspend()
Date: Tue, 25 Jun 2019 23:47:03 +0530
Message-Id: <20190625181710.2267-3-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190625181710.2267-1-nishkadg.linux@gmail.com>
References: <20190625181710.2267-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_111732_249147_6B8F30E7 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

Remove unused function vchiq_arm_force_suspend.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 120 ------------------
 .../interface/vchiq_arm/vchiq_arm.h           |   3 -
 2 files changed, 123 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index bf7c1e2bce67..6e59470d44ab 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2741,126 +2741,6 @@ output_timeout_error(struct vchiq_state *state)
 
 }
 
-/* Try to get videocore into suspended state, regardless of autosuspend state.
-** We don't actually force suspend, since videocore may get into a bad state
-** if we force suspend at a bad time.  Instead, we wait for autosuspend to
-** determine a good point to suspend.  If this doesn't happen within 100ms we
-** report failure.
-**
-** Returns VCHIQ_SUCCESS if videocore suspended successfully, VCHIQ_RETRY if
-** videocore failed to suspend in time or VCHIQ_ERROR if interrupted.
-*/
-VCHIQ_STATUS_T
-vchiq_arm_force_suspend(struct vchiq_state *state)
-{
-	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
-	VCHIQ_STATUS_T status = VCHIQ_ERROR;
-	long rc = 0;
-	int repeat = -1;
-
-	if (!arm_state)
-		goto out;
-
-	vchiq_log_trace(vchiq_susp_log_level, "%s", __func__);
-
-	write_lock_bh(&arm_state->susp_res_lock);
-
-	status = block_resume(arm_state);
-	if (status != VCHIQ_SUCCESS)
-		goto unlock;
-	if (arm_state->vc_suspend_state == VC_SUSPEND_SUSPENDED) {
-		/* Already suspended - just block resume and exit */
-		vchiq_log_info(vchiq_susp_log_level, "%s already suspended",
-			__func__);
-		status = VCHIQ_SUCCESS;
-		goto unlock;
-	} else if (arm_state->vc_suspend_state <= VC_SUSPEND_IDLE) {
-		/* initiate suspend immediately in the case that we're waiting
-		 * for the timeout */
-		stop_suspend_timer(arm_state);
-		if (!vchiq_videocore_wanted(state)) {
-			vchiq_log_info(vchiq_susp_log_level, "%s videocore "
-				"idle, initiating suspend", __func__);
-			status = vchiq_arm_vcsuspend(state);
-		} else if (arm_state->autosuspend_override <
-						FORCE_SUSPEND_FAIL_MAX) {
-			vchiq_log_info(vchiq_susp_log_level, "%s letting "
-				"videocore go idle", __func__);
-			status = VCHIQ_SUCCESS;
-		} else {
-			vchiq_log_warning(vchiq_susp_log_level, "%s failed too "
-				"many times - attempting suspend", __func__);
-			status = vchiq_arm_vcsuspend(state);
-		}
-	} else {
-		vchiq_log_info(vchiq_susp_log_level, "%s videocore suspend "
-			"in progress - wait for completion", __func__);
-		status = VCHIQ_SUCCESS;
-	}
-
-	/* Wait for suspend to happen due to system idle (not forced..) */
-	if (status != VCHIQ_SUCCESS)
-		goto unblock_resume;
-
-	do {
-		write_unlock_bh(&arm_state->susp_res_lock);
-
-		rc = wait_for_completion_interruptible_timeout(
-				&arm_state->vc_suspend_complete,
-				msecs_to_jiffies(FORCE_SUSPEND_TIMEOUT_MS));
-
-		write_lock_bh(&arm_state->susp_res_lock);
-		if (rc < 0) {
-			vchiq_log_warning(vchiq_susp_log_level, "%s "
-				"interrupted waiting for suspend", __func__);
-			status = VCHIQ_ERROR;
-			goto unblock_resume;
-		} else if (rc == 0) {
-			if (arm_state->vc_suspend_state > VC_SUSPEND_IDLE) {
-				/* Repeat timeout once if in progress */
-				if (repeat < 0) {
-					repeat = 1;
-					continue;
-				}
-			}
-			arm_state->autosuspend_override++;
-			output_timeout_error(state);
-
-			status = VCHIQ_RETRY;
-			goto unblock_resume;
-		}
-	} while (0 < (repeat--));
-
-	/* Check and report state in case we need to abort ARM suspend */
-	if (arm_state->vc_suspend_state != VC_SUSPEND_SUSPENDED) {
-		status = VCHIQ_RETRY;
-		vchiq_log_error(vchiq_susp_log_level,
-			"%s videocore suspend failed (state %s)", __func__,
-			suspend_state_names[arm_state->vc_suspend_state +
-						VC_SUSPEND_NUM_OFFSET]);
-		/* Reset the state only if it's still in an error state.
-		 * Something could have already initiated another suspend. */
-		if (arm_state->vc_suspend_state < VC_SUSPEND_IDLE)
-			set_suspend_state(arm_state, VC_SUSPEND_IDLE);
-
-		goto unblock_resume;
-	}
-
-	/* successfully suspended - unlock and exit */
-	goto unlock;
-
-unblock_resume:
-	/* all error states need to unblock resume before exit */
-	unblock_resume(arm_state);
-
-unlock:
-	write_unlock_bh(&arm_state->susp_res_lock);
-
-out:
-	vchiq_log_trace(vchiq_susp_log_level, "%s exit %d", __func__, status);
-	return status;
-}
-
 void
 vchiq_check_suspend(struct vchiq_state *state)
 {
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index 61b15278c999..b424323e9613 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -112,9 +112,6 @@ vchiq_get_state(void);
 extern VCHIQ_STATUS_T
 vchiq_arm_vcsuspend(struct vchiq_state *state);
 
-extern VCHIQ_STATUS_T
-vchiq_arm_force_suspend(struct vchiq_state *state);
-
 extern VCHIQ_STATUS_T
 vchiq_arm_vcresume(struct vchiq_state *state);
 
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
