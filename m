Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D5F923FE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 14:57:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=r4QdL4tBFd2uFP1CQ0UTkIZgj9yDuQXP5DKZmWk4VAA=; b=Ur5
	Y3sDvJUEUPKie5jZ+p5SP9Hx/63dpV56DZUinOm0kBi3rR9VaUpeQYoPvpNDYBeMbZsK5WFYVwDZU
	Vh47/ILQyAU6sjODEWeh8d1jQctIlKMvahrwMhvZFmMLwOGhjBhjCEtV35F4ukjXm1kjrvoJejPZY
	N5JZYiA6L49swR8DdTJTPO/5rCOFvWeWPfpIKXde+4a5FfrEVAaXGmDw/yIzwIOMTgB4nJSzY4Jij
	fWQUOXh/UemMi76unaQ2eGLGzXcFH8ukVLzPsa2hEES6FXrmKh1pxljhyr0hmV8532sWe9837ui6V
	K6XSv2GRLg24tGuhsYNJSenARCBAaNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhDY-0007F0-SZ; Mon, 19 Aug 2019 12:57:00 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhDE-0006or-8q
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 12:56:42 +0000
Received: by mail-pl1-x643.google.com with SMTP id gn20so945470plb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 05:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=sgqmuCj/RwhLpjh12R7Oi6YVLgqjrWGfEXOYIrwgtrM=;
 b=UH/1fWczGCdO5dJrAJAP6YmwlhLfkOgoA61Yyk9krS+9Ei3i80MDb0oA5yLo9AZiY/
 OjHG0/bAFVgRC9XuWn2Gbu2UQc5SdcL4ES3I/+d01bs/u0R0eNnwKnVbNb9+ndj0CODC
 abTzKmjT5WG6trBZZpilvVATB81eDC/pRTZcs3JJwogEcrAOb3g0Qd7dJ0YT3F8QGPDM
 mbM1LwEhHSBo+zsKVILFWocpoCXqVkzsofCpedwBZ10JXK/qTYyUjX8yt8vXDYH23QtE
 DNCxFRvsKtReyvfteCK/mklIXuceJDVTu1YbroLVbcf1NAe2+D1mks75vpxNkXELrn2d
 tR8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=sgqmuCj/RwhLpjh12R7Oi6YVLgqjrWGfEXOYIrwgtrM=;
 b=DOnDsge7O/tCIKcIihXXOgCC/8NNaqGUwzPuF44cDS4k4DLI4lAvyHmTt1w1kbL65D
 Ew0z7Y9VrtkWjSdgf1aZ8HKKv6mNfO//ltoMf3SC9E1XYxabQZQGOcc8s4zIs2fV4obV
 2K5foix+TOW8h8RYwHVeoZt+9bA5usfrNtOQbKRglBA/tJkJCon8M+o1CNDojeeeporJ
 0WPi4yaen7bQOK2iPy4u9tZBZIguhiW/GOlNIAmi45RWES+QSbH7mbNDSKFCAkC0+yvj
 iOkQ1VQCkdN1hZ4YiieotzjV69drlCAqetaux50ZRzHuYmr8He5DQ0jRm6wpE+2fHIm6
 FKkQ==
X-Gm-Message-State: APjAAAWTPTUAQdLRefwhHdkWyCgSBcBD6xoZ0c5jNLlhoOE/H6y9A+B/
 L2fJABQgrrFOwEg4S4hOTrs6EtNk
X-Google-Smtp-Source: APXvYqzYLkdTbN0UkgR6Eg4+Vq25pGo+EN5gWXENY2VnbQb+MP9zToGQ3A4yfugtgM3gZ/RpAOa52Q==
X-Received: by 2002:a17:902:7c8a:: with SMTP id
 y10mr21969083pll.65.1566219399375; 
 Mon, 19 Aug 2019 05:56:39 -0700 (PDT)
Received: from localhost.localdomain
 (p6796086-ipngn28101marunouchi.tokyo.ocn.ne.jp. [114.165.92.86])
 by smtp.gmail.com with ESMTPSA id d189sm16646707pfd.165.2019.08.19.05.56.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 19 Aug 2019 05:56:38 -0700 (PDT)
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH] arm64: dts: renesas: r8a77970: sort nodes
Date: Mon, 19 Aug 2019 21:56:33 +0900
Message-Id: <1566219393-23169-1-git-send-email-ykaneko0929@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_055640_352838_6BBE6AE5 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ykaneko0929[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (ykaneko0929[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This patch is based on the master branch of Geert Uytterhoeven's renesas-devel
tree.

 arch/arm64/boot/dts/renesas/r8a77970.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a77970.dtsi b/arch/arm64/boot/dts/renesas/r8a77970.dtsi
index 5b6164d..0cd3b37 100644
--- a/arch/arm64/boot/dts/renesas/r8a77970.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77970.dtsi
@@ -1181,6 +1181,9 @@
 			polling-delay = <1000>;
 			thermal-sensors = <&thermal>;
 
+			cooling-maps {
+			};
+
 			trips {
 				cpu-crit {
 					temperature = <120000>;
@@ -1188,9 +1191,6 @@
 					type = "critical";
 				};
 			};
-
-			cooling-maps {
-			};
 		};
 	};
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
