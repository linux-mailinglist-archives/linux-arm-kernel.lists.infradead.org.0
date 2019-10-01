Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC7EC404E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 20:44:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OQLd/pOs8xeefhYyT+Gqke/nr2hTO1KABBth7LGG6uY=; b=pamWZOKoV1V2s6
	D84RZABiU1b/Fpm0lPkZ9FtTpdmAKOUiFjQIu7eb0N8LfWpAo24N8onGrd7TswVjhDbX5oqrBkVg0
	7M76+CyUc3mlTF4dkkoNlo9nNB5j/6Xyc7ipLTOu0bFnpmkAyMrAwi93LXPVWHoXZKulhMRuKQxQz
	/roMzkVpLEVUssLFge9bJmz9fnorg3X09R28zv3KEeVPMlDYXnD6qcoBE2DPcuski9tWeH1au+oMM
	wMctNoZyEgUkbwyCfawyc3DS9fQP0OFd3Q1SO9++vjHxMG+uL6W89vmQ21WY3dzszrYPjxNGXGTNm
	YelIkmhkaYsWZz4BZqKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFN8Y-0008S6-Hb; Tue, 01 Oct 2019 18:44:38 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFN62-0006EG-VS
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 18:42:04 +0000
Received: by mail-wr1-x441.google.com with SMTP id r3so16774251wrj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 11:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zV4+mJumjqZCVRf0c568eaULYg2KEJ/Mri+qUnmNENE=;
 b=Op9nayN2gx2vxdmqgSLirxgZsMMurpxeBsyy2hN+atH5jEMJBF2teXoA2D46OAkVD3
 j7nr3LdYKDttEnbh8vyiQnPKWN/wPg8XhIrVZrWmF/zUHzpQOqVkXX4ffTZZBvIT+NIm
 O3qb4m63qCBjY6bUeqwSQSTqOPSerk1sy06/l3xR4GYXAX2Qk5KJFktNjDMVq7RaSPQE
 Dql0k3kviYR8nTxwEYAE5Np3Rz8Ovnde+WGbJWTTWtw2WRSmXUQq2yW6DFHjp3zoSoli
 UXsJx0vsv3fJcKlrMvIhBaDo893jpioOL94W1rp4OOoxQNxhUjB4i33vnHZ9ku2hII7x
 T6LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zV4+mJumjqZCVRf0c568eaULYg2KEJ/Mri+qUnmNENE=;
 b=OwEx2RzXLYm++y5umz2He4jZ47JQ7o05Jz/MqJ4fz4yjdGE6X2WY6/Uz1OdYr41YyZ
 ttSzkt50McjRcB/xryhaKsl8HWu80r95bV3HhvlqczkQlvmhmmuXfyuGX+gJKfD240Oq
 5zAo80qvvkS1P8JPK0T+no3Y8TLda5AqItbDa2E3mlTKXu9eqBAKTDuahenWJJ12J66Q
 JXqno2UZCA+rLlndiAQ8hVSQBiBocJU4Nf8+NwCIqpteDmkmoqAZ0CBKo8r0zx3KRYQd
 H/46VxCkxUpeT8qwTtAH42k3e8grNtTKZEdEhJPgVmxGju72hHyhmU9EZmyNCjmiercl
 JrfA==
X-Gm-Message-State: APjAAAU0NKH4HEv+tXzP/XfsORQXAdID3m4NO8Lkutl4ySi0NEt8OvYh
 5PlPstrbfI9kh3EsHFW6d8p+fisx
X-Google-Smtp-Source: APXvYqzOH+WGVSlqfSbFWee70MnpoC4vk5oe7z/eWOzO0vbvatdBiDjTNAg2Jr8UrfCCcn0ObtgEMg==
X-Received: by 2002:adf:e443:: with SMTP id t3mr18894855wrm.181.1569955321546; 
 Tue, 01 Oct 2019 11:42:01 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id n8sm6788987wma.7.2019.10.01.11.41.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Oct 2019 11:41:59 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v2 09/11] sunxi_defconfig: add new Allwinner crypto options
Date: Tue,  1 Oct 2019 20:41:39 +0200
Message-Id: <20191001184141.27956-10-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191001184141.27956-1-clabbe.montjoie@gmail.com>
References: <20191001184141.27956-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_114203_050661_F78B74A7 
X-CRM114-Status: GOOD (  10.37  )
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

This patch adds the new Allwinner crypto configs to sunxi_defconfig

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm/configs/sunxi_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/configs/sunxi_defconfig b/arch/arm/configs/sunxi_defconfig
index df433abfcb02..d0ab8ba7710a 100644
--- a/arch/arm/configs/sunxi_defconfig
+++ b/arch/arm/configs/sunxi_defconfig
@@ -150,4 +150,6 @@ CONFIG_NLS_CODEPAGE_437=y
 CONFIG_NLS_ISO8859_1=y
 CONFIG_PRINTK_TIME=y
 CONFIG_DEBUG_FS=y
+CONFIG_CRYPTO_DEV_ALLWINNER=y
+CONFIG_CRYPTO_DEV_SUN8I_CE=y
 CONFIG_CRYPTO_DEV_SUN4I_SS=y
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
