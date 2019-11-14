Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FAEFC4A9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 11:49:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UNG4aHBS2WAYSVpODfTAQOugitpBz+n9o2xppNy0HIw=; b=AbnkLqXIIFkP6D
	vLAwYVZLCS9Hx53oFU4dDX96AK5IHxc/2CJePXWbdRErtFVE+dEMLZihHruVkQEmdMFFylp4ZDOk/
	JGuWWTf0TogBdkE7LHl7R6f+I5KE9JerT8WgrI8JtMcMU3iRd4Fo8LFhIm21b3WNo3ONIYm1efFxR
	Nqw9ck9RKCIojvyKxkP+OtASc54yGuCAT+iEb/2iGQFle/dw6G+59i52p9l2bcDKMBDVlrzIvgbdY
	7RT9gGsJ3hpeTcumloLcRkGtAyovPQAkGAoa4dQuohyw+pSj3mT3J/ilepyFPd3IPTPdq4mXSrLw2
	LOgIyioyefJOQiW92WSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVCh0-0005vH-6K; Thu, 14 Nov 2019 10:49:38 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVCgo-0005uH-09
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 10:49:28 +0000
Received: by mail-wm1-x343.google.com with SMTP id c22so5344732wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 02:49:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NwAeLrKvbbZMMrwnv1eozuX4/GetsOmlDvz+Gto4i+k=;
 b=gnFcIlbK+7rOK1QioyvQsJIa/QTWL2hkKkzE7GJZbWrUS7WHynwr3Ip67bsIsKiuUf
 /ZmIr/rM3wyntOQXhvbaUNK94VGUqQ8ltx0wfGiCgVFdll09HDwLZFqsp2QZ9o97IWtN
 DR5yz1J0s3S5NL6VkMS/jLwmefaM7oUlCI8JbQtfMEVe7I0c9ePaZ4Nhu92BY+3uvZ4i
 z6dkhcZT2LpvZEEIu8zQRqJtEseC8YuSPbnRRZDw5+EwyyqrMMs0ZAB33SzWiVQiJ8Hu
 et7fBdtOqMvrfmo4kJKQdgjcyz8CSK8hb4GZNgNZ1UybUgotG9JWv6xMEvRT6uWd0Ppj
 Aw9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NwAeLrKvbbZMMrwnv1eozuX4/GetsOmlDvz+Gto4i+k=;
 b=GW4XBmZscS1ob7D65oqkw3k3llqPBs6xkBu4aj0wK9GhghXCtW2igPMZ5BEzHpSpNc
 v8RkIHZdJuSQCBrrGu8T95TiAs2LTPLA3Eu6lvczF4U94UjRJOH8Cw1o/EEJ25RYLmuk
 VZwfmD8tv0v/f/w7P3kIPurkYTh6hk/oHAjzzv0HSiundw/MO/I+6+PUSlv1DLT4TDMh
 6p9Z0u/FbLOZFAmUVMuLkcfnIrjxeyxp92UvQZ9plV/T4VpycARL2OhEP+XUc0lwL5SN
 UpbwUzDMvAFwIvwp2U9UPJSz9ZZukdZiQoopUQliNgZLOmU6v6jQ+cJL031psi/xcxlw
 Ih5A==
X-Gm-Message-State: APjAAAVxazyoTB+E23hUsLlMSGSxibmWAYRBBTVeIj/NqmyIfasjdkc4
 X/ad7URVnGiYysizpspKJCA=
X-Google-Smtp-Source: APXvYqz0PO/gUjWxdhePfi47Eljly0FCq+XLQE5Tvm4jyTpgfS8z6n7vRDQBxoW13zSWJU/D0T5RLg==
X-Received: by 2002:a1c:dc09:: with SMTP id t9mr7014332wmg.65.1573728564499;
 Thu, 14 Nov 2019 02:49:24 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id k14sm7229301wrw.46.2019.11.14.02.49.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 02:49:24 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH 2/2] crypto: sun4i-ss: remove dependency on not 64BIT
Date: Thu, 14 Nov 2019 11:49:07 +0100
Message-Id: <20191114104907.10645-2-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191114104907.10645-1-clabbe.montjoie@gmail.com>
References: <20191114104907.10645-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_024926_996154_6704003A 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver now compile without warnings on 64bits, we can remove the
!64BIT condition.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 drivers/crypto/allwinner/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/allwinner/Kconfig b/drivers/crypto/allwinner/Kconfig
index b3c9c34a30de..b0a5a0827483 100644
--- a/drivers/crypto/allwinner/Kconfig
+++ b/drivers/crypto/allwinner/Kconfig
@@ -7,7 +7,7 @@ config CRYPTO_DEV_ALLWINNER
 
 config CRYPTO_DEV_SUN4I_SS
 	tristate "Support for Allwinner Security System cryptographic accelerator"
-	depends on ARCH_SUNXI && !64BIT
+	depends on ARCH_SUNXI
 	depends on PM
 	depends on CRYPTO_DEV_ALLWINNER
 	select CRYPTO_MD5
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
