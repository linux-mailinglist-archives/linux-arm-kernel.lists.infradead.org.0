Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B3A1EC12D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 19:38:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pqAMmblrWYLHvrIVq5JJMZyLoquSCT/0JSJQ7XjV8xg=; b=iCbEeVkpMDCeTEWRcjuT0I21Xp
	MoM8TbA16CmOWp5iH356YTgjhr666GFBNqK2RAt4FgHJs2wSsKtcmfS7/V4OSEUiimIH7FeIqfMRe
	a5Lwhoc9RR65KzlPB+NC6KvBAyGtX4nKKe8E86NPB5Yf2yuGBxzficNCrcYeZMhrYNJ6NBEyRZBU7
	WJ/JszHcAQdtK9zw1SMIYM1QdD2YzvDvAPr9C6FarAvZwU0tBP/HVGU3UvG6j1GNNM7D6fNObe5Jm
	mL/94C+f4hhDmTUM9RlA2uTwTf28tIJ2vmrTJ7nrrdfT8Kqqf4vmnSzUE0PLLz6jGfyCc6dG35dCQ
	yHdTANxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgAsG-0003XB-0V; Tue, 02 Jun 2020 17:38:52 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgAro-0003OF-IJ; Tue, 02 Jun 2020 17:38:29 +0000
Received: by mail-pl1-x643.google.com with SMTP id y17so1626131plb.8;
 Tue, 02 Jun 2020 10:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XeNbazw1P1YVFCnm7oMnOTxBVQdBw3FZCn0wbADRtR0=;
 b=GH5mz9tyVo80fGEjOQsOXyi0jt77vrrK+rlvCqZ3DFfqqH003rhfSxrTkuHF2FAGZP
 pqDJ+t0ZUCqX6LNn40VrrMuGlvrDi+5fIRfOfCA7xUsPZoCsm/01BwBkD3bKcze3r54Y
 lYsSYAEgPBnzlkbsaMh6LYRrXfGUNqrRHc591IFM4dr4Zma4UuDD0knNOKhTRlPkdNxa
 M5s+m1wuPnFMjESHMstWNxVZFAOxmCfjOBGWFb7d3P4lBNK6MGHObGevRWVhO5Vb0rTl
 BLvdBwa1Dz3ID1B/qEWuphpFAs/2F4Qx0dN6RAflF6fncUljVOlhhTkQHj3FFDppY9ax
 0QYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XeNbazw1P1YVFCnm7oMnOTxBVQdBw3FZCn0wbADRtR0=;
 b=KY14Qi3CwE+0mXiwn6Wwx+jlxE+5yEZYjRV+147wJ8YE+hkMRFgOJzYxLGUU/DVP/b
 GuYGXy5ryMcOsYK6BBylC2ww8TaE2x6S8PYk2TG9BC7+nH6SBmz1mpr0jgi29ouLKxLc
 ytfSA+t46jwBrABwXK1TLBkk+/S8roifYid89xiq0ybGZMj9IJ7by7Y7HJlkZBLpZbqB
 DCtBXb05gMQrb7OcqRZlTPvzieFwdADKWS8y3+ZU1hNebWu/bMlzJsXuM6udcG1ifQwV
 vUOH1Ru6+U8b+NGQhkcA10SYSImhDPhEHPkG8MGb7kX/3zwQ3xGU6O9dX0gbHIVqr78S
 R/PA==
X-Gm-Message-State: AOAM531cR1ynWJR06Wy/M2YqI4ts4OcfNJRaBYCm60BioiRkvn4212au
 aW/BIgwNJx80QO2yQ+uJmNs=
X-Google-Smtp-Source: ABdhPJw0ktkLtrEycPLvO5BT43WoQJ3oBQSZ68ny+5lfVBOCFIl8FdRs8aMT07hzjZKPRM42+st6HQ==
X-Received: by 2002:a17:902:cb13:: with SMTP id
 c19mr249414ply.51.1591119503290; 
 Tue, 02 Jun 2020 10:38:23 -0700 (PDT)
Received: from localhost.localdomain ([223.235.152.125])
 by smtp.gmail.com with ESMTPSA id i22sm2864382pfo.92.2020.06.02.10.38.12
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jun 2020 10:38:22 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 robh+dt@kernel.org
Subject: [PATCH v3 08/10] dt-bindings: mmc: owl: add compatible string actions,
 s700-mmc
Date: Tue,  2 Jun 2020 23:03:10 +0530
Message-Id: <1591119192-18538-9-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591119192-18538-1-git-send-email-amittomer25@gmail.com>
References: <1591119192-18538-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_103824_633639_DA6286D1 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

The commit adds a new SoC specific compatible string "actions,s700-mmc"
in combination with more generic string "actions,owl-mmc".

Placement order of these strings should abide by the principle of
"from most specific to most general".

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
Changes since v2:
	* Added Rob's Reviewed-by tag

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
