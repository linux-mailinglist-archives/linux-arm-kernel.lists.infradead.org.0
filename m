Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8AE5570A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 20:20:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=weL3BRyHS3TQ+2zXfr9MLKvKiffv/KhJ3WOFNa/Vlvk=; b=HglYGm1uIAGcNk
	/oXaVhGV2TzkJyiJUDUYT1btfIBh02Wyid9DgeOcqfEKwndEv/wvDeWAyWgruymzNPGAgr9tGAwr0
	XpH7ga9p1Z1IOo9g3bGOc3RxEyo/CIGJqJMVQrCoyfstW1J7DSPRXgBsZzuSfmihMuliwsdWUBSNl
	9xNCyfiVptLshxc1yFgpukZnpkMwyQNgZcjzS45gZs8mL0+WAwMamsGJbJIsgf2XUGuHjEOeAhBBg
	Ac8Jo0fnSnIhMrKHayp/hfNq4V+VT7rhNVmDHlu2GIzvdIs958FmjlQzdAp8Uxf+FvNs7HOqdeAI4
	YvKh3wrx+kOk1D/HMAwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfq3Q-0006v0-6W; Tue, 25 Jun 2019 18:20:28 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfq0n-0003ti-K7; Tue, 25 Jun 2019 18:17:51 +0000
Received: by mail-pl1-x642.google.com with SMTP id ay6so9232067plb.9;
 Tue, 25 Jun 2019 11:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lUeZCQu7IkZyTo6f12/xdvpIlBPtEGZlNE9DSsLV+Ac=;
 b=p0xaDUw9wpzK5XCs9BWhC1JhfcU9lla/mab2ubGi5iGBKqf+d64Q9ti1qyZvpr0o0p
 mFwLMsI/VzpvDEm0gz7xs4N6qeFJDXQwJIftrhHtHJG5tmzkYtjxLN6rL/rv3zyu6IHs
 XhIk5h4N05NwP8cHWGrft6RmgCuV3YF3DuN4GZ/vuDoIeAR8MgbVKcH0cCBlWUApTInQ
 DhD9DGbiB5RJHBkoNEPdLtdPZoQa5Ud2GTk28pWNvbjfAGnX9d/40+ge2ZqhvcbPXA8e
 PcZqCO+5wZRAH7S6zOqLSDmJDx2CqntWw9H55YRdcashfJ5vyrURNpBY4KDh7u9mmiE6
 uHSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lUeZCQu7IkZyTo6f12/xdvpIlBPtEGZlNE9DSsLV+Ac=;
 b=U+V6ZcbbCJFgc3ldgNzDtfxxr81sI3DKGkQ8QpaVOFk6pLnu3wu9kET89iGg8uI20F
 p35G68tuO+T9/y9XsQKtGX6U1F8La6YOtI19fj4AKpcWLTa79pA7gDrRdwh11jlcHf59
 zjjAYvVY2cGZjYX1AIffuHsNGmrV2Z1n3KehRYZWwD1KZq0e0zU/9wwjErJdyMsjfKZs
 OlHMstVwAc0fthNw/2dguIszEC/XKAKkAZkWUj9tBldWggsNYy5OXg5r5lPYVoPhneK4
 fKQDkHHP0twStoAgW1FsxuKXgla/h9Oz7ywDlWWQ5HOVNtZ8Meei9PZzibGvNkfRF3O4
 dnQg==
X-Gm-Message-State: APjAAAVjDuB9Qpm+4uXKf3z1P82cT7rNX1MeyJhcUfbqEMsh1DK4hmlj
 uuvc+j48IENL9OGkx6na4UA=
X-Google-Smtp-Source: APXvYqzpSRRotp9f+BDQ8j/fYEO7IsawFqRe3jEzRo71rZcIGRM6NFM+Gv1j21drEqHDO76DP0kGig==
X-Received: by 2002:a17:902:aa0a:: with SMTP id
 be10mr2479plb.293.1561486665088; 
 Tue, 25 Jun 2019 11:17:45 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id w7sm14042959pfb.117.2019.06.25.11.17.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 11:17:44 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: eric@anholt.net, wahrenst@gmx.net, gregkh@linuxfoundation.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org
Subject: [PATCH 7/9] staging: vc04_services: Remove vchiq_send_remote_release()
Date: Tue, 25 Jun 2019 23:47:07 +0530
Message-Id: <20190625181710.2267-7-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190625181710.2267-1-nishkadg.linux@gmail.com>
References: <20190625181710.2267-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_111745_724187_6FF0C8BC 
X-CRM114-Status: UNSURE (   7.14  )
X-CRM114-Notice: Please train this message.
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

Remove unused function vchiq_send_remote_release.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_core.c    | 11 -----------
 .../vc04_services/interface/vchiq_arm/vchiq_core.h    |  3 ---
 2 files changed, 14 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 5e231cc5c87d..183f5cf887e0 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -3538,17 +3538,6 @@ VCHIQ_STATUS_T vchiq_send_remote_use(struct vchiq_state *state)
 	return status;
 }
 
-VCHIQ_STATUS_T vchiq_send_remote_release(struct vchiq_state *state)
-{
-	VCHIQ_STATUS_T status = VCHIQ_RETRY;
-
-	if (state->conn_state != VCHIQ_CONNSTATE_DISCONNECTED)
-		status = queue_message(state, NULL,
-			VCHIQ_MAKE_MSG(VCHIQ_MSG_REMOTE_RELEASE, 0, 0),
-			NULL, NULL, 0, 0);
-	return status;
-}
-
 VCHIQ_STATUS_T vchiq_send_remote_use_active(struct vchiq_state *state)
 {
 	VCHIQ_STATUS_T status = VCHIQ_RETRY;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index b5e09d52b202..63f71b2a492f 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -639,9 +639,6 @@ vchiq_on_remote_use_active(struct vchiq_state *state);
 extern VCHIQ_STATUS_T
 vchiq_send_remote_use(struct vchiq_state *state);
 
-extern VCHIQ_STATUS_T
-vchiq_send_remote_release(struct vchiq_state *state);
-
 extern VCHIQ_STATUS_T
 vchiq_send_remote_use_active(struct vchiq_state *state);
 
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
