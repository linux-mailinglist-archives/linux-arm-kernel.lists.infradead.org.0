Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC0BD305E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 20:27:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j1NMdXL10TsonNgCbI8WjI/lLzvdRBfKaEKr1+G0m1Y=; b=dn5MdBleWIIhRJ
	NuKa9LGALfT0dNY1x72CJZLlTHkCCrDGwcQJt8nO5XVDOxIrqTDmf1GcfJn8lyzOt+uFbbAf+AptL
	2EFTlpGKJzqBR8in8a6RurO2HDS6kcaynKmAg4Ix6VQ7WelLu4YXopgdhagTyZvYh6M2+z+c7fs+G
	z98gMeVnZ1FBd+ZKWrxG8PTVTiBQBbmayTaHp/XANtFzGATfG0RpxMDlIBb2/g499RlUy7v9N94mG
	+Vs7NhyHfAwfV1orIZyCFq36iboeBZnD/SZVZf0vib/XvWLGdpI8fXr4w4aA8P31rFD/BIR592M22
	nRAohgMehDDDrcylancQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iId9R-0006Tw-MZ; Thu, 10 Oct 2019 18:27:01 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iId6h-0002om-Fz
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 18:24:13 +0000
Received: by mail-wr1-x443.google.com with SMTP id b9so9103041wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 11:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rYi1VSAulK4JfPFywnxCiz/tj4/4Gu/YnXW7odKIbWU=;
 b=Kr8hUZA75c1Bnf/XsiOtbPU0uR36AeEFj/LojWcMhcPK0PTEKY5Mk/Z/fe19InSyTl
 XfNFzKHocC9RsOGeC4k2ydCDBO5nZtWu2RXNN3MW21uLPAb2udgcoqc3Olgy0MnTvojO
 9no0tm0g37RlurDNA1JSCCxgrTFYblyVbsU1x9bAd5FnP+txB67ICOyFCfNAIXrJP/KP
 JvH2h+R5F4jewjvg08955UsdCdr+BUvUnZUuyOPV/EN1R+G+b7Z2ukroUKP+0yKdXLCC
 9QXsK2AVRbFS8wFFKF/pnpaGaceWzAx9GDZwxI23NqAo2vsERZsJsvplbtabukotAn+f
 R6ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rYi1VSAulK4JfPFywnxCiz/tj4/4Gu/YnXW7odKIbWU=;
 b=Su3VdikZmJMPGcA858Zloughb9+X+umFlqJhx1KcFP5joh4UTg7W4lC30skKBwA6ES
 XtFpMpEgiCf5y7RjKM2e0N29TcfDYa1brDg2Mxi8NxZJoS20E4vkEEJO0cqrRVohI2Vh
 uGeuqpyRSR95zEQC1LarsZijDGATCDdUL8fgB5Re6kh3en9YfoEv7V9VFCofULr9paRQ
 ofU/TUr0skyG06zyWYKDImgy3soloZmUldwix/1PSuipz4tkT8lQCpti8FDQOM/8xDZ/
 xum3Z9kr/QQ9GXCQq+tQ3nFQogpvLNxVxIkjZj8wKpdY4WqruDmI/1vHcHctFJhmPmzQ
 gYJg==
X-Gm-Message-State: APjAAAVSCElx64HinP2XCofOOeYzp1Rnb2TtRMxJVGcN0+entlfGARpA
 DT3sKHVIgk3E4Uvobi61fOyXFfmi
X-Google-Smtp-Source: APXvYqwP53ZvChovIvqkdm1RA2MyQqS2h1Qym7zVKohHbFRKdqrev/tdPed99iIgdJQF05D1SS7O4A==
X-Received: by 2002:a5d:428c:: with SMTP id k12mr9800113wrq.184.1570731850062; 
 Thu, 10 Oct 2019 11:24:10 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id
 y186sm11367664wmb.41.2019.10.10.11.24.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Oct 2019 11:24:09 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v3 10/11] arm64: defconfig: add new Allwinner crypto options
Date: Thu, 10 Oct 2019 20:23:27 +0200
Message-Id: <20191010182328.15826-11-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191010182328.15826-1-clabbe.montjoie@gmail.com>
References: <20191010182328.15826-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_112411_655891_9CFAE28A 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
