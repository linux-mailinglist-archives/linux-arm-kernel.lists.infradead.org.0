Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C845D51E7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 20:51:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OQLd/pOs8xeefhYyT+Gqke/nr2hTO1KABBth7LGG6uY=; b=iA+IwL3gZqZUJ1
	x4AqIUCeCK80ICd8fVj3fO10n4XXmiHOWjRYHqRDOnv76rJrFfbKB7p+xcunxxtYP7JerT11bZn5w
	tCr3YDAVQqIbjq93lQMEwNbnjyXMRrlfJ7xr/IgZBAR2CDt62k6WlSOQn0XOzDIk1xZ0O9SPKM7f0
	L4dfX+FntxRPiI/Dv/pqrf/rZgxqO2Tjdc5Ss/Cc6cRVAfzUD47WdGMl0fuLovw50ijn5aATfgG2i
	4OeDfqIPElzNUT0/+Twtjc3IOz6LaJNOefBkRKE7nK+losN1btBQSv8EAosC6jm6FfbUtP948jdpu
	YHj1+39vkd8jnmaDp+Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJMUG-0006J1-U1; Sat, 12 Oct 2019 18:51:32 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJMRy-0003ET-D4
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 18:49:11 +0000
Received: by mail-wr1-x444.google.com with SMTP id r5so15207588wrm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 12 Oct 2019 11:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zV4+mJumjqZCVRf0c568eaULYg2KEJ/Mri+qUnmNENE=;
 b=SoAu1WTF4Hz+Q5KvCZRtqKd7pcLykCWR3rS4humVHxIq2FXg01UbNWrURbDgVAA5tO
 OFkbBzxGNoqA/pLYVvzGUWBtnUjIhAvD1HA4yafhkvrcHwvSHgGag/qQaqPsDTW0K6Zn
 Cmw4/4WU6Ia/3JPbqdb5ET0pVfob3XjusoHu7f4ks3bzSqYLpP/gny2O7T+UQe8VMjeW
 2QDk1VNHzWPnAxCigpf8Z83IwP/+7zq3HVQ3XHpRnep+SH8Ukta6+CG6DCFKGvoyJ6uS
 FmdRe0MJhHzrL27iHOxyieHGLp8CK7JNLB9AnmlXw6xIbWCR+ZaKDaW0JHeH6ka1f4Kj
 GqDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zV4+mJumjqZCVRf0c568eaULYg2KEJ/Mri+qUnmNENE=;
 b=fG/oc412KiFZFxWepeEIA+LADrx8uAh4IMVBdDEQU/4dtgsL7icOeajvsT7XFnMnlC
 fMYECVPNfsYyFbnh86xdofFnNuQJGtzucH2Vwoc3zPE+qpsx55dYcSGQapB6GpM9/4T+
 XPj8p2OZn5l0sBBLKETb33sLVTEaYLAo/nnUR9Bh5Ky7164Hzey/NSLSNJHk3ITVBBh7
 EFBYfdoxsgvUNOMB/JxpcBOcIOcMpu2oynko+6IQeV7/xr1EqiGwrJdY+pmfBB32qWHP
 3sqB04CeVcXTgN31e+2RREme0yWW4xaLXBnESV4ewQ9ZOkYcdvqgHyNjyqBLlhGOU8DP
 cAJg==
X-Gm-Message-State: APjAAAXfXQfuMj61CwEbYPJ2xH6VjrJDKgjC4eD8qEwjVTHbdnbz2zT7
 4gNbpvRfV0CHVlvsC8dtuUE=
X-Google-Smtp-Source: APXvYqyCDqkwYKGrmgm0KnsgLTZDi4etAKSyk1EAu2zh+IJ1tKM6xB6y6T1lZyPLZhBTN8BzP1h+rQ==
X-Received: by 2002:adf:fa92:: with SMTP id h18mr18391370wrr.220.1570906148927; 
 Sat, 12 Oct 2019 11:49:08 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id a13sm33670580wrf.73.2019.10.12.11.49.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 11:49:08 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v4 09/11] sunxi_defconfig: add new Allwinner crypto options
Date: Sat, 12 Oct 2019 20:48:50 +0200
Message-Id: <20191012184852.28329-10-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191012184852.28329-1-clabbe.montjoie@gmail.com>
References: <20191012184852.28329-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_114910_452839_951E5AED 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
