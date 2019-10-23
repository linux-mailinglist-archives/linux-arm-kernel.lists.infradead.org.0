Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33215E23FF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 22:08:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j1NMdXL10TsonNgCbI8WjI/lLzvdRBfKaEKr1+G0m1Y=; b=Vo1nTSwbX61sQc
	3Zao1LkCqHa6tecfmqbQiyN2uFrX9F66Bku+eFRyUbRz8/+Re1LSL+Y0e5wEee+bcaXH5s6qzA7ZF
	Uc+CFAZh77VEuikaiiTefZJlL5dHDQdzEZs3nvo9lcRQZYnYbrmMA11b6OZo3SE8LEFnKXGzJZeDG
	jtSUush0R2K03oddBKRUBA35JGaWAhZib3sdUvxpHaag82SSCo3aGpctSpHbQ4mwLNHxxDLQRrctN
	0IsfvBHtRWIo8493sEJPHspbSQ6FpfmR0KElqcJlBIxp/alO2Osotog59/FEsf0iiQAdenhesHiZ3
	d22QZI6ai0JXd6eSX+tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNMvd-0003ug-CA; Wed, 23 Oct 2019 20:08:21 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNMsw-0001Ch-DN
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 20:05:35 +0000
Received: by mail-wr1-x441.google.com with SMTP id e11so14744093wrv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 13:05:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rYi1VSAulK4JfPFywnxCiz/tj4/4Gu/YnXW7odKIbWU=;
 b=IJ/WXXuaGsjV2nbd3uPDj/HBGcNT2h0oWqgN61iNwEn65bldac6rkXzSKUel8YgC2+
 GMR+RuocKR33GXbKVDwIJBcN5ydjN11MXZOJtzFyJJ4+gC73q2q75geAyMy/vvTM0hON
 FsMNrHdrwe3BQLN4i43tX7YcLkCOFDfrtmS81RbmJ1qQZnL00GAwXyA6DCugsnYfDNZX
 Cm0OwpCCrFozTaLAvMhmrmq0tRP7YPraNd5+d20nPIaL7DYN7oX+wvLTWHArBIagCG+O
 XSL8BmyPvO3YHKpMjmecm388oQMcMu0XCxI1U8FGSVmdnLCDI5Zpa/atM0hmOwRbqF+7
 1kXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rYi1VSAulK4JfPFywnxCiz/tj4/4Gu/YnXW7odKIbWU=;
 b=NsSEzw3vDCVJXX3ioNBw3kyXd5vVkeyS6OigodlAvXbjE8PZEJR97sg0Hg3RQKWfgF
 EG9QmzIINc3K71Uln7zeeS4iALtcQKfhCu/o+2Mx/R5vROGn5M10w2I+kwOYgbNWINEi
 GzdO3LC9xSCpycGp0x0QtAu9wkvZtV6r1e16wytgneXfGXc3JrLe3WfQ8bqBQX6bPkFq
 vDbH4e/KLW9PBAixNvcClcSxNqXRsR+uMTttsVUr8REv0j6nDmBxJnfavmd8L16KT4gI
 +mY7yle1Xmtu96n6Xn2F1P6rus8o7I1QIs/ztvrZoAighvDZHvU1bmQKziaAb5GS8gPk
 /S3g==
X-Gm-Message-State: APjAAAXaze6Z1YHTLhwkQFNGulp41En14hw/244POViWvaJpV0UVimg+
 89/gklG1aXBbYnpg5EN5IpM=
X-Google-Smtp-Source: APXvYqzn7VyibbZQTzr5picGAXpdNbro7k173sZWJw4EMmfTFdRA0KSHMI/3UG8KcQb2AkIzZM0SCw==
X-Received: by 2002:adf:9101:: with SMTP id j1mr401777wrj.71.1571861133138;
 Wed, 23 Oct 2019 13:05:33 -0700 (PDT)
Received: from Red.localdomain (lfbn-1-7036-79.w90-116.abo.wanadoo.fr.
 [90.116.209.79])
 by smtp.googlemail.com with ESMTPSA id b5sm177555wmj.18.2019.10.23.13.05.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 13:05:32 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v6 10/11] arm64: defconfig: add new Allwinner crypto options
Date: Wed, 23 Oct 2019 22:05:12 +0200
Message-Id: <20191023200513.22630-11-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191023200513.22630-1-clabbe.montjoie@gmail.com>
References: <20191023200513.22630-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_130534_543467_7960647F 
X-CRM114-Status: UNSURE (   9.53  )
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
