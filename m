Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E1250F07
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 16:49:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:
	References:Date:Subject:To:From:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=vAcwQPhvS8qtgEnMPmGBCeRdXCwcarhYeZpisTZ43IE=; b=rkh9mHqhAwi1We
	KjVNCkT66B3ZO1cZwcUrskFAuUeshiZ7VrKvsCep0vO6ZV36XZ0gHj9q7/cz88cGI0rHfQC+D5Jmi
	V9tf3fJ8xrlEusmAOpYkbz6wI6/L0mFrdHRC5QmSMYfyavP5eikH3RVlN414ZY72qVl1UFfCL4UCv
	SipdVA2BuX2FNcb+KVWC5w0WDvOAhokFJOPgy2HCEgUzIVVWMX0ZrXNtlfPOGZfAKKxmKbc0MzbTu
	WY6pxAcLMZHHwt0gb2jZCHpzFguU+AvtqPeA/TxvTujkIs8/v7xXBbv5Ql8XQZJfUfu5oVxmSIzBG
	UN82KmUkNlceMKFiNE1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQHG-0007vs-OK; Mon, 24 Jun 2019 14:49:02 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQGU-0007XR-1a
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 14:48:15 +0000
Received: by mail-wm1-x342.google.com with SMTP id 207so13107183wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 07:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:references:reply-to:message-id:mime-version;
 bh=xaKJDnae1EFjh86fZ1Qltct9/8V3S9KXOq3PYZYvyHI=;
 b=eNChcKNO7dQANYLf2uCgCftyZNvelvdSK9R+1wtb/lP9OqVCiyaG3OIdIrJvfY5CIT
 UY6txHTM80Vo8+OFktdSz6aeq0tQrXNrcH9S8vrofzKfN4JIMdEv0cjGK/tg1Xnf5J9r
 LGTDyFDGYPkJYSN3BL2uLc7MFCMZj8qFjO4wv/q1Z4WP5PJZaNPa1Quw7jUcK5mZwsCw
 bxOKPjYmtLYt6DMV9GRNb1VFVsyCrJseC+dwSBZLumuyrzMfUcaYhy/ugT8CsDxtM99h
 kr+/TsVx7bAyAIowCC2Iuo0mz79kTiaBTIQgYSf7LmCriUKVmfYEcTchX22VzgZR06tj
 3XcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:references:reply-to
 :message-id:mime-version;
 bh=xaKJDnae1EFjh86fZ1Qltct9/8V3S9KXOq3PYZYvyHI=;
 b=ZPP3o5E28IGKnTlAO6jd09973g1uKP2SpWpDFJ2jFo3k0Hb8PHlS8R7Drm4u91b+Zg
 q7Ir58QDQe/w5bMM0zZaBEEY+mDLend6fE98+nh2AWfSL7q7r7nC1V1ZzWvmiy30l6y7
 xTcF1h2l2ZADKLOgEyqANYaqXLrhCobQ5KlDpUmX9fKpddYfMEYjRh8WcfJRUV+9a0FO
 1wDe4jCOYJq0wYhJSTYEzNJhD5emOEQhqK3hjcHD9DxVvw4FXR3fpmex75XJWOfPhK4b
 sSMbScxL+SqwxzsgGmZPpdH+gY7FAQFMi4NeaGrox2zJwa0mXHQxwLbJf98K+hfFC0wx
 n2zQ==
X-Gm-Message-State: APjAAAVGpxMqvAUsAfkROjyHfx0WFT56QCMryMhB9CRUswMwyMeeJ874
 HI/pPL/4myawLJFlZPpSyu6yaw==
X-Google-Smtp-Source: APXvYqxMhHyWV9UpqhUB/TjiFBls09nQ4ITZssbVwFmGLt+2Qeug/pb+O9Tv3bAeSgwK1fKA3bQl0g==
X-Received: by 2002:a1c:21c6:: with SMTP id h189mr10837205wmh.79.1561387692414; 
 Mon, 24 Jun 2019 07:48:12 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id v65sm18451669wme.31.2019.06.24.07.48.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 07:48:12 -0700 (PDT)
From: Julien Masson <jmasson@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH 1/9] drm: meson: mask value when writing bits relaxed
Date: Mon, 24 Jun 2019 16:47:56 +0200
References: <86zhm782g5.fsf@baylibre.com>
Message-ID: <86y31r82fo.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_074814_174455_08DE2FD6 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Reply-To: 86zhm782g5.fsf@baylibre.com
Cc: Julien Masson <jmasson@baylibre.com>, linux-amlogic@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The value used in the macro writel_bits_relaxed has to be masked since
we don't want change the bits outside the mask.

Signed-off-by: Julien Masson <jmasson@baylibre.com>
---
 drivers/gpu/drm/meson/meson_registers.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/meson/meson_registers.h b/drivers/gpu/drm/meson/meson_registers.h
index cfaf90501bb1..c7dfbd7454e5 100644
--- a/drivers/gpu/drm/meson/meson_registers.h
+++ b/drivers/gpu/drm/meson/meson_registers.h
@@ -20,7 +20,7 @@
 #define _REG(reg)	((reg) << 2)
 
 #define writel_bits_relaxed(mask, val, addr) \
-	writel_relaxed((readl_relaxed(addr) & ~(mask)) | (val), addr)
+	writel_relaxed((readl_relaxed(addr) & ~(mask)) | ((val) & (mask)), addr)
 
 /* vpp2 */
 #define VPP2_DUMMY_DATA 0x1900
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
