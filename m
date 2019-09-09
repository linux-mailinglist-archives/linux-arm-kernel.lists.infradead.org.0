Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 698E3ADBB4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 17:03:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=I//4aT/vWyp4GhSsDYkWsYjTQijCa1xqu4iV7ay6wUw=; b=tokgMBOJB6YXk+72MgZeiSlTj/
	HIUKiyeyt8VB4zUvtuHNPu6fyZcn0jQcmPYG6CwwJW9pfAxGm/yO5mic6EzC/FDUybaOTfO5x9V/I
	jKG08Qfv9rOvfDSbNbq/C3ZN9B9DX7RMym7aOCtsgJPQ9TxDnU8L60/lyo0PF6GPdOi7FmcNQ5ue3
	bmYoPrqh2/OH6EusSOikMX5+RxNOZIXKhY0E5FgQea6q2uZ0NngYRvje2I2tfag1b9JkE5Kref/Qd
	9fC4E7mYZopjacciq8mBw85nsQO70MIxTOQvcP9gDQsO7r7KJUMo2vtDpRm01xJ3JCh3BnbGUCWdu
	2DD2kZ1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7LCY-0001mN-S1; Mon, 09 Sep 2019 15:03:34 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7LBU-0000yz-Br; Mon, 09 Sep 2019 15:02:29 +0000
Received: by mail-wm1-x343.google.com with SMTP id 7so4639799wme.1;
 Mon, 09 Sep 2019 08:02:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5xqEYreEBmZYyAfTC+RKgBu5G8ylv8O/lVjj/QJ6gcw=;
 b=F2l6LxPMIDzdfSFMzT+toWLV47+x4sa8AwBmE6Hzu0V7pxptBR1Ne0ukW3Og2JE9nO
 7lWiTWOUu4QihXaYX+K9E1qdXUdT6i27Ep+3kNlmyeqYW5z5Hiu3soyJGhD9gA3GKltL
 f+X4rrMXmhBM8e3PhA6Y4RS41qVCksT9xEUkVv4dtlVkQZ80rwbY3GPmZ0WAkLbnYjc0
 p/dNp2mvpP4h9eSFEef9fl0iXGxt7ARatCyF3h9i9Zt6HhSxZVldJ4Kro1lzGAF0swj0
 nH/vgwboS35iDkZn50CIqf8s+yAJQJaitlqHsKnXpfALCcNIz1tEFNI+vtYBMH7fw6Tx
 eYDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5xqEYreEBmZYyAfTC+RKgBu5G8ylv8O/lVjj/QJ6gcw=;
 b=ZxP60FHKRdK5KTEnK08CluJHqFFxzWPVXGmv7G2tbfEqO+B6Y+cfzU46lWsvHr3BdH
 sQS/5SWsD3+eFeztGNDaoj4Mp5MkUTa70hA3QXICWPA16l81hAAMC90rhxVMj4FC2+r3
 tuO+M3CziGK7yzbXmozFk/2HTZXxp323vP8NgwLyZRMRwUr4Z0fIJ/dCPZsvSPzBYnhS
 q1sZOMUKfBjiUN5eJCNc/iWX2N+gR4YVlrzLW9f9JdcWpV/RZWHUcePuOdgHK5zG4K5O
 o41ZHITmPign6OvhO7snkQsUXUODFDqoKXMgISRhgh7KteDHJ377RsqSxOYotPnEtbwY
 4S7Q==
X-Gm-Message-State: APjAAAU5wa3HzVVgnPoYfpyV3XaBwmLmOdOnp/M7uXKcVHzC+3tPaBfF
 lc3KrtkshNZ66h80ebrFBEc=
X-Google-Smtp-Source: APXvYqxUDRLwK+SyWE8xuL/itq7LA23ccybuU7D+8c2JjcNssmx+4Hg3o49fxC7xXs89sGfOZc2KRQ==
X-Received: by 2002:a1c:c1cc:: with SMTP id r195mr20418891wmf.50.1568041345217; 
 Mon, 09 Sep 2019 08:02:25 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id s26sm27755397wrs.63.2019.09.09.08.02.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 09 Sep 2019 08:02:24 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 3/6] arm64: dts: meson-gxm-khadas-vim2: fix uart_A bluetooth
 node
Date: Mon,  9 Sep 2019 19:01:24 +0400
Message-Id: <1568041287-7805-4-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568041287-7805-1-git-send-email-christianshewitt@gmail.com>
References: <1568041287-7805-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_080228_413227_00EEC60A 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Chrisitian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes: 33344e2111a ("arm64: dts: meson-gxm-khadas-vim2: fix Bluetooth support")

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
index 989d33a..d392062 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
@@ -409,6 +409,9 @@
 	bluetooth {
 		compatible = "brcm,bcm43438-bt";
 		shutdown-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
+		max-speed = <2000000>;
+		clocks = <&wifi32k>;
+		clock-names = "lpo";
 	};
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
