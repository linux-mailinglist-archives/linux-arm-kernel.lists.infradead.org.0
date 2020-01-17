Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 693FA140AD2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 14:34:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=E3i04mfSJas9yclBpMDBBotzKxn57YIiSZnFHODaxnY=; b=Cli
	5IIxNh26Rsl/aF69xbbPeP7EJIhCeZo4RUpM6ufRMl8sMx3bB3KNejvTIhB7fYjlJZvVmOcbhmnRb
	FFQQSpT2g+TyWt8Unbt+z6Sv7fKRTpULaT79JQJQobioAR9gTbXQeDUu7J8EJLtuVAoZZM0uG7XPp
	JcBXxACNmBn+8qL+/ScDMzGW6oqwGt6rcyEKinPEVUDpLfTuReg+JzuLTw/oN+TPszJBONU+QBHl1
	IioetsEXDygAKqH9vOJPy/2JlHpiHAI9n321VyhSSkMVa3i6HxObAoQ5tt0lcti2VlDCxCl5MYDcc
	sVhi9Ezu4V7P783PejUl0fvs9q+EN8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isRln-0003c8-Jx; Fri, 17 Jan 2020 13:34:39 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isRlb-0003Z7-Aj
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 13:34:32 +0000
Received: by mail-wr1-x444.google.com with SMTP id g17so22712729wro.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 05:34:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=vjAqTiagiAJuIt+I855EK59Bh9rAY4+VmlbULB7XjBU=;
 b=nhcwFQHxSnz+dV9GprwXcD4oiIVNjDaE6b4Z1gVtwnuMdXgy9wBTv4mdfd5R+4O5C5
 TAo7O/1EJo74ic9WeT/gzYaFf82RYCFD+QK5oLiM0pNOQ1pIT2V+QduYScl63zLxQ76z
 SaNfuojAetepaWOS6Dsv/Pq0DGjxLzwnzJejxEN1mX/+kqoqPopYtjvGmXSew3k+ZovI
 I2RfdMwx/ybbZDKeMJyZ+BTFcNlBzqdO3/bllaE0SsOp154uL+uFClwqUtx2vIXQOpEN
 AWmk422EV226QO5mnUPx/bOGO3VBNW6O4os+r1vNboWXx6moiX80S2+YHNxweFTEFdkd
 5axw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=vjAqTiagiAJuIt+I855EK59Bh9rAY4+VmlbULB7XjBU=;
 b=KlB+SlYxHMgB/FmyDc5ml9T5kopXaT7v0T3Gm1Pvgo7UqCcDnHoF3nay7udeum4hlf
 IkcgJWVGQ76pElTzKFikfMiQg72n8SJqW9lFVM+N6O8etbV4eJfMEeT+OPy5v7g8/3iH
 wQK8PNbPz6QifMXsKHaKn03Q7kgpOUhB99ZikYN0dT1L98TdDoo16acm06ikvJx2z+j1
 qEl+iLdmB04zN+DqmHdCxUBlTt+llv7E2UH2x52oSBQCic9SJv4bEmZlqKqD2qea2ZLQ
 Lv9EpJEzYjq1t6WwA7w2dy3+9qRJXF6dLwJNh+lC6/I72L3P/77X20yHGM5v0Y7gih8g
 WxzQ==
X-Gm-Message-State: APjAAAV7HiH70+tgptR54D9A5QZthjHKAKjBVBc+cwFLOgaYtpELHo7g
 py2HO+WjxzOhD29P5lR3PzHf+A==
X-Google-Smtp-Source: APXvYqxOLm+eEqyeR6CqcWIOgeXx2VIKnDcC4O+hh0rHWaq9NA0R4QfRWROMPXD9EnXM5xbkRw2jog==
X-Received: by 2002:adf:f411:: with SMTP id g17mr2965001wro.89.1579268065504; 
 Fri, 17 Jan 2020 05:34:25 -0800 (PST)
Received: from glaroque-ThinkPad-T480.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o1sm33875961wrn.84.2020.01.17.05.34.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 05:34:24 -0800 (PST)
From: Guillaume La Roque <glaroque@baylibre.com>
To: khilman@baylibre.com,
	devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: meson-sm1-sei610: add missing interrupt-names
Date: Fri, 17 Jan 2020 14:34:23 +0100
Message-Id: <20200117133423.22602-1-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_053427_498478_104F8679 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

add missing "host-wakeup interrupt names

Fixes: 30388cc07572 ("arm64: dts: meson-sm1-sei610: add gpio bluetooth interrupt")

Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
index a8bb3fa9fec9..cb1b48f5b8b1 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
@@ -593,6 +593,7 @@
 		compatible = "brcm,bcm43438-bt";
 		interrupt-parent = <&gpio_intc>;
 		interrupts = <95 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "host-wakeup";
 		shutdown-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
 		max-speed = <2000000>;
 		clocks = <&wifi32k>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
