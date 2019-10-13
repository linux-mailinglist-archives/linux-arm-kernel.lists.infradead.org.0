Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25460D5772
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 20:48:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=drR7pJ0r0oJ59mucnrMyrUbFBgq/4Z88WjpCnYvGPRs=; b=jS9AgvHfcHJMOr
	QDda4ssagHRZa8d9gmZWB763GNJVv7OPb7nq2jjiCh7grpARvH7V78d0LvIiV/8Jm57HP2OZwcjjg
	Qul9+2Va/IGtomf9b/lxtFIeLOr9H/Or/le+BqDsokZQFhaQdY3RLPN1M9KCzy0SmaAbD0SNCtLeB
	2xCSlyInVuPNyf8MGoM9PpkyNRSx6f7cn7iQNa6yWotHfxR2ti18NTFS7dpkD6k9J6rNrWEc2ulFi
	b6OBEhm/b+GhkdTI9LJmltwoS268G/ceZJKBziRE8h6AzNnHgEdhSF6z8g+cp+ayT2sonoSAQ6Kw5
	FSlGHe5kd/F5ztlEdDtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJiui-0003qP-KJ; Sun, 13 Oct 2019 18:48:20 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJiuY-0003pC-NZ; Sun, 13 Oct 2019 18:48:11 +0000
Received: by mail-pl1-x643.google.com with SMTP id j11so6993345plk.3;
 Sun, 13 Oct 2019 11:48:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CeolOloPmeT1KftxvZqohSF0GTQr4950rvmG7EqO4RI=;
 b=LMJEV2LhnI60/Nw7SKRueRtun4v6UR9IX/6grkybDx8B+B0v9Ehmq6AwMQD3EnrlLz
 T31x4qCb0dMOf96n28fKNB7hh9OLhM+Gen0FZnmcaQi5qagwAWTwUurck+1UcqCNvQJm
 eKkovSONyDfHxxNvIVqjDHRfn4uRAtXwsX5wu0e8o+U1xDma0HpRZz2QP+UqEKyoL9sN
 nW+nKDBLr38INuRZIvYyEqIKUtH3TcQK8hA8Tbm8E9zpyUqYlm3psGqz08rio7VRLRd3
 Ysg6cQCKIBmQmssIEBwctG8ph8/cwb7BTONUhV8DvCnwDzDx6Y4O7M5hUa/rUWf2uMHp
 mXxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CeolOloPmeT1KftxvZqohSF0GTQr4950rvmG7EqO4RI=;
 b=b1iaWfNqg1tq1E/hmyJMVwtEgxmICuhLGBoosETW8XWxsj4X4y4Hf5N87lPZq2fMYp
 V7VcdP8eeZbjfSN89piK1I2wI6cMLZn4fkJ+1lqZF+VXTNOnBBZR9Jjt91sR6fBLsB9y
 y3o07KKPvUin30Bb5ocZslPZyaNqZEtsuYbx0g+YFF3lVHSBt64xfYpxT2M9gLUPphHo
 W7KKs0mtdN6iRxOVHgvGSyQvfPnf3vqpO4jynK057Dm954atRm7qbgmWCg0WODpt1AYB
 X8/FA3x13Ma/D4V30mG7n2lKBjNB0oNnkfCP2l+4UK3XINl/awQ9R8CDrLasha2Cx5Xd
 RuAw==
X-Gm-Message-State: APjAAAWUvm75uLY5fAypLcbR5Fc8+XzVtA5EDHiVx8Aj2LM8bYX4ZDsb
 Y4T5vaRrY8qWIlYObz88kEQ=
X-Google-Smtp-Source: APXvYqwgOspCeAA1P9HhtOsCDHA+mh6Kslt8WDA4XoK+Jt4+cpb0481gXLa03aXA8nFDe2MgtkqcEg==
X-Received: by 2002:a17:902:bd05:: with SMTP id
 p5mr25785990pls.203.1570992489363; 
 Sun, 13 Oct 2019 11:48:09 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id 4sm13813926pja.29.2019.10.13.11.48.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Oct 2019 11:48:08 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vc04_services: use DIV_ROUND_UP helper macro
Date: Sun, 13 Oct 2019 21:47:50 +0300
Message-Id: <20191013184750.32766-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_114810_792523_62F31882 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wambui.karugax[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace open-coded division calculation with the DIV_ROUND_UP
helper macro for better readability.
Issue found using coccinelle:
@@
expression n,d;
@@
(
- ((n + d - 1) / d)
+ DIV_ROUND_UP(n,d)
|
- ((n + (d - 1)) / d)
+ DIV_ROUND_UP(n,d)
)

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_core.h    | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index 63f71b2a492f..75104986201b 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -60,8 +60,8 @@ vchiq_static_assert(IS_POW2(VCHIQ_MAX_SLOTS_PER_SIDE));
 
 #define VCHIQ_SLOT_MASK        (VCHIQ_SLOT_SIZE - 1)
 #define VCHIQ_SLOT_QUEUE_MASK  (VCHIQ_MAX_SLOTS_PER_SIDE - 1)
-#define VCHIQ_SLOT_ZERO_SLOTS  ((sizeof(struct vchiq_slot_zero) + \
-	VCHIQ_SLOT_SIZE - 1) / VCHIQ_SLOT_SIZE)
+#define VCHIQ_SLOT_ZERO_SLOTS  DIV_ROUND_UP(sizeof(struct vchiq_slot_zero), \
+					    VCHIQ_SLOT_SIZE)
 
 #define VCHIQ_MSG_PADDING            0  /* -                                 */
 #define VCHIQ_MSG_CONNECT            1  /* -                                 */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
