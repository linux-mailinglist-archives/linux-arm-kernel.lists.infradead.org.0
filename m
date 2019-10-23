Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E65FE23FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 22:08:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OQLd/pOs8xeefhYyT+Gqke/nr2hTO1KABBth7LGG6uY=; b=NCnTp7uX4oxMUq
	e+lMCOcFDCTrxriwLkO1pz0SCqLISJJ2cpeRBQKK056Ys+MSw7E+1ALTUTvr8vb8sxIEUwY6LNdYJ
	TnnJHgcl9hGeskcyKXTYBuERYDhHE2efdAWA3XuLE8O2XRdF7jCVEG2jgiG7hvsRaddnaz8FyzqrE
	/TLi4GPfSRK2A4YoHRYzcEBsUFXlQF85T/VQypimYC8y65t0dOTekwIZR9EWTKuttYNsVFsvBrSt7
	0qtPMgP21shDL47JxfTjrsna2UL4aznaf7Lhx27qqZPPsjqnpLTmpaLmD3B1ZQLAg1n/4kDCSKSaR
	LmPkjq3z7TwF6a6vVMoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNMvN-0003gR-L6; Wed, 23 Oct 2019 20:08:05 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNMsv-0001BG-33
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 20:05:34 +0000
Received: by mail-wr1-x444.google.com with SMTP id t16so18311637wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 13:05:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zV4+mJumjqZCVRf0c568eaULYg2KEJ/Mri+qUnmNENE=;
 b=kQFPfs47RtHcsf80dqIXL3rjiCublAPTudUJbBeVLZzSOsQ3Ijc26qGeeIrZ/gZfo/
 NVbwem0g5W+Qlgv+k6SRSejmUM9yw6SaR7unSaLpGwJbH9i7dBo/44auEuxZAT0ce7cD
 ZamjiqYAeDyMcp6jBvdMc1RLrBG+NHkWVoT6D5i040JWVniDaWJqIziRlir+NImuPa6t
 oBQQMEs8Ioi4DMR63LaY/RKWNw0/XJJkuq0YXDLn/IDH4a5rn5ZesW9rRm5e/xFnKEui
 eshGUrunzu0kIZpzAd4JT94VN4zbUBAFckmCIGoUIin7eHpOgT3fO3aghdzsqjYejVO0
 5/4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zV4+mJumjqZCVRf0c568eaULYg2KEJ/Mri+qUnmNENE=;
 b=POBCh9RKJb4OHGoSATydEf765OA/Ay11ItHpQQDEThqmcLEG71KWv6V+tQfKY6upo0
 XLPvqCJNLTyqUNvN3cAA3em7hFm6qThtEpV6IHjg30Hx/+gWYOxEZI8zKmvAYtRpYaV7
 sXeX0NW6NbeBxb2qcrjRvrWY7KyWaGvpKpsBgoP2ZLIR8z1A72jHa5cZ1lEaNhL0qZ2w
 3rNxed/cb6y9XlpJ5LEV8+3veCE5L55ieL0/pIS6BWvS8HKs5uGNuNk0Oot+o/TCcYO/
 gQJuwOP4EMCfdkTRc8nCpZOI/uoenVmnLsQi0S+ItsIxObU0FNzzw3WrIgd78VfARfow
 hHdQ==
X-Gm-Message-State: APjAAAWHvvBmllRhshSfqCneSjPab9V6HO9hevgiRKrHqdffu2zRlisb
 f3H8fvSjONxzN+2F9yxqIU8=
X-Google-Smtp-Source: APXvYqxjk49XAlOMQGr2pv8HiBO+9mD2hbpz/bzCfds+uwws9lJV62gKPwuWndq6m69i6Irva1K6Gw==
X-Received: by 2002:a5d:4b51:: with SMTP id w17mr419192wrs.357.1571861131729; 
 Wed, 23 Oct 2019 13:05:31 -0700 (PDT)
Received: from Red.localdomain (lfbn-1-7036-79.w90-116.abo.wanadoo.fr.
 [90.116.209.79])
 by smtp.googlemail.com with ESMTPSA id b5sm177555wmj.18.2019.10.23.13.05.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 13:05:31 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v6 09/11] sunxi_defconfig: add new Allwinner crypto options
Date: Wed, 23 Oct 2019 22:05:11 +0200
Message-Id: <20191023200513.22630-10-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191023200513.22630-1-clabbe.montjoie@gmail.com>
References: <20191023200513.22630-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_130533_169339_53B35B65 
X-CRM114-Status: UNSURE (   9.43  )
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
