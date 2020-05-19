Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1591D9F47
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:24:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8+eZyazzQYkkEGLFMU6BFLvHmsJF7WQ6Y+WlDKCCxcU=; b=NDHIwLNb43oomAej9+QASRSo4c
	76hSCSbZQIJOwT8XmT3BDjWkB2UvLvX/FQIBW2f1c3S8ztnMbvGmVBvryKoatzpAYpDxve5yCgxa/
	ZpLaYmYEiLAiZw7ihqVtcUDivWCNmX89bWjbFoSuGyNXs8RMkw0cD4YYeYt5DOOxBcvGRS9sEYHco
	xJDzx3cFUz4lYb0jfOF4aoOxW2auVdNbISSPWr4Bn/4TJJ2Bm8fQLSjeouTmFIM6hbNjObRHQuYkd
	fuQU98XU1Gfc9GYl/vNBpS4nrk4VmfGlFxck1bHWRoY4wAfnIgYMdMp7tzjvExDQOkrE6pOAXyg4w
	WgXPy27A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6uf-0002cj-Jj; Tue, 19 May 2020 18:24:25 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6te-0001mm-RM; Tue, 19 May 2020 18:23:31 +0000
Received: by mail-pg1-x52f.google.com with SMTP id u35so216756pgk.6;
 Tue, 19 May 2020 11:23:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pY6IgznDxAaGRWUcar2fz3AD/53JsyaALJvf9wFhAgA=;
 b=gRNHQA0pz607JvoqVJm2IubjGeiiTMeCPMpCFYHAinmY57/Ye9rysGC8K7QZ+rN+G/
 hkphW2IdOQ7s5iJ0GowVQio/7C7mdVwfUJ1iHDaZ78h/vETXXl6h6vnc9tT/sgv+85GA
 EpNGqaENTkYZ8HnMMbEu3XWswu2H171+FqWAH2ahAxdN0GQM9fDAu692SE00SK2RpO95
 YWAzA7Z/tl71Fp9l3ddsH4XquvZhhYTy/Ym4IBKtIeQ7hfmVCVEvBQaBRb/3rremveIZ
 OzERoM2/yAHU6kMO1yaMjeZBSXS1nk5DW5Ueiq2E7CaQgtfr+m/X0t871vqpPKgKjq6T
 NmPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pY6IgznDxAaGRWUcar2fz3AD/53JsyaALJvf9wFhAgA=;
 b=VsuiUVycnXu+gST4LA2BbQKm/P4vxO0/3TGbyJe9CZKTv4HQY4LMhoVLVeZuBQ5fYn
 NlYTJuJMjvgVT+HlZTuwtc796tRrfMwwpLQGWS/z000Ciwn1nMXXWAR30mI5PZJAUURH
 OTP3QijCcSOh33e4Opvelh010wb6xwB1lI2dQUn91rRayLQRRknLEtk3aPuY0GFcptd3
 9+h8RH16Kr7vVGFu23btVZoSvizrvsKLlKxgM9wn/dkwSJ8yaHDE8uvt6s9zA3Lu+aZ+
 I/K8cph4TURmCQF813+1AiYFd676vPRKk9lZwi1Oinis4dC55gvphLcpjTS/acy9ucl9
 tsmQ==
X-Gm-Message-State: AOAM5316COcVLHzsDd+/poWwYPV7cAUb8zjP4hktHlNtvRjLH7bKM07I
 uG7JW07eNZ38iwabpV4OCO1TmSvYvBuY/g==
X-Google-Smtp-Source: ABdhPJyCz2MwrtoM6b5u4yUidSGcJSh42+g9tYF/KmB0+iSaq7zg5FJPzcLtmzRh8bRdziIxxGyq+A==
X-Received: by 2002:a63:1c04:: with SMTP id c4mr509936pgc.128.1589912601748;
 Tue, 19 May 2020 11:23:21 -0700 (PDT)
Received: from localhost.localdomain ([223.235.145.232])
 by smtp.gmail.com with ESMTPSA id p2sm148399pgh.25.2020.05.19.11.23.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 19 May 2020 11:23:21 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 robh+dt@kernel.org
Subject: [PATCH v2 07/10] dt-bindings: reset: s700: Add binding constants for
 mmc
Date: Tue, 19 May 2020 23:49:25 +0530
Message-Id: <1589912368-480-8-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589912368-480-1-git-send-email-amittomer25@gmail.com>
References: <1589912368-480-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_112322_911823_26CFB6AE 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52f listed in]
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
