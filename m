Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3212B32D17
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 11:48:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WHInQE3ARk0rjvnIvLxeKf23hj6d+PY9ta9H8THK3qE=; b=sQdWkS7MK8Knkj
	SS6Z2bSQBVFRIN4kNNjfR6w55yodyB/8g5mODp2pFycvItbySrudmrnLKxtfadS0O14rJ2PHADQrV
	+aVkHSRL6rm4EWXV3AZg4coiSvhEtqTlxWW++36gK6vQHbYNTZPPaf6aCRbIA8OjazDIu0TZaZBJa
	fDSTSTACrdQXhAVgT2ooTpUosAqbeCTTptMWTFAJdx/OSaGkJ84Y74UeM3hGKGSVE/iy5W2yUFkXz
	JbMgGSBydsPBoSlRyRv5vkTCdsBsZj7TBk1T/fzw1mBu5MaUJckdB7D3dcTfFth9e7QIlbLJnZNLM
	zFULJErlkdTaZD3hSvBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXjZN-0007zu-TL; Mon, 03 Jun 2019 09:47:57 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXjZE-0007xn-T3
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 09:47:50 +0000
Received: by mail-wm1-x335.google.com with SMTP id z23so10316089wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 02:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e9Ixde2RaAqTQGdv+LA9dTohQTsUZNLap9qbImLLJdg=;
 b=pzYeMNujyAFxjYrDgexUSXvZNbCrKH4ON0S8GO6yhoEos7QDzrXvmiaDID9tfzEKyg
 sW+C6F5cEPQ/rk8fW7UCxjSvAEggstG/hdn4GThq0n1nMs4K/oyjnE0vqdKzWBf2MkUO
 t9UE+j3BJ4AthZlLyEv4+PbwuQtL0ZnvVBSIyQD1YjBS96WXsFK4qjaxcAco+7Fv//e4
 GkyNZ3jPOtU7lnGlESqER8ZzfdjuQgZ+a8fQ0huUdMNO4SiuGRrjLEk3+nnEBpn69Hem
 ujJeMrhWxL4SdxJTgLEWjBNLEVM0+PXZkeQxHFqFxVH5oWlt1bIAmpbbl6MXzA3/NxoX
 Kavg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e9Ixde2RaAqTQGdv+LA9dTohQTsUZNLap9qbImLLJdg=;
 b=UgMFjSpls0TTzOD65KqhvMQFCvqQagJ9fFudbEN2amE6BgkM8/ObJadFAVb1zvPvGs
 5SDxm83vHB0ix7fZf9xRToZfaxC2e3KxQoT9W+grF/w3++Vw1wdXAScGQkVrOA7O+QQG
 W4WOq5WRNlS7bDdNzb7kUwSa9AOBI8Q6xsHigmVD4Adcuvngh1t+2EmYr4wm5zQdz4D8
 kA/QuJpbOQ2ESWYUPuF1teAmRaFQYEqV7D5sW3mSQHA6hbs+ac1/khiBXEWDFKcFp6NL
 OD+8Z38U6uK/QlFlNqakP4fHhT/qLxNUcl4OAPU3Ae4F2Lc7mpqcxyNhaGexXjcob/nI
 BLiQ==
X-Gm-Message-State: APjAAAU7ySvYLaTgs7aH98D448MlgHCk8gBrnB4S7278YC6RyaBYIXma
 22r53QCKI1eRIHU4cucpGXaqMQ==
X-Google-Smtp-Source: APXvYqzbgRQEAG7CUDXFioI6Ii9i4e+8Al0EgocEvPQeRh42n3dvxouKvbj6QMVEBXoM/NPQwRWm/Q==
X-Received: by 2002:a7b:c34b:: with SMTP id l11mr14066558wmj.69.1559555267031; 
 Mon, 03 Jun 2019 02:47:47 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id z14sm11235375wrh.86.2019.06.03.02.47.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 03 Jun 2019 02:47:46 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 0/4] arm64: dts: meson-g12a: bluetooth fixups
Date: Mon,  3 Jun 2019 11:47:36 +0200
Message-Id: <20190603094740.12255-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_024748_939304_FB875D8B 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:335 listed in]
 [list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These patches :
- adds the 32khz low power clock to the bluetooth node, since this
  clock is needed for the bluetooth part of the module to initialize
- bumps the bus speed to 2Mbaud/s

Neil Armstrong (4):
  arm64: dts: meson-g12a-sei510: add 32k clock to bluetooth node
  arm64: dts: meson-g12a-x96-max: add 32k clock to bluetooth node
  arm64: dts: meson-g12a-sei510: bump bluetooth bus speed to 2Mbaud/s
  arm64: dts: meson-g12a-x96-max: bump bluetooth bus speed to 2Mbaud/s

 arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts  | 3 +++
 arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts | 3 +++
 2 files changed, 6 insertions(+)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
