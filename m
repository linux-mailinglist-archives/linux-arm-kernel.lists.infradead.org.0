Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 651371DA03B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 21:01:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kFdk5XN4NX8Z9XCQdz0xDbs9mQY0nr6nBF/A8CphsoU=; b=er1BBleNT+W1x779Fa6zYSOIUK
	76B5fGm87TtYIk1HjvjAs8SUVZhOOVCI0cyNaICf4WKPFsEbI2W0c9bVtnvSHiFQoBB9xmsnz9u3D
	1Guy+rwp4UiMUoYZXxcWN+3fJyXubd9Vbmba9AYLWkBNkD3r/16c+wGLcaNnb1vc6itbhl4Qyrp4w
	ne/thHAKBXNOlV3iRlGc1b1GwRmmTRD4XIaQ4IjxI7G9wPJPSpZQn7/3YjZBps7vIttGfzmD3P3LU
	czAaQBvWm4lAeF6iLdsWDZGEJ6CJmNxHbmGpWlVeeqcPb3uBWvrp3zNEVCOM/Z3TD0mpiyi5l1DPD
	kO/xhpGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb7UF-0006zP-Vd; Tue, 19 May 2020 19:01:11 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb7U4-0006y1-Rn; Tue, 19 May 2020 19:01:03 +0000
Received: by mail-pj1-x102c.google.com with SMTP id q9so87642pjm.2;
 Tue, 19 May 2020 12:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4feI+F4dRQodabQ0vztzMEpXoHHqdtslcAebc48QhuQ=;
 b=V8FZpf9QB5HvMPWR4n2yipk9nAHt9lzvzrk6aQhYx4qGZGtM8zGW1kD1vlNBWhqXZD
 UPT+1NbzpBylVFdJmd8Q3sh0r5J+rSQ8xaecm827s7eZ6aWHsPfJUB07EMSWZTkH2Dgl
 kSEa40EoyZYqiUZQxNeTFf5JrRXjZ2grV/m5Hua+0lvcXNZ2uhdupCi/eN1jQltTJnVi
 C1vPOZ8S8IqyFZu8i1Z1zvPJtgSRX9mRcWgZ8dqpnaJujEOu0u7QyWykd8c6KZGoCoy1
 aSwRfyDC0sGTpFfPXRJn++C+NI0w5ouPjaCuWxY9box11Dzy10potOHKjUcOKCOgA6GS
 LkVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=4feI+F4dRQodabQ0vztzMEpXoHHqdtslcAebc48QhuQ=;
 b=AJZ5PuU2zCvYTuDE5Nf68zx8etRsLWyT0iRqFzQ85Qknc0CzWT2JAMKR89M8BQ4tFV
 81wvPm/kg9jMCZQ8M7Q+mJWIs9h8FDaEAfZzYI2QeZWAdVSK8A7A9+thnQqrxDtHELgT
 +Mdk+lfBljTyMsO/pFYbyGBd2LTH/kyzTz0ArCitcMKIv+3j9NoEGIwhZKk6A17I2tWj
 bBywNcT5iY6EWeEhITi9k/P8rgDFMp6DSz381/aNkt0S6i/TDLRo9o8Cl7AUf2iId/t3
 4NeYXmfGddD3WTe3YKeT5TOPpN3DnJSOh8Lm68AfCn+cFOO1kzdDLRTUDBswZzT8ZPsJ
 PtRQ==
X-Gm-Message-State: AOAM533JAEAktQCgcTtjaWYOaCzzMUPBtg6uNKXe8u0gYySBbEsPY0F1
 f9pt+fWapFFV0SLZfSsECvE=
X-Google-Smtp-Source: ABdhPJyiZ6GUF3NCEj+eBq7SSQdZCUNXewKkRllO1OxTLTo3bNYNftWhBN68lnt53o3fngDWu1RNpQ==
X-Received: by 2002:a17:902:465:: with SMTP id 92mr836874ple.227.1589914859887; 
 Tue, 19 May 2020 12:00:59 -0700 (PDT)
Received: from localhost.localdomain ([223.235.145.232])
 by smtp.gmail.com with ESMTPSA id k65sm196128pfd.156.2020.05.19.12.00.53
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 19 May 2020 12:00:58 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 robh+dt@kernel.org
Subject: [PATCH v2 07/10] dt-bindings: reset: s700: Add binding constants for
 mmc
Date: Wed, 20 May 2020 00:30:34 +0530
Message-Id: <1589914834-1728-1-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589912368-480-8-git-send-email-amittomer25@gmail.com>
References: <1589912368-480-8-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_120100_899387_60A7BC62 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:102c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
