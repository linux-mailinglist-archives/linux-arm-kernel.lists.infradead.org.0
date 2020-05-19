Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6751D9F49
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:24:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=s6UXk8WNDMJw0uhMWis0MOoh05n0SBe/miNnQYkfuhk=; b=kG01e3Y6SB3aJxV7EZJdjOoRxw
	M+eKeWSwlwnSuRxrxUxrtLEZrw9V7XneXYOiwMBTFss4zD5fK7awlNx4qrOzBSsqGilzwdiPsT/U+
	1Eto1bvTahwm8TXXoo/Ooi21X7FmueWHRarEh/GFFXC9uuCotO6AiLJ8jZOXRsyOYNYJNvRSxRxgP
	+t1eSMMAvQEO/9ruo/67eRvlaY2dwM60hz7lRq4dNYC1mmKC/lKjiPYrNJ5v3uM3mlEyeGI6xmtcJ
	EzAEGTCQciZy1fU8x/7DM7VjbPeeMIlLE4jTG0BJn7oMdbtzlQ7GFVvuye59C3tYXszl0hPL9bLmn
	l6MNGwPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6uu-00031Z-Vu; Tue, 19 May 2020 18:24:40 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6u6-0002G3-68; Tue, 19 May 2020 18:23:56 +0000
Received: by mail-pj1-x1044.google.com with SMTP id a5so51303pjh.2;
 Tue, 19 May 2020 11:23:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wSo9ZWps0QavXFno9IQcZKPqnZAGp1Wm8sA63wsuA8k=;
 b=Pea7GJeWkrC+6aUhH0lcKM3rmTYVbjQuee4ewsJWaENhpOel856SdWQdS4/6wX0f6c
 i5VSliI+4fLITf0UxCEJRiOKN+95ljBtJWULznZ+9wgNWnwzGzMKsaW4e0jvsB7Yp8XD
 zgl6rTts2ShFM/J1t/4vKaYBKh7XkHYuGSADzeTMzoeVUkvJBPzdoOxQtOO8x1ZeQA5H
 RsehQaWf6W5M93ZTVrWm6qZcVo2KP+Ihp/DE+fzjiy4+VTeSRHkJi49pbKhbKE+KW1lV
 HjDIwcJ3cArfnyAX8rDiFHvHrG4+UT//D/+XxUYnvQKm0DwIL/6UQe7WRPqsTv0QVy6u
 tDsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wSo9ZWps0QavXFno9IQcZKPqnZAGp1Wm8sA63wsuA8k=;
 b=a3mr7IzCbjhkVBfW+jWPqACKWfhEzakK0TbVnNydjy2CgB+zPnf+8xGEuJMDsu+PCk
 1pgo0ElU09rwlVkswVOGsPNTfJ7ubqBvpss6PnhS06F0ZLWFgz816XyCrsZAcHStpMcr
 O5jlUr0svNGxXSHFQPhBwHI/CBT5OeDu9+2CX7jOA+jgl3DvJZVusRNpqrotiLgHRLeC
 MJee69GjWW2k1ARSx2+uJsh0/n4hGi2tiUgvbyKTDPaRutnxub709TZbpmX6TduHBvWk
 xsIS4kqUcQ8mXzczc2eKgkrm9ByOm+95N5sus6J7QeUHNHHge3eAz2fTVCJkGHa75OSj
 weVQ==
X-Gm-Message-State: AOAM531pBBPUylaRoN8OQHow0u3/bJ+N8TGp1yhhCkurZDZb/It5Q/a2
 tSX9QZzdLcsIXjAukFHqWjk=
X-Google-Smtp-Source: ABdhPJyMHMiXwlwWs/rkZn6KSMkxndpITLpn/MTzrFfd5CGzHkXrMI3Lu8NEOcDBdhZcqfrgGYfx9Q==
X-Received: by 2002:a17:902:bf43:: with SMTP id
 u3mr739065pls.240.1589912628279; 
 Tue, 19 May 2020 11:23:48 -0700 (PDT)
Received: from localhost.localdomain ([223.235.145.232])
 by smtp.gmail.com with ESMTPSA id p2sm148399pgh.25.2020.05.19.11.23.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 19 May 2020 11:23:47 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 robh+dt@kernel.org
Subject: [PATCH v2 08/10] dt-bindings: mmc: owl: add compatible string actions,
 s700-mmc
Date: Tue, 19 May 2020 23:49:26 +0530
Message-Id: <1589912368-480-9-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589912368-480-1-git-send-email-amittomer25@gmail.com>
References: <1589912368-480-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_112350_298556_FF4BAD30 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
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

The commit adds a new SoC specific compatible string "actions,s700-mmc"
in combination with more generic string "actions,owl-mmc".

Placement order of these strings should abide by the principle of
"from most specific to most general".

Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
	* Newly added patch in v2.
---
 Documentation/devicetree/bindings/mmc/owl-mmc.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mmc/owl-mmc.yaml b/Documentation/devicetree/bindings/mmc/owl-mmc.yaml
index 12b40213426d..9604ef695585 100644
--- a/Documentation/devicetree/bindings/mmc/owl-mmc.yaml
+++ b/Documentation/devicetree/bindings/mmc/owl-mmc.yaml
@@ -14,7 +14,11 @@ maintainers:
 
 properties:
   compatible:
-    const: actions,owl-mmc
+    oneOf:
+      - const: actions,owl-mmc
+      - items:
+          - const: actions,s700-mmc
+          - const: actions,owl-mmc
 
   reg:
     maxItems: 1
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
