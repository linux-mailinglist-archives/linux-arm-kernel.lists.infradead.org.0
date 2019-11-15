Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D02FE7F3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 23:34:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=C6qTAs0wwn0EYnC0XnxxI+jY2oV6cUCokQAg7CnY+h8=; b=mKuMRVJpvqo408p2qNCHKEvmy/
	AEWy/su6hIQ9wZTHJOseKFHdS/57KwyU3iDb1/wyOHIZkPWo7IqcPXSE1qSn1vwwVysFYssMIyNoU
	+8DJ6JlfGcSKDetZeEyX3lza5Hs7txqNIq7bzfdApjOTvaD/5kFj90qo7qkeYSA7cnHNeq0sI8YVR
	E/e0v2pKxuJ3hCEYw3NT169TJRQ9IwYm/LVTX/EXMz77z0KQePF2ZkNNhBm7bBLOWysEWDOQ8H3Cl
	Z74gk1k1numUUjza5unqoFc0DLrAcJt+UZW4FIXwdH/9bxinpl5Uyxew/+9MJ3vB8YtE31x2ScBaK
	tNe5FtAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVkB6-0007dE-Ci; Fri, 15 Nov 2019 22:34:56 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVkAD-00076I-LM
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 22:34:03 +0000
Received: by mail-pl1-x641.google.com with SMTP id az9so5619898plb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 14:33:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2t2lfkYvCG1qZ4zH71UsZZVKevqEX7pyTohdYU3/dDg=;
 b=TSxkLjjusnWyOxYQuwJ0yeo2qVuacsTryAzYn0nABmfZ+giChdSbiAlTILiu0av+QY
 jkWKBo4DLgZtHrpz+tdF+VlAgQsfA3OdIm5fhLhv9vSP8EAGtXSK+OSQOTBRtAQcct2g
 QR0Sglw0sLDa8vkUzDJ7iwCPgDCjEiKh+VvE3qSkwQesXq0iaKdptZvJJxiDYbc1N+j4
 xaT/k5+AjeJLF9P+ANrQoOWHWCa16LHqeI0KGWEjIvKKArK5TYv/F94+FbsrOhMSzjwN
 nH0qNcPvGaUtYtZ3JDYIjIjaFjXf66XE2kFG4WMS8hUVt2ONxPzvC68OWC0+AqOf4NGA
 wEtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2t2lfkYvCG1qZ4zH71UsZZVKevqEX7pyTohdYU3/dDg=;
 b=C3ST51djrOwk/fH0CwN7mojk77H0VBgjL0MZt622Vr3b1IIrCh1sewVfOk7ZggRE+h
 vKFPkwcb7eQP2Q/ANJBsC1MIpPeoG6vqgT1MJsz9MQzLfdzLV44KA63XWCHPYV5vtHZ7
 8DDlhfOGSc+eRZVkmLP2O07uKaIGyvcSjl0ReH6WMOSz79Fx/5hBlmpU0Zm4uJGz3hQN
 Kqoup58JuZCbA2DcmgvV1ORaMvEBtXf+NZuL0arIPx+Sg7PEjAQ7ZZ9MJQ15JkBVLcNl
 7CEiofJRKLBk1O0fFgj7FTe0ZiyY/c0wN90nepmDfVAV/M9Ng6R1lGmg+0YsbBR9jg6a
 +JhQ==
X-Gm-Message-State: APjAAAX94jKt4SXQgzUJ2pLoH/8kO2p8YKPcKFojmQ2aL9howMT6o9uF
 jtV/IsbDBjrLax8ALqR422VTbw==
X-Google-Smtp-Source: APXvYqyCcGnCxpjNDXnOlQ5PDU1yc/iIX1FpvG9yax85c887grRTZSpLNG9/CAqWEFTR/yqC0+Ui1Q==
X-Received: by 2002:a17:902:9a47:: with SMTP id
 x7mr3791386plv.84.1573857238838; 
 Fri, 15 Nov 2019 14:33:58 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m15sm11699724pfh.19.2019.11.15.14.33.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 14:33:58 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19+][PATCH 02/20] ARM: dts: stm32: relax qspi pins
 slew-rate for stm32mp157
Date: Fri, 15 Nov 2019 15:33:38 -0700
Message-Id: <20191115223356.27675-2-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115223356.27675-1-mathieu.poirier@linaro.org>
References: <20191115223356.27675-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_143401_700641_E82E7CE7 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Patrice Chotard <patrice.chotard@st.com>

commit 86ec2e1739aa1d6565888b4b2059fa47354e1a89 upstream

Relax qspi pins slew-rate to minimize peak currents.

Fixes: 844030057339 ("ARM: dts: stm32: add flash nor support on stm32mp157c eval board")

Link: https://lore.kernel.org/r/20191025130122.11407-1-alexandre.torgue@st.com
Signed-off-by: Patrice Chotard <patrice.chotard@st.com>
Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
Signed-off-by: Olof Johansson <olof@lixom.net>
Cc: stable <stable@vger.kernel.org> # 4.19+
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
index c4851271e810..d9dce0c804e1 100644
--- a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
@@ -290,13 +290,13 @@
 						 <STM32_PINMUX('F', 6, AF9)>; /* QSPI_BK1_IO3 */
 					bias-disable;
 					drive-push-pull;
-					slew-rate = <3>;
+					slew-rate = <1>;
 				};
 				pins2 {
 					pinmux = <STM32_PINMUX('B', 6, AF10)>; /* QSPI_BK1_NCS */
 					bias-pull-up;
 					drive-push-pull;
-					slew-rate = <3>;
+					slew-rate = <1>;
 				};
 			};
 
@@ -308,13 +308,13 @@
 						 <STM32_PINMUX('G', 7, AF11)>; /* QSPI_BK2_IO3 */
 					bias-disable;
 					drive-push-pull;
-					slew-rate = <3>;
+					slew-rate = <1>;
 				};
 				pins2 {
 					pinmux = <STM32_PINMUX('C', 0, AF10)>; /* QSPI_BK2_NCS */
 					bias-pull-up;
 					drive-push-pull;
-					slew-rate = <3>;
+					slew-rate = <1>;
 				};
 			};
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
