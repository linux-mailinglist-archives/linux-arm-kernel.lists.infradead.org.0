Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5264B1F0D14
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jun 2020 18:31:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rIG+4WWOJJksF+yo+iXZk+0Whe6Sa2Pzx+jl1Br0zDw=; b=Kal23dxY9CDzEhqRAxlwhqZiuO
	Xs5x3EMPorVwNgRUjrjNulcxVD2ZXwZIYsRML2ZyWOpE+dgJtb7PVaNTqZWJjiVrkvFjY9Z48y8L2
	YAsdjoBQg+85rGyemahkdKPdmYovptnSOTLiTWYYBaRLbi0RCtAlJv20jjGEpZO2mAMNIzUKqnX2b
	RJ843SRoy0Z5K0ZwcxQf0E/pZtTcSDL06IkkYKXuIQn2t1/WXt4Gg4fgaMlY16QURg5q9ic/33bbQ
	ILssU9rziPIa9pm0JH4jRR+tXCuiBmQsLSIOCZ/D7j9BwCEzMpbq4LEfbo3wKrXlBtDQuh+fa8LVD
	46klBWDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhyCl-0007Kq-V7; Sun, 07 Jun 2020 16:31:27 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhyCA-0006qh-1l
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jun 2020 16:30:51 +0000
Received: by mail-lj1-x242.google.com with SMTP id s1so17519355ljo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 07 Jun 2020 09:30:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ythenNMgCasy/26fjGx9+1WbKj8OM9GaH/NHc6AXhOM=;
 b=aD4r7KAYyBWRL+r3cCNFwandPIp1eaBY0+mJVtAAbLtlNeZCVeWmO4LdP98zGXkx2f
 mWWk3CuksVHnax1r1AAVz5876ez1ow5sbWhBGtJY0DmabUBtHAGnvlt1bxUVFJwk9OLz
 7X0SneyAfRhAjPkbAtwQ5OMzdMWIBSmbJvkSdy+lvAsyfSJErqbJmvJThSZjFU1KJrCe
 cpuYcZOGcVK3QquNEw3olj2fEPbf6FCVU/qXa6LhWsako84djR1C25QZQWcwdUQSgW8x
 SvqFhDiRFY/zVHG2Bw1dgI24DdE66sH6Hwl+PPj1Wzd/7mBFNJSFnOWgN0q14Jl7jDgy
 ft4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ythenNMgCasy/26fjGx9+1WbKj8OM9GaH/NHc6AXhOM=;
 b=M03R6ozTpelc+B1d025/zR8SyHb8MwexGI0I4KULu2wXPwOPHDPMiEmGh5093RisEn
 SxPR9Tp8jKDGMQNS/SwErnBMnsG0e8MeLWo5lceF5+tYJsIdRp8G7ij6FDRMxjBuk1GB
 rk2idBZAbjXvUD7QnwlsExnx6cKYOR2TxDTw1uzV2I06VJ5AtAp3hulHK+8VzVbP6jE+
 6TGuw6k+ECqN5fbmliOCm6BI7M67jGaULnq0R7PJCAJ4iH+mzKh3U8j545Amlu4idWpS
 x+LYNDJwXIYedHevgGzQuLrCLzYSUJbrjWLi+D2jGmm6Osjkk4G4mFrHRzg9IsWpaaCg
 pR7Q==
X-Gm-Message-State: AOAM533Qdobo2dposNFmwAox275VWd0+MnN3SNmO0nNtgMmZge6X9dQe
 zTfEl36d0VoiQEQwqkI7qtY4og==
X-Google-Smtp-Source: ABdhPJztgQw/a4CxBiVGeklrqq34QTqDSxO6rZE1olhTeauKdcDOH+dSCnusoO2D30v2fZFAEdjbEQ==
X-Received: by 2002:a05:651c:1103:: with SMTP id
 d3mr9651976ljo.110.1591547448299; 
 Sun, 07 Jun 2020 09:30:48 -0700 (PDT)
Received: from localhost.localdomain (37-144-159-139.broadband.corbina.ru.
 [37.144.159.139])
 by smtp.googlemail.com with ESMTPSA id l7sm1726511ljj.55.2020.06.07.09.30.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Jun 2020 09:30:47 -0700 (PDT)
From: Andrey Konovalov <andrey.konovalov@linaro.org>
To: mchehab@kernel.org, sakari.ailus@iki.fi, manivannan.sadhasivam@linaro.org
Subject: [PATCH v4 02/10] media: i2c: imx290: fix the order of the args in
 SET_RUNTIME_PM_OPS()
Date: Sun,  7 Jun 2020 19:30:17 +0300
Message-Id: <20200607163025.8409-3-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200607163025.8409-1-andrey.konovalov@linaro.org>
References: <20200607163025.8409-1-andrey.konovalov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_093050_104575_BA32C053 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 Andrey Konovalov <andrey.konovalov@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This macro is defined as SET_RUNTIME_PM_OPS(suspend_fn, resume_fn, idle_fn),
so imx290_power_off must be the 1st arg, and imx290_power_on the 2nd.

Signed-off-by: Andrey Konovalov <andrey.konovalov@linaro.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/media/i2c/imx290.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
index 2d8c38ffe2f0..d0322f9a8856 100644
--- a/drivers/media/i2c/imx290.c
+++ b/drivers/media/i2c/imx290.c
@@ -648,7 +648,7 @@ static int imx290_power_off(struct device *dev)
 }
 
 static const struct dev_pm_ops imx290_pm_ops = {
-	SET_RUNTIME_PM_OPS(imx290_power_on, imx290_power_off, NULL)
+	SET_RUNTIME_PM_OPS(imx290_power_off, imx290_power_on, NULL)
 };
 
 static const struct v4l2_subdev_video_ops imx290_video_ops = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
