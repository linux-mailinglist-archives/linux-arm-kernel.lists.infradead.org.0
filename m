Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DE719DED9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 21:52:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nzPLkoxx4GoxLHdGYQCp3GBUZHyO6ZVer69acEan3TY=; b=I7fU5O4qQy/xteL8euF+Cn8MxQ
	OF7DuB6kjdDTc3mct7hFjlxtMtZuPLAYnF8C3qHJGj2OWFt6Sy2UkWD0aOYfddWMiso7PemS/SNtW
	596As+41sntkbuiSUS3ErBUeKzby08jv8Z//4CfedOTyDbYxi1hppyYK7sF6u/mQy4gLAlgQ+iuvc
	VMUelAG3aI6MPKUnqVX/nvD5Le+4eMGfT3jPhftvMTtpiokg41k6Oe7LCsLNNIpCllW9iVZQOe/tb
	qgkczOCoOZ542O7TOwHiftzDUvtOtDGT5vN/gDwreS0j/m8FX3NAQNKR0pT8VurhDsjAW02GjfUwW
	RfPpSkeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKSMU-0007eK-7h; Fri, 03 Apr 2020 19:52:18 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKSL8-0006Qi-HY
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 19:50:56 +0000
Received: by mail-wm1-x341.google.com with SMTP id d202so9046539wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 12:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zbWZNn58CxQj7h2ixDLwgL3Il53yxUmdYNx8Vuq/xbw=;
 b=ReFT24KFxx3+rBNs81WNFyrO/ShJA2uT8xwRBW1ckdOXDHNpddTX/wMIahu2lP0jOu
 pfJxth0BX6a4CiMP6+Iv2BRyhvKcNyQyIqu8ofC8jCXYd0WPFDwP06cOhIINjqtPcwoy
 KN243yWQtl7IQ7DYMq7DzdA58m/Ey5lNV0bRKLES3iDAWYjtxLQYnwtL7Yl10fxILlb/
 u1RuGIdX855OIF8XlrgeU7aQfW6uh+qasdtHFwxaRawBkOyxghbn/1ZwWM4MCasBLjuq
 +uTBpvRVkgr3y3Gt2KynA9bRL71XWFhdzPhtHW6BC2ptKP0hLF+emgBzrYOQTBjv4oNN
 xx/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zbWZNn58CxQj7h2ixDLwgL3Il53yxUmdYNx8Vuq/xbw=;
 b=MCE+yucSn5v3F6ZMLp/ZYYMfpbQKFZe5Hr8FSJH90azKT3I6Nkvnkb1sbb9kYMB/Ut
 t2RkUBidzRC5ERjmCvgNy4aJubpedqaOo4WZVsvWWcLurvJYC2ROtYG51gJqpdiMs8QI
 s+Lkmhp/it20OBr1WP+VbD22pf4UUFJtvdTWvnsnG2IUIfel4EqS+kczpGHU0HpRCrQ0
 6X0RQX4t6Cq9NsNuvatl2ecMcdIxlbIaX25Vk/iEqQmS9RGmUeVgXcHJU8VnJI5y1Nt1
 aoXyKZtnvbbrLXREUjYPkctQrwhwpOisGRAPtqVfKTePIO75jcpyPj2BCRGnsnTfKHXn
 BTwg==
X-Gm-Message-State: AGi0PuYHtx1FtaPIHZZCEviiad1A62I5ay49/skkpp7jou0KuZK2pEjZ
 nsyBdfCp646P676+f1OZ+9OhiA==
X-Google-Smtp-Source: APiQypKlif9uMZrWD7G6ny0AnyaN8NAOhQhfgQr+jvdpHgOBTA5EF51ye1FGhSt7SltWg7Imc54OVA==
X-Received: by 2002:a1c:8149:: with SMTP id c70mr10259245wmd.123.1585943453184; 
 Fri, 03 Apr 2020 12:50:53 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id c17sm8102448wrp.28.2020.04.03.12.50.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 03 Apr 2020 12:50:52 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH 6/7] crypto: sun8i-ss: Add more comment on some structures
Date: Fri,  3 Apr 2020 19:50:37 +0000
Message-Id: <1585943438-862-7-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585943438-862-1-git-send-email-clabbe@baylibre.com>
References: <1585943438-862-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_125054_738259_9A9150B1 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Corentin Labbe <clabbe@baylibre.com>, linux-sunxi@googlegroups.com,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds some comment on structures used by sun8i-ss.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h
index 056fcdd14201..b2668e5b612f 100644
--- a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h
+++ b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h
@@ -171,6 +171,8 @@ struct sun8i_ss_dev {
  * @ivlen:	size of biv
  * @keylen:	keylen for this request
  * @biv:	buffer which contain the IV
+ *
+ * t_src, t_dst, p_key, p_iv op_mode, op_dir and method must be in LE32
  */
 struct sun8i_cipher_req_ctx {
 	struct sginfo t_src[MAX_SG];
@@ -193,6 +195,8 @@ struct sun8i_cipher_req_ctx {
  * @keylen:		len of the key
  * @ss:			pointer to the private data of driver handling this TFM
  * @fallback_tfm:	pointer to the fallback TFM
+ *
+ * enginectx must be the first element
  */
 struct sun8i_cipher_tfm_ctx {
 	struct crypto_engine_ctx enginectx;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
