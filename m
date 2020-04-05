Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDECD19ECEE
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 19:34:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3OIAJ7iLFykjb38Du2yTw9Lg6Q/M2Jh1YNCd5ejcUbw=; b=fD7JPkjRPyZf6K
	ByumjR2iX6ucuwf0KDadBHvaGmCFOI3wMFNZMcI70UBDpniqZvIboAJryeQJsd7+7zBELysFnVn6i
	o+ALvTdmfs4dszVf4z5ksqnpfpf82yH4qFagzyFjWCoMz2xwn3N2aLjSKRBwbnsoLLPuJgV7RLJ04
	uEb+keMgmAJUtzmvvxDqldYznsjsCHPtfPXfD9XNy/hUwhQGW8OlmV98yPV31Ke/sON3dneQhvEm2
	YISlusmksxmfk0xwyGQBMKFWytZv2PChJ3WUyhGOn9zkjMc3v6lIk3iv6wN+r/OOtpqovYailK8lm
	6vguUBJnkKYk7RA7q90g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL99x-0006eo-8R; Sun, 05 Apr 2020 17:34:13 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL99q-0006cL-Hr
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 17:34:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1586108040;
 s=strato-dkim-0002; d=gerhold.net;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=QogDZOCus9nqNdEZ1wBxwV54eVkXLair7HgM4gYWe0c=;
 b=iedOj4/1tPmsdvQ/Vd5EnA+D5NHeng6UUnjbQ2heB3Wvstf3T6j8b+iYhBsMtoCqTX
 CdMADa+l5+IspxDp7bPuvAetnodwlj45B/DBW9vubtKO9qkPryoLZSXEtnKq5oQ2rIk0
 Z8+9UOAO1Oc+hz1VkOzP5PwYu3Migtz9R3R39tAPnuzC8K40o3Kh4szjr0vQVvshBdWT
 Q5P9UB7lty1t/Fb1fSGMb1fl5Z7PGFb3fEzww8JFMveQBeVFkt1pkMbPOk9g7t6FdFLP
 n8VGGPvEP390+YJ8Ybo5qDeGJK7b3gK98lvWnumJwybmOMrtS290ha80UWon4NTWEdMH
 e22w==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXS7IYBkLahKxB526NfqU="
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 46.2.1 DYNA|AUTH)
 with ESMTPSA id u043b8w35HXrxmg
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Sun, 5 Apr 2020 19:33:53 +0200 (CEST)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 2/2] ARM: defconfig: u8500: Enable CONFIG_GP2AP002
Date: Sun,  5 Apr 2020 19:32:52 +0200
Message-Id: <20200405173252.67614-2-stephan@gerhold.net>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200405173252.67614-1-stephan@gerhold.net>
References: <20200405173252.67614-1-stephan@gerhold.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_103407_172336_151F92A0 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5302:0:0:7 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephan Gerhold <stephan@gerhold.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, ~postmarketos/upstreaming@lists.sr.ht,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

sharp,gp2ap002s00f is used as a proximity sensor in
samsung-golden and samsung-skomer.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 arch/arm/configs/u8500_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/u8500_defconfig b/arch/arm/configs/u8500_defconfig
index 0fd2726cf1c1..9387481f93a5 100644
--- a/arch/arm/configs/u8500_defconfig
+++ b/arch/arm/configs/u8500_defconfig
@@ -125,6 +125,7 @@ CONFIG_IIO_ST_ACCEL_3AXIS=y
 CONFIG_IIO_ST_GYRO_3AXIS=y
 CONFIG_INV_MPU6050_I2C=y
 CONFIG_BH1780=y
+CONFIG_GP2AP002=y
 CONFIG_AK8974=y
 CONFIG_IIO_ST_MAGN_3AXIS=y
 CONFIG_IIO_HRTIMER_TRIGGER=y
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
