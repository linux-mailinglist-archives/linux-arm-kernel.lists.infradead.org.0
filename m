Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0959C18B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 06:03:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qqDb7cCcsafXhjBQd9eVRPzSKKWy/YPRWPAGZxIrhHU=; b=Oh8fF+aJKAezEzzJwpm7Y8vO5a
	Cjd++XLXfjyDxnHhUlA5g2vFSxXLZA17O5oFE07bUM1czEqyA+6jVcAws6hoitNhuvjL0mR5he1AN
	CrORls+ueJdbOo8IS2Zx4ofV6sgGSNxBLtk34cjJCMrLoDKqX4Dga2UkBiQS0ilUoXby/KmMQXgAP
	GaoUsYM8zRP0ymw6gpCjYzpQbEozqeVz0gmcaNZ9UGI9vQcnG7G4QtDGE+miUCAjIi2oCWXmZdfK4
	LLPDFpeNsIibgnzu/PkTQXZaRgTrrYhT5+tDr4AZw0THrmNdknoCvp8D4MANh8pZkr7/O50QZvdX9
	+vM6kCEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1jkC-0005ys-Mv; Sun, 25 Aug 2019 04:03:08 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1jjU-0005eu-GT; Sun, 25 Aug 2019 04:02:26 +0000
Received: by mail-wm1-x342.google.com with SMTP id k1so12370254wmi.1;
 Sat, 24 Aug 2019 21:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=E5nNhd18MvwU8IC7GxybIhRsED8y+5jrB7YM1thtsV4=;
 b=ay+Hq9I1SH/G7X2WBWSkTU5FtlKBlJPSNA7Naj1Cj4ThMxpMKFn0csUhA9ucx26arS
 EbkmTSYQUxj3zfsdmkVxsRVdFmJX2R74cThGlcbaWLK3QkRFxv5IcBDI9oKaxoUV2s20
 y5dLzttp22mFpshuwRoKWonptKX5EaMDKgLSJldSR19p4q93vQcFQ+CjGQzGkGrEWhkE
 c1dTdREt1QTy90HFJoWi3ZTzC62Gaz24VGEhEOU3MlfAzejSjZHqMTFbNzBLmQZ86cMH
 zNhQE2HEGN2ahhWbsv118AURzWO2dhwi+gFXoky7l55+2ZADU3n8hhjpq19B9Bjs2t1E
 5Xew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=E5nNhd18MvwU8IC7GxybIhRsED8y+5jrB7YM1thtsV4=;
 b=m6cV2LhE7BnI3ATe1YWrUQi4CLFr7H5tHnxHVjk3qm6lVIhYFgoFc+ZkCrasD/orM2
 6g3WemrD1uvByrm4yozDiLiBGp66HqYzP5oxNnGuqOfj6ahjiyupMdJxlIUFtm4YybCP
 NzeH9aLtbkEkYOc7ASAGuhLBmjm+DPmkjxuYcuk0o/fSn2OlVp+qC+G7j73a4NXzFwjG
 qxUE0ODMwrPuRikQm32o7gt9VUpX+osEeJjbW036uWogN/5InJNSnoTx+MrnOpCa9pzV
 eRUe6s5nAblH69XDy3QuCKgOuGo0TISVrpdV0Y03XiV1tpnqILIvcF0QNLH0ww1SVZkR
 q8Ig==
X-Gm-Message-State: APjAAAWQCjuG2YgEKoQtUKS/qvW1hIL23/v2Ob8KAZGHoJPgsIkOAvGX
 VH7C+9ip7+J9aid8XNtAgY0=
X-Google-Smtp-Source: APXvYqwP+cAgov2Lv/Km0Kd45gqctZDqhITi9FE+8G+wJU7Xj+jePJhogxyk7XN3R5IIeLoyr484rg==
X-Received: by 2002:a7b:c019:: with SMTP id c25mr14337691wmb.116.1566705741664; 
 Sat, 24 Aug 2019 21:02:21 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id a6sm6820985wmj.15.2019.08.24.21.02.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 24 Aug 2019 21:02:21 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/7] arm64: dts: meson-g12b-odroid-n2: add rc-odroid keymap
Date: Sun, 25 Aug 2019 08:01:22 +0400
Message-Id: <1566705688-18442-2-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566705688-18442-1-git-send-email-christianshewitt@gmail.com>
References: <1566705688-18442-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_210224_545453_438596EA 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
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
Cc: Chrisitian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

add the rc-odroid keymap to the ir node

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
index 81780ff..35cef76 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
@@ -314,6 +314,7 @@
 	status = "okay";
 	pinctrl-0 = <&remote_input_ao_pins>;
 	pinctrl-names = "default";
+	linux,rc-map-name = "rc-odroid";
 };
 
 /* SD card */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
