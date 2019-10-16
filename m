Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CC3D94E3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 17:04:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OQLd/pOs8xeefhYyT+Gqke/nr2hTO1KABBth7LGG6uY=; b=d9UQ92DPzrXwaN
	lLpc7yF9g0oAT774V/sfGWVSusZnthD9SalNGb6A7l+Y706t7FQABDQsHSFz2K1UZ9s8SH8pXjrxz
	kcNAP9QjiyDVcoKWI9CT+VUCYQCb+G9Q1aaeTdt36uk2B6d4gayi7ozeNFJC2j00ujhSm2zr6MRcU
	UGw3lwHFxSifFZ4KAJYsTQokOL/lLh+/OZyRKflcgl3bN0HZodGb4yY/8tB0GsjBc7goB+8e/Etjw
	uG4eNmttLX0aV2s6RYGGlnvF1Fj1H9DRj5OxQxLwQ3iKpnOqr36AYEx8IS2+d4/PaGjCce/8Vb5kT
	elTaDvS0fPPVU8llSm0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKkqs-0002RE-Mc; Wed, 16 Oct 2019 15:04:38 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKkoB-0000G0-7n
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 15:01:53 +0000
Received: by mail-wm1-x341.google.com with SMTP id a6so3276903wma.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 08:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zV4+mJumjqZCVRf0c568eaULYg2KEJ/Mri+qUnmNENE=;
 b=hGLnN2wbqzjUWYMYe8XYApr0ASx80B8BAD0rdumLrqT5gUGWH3QNtpUOaD9/EQtuG4
 rPiG7+TK/xTsteZ+sUZ/aH58g7wTO7x9Tn7+Dswe+dXwVb6MrW2Hy15tEpYZ7YZdccXE
 3Y9FPj3AK15cCRBQ52zd9W4L9KXPlUyC100rr8HgMyKmTV7NH6EKESyn+uVUpPV2YAWO
 NXYIP+bPKp8A5JzDtQXiCd/VrjDZYTcB+UHTi6PQWrfKHl3g+FvEBtRf/ZtCFX+GLlwn
 BBRJgH5iM0OQUyHSO+Bdnb6AGKhwLfGyG6ipzNjSWgLI8He3rhQZp8WVlP4CUY2r5Juu
 viMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zV4+mJumjqZCVRf0c568eaULYg2KEJ/Mri+qUnmNENE=;
 b=eUpZRUzpkw4p5b/NWwnk8LPlSrKvHsOa3GQQpmEpf8e1BniP4RevloR2rDU1rT6bBC
 fnjh/SWyOeZzA+9tV5p4T9i9AOFoWshwXTqqAW30KVFkfedtKSjcpetlOVXShhvbAofk
 8y790UrlN9IIr7/jpDt6CNHFwOqCYhB/3rCLBd4wc5nOjdmSITkdRr3vnzv7RUmLK9s/
 GkDC9vxXoQvmel+rHZL8GB5br+zYtRXONKlIpZBSNlf2wKwYvtKKvPBEI4LLSUthvoBe
 VDF5pyUrSoPCWvYDPEZltWwgvulGatl7QxXDzp24ikqkYv7gtdSH48AeQ6S24aezX0CP
 fm0w==
X-Gm-Message-State: APjAAAVkwRfgOewo1bolRlXnsahRhDbrIwyYW/t1pEwYNtLGY7KXzCQj
 cjz049xFvsLccfp9C1QNK2kXVBVr
X-Google-Smtp-Source: APXvYqxl3T3uwG5aP5qnrKKLv/pkvE+DgPTNy74QVnvBMf3pd7lADd34jdBhjW7d9AlIdJKHZJEPFQ==
X-Received: by 2002:a1c:7c13:: with SMTP id x19mr3768680wmc.80.1571238110118; 
 Wed, 16 Oct 2019 08:01:50 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id r18sm3215437wme.48.2019.10.16.08.01.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 08:01:49 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v5 09/11] sunxi_defconfig: add new Allwinner crypto options
Date: Wed, 16 Oct 2019 17:01:29 +0200
Message-Id: <20191016150131.15430-10-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191016150131.15430-1-clabbe.montjoie@gmail.com>
References: <20191016150131.15430-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_080151_836777_B0828C26 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
