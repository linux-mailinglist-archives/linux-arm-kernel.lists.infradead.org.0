Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5771966CB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 15:43:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=TBFb9e/KhMOAUbCmI1wvZx9P6cmfDZXTN91/DP+TAZY=; b=RO6
	jjwSOPmMLFWWxx/jK0sn1q3jGosRMH46pO1ptUTxmCc6yrXybhj6O0Tx8l7t+8DLGXIm59Jz+u6FG
	z2oB1vEPI/Dxjs9Nhxow9au6rpNgPJ/tKil2OODs2ebIqPfMeoROFfx1e0HZ7AlL00AoserCd8+AC
	Nfk8yL2A0hE8szGQCpXy9mr51cW4SN7xyEnXm38csrzdfMZLcM0MtL1zsd5/a4qQrRfAPVvKhK5xx
	o6fH4DEZAvnSjyJuO+9mjuxyGaX93kcPE8BEZbOA9m7RkLyP2X6buG10q6K3y7J3Wnq/iJ4Gyzy9Y
	a6CyjpakjbW1D3gYNED3Rn6P0bSQ2Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jICgO-0008D0-Iv; Sat, 28 Mar 2020 14:43:32 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jICgG-0008CT-0Q
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 14:43:26 +0000
Received: by mail-wr1-x441.google.com with SMTP id h15so15239539wrx.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Mar 2020 07:43:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=/2SFge/OdI1F8toHlmSSduR6vURBBGjynFQSbrlzXYo=;
 b=BSsqhZeIQw2hreUjt12CyIbXJE5/JfOfn8ZMxQUXwOmt4N60nxhcd2zUF8lNYol44g
 JifG2Qcu4wCFExZTmmBap7gF05fngPYfrC/TXWgD5bbu3jnqu96YX0g95Q8sAMuzMumD
 qaZL610CZYSq4JeYF+ZIvr7dZoWD2ojEmNcgQRgy+Ed0OleVQLxupORQaEMzmkKUUov/
 3nYXOHsizmdWW2R0i8grGzxoJlAFFRr4IpuhValols/me2eANB7vayKX29m2BSLqO9eL
 57Q6S1xNETxYO1O+dnVN/ggyyekxoMoffqEigQV03JLpXVGXfLIp4S458CfV1U9fUDZ6
 zMrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=/2SFge/OdI1F8toHlmSSduR6vURBBGjynFQSbrlzXYo=;
 b=WTUqXjhNgAL7Fu3r2J5muZMx/IQVB9sWjb7CrvHlOFxOkfeZ7gIbWH1GSzGGFVG1k/
 wL/SJku9WEezdA71lomN/YI0dTwQBFuEoO/w6f/ZGW8wlsiDiKhhomFv+sKOQgtvergb
 kmnpwglowKemXkrBoUCXzmoJi8GQcyx1+as9pJXY/mJjXQVJR1u3Vh7qFJRCCnOuGBcI
 haiM6Yul7ECGhi8PCt3j3Sm9Djs6MiUtKFhnw8sDCg6Jc4YvOToP3go7WwQBfEXJNIJq
 4VvctB3rlhD88NtJmqGTkSE3/6RH2nOMgPdgyv7R4HUMVxpRSzdn/VkgMBW6B22Ocgt3
 99RA==
X-Gm-Message-State: ANhLgQ1+JKDwiwur5yIp2U61U/XEVgydlIi4Bao2KHXdup0u+KNZueZC
 18R/GU3bT4PAmFq6i7KDIMA0j4UxxRg=
X-Google-Smtp-Source: ADFU+vv2yZhWereLXqJ6pe5il7BA2inBYqd9HZht8WcTZT+wAFgTcNGXBqPQwf7j2EAnolzDiXl6UA==
X-Received: by 2002:adf:8182:: with SMTP id 2mr4913477wra.37.1585406601132;
 Sat, 28 Mar 2020 07:43:21 -0700 (PDT)
Received: from felia.fritz.box ([2001:16b8:2dbb:cb00:7d36:e5ed:6ff6:44e4])
 by smtp.gmail.com with ESMTPSA id k133sm12661570wma.11.2020.03.28.07.43.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Mar 2020 07:43:20 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH] MAINTAINERS: clarify maintenance of Gemini SoC driver
Date: Sat, 28 Mar 2020 15:43:06 +0100
Message-Id: <20200328144306.574-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_074324_082119_8278D06A 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lukas.bulwahn[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Joe Perches <joe@perches.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 68198dca4569 ("soc: Add SoC driver for Gemini") introduced a Gemini
SoC driver, but did not add the driver to the existing ARM/CORTINA SYSTEMS
GEMINI ARM ARCHITECTURE entry in MAINTAINERS.

Hence, this driver was considered to be part of "THE REST".

Clarify now that this driver is maintained by the ARM/CORTINA SYSTEMS
GEMINI ARM ARCHITECTURE maintainers.

This was identified with a small script that finds all files only
belonging to "THE REST" according to the current MAINTAINERS file, and I
acted upon its output.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on current master and next-20200327

 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 8b8abe756ae0..ae02568afa25 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1729,6 +1729,7 @@ F:	arch/arm/mach-gemini/
 F:	drivers/net/ethernet/cortina/
 F:	drivers/pinctrl/pinctrl-gemini.c
 F:	drivers/rtc/rtc-ftrtc010.c
+F:	drivers/soc/gemini/
 
 ARM/CSR SIRFPRIMA2 MACHINE SUPPORT
 M:	Barry Song <baohua@kernel.org>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
