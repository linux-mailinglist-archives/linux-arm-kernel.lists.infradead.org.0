Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C531EC121
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 19:38:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LxQzHBdrmLVazjczPeoD/TpPrPDiBBEGABOGB74QPAo=; b=Z3tyg/6lPD+5ZWVStZPBtI5wPk
	M49pae5o9+kJjzCTTA/mAMeMDalJTbf/6r+3U+iEvYo6RefEZ5+Ie5cE6JcGOKMWht7E1Dh5gVAII
	qJnlcPO5CT76Ivkzo9eluEZqYb3rq0cv79TGnN6FtWdPgmUNscAMCWQR0V+bVB/wYnFXf+8EMpAPW
	BxWvlo37ulEfKGsPHyZPeKivGO/tuaYq9cBXBAE4cEn0bI1W3vi8aA3UaoQmIk5WlW8U/SiuiBFi7
	6TPO9VAeAvahWfizhIR6L5jk6l5ewfdZ+h/c6OtSh9qr0A4F3IwF1gh+A6LmjAzbcH/pJcwSxMNRe
	2fBd8BQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgArw-0003I8-4X; Tue, 02 Jun 2020 17:38:32 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgArd-0003Fg-7Z; Tue, 02 Jun 2020 17:38:14 +0000
Received: by mail-pf1-x443.google.com with SMTP id x22so1078490pfn.3;
 Tue, 02 Jun 2020 10:38:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=dGaeeYOWz56yaJIcCY7o0HTuksFYq7poxtIG8aT/rvQ=;
 b=NdaPw4qPnww6iAIksXtR7ayxz8AMitlGypq2Hdgco5FHSD1OkEKscjvYt2UoST4On0
 P0Ii6Bnbr8ze/fXQJbKyqLE4U4pNJh8Daz0vQLIwXrUbFvnYH/xc0EkMDB8eepOI0mOQ
 0a7KqgwR97hphCoicsY2XhpKDlxXtFjIHtXabAcrOtYirHXZUdYYw7DHCbsC2t5ud9jO
 SPvvL+ybISZjkryMeQIwKx8YEhX7jTCkUU777Sh7X+FUYo3JkckbW6Kl9mpsThktxLae
 FzL1jgAMCLc1IpFvXprHNA6dgmTnjoxcDxcs8vQlI+yipWGMlOm66Zr7rYmPKpjmQLOQ
 OHow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=dGaeeYOWz56yaJIcCY7o0HTuksFYq7poxtIG8aT/rvQ=;
 b=OpGFX181f3+eqtuv6JhPcUNfUnjzr1MdoATMXsqoY1gaiTjTSHioyYkfojClMxcoim
 132Wy92RDGO9Ovo8hj+yjY83zZn94KckDFRPy4+2J2QY8saqhGLsp7z5gXMdgCSvjLDJ
 jwmUIFfIQONRdFstE7z+vmlycWaq76eK7acMtIjSfEnVjT7IA3j2saKMFBrPGbDha/qj
 7rIEzuBVKyJFVRvqjflp2lzyQgNiKUs89+LZYABndB5euNpcro1c6gGRuxcPB69HPjXm
 iWbR+aEq0Z/jydluWqk5JLPhUAdmiRyowyHNb6FeeU198IdjzQ7YKKpdMm2mb+vMo0DE
 6AFA==
X-Gm-Message-State: AOAM5319rmib3aU6Z9C3WRoq27/l5UtmzWj1KjZhKDldWiqMppD1wjJ0
 bs0EXR0Gztk9pWttQ+uwimU=
X-Google-Smtp-Source: ABdhPJw1rMRh9pZJav+jPZjKWaumMz1w+TAn7Jmni189X/Ii3iIsRtSvcPhq7wsM0IC2/h9NWNCt9g==
X-Received: by 2002:a62:640b:: with SMTP id y11mr1623388pfb.195.1591119492269; 
 Tue, 02 Jun 2020 10:38:12 -0700 (PDT)
Received: from localhost.localdomain ([223.235.152.125])
 by smtp.gmail.com with ESMTPSA id i22sm2864382pfo.92.2020.06.02.10.37.56
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jun 2020 10:38:11 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 robh+dt@kernel.org
Subject: [PATCH v3 07/10] dt-bindings: reset: s700: Add binding constants for
 mmc
Date: Tue,  2 Jun 2020 23:03:09 +0530
Message-Id: <1591119192-18538-8-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591119192-18538-1-git-send-email-amittomer25@gmail.com>
References: <1591119192-18538-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_103813_299670_2C4F5E05 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
