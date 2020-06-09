Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7601F37DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 12:20:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Iz2uRS5c1BWWVjwsU3G7bMbTO++rdv5jM5ycvU+0RLY=; b=uYca0/x7iR1tX3rm1lD19lr9Mt
	JmLPCa3T0dQkJRkaWaObkUbX2kZKq9uszoRKJfhm2DVFdccgA8W2Iy2EFpslJ0zPnkHhf0YksTeWp
	II2N6yaAjGeh2Xev7tpIB2rFoUjzMRgbM+CCsGMovPsujG9bdUi+ll2/+Em+9yeHaZc6zFkKSO6YA
	Zthg09TBe2koqJ3p+toRJkG+ZXAPXqAKeLAYOMahnYyqb5xnTqxSXm1lwEvceZEBda61+Ktls5c0s
	yWZ8rXFXglxY5NEko0YJAXXxGvd0h+9qaG6QT0U5G07+Khrb1XD6meUjSxtMed+z1JIpFVbmOOR8g
	8yMLL55Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jibMS-0006tO-BF; Tue, 09 Jun 2020 10:20:04 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jibKZ-0005Sp-Ad; Tue, 09 Jun 2020 10:18:14 +0000
Received: by mail-pl1-x642.google.com with SMTP id bg4so7863018plb.3;
 Tue, 09 Jun 2020 03:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rwQBB3SQ45lNIAYQMElQim+hOPVHVp+Rp81J6MgbD0I=;
 b=BzkKWAcSP/q6sOnyq4AwirGqrIlB35JDTGq1wsCd3o9BKNuhKxNNsXIaceQA/AfuOR
 pbcgLOFMaxWDhWYHbP+etR4jTp419US6hhblVzcrns758do6cFzq8O17z3nydFfky2yt
 wZsL/RPm0A6ylUaCPLsp1U2flzilN5ROrpGu3HUFBRk+EHWN1fOMeTfwBxjpXVbuyd/R
 3EEzZZ5nK6A0xAdTL2q0/vfEluRc0MtUJCauodAxA/y+dVL2T3NxapKyJULhyLAZ6BDE
 6U+SGjKjKkWeP9dObhKGsg9wbaZICGrUYmACmp+XE+kbUFdSOjl7W6fCKW4gH4VBahNy
 IGHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rwQBB3SQ45lNIAYQMElQim+hOPVHVp+Rp81J6MgbD0I=;
 b=latL5RICq+GNye83i97Lv5epUMS+BJcS7V0UqCndtmYxW6IyCUipsYCU8iVPQaNQrk
 rdtKlds5wIwIIyD1WrDzgUygBNgp5c/y3XeTqdkHU+YjS25ukSUn5iIIHt62QtChvhlq
 mV30u/aNJUtBQqKZI9VSI0NQ9gIT3T1oxURlW7A3g81j7M0gM4myEpd+GuAfd83RoiiP
 X/TcqMRWsmc8hmtAu7qPVt56R2/pgZd+5ou+j7l9m5vHB/eLRZmUDU9JPtS0iN70Ge+Q
 NFP69hbRa7whculxWXDHsqce6qUxJcm2nh5FBTYzhdqEJk+c4Q2Ca4GXUkwofqjr5Lb+
 NWlw==
X-Gm-Message-State: AOAM531BUq60ZhFVdEIJPtMn7k1iVnwHPxDDviYpPHPWqmMjUIRf522k
 8FE4IzK5mLf+VS3llVhIGgdZzVuHPJ7OEg==
X-Google-Smtp-Source: ABdhPJyp+Ff7aKSbdfsIg9q+VMKOm3dyndijjSBn2liztrRerMuSn+XqLSxlfR+E2UiBJqxwg+TYDA==
X-Received: by 2002:a17:902:bf48:: with SMTP id
 u8mr2540416pls.15.1591697886808; 
 Tue, 09 Jun 2020 03:18:06 -0700 (PDT)
Received: from localhost.localdomain ([223.190.87.90])
 by smtp.gmail.com with ESMTPSA id d189sm9637253pfc.51.2020.06.09.03.18.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jun 2020 03:18:06 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 robh+dt@kernel.org
Subject: [PATCH v4 07/10] dt-bindings: reset: s700: Add binding constants for
 mmc
Date: Tue,  9 Jun 2020 15:47:07 +0530
Message-Id: <1591697830-16311-8-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591697830-16311-1-git-send-email-amittomer25@gmail.com>
References: <1591697830-16311-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_031808_043712_018168D0 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 cristian.ciocaltea@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit adds device tree binding reset constants for mmc controller
present on Actions S700 Soc.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
Changes since v3:
	* No change.
Changes since v2:
        * No change.
Changes since v1:
        * No change.
Changes since RFC:
        * added Rob's acked-by tag
---
 include/dt-bindings/reset/actions,s700-reset.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/dt-bindings/reset/actions,s700-reset.h b/include/dt-bindings/reset/actions,s700-reset.h
index 5e3b16b8ef53..a3118de6d7aa 100644
--- a/include/dt-bindings/reset/actions,s700-reset.h
+++ b/include/dt-bindings/reset/actions,s700-reset.h
@@ -30,5 +30,8 @@
 #define RESET_UART4				20
 #define RESET_UART5				21
 #define RESET_UART6				22
+#define RESET_SD0				23
+#define RESET_SD1				24
+#define RESET_SD2				25
 
 #endif /* __DT_BINDINGS_ACTIONS_S700_RESET_H */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
