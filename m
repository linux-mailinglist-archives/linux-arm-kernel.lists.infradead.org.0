Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F5FE3827
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:39:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZUA6ZMSzSaeyKPZnq6AbzUSpwOTEa4wAEpvL9FNlLOs=; b=L8gTCnlWOBojGXsxrQWM5NsQz7
	kNmdLgOmKKXxTjc7GxVQI4IDEiZ3qfFAM7YbovAt4TllIMfe7tIYNayGdMnCKebPRrknN4M9qJNfw
	MbbCtL+jZu1QQcPFftA1mxHK2xCGMU0zrzFvo+uc62kurc9IZZqOk95/LHe1baO0c4PeySzhBYcGc
	SyzhYKAYEeSLCUbsVJrGU0lahuLTQGRe6nA2rjn0dwVo/OjwSDIMkCvQWlfYlECq/IgCFrq/x82Bo
	n6RD5q0l+b4x5i8sVVJzwUO4RfYO+HhexfAAvbSA/bqQ8CkaZXVPylCOvWyg+Nu9I4onlNASPxdbc
	0C9ghkEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNg8c-0005OO-Rc; Thu, 24 Oct 2019 16:39:02 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNg8F-0005Lu-16
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:38:43 +0000
Received: by mail-wm1-x343.google.com with SMTP id n7so2752941wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 09:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=YZmXO5ePw27XXjmw9aqXqaRd2VOTfPGeZBWp3iFdesM=;
 b=vPFphUo33Onh8HRK4E07pTzJ1f7NIAzAGVk483hJ9mrqwhKfpeM412ZrC+Mtnwzjp0
 DT1qMsJ1/gCPq/F/1t4EqBTeVlCle5hjmdv+3EVPmZqvcSyOISZhN7XQp+GCXC6OBtuO
 J7eCaraw0d5fPtceFvVKfhirGWtc0Vpt1Y1gYBnNRe9ANPznLbQT7maKwMwOUxYQWAZu
 jexVQdSBRqBwtoNmWVaI816+ONrnsa1y6KWin9KEM0kUlFKJrjEtgNJlwaMBQKrnLylh
 M5tKLQIYz2aipnWQ9VGhgsLOmEfw2HuI9knyh2cHeVQy/RnXX32xk1Y8NUkbXHDcSPjL
 +b6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=YZmXO5ePw27XXjmw9aqXqaRd2VOTfPGeZBWp3iFdesM=;
 b=j3nAY92kBwQy6tX6hwOLteuclUpb2sn5JsqZKjoGVflvFIuFIiaQVErLkHMquGka20
 b4ckvm9ljCM7xNdWF1GMLpdZ0mS9Q7KiIFxbt/LY2anWdmdbIxoxUyXCe9KtFeYDrKRy
 FuJD01zLa/Mx2H/GbwVWYxq2dGoVvff0ralykTpcX+1rvyKlojD8HHhbnAysEKTbxeuH
 fVlA9qOpZWU15fU52takFW0b6ptWaH0LSDpD8cao8ySOL8riwosUm5LHRI5SK7yM7MkI
 ej9z7TCG6f+n+Ke61262iKEjIj/qHFF13glUmT6x/QhLLfB2h0/pObdUjk7ps4bcQMUe
 RAuQ==
X-Gm-Message-State: APjAAAWYsiWkMLc70XKzgKThRGRrrPVQsERSkvFVRTrhQkuwoIzA1p5a
 9p3+ShrlJuXK6XmrvwgexcPpxC0B/9c=
X-Google-Smtp-Source: APXvYqw9GDfzRHrP4A9ce7Fj+XveS2nLrANg3XywstKg01f16Vn5vDRixFd9NpQ7KjQDR38jIoXuWg==
X-Received: by 2002:a7b:c959:: with SMTP id i25mr6065618wml.26.1571935117250; 
 Thu, 24 Oct 2019 09:38:37 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id 6sm3446175wmd.36.2019.10.24.09.38.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 09:38:36 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org, arnd@arndb.de, broonie@kernel.org,
 linus.walleij@linaro.org
Subject: [PATCH v3 01/10] mfd: cs5535-mfd: Use PLATFORM_DEVID_* defines and
 tidy error message
Date: Thu, 24 Oct 2019 17:38:23 +0100
Message-Id: <20191024163832.31326-2-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191024163832.31326-1-lee.jones@linaro.org>
References: <20191024163832.31326-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_093840_701557_75733972 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lee Jones <lee.jones@linaro.org>, baohua@kernel.org, stephan@gerhold.net,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In most contexts '-1' doesn't really mean much to the casual observer.
In almost all cases, it's better to use a human readable define.  In
this case PLATFORM_DEVID_* defines have already been provided for this
purpose.

While we're here, let's be specific about the 'MFD devices' which
failed.  It will help when trying to distinguish which of the 2 sets
of sub-devices we actually failed to register.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>
---
 drivers/mfd/cs5535-mfd.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/mfd/cs5535-mfd.c b/drivers/mfd/cs5535-mfd.c
index f1825c0ccbd0..cda7f5b942e7 100644
--- a/drivers/mfd/cs5535-mfd.c
+++ b/drivers/mfd/cs5535-mfd.c
@@ -127,10 +127,11 @@ static int cs5535_mfd_probe(struct pci_dev *pdev,
 		cs5535_mfd_cells[i].id = 0;
 	}
 
-	err = mfd_add_devices(&pdev->dev, -1, cs5535_mfd_cells,
+	err = mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE, cs5535_mfd_cells,
 			      ARRAY_SIZE(cs5535_mfd_cells), NULL, 0, NULL);
 	if (err) {
-		dev_err(&pdev->dev, "MFD add devices failed: %d\n", err);
+		dev_err(&pdev->dev,
+			"Failed to add CS5535 sub-devices: %d\n", err);
 		goto err_disable;
 	}
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
