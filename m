Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C6FC404F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 20:44:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kNKm/WlQ8p05Ll5sXChuMV6JcNlA9puTts1ui/MSM2o=; b=JmOdZKtgRwurl2
	WUPmztwBwy/2XaAVfpAGA/Z+NO0Egr+tVVAdID6ZhVOQrtwRQi02EMY7isrD5gIb9bDIk+xfqzfo6
	mKxUd/8go+bex3d43UxF4lSRsevuobP7JCrzNkWFGYnMLqg1kf+JqW2wcbIgbolNuV3Kzo1zE3hO6
	A4HKfZcrox7z7cpPHainUe30zSQjyeNn7eDTfqhHm+0WYuqN3nZjf/yn/dTulbTdPmdefdeuFW0rr
	gQXdxKPFwzvY547K3MO9rz3GWTD2VBuW99Noe4gkV7gXp6U9XjBtIKJqPBdJmLp9WTowmR2g0jyez
	oFGryuZ8a2Q95jX8Hzow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFN8o-0000Ck-10; Tue, 01 Oct 2019 18:44:54 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFN64-0006G6-N4
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 18:42:06 +0000
Received: by mail-wm1-x344.google.com with SMTP id r19so4507205wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 11:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yKpve1sS9k6PS7sXtW4xCBzfM/Fs/2OVeKaJ2VowDbI=;
 b=pPsF/jPDCHH4kgy+t57Wh+/nv1CmF+wwXU4PdRpDz/olg7q7n7RwsnQr8Ngfy+/4bZ
 gSRRXg1rC2fMZcHzThpdflc2e1K+pnNCMI7Nm/XoAxKoy5/PTafhzXYbQwmvbFa/y1mG
 p9EVTtVqVv3TWRZx6ZV336nL03wbyGh66rKPVkLKcdemXjLTNd4sRruXzilbhViSv2sj
 xScEKU380G/U4joZdO/Ikwrfvo2Rp+40RUtHle9tsOczHfrxP6gKKJL6d1dQuDYo0nbt
 t0sgiFJaU1xmtZ4jDYv51SpYas7g/bKBhAdtW2fGz5TL+wjXyD3IoAkjX3NBhs8oVWs5
 yY5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yKpve1sS9k6PS7sXtW4xCBzfM/Fs/2OVeKaJ2VowDbI=;
 b=DcJlkS7lZFUa03IWdxwPsL4wUSesFRkq8wRaaOxQsNemtp/lU/H1MFxTrq58L8iipL
 uEZYa+2Gw51mZXQ8f7KBUHJsRc/BGPaAs+ZqABigmxSgl2H5qVNQCR6a93ww15F0znlP
 EbePNT9sD5ld3m8/PnvWcUFY55T6H7GfkRQnHe+isSb06kjjOGgsjPHDq01ChxibQT49
 F+YmfZg6Wbz6gajyTYxi17jDziLGLWahXF5LVSMqIDqjWJuUgpE3Z2HxSTtbwcYRZMsH
 3O16zxZduEqi75+wC7nNqKLEmm65mk72A4L7s72qsWYm5c4wJxIAqnWYqn2k7OMhsfL2
 D/Uw==
X-Gm-Message-State: APjAAAU6+DoVsTeuprpCRO3cb7BSsqRgGPO+GzWAYpL9piQNbGI5gMxw
 isWTe77fv6jiST78pKOBp2g=
X-Google-Smtp-Source: APXvYqxgXBaEZ4Oi9XqOXjZ6/1GiZLdJqUtyNHPoYb8WtG5vfuZymtGDldMwckx91XnnvDPXSPRkWg==
X-Received: by 2002:a1c:f30d:: with SMTP id q13mr4573787wmq.60.1569955323021; 
 Tue, 01 Oct 2019 11:42:03 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id n8sm6788987wma.7.2019.10.01.11.42.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Oct 2019 11:42:02 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v2 10/11] arm64: defconfig: add new Allwinner crypto options
Date: Tue,  1 Oct 2019 20:41:40 +0200
Message-Id: <20191001184141.27956-11-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191001184141.27956-1-clabbe.montjoie@gmail.com>
References: <20191001184141.27956-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_114205_237846_3D2E0F38 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
index 8e05c39eab08..f2f330b8416d 100644
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
