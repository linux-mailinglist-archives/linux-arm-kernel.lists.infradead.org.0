Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A97F5163023
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:34:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Z2/BBxPqJ0jOT4OlWzedO13lFxlybqE5DKwTf6GohIE=; b=AFxUGFnOsur15vixdd69WH/HSR
	VtrW/joiiHC1NBxrF1CR+NSc7RpJKSxPQqQnoqwxs8o44Tpm3n33eS+t5z5Q8LQNyZdNjg47JCVur
	+MkjlpFk4b+ivYJBB0OemZx7bMlh6AkDe/8+T2MbzWvvC7aGle3fi5u8UOcMuBnEzIFHdg5eacpVS
	QJyYrc6c51U62bH347ylqX3KshPjWWD8XQsxk6kxJZamBWcyibyTsLqt0XVto/2rnxLHXY929GoWt
	+OAX/tGhOhDaxY3K8RZGBuAd79BAXfv9R4l+abYuv97YWOxk1vm5+QhQnVfNZSFXftZH7mVByv8Ey
	SAHUYtvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48db-000098-Bx; Tue, 18 Feb 2020 19:34:31 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48cS-0007nb-I1
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:33:22 +0000
Received: by mail-wm1-x341.google.com with SMTP id s144so2902875wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 11:33:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MaLAtkjRxzJam7Y2UUkQL0f+cfe4YM8Rlep2oOYDR4k=;
 b=kAbhpKkW6Qgf8n1gsp1qpisZqrAfOgVqPywaJl9q0N7aQAo5i9LsHbxPp49sb2xW9A
 3UCjfTTxyQH8SLjFsjhp3xFTTml+jboMB1DqnvKg1zVl0HouT6gjFlC67xr5nYu1SaAw
 4d4lnUUHzNlYu4K0FkHR3WbjYIS9FAOCdZgsmIIclVEPxOtHXaJIphzy6XdFu2f1h0cp
 ilFXA8PK2zAUfhEGMkiouWb9K7PaU8ZbBf1h3DeM1hB0FWS4EBEAMvarMJsWWHESP6k+
 yT3FIhr53D1jIio5A0NQ4eg4suK2ojST4Xw0YGA2DUUTij0M9ku6ffuhTAShAqvW3CGU
 SYSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MaLAtkjRxzJam7Y2UUkQL0f+cfe4YM8Rlep2oOYDR4k=;
 b=mFllXwSUoFUTY7lX6ku2O9kv/6yXk6XQKpIKchGf8viiYnz9eonWEysmcd/w73H33Q
 Hmlv/Mk8Cshxco/vSZCtnY7HR5j56QySJ65+dAW1qfekJ2iPIOfgY4IterfJQKJmpXMA
 d9BnX+uJnXFxwclaHmTapnxJvS1jAkQELfEkrIg6dHKifvIcB0/QYyhHDprVLf4iqIai
 +aBxOcjH3RCoTjhpj2bzPAV0N2rkzkfRYzJwoVURg5XjnXvuzXOIS9D1NFRQRlpkcZdY
 XaZDDagCNqdnDeS+xfRTFC3CzCmfR/jHwF8FB3avX722MowWSkYVmFISAg21dz/Y4DOP
 KpMg==
X-Gm-Message-State: APjAAAVbtCnse9XY7qm1C11cjkoLuFG09wxxnJ7wYt/Idhgd50fxEnqU
 QUZbt0+m/IycPYwJN1UAUYqPDA==
X-Google-Smtp-Source: APXvYqxcx1r+IcoGtXHd2hQV1AZzw6FglIgIvVP3Ij/NByDoGTZj5rYGpAki6fUvsL6Az9tGsFk0eA==
X-Received: by 2002:a1c:a5c7:: with SMTP id o190mr4836846wme.183.1582054398819; 
 Tue, 18 Feb 2020 11:33:18 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id k16sm7649266wru.0.2020.02.18.11.33.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Feb 2020 11:33:18 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: alexandre.belloni@bootlin.com, b-liu@ti.com, balbi@kernel.org,
 gregkh@linuxfoundation.org, ludovic.desroches@microchip.com,
 mathias.nyman@intel.com, nicolas.ferre@microchip.com,
 slemieux.tyco@gmail.com, stern@rowland.harvard.edu, vz@mleia.com
Subject: [PATCH 04/20] usb: gadget: at91_udc: remove useless cast for
 driver.name
Date: Tue, 18 Feb 2020 19:32:47 +0000
Message-Id: <1582054383-35760-5-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
References: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_113320_596105_657C71D3 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

device_driver name is const char pointer, so it not useful to cast
driver_name (which is already const char).

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/usb/gadget/udc/at91_udc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/udc/at91_udc.c b/drivers/usb/gadget/udc/at91_udc.c
index 1b2b548c59a0..eede5cedacb4 100644
--- a/drivers/usb/gadget/udc/at91_udc.c
+++ b/drivers/usb/gadget/udc/at91_udc.c
@@ -2021,7 +2021,7 @@ static struct platform_driver at91_udc_driver = {
 	.suspend	= at91udc_suspend,
 	.resume		= at91udc_resume,
 	.driver		= {
-		.name	= (char *) driver_name,
+		.name	= driver_name,
 		.of_match_table	= at91_udc_dt_ids,
 	},
 };
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
