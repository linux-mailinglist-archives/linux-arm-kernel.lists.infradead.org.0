Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CA8D79C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 17:28:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AvHJ1CtWhiV7uDMYP5/x8o8ABcgONn6E8NxQI3wqH5w=; b=lU+dkKtpXHsFcQ
	0nYV6hzdutbzIVm41cm8X5B3PVR8EucHL+cBFuTqMzSlCqiuDVZhcnqhM4KKha0enFDZwhlJxVVlM
	O3vw05h2oCB0QJ4+f1TV+yJ/bWHbX+IrmK62Ssb+0rvB20VfY99LwrC60PyOkJ8hQx7jN2sePx14q
	zubcLjrifSrBbIYbuZlu2Yn8pJMz7HwxlkXoVpij7bH9Jz+z4kE8FgopTvFnBJ1YnOktMiAa0LDrB
	JqZNFZ/Eb+K1ftYPioUQBpcfW5cN1TmHTAoMsnhjju9BAVeYUp4+ANbe3XtCv0cff0RHovObr+tzD
	J7MeNRb20QWzQT75jfFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKOkD-0001Ly-Ru; Tue, 15 Oct 2019 15:28:17 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKOjO-0000jp-Jd
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 15:27:28 +0000
Received: by mail-pf1-x441.google.com with SMTP id v4so12707017pff.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 08:27:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xG29MGJ5CXLDB3OOeAsHPCpV9V/he2gmaGhRj12zAvM=;
 b=ewW4jt+Rm4ILwy/V1r4b05l/ehBuqPG4B7JYkFZZxWSmMHSQPlj/qWixRJ3DmjydIt
 x9wVWu6qUn/JVnaq+vCsqB1g7GeyN2KIvmP5h1xUlPBlfrfh9qy0XCWRiaD4WJ9c0agF
 3thAVlnBZ8htxJRy/B7m21Ba8ByKuCsiPO/zNzpGcqObsRgjMxl3ZMfiLiwf+j2lIblw
 jcqyx0VOkrV2kL0ZvGjxJXc2WXNqvius5aOBPVoPM0MuIMV5kkSkAL93nCPDcPLiu4xn
 lwDLS6aX5fHH6/WXdW2exIdEc0eTG+xXgLsWuUZnsT4uH3Mdmmn0lwuXrQCa2wvLXeD2
 Mk+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xG29MGJ5CXLDB3OOeAsHPCpV9V/he2gmaGhRj12zAvM=;
 b=WMTpSD5Yby7/CmhGjniGuX/GLx7DjAfEBmp1ykYy9gNMvq+/NxJwNiT/uAMeOMT8vl
 8pXM7X6sPseNx/gXIIObNscwBNY+fAjVSq060M9punmqusCKB9nLOIUfG5qanNwguBYd
 TTenvsss4+YAtjVdT9JPylhfQiRcNuMSr9j6QhEBCMkNLC88TBcV4uNy4zCdKZGG5Zo4
 r6l3IPfk0m4RXvxWKKaHzDTgeiuYvvhSkGmHNmj4Ys2X7ywWvTakbicesmWHKnRkmyG/
 WPmNx9A25RLwpK1l4z0162wAu2DDkXP0JoV58So6Fqk+0MLIQrRxFscKMhn5LG+fXAwk
 qwZQ==
X-Gm-Message-State: APjAAAVyU70MJy7oHc7+PhtUDKFyL5H5jfYvhBoFGZne3+V7v95rNTG9
 QzrHUIRmnEOF05+CoRzdsWLfwfVHLzc=
X-Google-Smtp-Source: APXvYqxVh/cl4OUEupiwqXnRInN9WWLmr51jkzllV8dQR7RJIlChmXn+S0+rq2wiFk3+GmRjBQs4VA==
X-Received: by 2002:a62:685:: with SMTP id 127mr37228208pfg.227.1571153245811; 
 Tue, 15 Oct 2019 08:27:25 -0700 (PDT)
Received: from localhost.lan (c-67-185-54-80.hsd1.wa.comcast.net.
 [67.185.54.80])
 by smtp.gmail.com with ESMTPSA id w11sm21158957pgl.82.2019.10.15.08.27.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 08:27:24 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/4] arm64: dts: zii-ultra: Add node for switch watchdog
Date: Tue, 15 Oct 2019 08:26:54 -0700
Message-Id: <20191015152654.26726-4-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191015152654.26726-1-andrew.smirnov@gmail.com>
References: <20191015152654.26726-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_082726_669185_F55AF227 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, linux-kernel@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Chris Healy <cphealy@gmail.com>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add I2C node for switch watchdog present on both Zest and RMB3 boards.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
Cc: linux-kernel@vger.kernel.org
---
 arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
index 8395c5a73ba6..e058ad908b2e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
@@ -400,6 +400,11 @@
 		reg = <0x2c>;
 		reset-gpios = <&gpio3 25 GPIO_ACTIVE_LOW>;
 	};
+
+	watchdog@38 {
+		compatible = "zii,rave-wdt";
+		reg = <0x38>;
+	};
 };
 
 &i2c4 {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
