Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D21551CB0C4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 15:47:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=w617EodySCBPBdTdBmKrFELfwABlLr/7x1o1bfueNxw=; b=jL4
	OeCB80ML0IL2OztUK6po36iICcU7w+ltzWU6zoOu91mQAsZ98J+1Rs01eCW4UhjFPnfafylxvIn6c
	VAMKMh938jQ1g/jqu2hWFoUaZmzn1fl64R601J5p9xyylaPxJPCXODPipSp3YGiCE08k7VF8mSg8x
	+pioDUFu2xnaiX9g5IYo4pQsyhHzi5waIPqf00XCwFY5LIYiQOfQtEqodJfQBoxDg4KjaipiyDcEt
	12DlLUPBN2WG9f+c0iG4tldWR6lwmJLyjazxOwLtCmVKFfXupufYrA9RUJ0ZJojhiJRkiw1TjEgN0
	dnSkLsQK1fc3CBR59kLLW+CKCZJMarg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX3LM-0005af-L4; Fri, 08 May 2020 13:47:12 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX3LF-0005ZK-LL
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 13:47:07 +0000
Received: by mail-wr1-x442.google.com with SMTP id e16so1916669wra.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 May 2020 06:47:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Ie6+UuDf+byXPXqX2PqIi5x7CCl0W8NA5IcDm5qQXXA=;
 b=m6+WB7dkD5OY5SUi5lv4lAQ0mBcKHk146e1QwqFyiJLMV7m2seti2PPWrL7Mtg7jPO
 fXjmH/Vnwq/PvdNM4rnRQR2Tdqjfrj3LFUvE//ja5RmUll82j+lwt5OjJNUex+3tSuvB
 vdD4nx5w3ghYDD5wcoyKT9xS1a8iGCzZbYjXujuK8CbZnH5rGkqLhUfHhQC2/gQThxjY
 noNtQ/LLD6fvKiZkWu0yqgqC2AfhxNQmPFSnGMZNEjjDAEFNrPpG9xyYEcjTe4HXV4OU
 iv5bKD2VV9yDVTDx2E3g6Hze2Njrn0R7oUPj520tNshk0RmsY+buEld6wKdQOZL7oXfA
 vJbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Ie6+UuDf+byXPXqX2PqIi5x7CCl0W8NA5IcDm5qQXXA=;
 b=MnVceO9ZEk9IYGgfS7tHs8IBvP0sZ5TOYzzvuT2yX2UdsWnD4t9gZcn3Tlf8CvdjYj
 UOZsxybonfZ03m4QitmeQZ9YoZEmhxKn9Tt3KIirsPICZFFKpjmdwthpBPinKLv4E0d8
 9mCWlTGelLDvGZ/Wkjf23JBwPTbxZfb8lyIA5Mv6QJwXMVU18x5ZSBHGjKYyXY9TgTcV
 Ul2oY+7aIh5Vjjh2uM0FZv/eEYp+MxsvOWK/zGaKwpU6aNkE8q3YlK7Yu2tSL6tER01/
 PevOaD/QUiDn6EjfwsmgdQMrs1yNx1SUJ+urhW+R2j5B2qtAGeBp0hMbrrYPYYp499BC
 hI2g==
X-Gm-Message-State: AGi0PuaqHEsHMlmmf2AFg0+35A0tw/Ja2/LgyWqsDe3vfITFL7yPKo7L
 gBRPjJxTGdzInKY8BgNeVybp2Q==
X-Google-Smtp-Source: APiQypIPzHLCqcPpkTXMRiOcVbMkzFJd/j8pltNsJ1oUqIBWiQl4ZEevMtSVlfhwuPrcT/Rvkqk3Xg==
X-Received: by 2002:a5d:6b86:: with SMTP id n6mr3018508wrx.113.1588945620266; 
 Fri, 08 May 2020 06:47:00 -0700 (PDT)
Received: from lmecxl0524.home
 (2a01cb058702ff00bc4b798f4f30d41e.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8702:ff00:bc4b:798f:4f30:d41e])
 by smtp.gmail.com with ESMTPSA id p7sm3189464wrf.31.2020.05.08.06.46.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 May 2020 06:46:59 -0700 (PDT)
From: Etienne Carriere <etienne.carriere@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: nvmem: stm32: new property for data access
Date: Fri,  8 May 2020 15:45:27 +0200
Message-Id: <20200508134527.26555-1-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_064705_881568_A23FC5AC 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Etienne Carriere <etienne.carriere@st.com>, devicetree@vger.kernel.org,
 alexandre.torgue@st.com, robh+dt@kernel.org, srinivas.kandagatla@linaro.org,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Etienne Carriere <etienne.carriere@st.com>

Introduce boolean property st,non-secure-otp for OTP data located
in a factory programmed area that only secure firmware can access
by default and that shall be reachable from the non-secure world.

Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
---
 .../bindings/nvmem/st,stm32-romem.yaml          | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml b/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
index d84deb4774a4..c11c99f085d7 100644
--- a/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
+++ b/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
@@ -24,6 +24,18 @@ properties:
       - st,stm32f4-otp
       - st,stm32mp15-bsec
 
+patternProperties:
+  "^.*@[0-9a-f]+$":
+    type: object
+
+    properties:
+      st,non-secure-otp:
+        description: |
+          This property explicits a factory programmed area that both secure
+          and non-secure worlds can access. It is needed when, by default, the
+          related area can only be reached by the secure world.
+        type: boolean
+
 required:
   - "#address-cells"
   - "#size-cells"
@@ -41,6 +53,11 @@ examples:
       calib@22c {
         reg = <0x22c 0x2>;
       };
+
+      mac_addr@e4 {
+        reg = <0xe4 0x8>;
+        st,non-secure-otp;
+      };
     };
 
 ...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
