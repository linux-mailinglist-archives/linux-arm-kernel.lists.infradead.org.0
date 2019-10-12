Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F430D51EA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 20:52:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j1NMdXL10TsonNgCbI8WjI/lLzvdRBfKaEKr1+G0m1Y=; b=QQENc3lFlCPfXV
	1IO2eakWIVHWjy9Fb1UbRoYwf7OPG2erTFsus+PDvZuhkuBar+EX8+tbN7QKjusBx0I2kC/kxcseE
	wKc4UCK1zkQU64iTod3/zeyuLWYcNqqAaOcxsbq0R9VX4PaOpum+ZXHICjeUZhS+K2+wk2jDa8dxY
	oItUk+UiWMJjcNAJtDG6z4ZljJ+YL915Z+R0dqYY86TIHpK2zK9/oBie1N9xjYO38VUHAVPFuqIul
	CE6I6Qta+dLZplhxGuAJAyk1S2Dwo/jmPwhYDnyO4dJAnfOu9Dl5Gd3GRA+Vfwd3KLKLO9efLBIGJ
	ob3PWRcgBT1RtJagVLZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJMV7-0007Cm-Ge; Sat, 12 Oct 2019 18:52:25 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJMRz-0003G7-Cw
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 18:49:12 +0000
Received: by mail-wr1-x441.google.com with SMTP id y18so5795016wrn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 12 Oct 2019 11:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rYi1VSAulK4JfPFywnxCiz/tj4/4Gu/YnXW7odKIbWU=;
 b=XmVN7x19aNaggULUvSZupAZZMhzBhr48faHS49pLiyxHuLH7y5SM1o5T80Nh+jPNS7
 JR5KWuIxukmwkvtbXEGGfqkj94RL2aXIKQKgiGjTxJZzAT53BnpFryHT3edc8hpVitbq
 ohbLzYHBTiKONPpe+MLsNGZUoNyApYxRGAi0CWUObjxq8mo3GNnspczXPNqTwkHtcBAg
 fFmFb526ssToYKID1oL+DdlJwf/RtX1oNIv6wn4LCHm/oymv44myVjGjBNRvPu5/wmzK
 YGCsR2h/O48Ev5U9vzNNWxtULtzuCCZ96TRKNWnFMU/bN0WD0icKheXIre9hvmWrQ3+b
 W2mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rYi1VSAulK4JfPFywnxCiz/tj4/4Gu/YnXW7odKIbWU=;
 b=dH2Uxe+lQsfoIWgJmI7YcsppAY2GkFVSkaNRjUK3+nSLqtQhCQ51oDd0Md/bfHMios
 02RJS+q8kcA10JPSytqqtSiyVn5dG9ypT7C+UVYoMI3SgcKmsxfLKXGnxCDbbvaP09FJ
 iKj+mYNgV8BBm1DsA9v/nI8Xk043pfDLXSdFLaHZW/ly9ekKl2r7YWfLanxhi8H00hB1
 10RpgTGjR+nijC/tWZUJdhgRn6O7h12EyXNxJOFrxhhi2AdgsRRTsD7yjqZ7qV1IwIXB
 SODFjg3Y0UGyntWwiwEAfH5imaKEDSE8m/3uTsh/nQDtFXnxwL/o16AU96Q+DeHeS/Rg
 WO3A==
X-Gm-Message-State: APjAAAWmFrIcLN5Ytoh3uVAnne0/z2dC3vKpYtCwL4faVe1OsIgK/iSj
 ku7EtI6SwmEEVb39CkTfN5U=
X-Google-Smtp-Source: APXvYqzdO5j+f9N+5yh9nGHTDJJd43DAyB+rEujCLac/sFJ/vzap0GKUIv3sFNCRLIQwWpquB/Yrvw==
X-Received: by 2002:adf:ff8b:: with SMTP id j11mr16749547wrr.299.1570906150269; 
 Sat, 12 Oct 2019 11:49:10 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id a13sm33670580wrf.73.2019.10.12.11.49.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 11:49:09 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v4 10/11] arm64: defconfig: add new Allwinner crypto options
Date: Sat, 12 Oct 2019 20:48:51 +0200
Message-Id: <20191012184852.28329-11-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191012184852.28329-1-clabbe.montjoie@gmail.com>
References: <20191012184852.28329-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_114911_476175_9AAEABBD 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the new allwinner crypto configs to ARM64 defconfig

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index c9adae41bac0..c45fb6822e4a 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -114,6 +114,8 @@ CONFIG_CRYPTO_AES_ARM64_CE_CCM=y
 CONFIG_CRYPTO_AES_ARM64_CE_BLK=y
 CONFIG_CRYPTO_CHACHA20_NEON=m
 CONFIG_CRYPTO_AES_ARM64_BS=m
+CONFIG_CRYPTO_DEV_ALLWINNER=y
+CONFIG_CRYPTO_DEV_SUN8I_CE=m
 CONFIG_JUMP_LABEL=y
 CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
