Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 049D4556FD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 20:19:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/xbBTKXnfRP6Ab8etYZXg4kg47zMsKUgmHiuqRVKIeM=; b=VWqVYpgzHmsxyA
	n/8dDKZgc4Q+gzM9l95hELyF618o58zLCNHXS/4F1MyaQ2JmU71PaWzvXwpEt070WqSuKgJJxVma5
	fB2CwGUoqlOxn3rrTPgUJDkw1Stz8ZgqgqK88jgnmj4Fxyx+ANureWDgs/6VvD5dfAEikElG9yORu
	KlPGOGfcehnzOhahAo7IGs28KdhJ59YOEvT8qMoVw+NerL7Of59MnGEGWr8yWGX7KZzO+Mqaxrw43
	l+iA75emLXiVz5wI8WZCzzXjVcEDhM9vN1hNZjmIz7BYtQkgNrnW4ggVMuZqpW7tc0aH19wV2g6OM
	0qVz/uv/b8KGFrAP9rlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfq2K-0004ub-JK; Tue, 25 Jun 2019 18:19:20 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfq0g-0003nx-PE; Tue, 25 Jun 2019 18:17:40 +0000
Received: by mail-pf1-x444.google.com with SMTP id 19so9899238pfa.4;
 Tue, 25 Jun 2019 11:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TPd8ferAVo0HvYrCWk5KrEQ9AnVSJ83ueSCdzT8Hy3Y=;
 b=Glm2fnCH5Knprr1c5OUlWUeOYPwxM5GitpTmCM+Oo4HEF38UyXNm4b01UYCaefch6v
 Um9Sj6ISGiadSFIt+UAN1pZmZd+yvXAyt6hG9duvXdOhlmjM5IHuUNEfR0JBLZ8OZEk/
 0vG4txuXrHSM2JvHWkkm+OuZCppMbOgaNlRq0hjz+XM/aGRfqbYwyYefLFleuTy1A90K
 PDUf6kvEnHf1v6IuU+z2+UldEbFIhdIQYHOn6faMiuYKubtIs9dC3uP9BF0XLy4jVuuf
 RH6WFUBYdIFWI1iZmPNQeDATEUsED5wuTndl6DQEsZrlI6mDJ+BRQ6svewQBpB9UP9B9
 qVZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TPd8ferAVo0HvYrCWk5KrEQ9AnVSJ83ueSCdzT8Hy3Y=;
 b=OXoawAujY6KbJXww5ojXvys4diS7dN/L62ZBhXZb6zvW99FwRFlYpAVCT6xre8REFO
 S+XEtZER3O36x9rniryvaee1sviuO95qUSpcciaBQbdKdnvjFUpcejUT2Ar2Q3XX8igJ
 XCd52MpA1vXzoXW8Ygkd6ppUjH30G2jsS91vfM2JZ8b5oKNoriDyy3i12vZHz4Y7sOPq
 4NDbQvHlBI9HKtDURiNtajNKjJnT1XMexJN7XtSeAXxri+J+CYpgI04QD0OOgWv9RBLM
 agkPal7aDF+MiPRfpJ3WCFCwDVEEEgaiVsOgnykAcwtsD+dht5f5QIjEvYzSo3E2NeYx
 sXyQ==
X-Gm-Message-State: APjAAAU7S39t8M/Jeu+r4mDP6j/6sdP1pWk3orQUcG/jyVwJurEMufqa
 t0qz0AlzpdEuZl6k7utPV1EHfo4tECY=
X-Google-Smtp-Source: APXvYqzq3ns3IcREp9Pgz/jP+aV8t5Ma8TdnTIJ79KzabdlwjSRqsHg7+tNbvorfmyAB0jV5TX/SCQ==
X-Received: by 2002:a17:90a:dc86:: with SMTP id
 j6mr126154pjv.141.1561486658147; 
 Tue, 25 Jun 2019 11:17:38 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id w7sm14042959pfb.117.2019.06.25.11.17.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 11:17:37 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: eric@anholt.net, wahrenst@gmx.net, gregkh@linuxfoundation.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org
Subject: [PATCH 5/9] staging: vc04_services: Remove vchiq_resume_internal()
Date: Tue, 25 Jun 2019 23:47:05 +0530
Message-Id: <20190625181710.2267-5-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190625181710.2267-1-nishkadg.linux@gmail.com>
References: <20190625181710.2267-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_111738_847947_5A51EE83 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

Remove unused function vchiq_resume_internal.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 .../interface/vchiq_arm/vchiq_core.c             | 16 ----------------
 .../interface/vchiq_arm/vchiq_core.h             |  3 ---
 2 files changed, 19 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 7f093b2679ae..5e231cc5c87d 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -2830,22 +2830,6 @@ vchiq_shutdown_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance)
 	return VCHIQ_SUCCESS;
 }
 
-VCHIQ_STATUS_T
-vchiq_resume_internal(struct vchiq_state *state)
-{
-	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
-
-	if (state->conn_state == VCHIQ_CONNSTATE_PAUSED) {
-		vchiq_set_conn_state(state, VCHIQ_CONNSTATE_RESUMING);
-		request_poll(state, NULL, 0);
-	} else {
-		status = VCHIQ_ERROR;
-		VCHIQ_STATS_INC(state, error_count);
-	}
-
-	return status;
-}
-
 VCHIQ_STATUS_T
 vchiq_close_service(VCHIQ_SERVICE_HANDLE_T handle)
 {
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index b319031145ed..b5e09d52b202 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -518,9 +518,6 @@ vchiq_free_service_internal(struct vchiq_service *service);
 extern VCHIQ_STATUS_T
 vchiq_shutdown_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance);
 
-extern VCHIQ_STATUS_T
-vchiq_resume_internal(struct vchiq_state *state);
-
 extern void
 remote_event_pollall(struct vchiq_state *state);
 
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
