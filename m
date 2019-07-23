Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3F771EAD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 20:06:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5dNOYGdJaxZKOmKczqmFJttxPvtnaoXpeN6hl2+GPBg=; b=pv8
	hSf6bFLrCfSjVv6x4vwKA9qeljzQqu/neWnMfaxI+/Ode5RktTAIznBMFALRzaxAlNsbvg3ktervY
	dj01z9ANSoZCWIllkklrCu2tOIR/HjY4RIk0QAOfswDoayfAD++gvbWX8OhwGXtYEioSa86lQhc10
	EcYOR82xzeup08g40m9e7aToGAXyw9/S3CXR6PtsIB51NFtNTDGhFE8znG5qR5sLAG8Ysznclai5b
	rjGl/QL3P7W/yjo3dIdOf14W+v5Vb66IEguCdURhMjFHDOE7ZOVJhkHuPB4rReDWxjDdLMlj5cfvt
	q8mmA0cAWCe2lDt3IRDqh6dhdhk+5Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpzB4-0004s2-8K; Tue, 23 Jul 2019 18:06:18 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpz8B-0001Mq-7C
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 18:03:21 +0000
Received: by mail-pf1-x441.google.com with SMTP id p184so19518223pfp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 11:03:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=RAJFOsz9OoczAxl2xatH2NLu3srsG/uPtDEyqOjNBr8=;
 b=l8BAPDpKABALoy1KTX+SmGgkVRfanCGFK62s4DP7MKMpLYcMPJztOy6rTEY3N3N8B0
 vCPUf7UEFwNsPjWa6GEBIeuxIqUuvV29jXJ/7lhjIRgORcJ8S8kqs+DHOQhPW8ml0EG0
 na5I2vf6Qnc3cbPOTqHcdqIWWZAuXSxL+PgL8lHc4grjDIA/hSfawQfDUikaCfPjpIBS
 LmLS70vLBi3LdtgaDK53iOdCRYq8aFFTBTSt6QoszzsxzKGjAtFFEpsBq69PPl8fjmm5
 CuRHkn+Aq9QPZKIna0IfWE2ujbk8XJhMcRO89CHiVQyW5pFWZpZpQQOzMB2jKoDeMTyK
 nClQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=RAJFOsz9OoczAxl2xatH2NLu3srsG/uPtDEyqOjNBr8=;
 b=CFvbNPB/Vz1oRg1JSoThBUzD4ggWSF2uohlg+/xKbv+rOEerTrJXLoLrwZu9aBPONC
 5recxa3/sz4cWzTUeP/nFtp8X6RJnKlwRSMfA4+NCN8QhonkFOC/BekiVE5zQjP00XS6
 +oh9AXIsEd3erCLcnHtTdJXF1L0+p5WoeFDv1lWcf6wk2sWP3tIzibiE6HSIXGtJwhQ6
 wKjqyqerPjvY+zmSrj/80/nPBb5xZ0OZ/GGjBTxQCxoQBmp9Vv0kkiP4Kx0/1TcZM/R5
 GYLKRrmrD8/fNC9poKAsarzTML+DnD3m0xNAuQ9kF8DFNUYNgo6CUV4T3hIysmb00WVV
 ubpA==
X-Gm-Message-State: APjAAAU38kaNQGGJnnnffnIL/ku8iUMYJQcMcj8kRrLx72h+Ciho3TVk
 tlZ4QV1uUvdemBE3bXWgA/U=
X-Google-Smtp-Source: APXvYqzyoF7LJHwYrIk6oTD39PAXJ+DwGIjfsVZwZGVe2PuiXTrkSPHGW/QxkSCmb/ykNU3XQRKDRw==
X-Received: by 2002:a17:90a:8c0c:: with SMTP id
 a12mr83470068pjo.67.1563904998384; 
 Tue, 23 Jul 2019 11:03:18 -0700 (PDT)
Received: from localhost.localdomain (KD118155013174.ppp-bb.dion.ne.jp.
 [118.155.13.174])
 by smtp.gmail.com with ESMTPSA id e189sm14458773pgc.15.2019.07.23.11.03.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 23 Jul 2019 11:03:17 -0700 (PDT)
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH] arm64: dts: renesas: salvator-common: sort nodes
Date: Wed, 24 Jul 2019 03:03:10 +0900
Message-Id: <1563904990-2873-1-git-send-email-ykaneko0929@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_110319_309389_75055067 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (ykaneko0929[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ykaneko0929[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Magnus Damm <magnus.damm@gmail.com>, Simon Horman <horms@verge.net.au>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sort nodes.

If node address is present
   * Sort by node address, grouping all nodes with the same compat string
     and sorting the group alphabetically.
Else
   * Sort alphabetically

This should not have any run-time effect.

Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
---

This patch is based on the devel branch of Simon Horman's renesas tree.

 arch/arm64/boot/dts/renesas/salvator-common.dtsi | 44 ++++++++++++------------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/salvator-common.dtsi b/arch/arm64/boot/dts/renesas/salvator-common.dtsi
index 5c2c847..902ca6f 100644
--- a/arch/arm64/boot/dts/renesas/salvator-common.dtsi
+++ b/arch/arm64/boot/dts/renesas/salvator-common.dtsi
@@ -87,6 +87,28 @@
 		};
 	};
 
+	hdmi0-out {
+		compatible = "hdmi-connector";
+		label = "HDMI0 OUT";
+		type = "a";
+
+		port {
+			hdmi0_con: endpoint {
+			};
+		};
+	};
+
+	hdmi1-out {
+		compatible = "hdmi-connector";
+		label = "HDMI1 OUT";
+		type = "a";
+
+		port {
+			hdmi1_con: endpoint {
+			};
+		};
+	};
+
 	keys {
 		compatible = "gpio-keys";
 
@@ -238,28 +260,6 @@
 			  1800000 0>;
 	};
 
-	hdmi0-out {
-		compatible = "hdmi-connector";
-		label = "HDMI0 OUT";
-		type = "a";
-
-		port {
-			hdmi0_con: endpoint {
-			};
-		};
-	};
-
-	hdmi1-out {
-		compatible = "hdmi-connector";
-		label = "HDMI1 OUT";
-		type = "a";
-
-		port {
-			hdmi1_con: endpoint {
-			};
-		};
-	};
-
 	vga {
 		compatible = "vga-connector";
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
