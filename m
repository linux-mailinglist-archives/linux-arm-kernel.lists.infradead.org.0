Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 533D7556FB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 20:19:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQ0PGahAwFYN2jz8tQtUYnr0Y7V5CxVgZMJ0w+kYXHo=; b=T1IHrZZbV21FDQ
	as464SZCKPsIJ9CEdrJ+cu4qzh716a/RQ5SDkiEFNvkZS515FYNkzpwkdYzUmC5NmQx9xm0yK40Od
	qSGpnyNmNhXhTq35rSATnUArRMg1cMTRoHkFuCcc3zeOfP+F2BLpm7CrVEriN0C7pu6qtV+ak9ZxY
	6RAoK+IrzKxpC9/eZKYvE3Ds7cjRcNnjZFVpZBBNYE354Z2GhgVEzmlmOvO/umms3NGofxZCOmdRf
	vxRXHHnKZ8wbBrhViTLkyXfwkJfXV0GsVcXj4diEvWWDjWjzDn6ZkHMMEyX0GqGPOrF7CLxdiKm0k
	x2Rw3tCc9Gvf0LLOKrsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfq21-0004b3-Fo; Tue, 25 Jun 2019 18:19:01 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfq0d-0003ka-MJ; Tue, 25 Jun 2019 18:17:37 +0000
Received: by mail-pg1-x542.google.com with SMTP id z75so6750059pgz.5;
 Tue, 25 Jun 2019 11:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4zbgv1pM7bI2m8GxF16hew58WU7DUKWqaBruIQtO3DI=;
 b=VQyg9TcdelCeyiI1djapCGLalyj5yASTmGId7fjqOx1QPMlkGJnrfZejEUD0c0pVV8
 VSW0684Ej6upzAFlRLe9nuzxGK9V1kIFasWuOsS7yjI3wX/uGyqrVI1TemKfYEzuEmyJ
 TxYCnlK0dPd0G3hVc57zF2Fo0eJqxWyHTOdQENn8BoXsOopdQoUOeFZAG/7gzKX79iMJ
 2BbAUpM81Cw8YrHcLeQEv6mNSzdKrY1BxlJU6+wrtNOJl6fhr1A2fyfQaKBzW246EbRz
 DCzXnyQeSIp2q7YOwlhqRsp8vf+RvGaKUjbKSW051MuhjxZc2YUm53kc9TSRh0sh3Jab
 NzOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4zbgv1pM7bI2m8GxF16hew58WU7DUKWqaBruIQtO3DI=;
 b=R2hZ02ceP0JIagD69x+99jRDx7QLykt8+4/PvIFczqvICqgOJrc0HVMj+6DdDF6lNh
 XQcmqDFuMLScVXUXUYBwahXJXGy9P0G475iiAQUL4Woga1rnqFtjVzyLlrLo1HQr6xdO
 KRgsFxUfp9EMYnLNtSBzOsbpQqXvsBuHJUS4PMKgwQMM3lRSygoHpQXgw9/l/Zr7YwGW
 mk3VjXBAG1PgukG+Jj066jmFb/YJIYVS8g4KwNU6r8OmKjLh+7mJ+UL50zfwCP1mTDJS
 uf1aygMdnijlJ+xt+8ACjyLK9yf7kF0bwcvN3ccUApFdAmYEsADAYOehMwGNBZcD4HIi
 Jn0A==
X-Gm-Message-State: APjAAAW0gCWEiJQaNWp9LalxUZ5OPSvw4WaJxLpdb2ZIJrlaE1swftX9
 cc6+IXuDwamZ6yXsT2RW1D8=
X-Google-Smtp-Source: APXvYqzuGtrSRpXvN1EfFPGsLNzynnPpRFeOY7mm9/vTss2CahrlmDd9kan7wMnjSVb4D4VK/MOGGw==
X-Received: by 2002:a17:90a:cb12:: with SMTP id
 z18mr191644pjt.82.1561486654799; 
 Tue, 25 Jun 2019 11:17:34 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id w7sm14042959pfb.117.2019.06.25.11.17.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 11:17:34 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: eric@anholt.net, wahrenst@gmx.net, gregkh@linuxfoundation.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org
Subject: [PATCH 4/9] staging: vc04_services: Remove vchiq_pause_internal()
Date: Tue, 25 Jun 2019 23:47:04 +0530
Message-Id: <20190625181710.2267-4-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190625181710.2267-1-nishkadg.linux@gmail.com>
References: <20190625181710.2267-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_111735_951336_563F9A75 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

Remove unused function vchiq_pause_internal.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 .../interface/vchiq_arm/vchiq_core.c          | 23 -------------------
 .../interface/vchiq_arm/vchiq_core.h          |  3 ---
 2 files changed, 26 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 0dca6e834ffa..7f093b2679ae 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -2830,29 +2830,6 @@ vchiq_shutdown_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance)
 	return VCHIQ_SUCCESS;
 }
 
-VCHIQ_STATUS_T
-vchiq_pause_internal(struct vchiq_state *state)
-{
-	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
-
-	switch (state->conn_state) {
-	case VCHIQ_CONNSTATE_CONNECTED:
-		/* Request a pause */
-		vchiq_set_conn_state(state, VCHIQ_CONNSTATE_PAUSING);
-		request_poll(state, NULL, 0);
-		break;
-	default:
-		vchiq_log_error(vchiq_core_log_level,
-			"%s in state %s\n",
-			__func__, conn_state_names[state->conn_state]);
-		status = VCHIQ_ERROR;
-		VCHIQ_STATS_INC(state, error_count);
-		break;
-	}
-
-	return status;
-}
-
 VCHIQ_STATUS_T
 vchiq_resume_internal(struct vchiq_state *state)
 {
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index aee2d362e88d..b319031145ed 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -518,9 +518,6 @@ vchiq_free_service_internal(struct vchiq_service *service);
 extern VCHIQ_STATUS_T
 vchiq_shutdown_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance);
 
-extern VCHIQ_STATUS_T
-vchiq_pause_internal(struct vchiq_state *state);
-
 extern VCHIQ_STATUS_T
 vchiq_resume_internal(struct vchiq_state *state);
 
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
