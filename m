Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1698818378D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 18:31:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tscd8+AWYDHqbQAjvHhgrYlak3iQ7h2yqsXlpijG9Ak=; b=ICFh8oVHd8nPWvCqERiVpIcD36
	/vvjr+W6Wka097TqiGHps2nd/hb974qSx8qItSEZzCSGdBUu+GVcrcBip4IlH9vTZKqnAzrWBiUix
	+bwu2+wdtGNisYpV8JBxGU/3yNwqYDmq34i2TZACVxo9edUCFzIzvMxWo1QIzWz5xfkGTz+LJccO9
	q0/HnCtnsH5pR6L5MGEkgs4aa7ImgRXvya1fEvwltkf5m/Jvho0h60N/EwDTnHabmiF9IQzxU39hM
	kVCmHmUM+VYF7hfOxkVaxCLeQeWZXFlZ3iG7utnPLNYDamyNVJfA2duHucXaddzDT1H8zkAWTHaBp
	QaHETtcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCRfe-0008NA-8i; Thu, 12 Mar 2020 17:30:58 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCRfT-0008M6-U9; Thu, 12 Mar 2020 17:30:49 +0000
Received: by mail-wr1-x443.google.com with SMTP id l18so8519195wru.11;
 Thu, 12 Mar 2020 10:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=x3OsNYo4WOFc4e3N45xENkSPMvXkKhjC6Ed5es5ifqc=;
 b=g6RAegYueXWuES+iYPK9Gx7ix10quTgc1ud5mKsYb3JnooppxE0lL1gjlhqcSCzaQj
 J/HpKmkgG1HkW6I6eDyzTS7nsc0xqLs9o0Ew4C14V6N+HogqAbYe4OtujhizuUqlpZR5
 rulWdJPyPze13u9HQ9NENF7fALTj1bdbjZDh92TloU9d78F3K8M1khhOakADPAZEffjL
 WquoKWFqAFPYlEHDxJp2bOoe38p89iKuifCU82U5+NdiB3jpZFc6lwfRNiWw8pAi3q0v
 LpnjMSR7EfUQfh8nsNXo+Xg/U2LR+yOVrAVKlQWtk0IuJWsUkKXk8w+1EXbtNOcTURHT
 hCeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=x3OsNYo4WOFc4e3N45xENkSPMvXkKhjC6Ed5es5ifqc=;
 b=iEzdArI9D8YGHxHWct+jWqlO9Z5adnbgnFc1ivI1sX63Zjv0H+XTOdGCt/OigG9u/q
 MhUacyBcXRqFOFB8fQQWrFH6vvLjvumx4yB4dNLuHCC68++33RzDvo/6FRQ9mWt3CglH
 RD9MTG4zgys4+fdC1X6GRrePHqVRaOayf1Jw8Je1GgT4mIxTBCwoDUyvABvl7NiFqXE1
 ql854csb/eXHkl1TwJX6xjF6awH06h7anjP59XJmXt1vbdBlabsMjh/1KztJJRiJ2kQA
 5uLJylefN6Hvv9exn+z8InjxvqTvP5EvNKaiJi2zhQ38oLriw+fPE7CauwKySXbaQh8o
 QHrA==
X-Gm-Message-State: ANhLgQ0FROSYG08mwAF6SRR6OTBiFwwpcMPHWz9rNi66Uxgb8I8sGRAc
 4XN7Wx3lo8vywNXoJ6Y/gVE=
X-Google-Smtp-Source: ADFU+vuaSKw7SYbH880phKppaz4MtvoEjwN3be8Iip/jpwF5n3XHQkpzzWFily55uljws4EM4ziA8A==
X-Received: by 2002:a5d:6908:: with SMTP id t8mr12459365wru.92.1584034246665; 
 Thu, 12 Mar 2020 10:30:46 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id x24sm13170222wmc.36.2020.03.12.10.30.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Mar 2020 10:30:46 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: lgirdwood@gmail.com
Subject: [PATCH v1 2/2] dt-bindings: sound: rockchip-spdif: add
 #sound-dai-cells property
Date: Thu, 12 Mar 2020 18:30:37 +0100
Message-Id: <20200312173037.21477-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200312173037.21477-1-jbx6244@gmail.com>
References: <20200312173037.21477-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_103047_977019_70FBCCD4 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org, heiko@sntech.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-rockchip@lists.infradead.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

'#sound-dai-cells' is required to properly interpret
the list of DAI specified in the 'sound-dai' property,
so add them to 'rockchip-spdif.yaml'

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/sound/rockchip-spdif.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
index 45c6eea30..39aa0b4f7 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
@@ -59,6 +59,9 @@ properties:
       The phandle of the syscon node for the GRF register.
       Required property on RK3288.
 
+  "#sound-dai-cells":
+    const: 0
+
 required:
   - compatible
   - reg
@@ -67,6 +70,7 @@ required:
   - clock-names
   - dmas
   - dma-names
+  - "#sound-dai-cells"
 
 if:
   properties:
@@ -93,4 +97,5 @@ examples:
       clock-names = "mclk", "hclk";
       dmas = <&dmac1_s 8>;
       dma-names = "tx";
+      #sound-dai-cells = <0>;
     };
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
