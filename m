Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 256B7DA4F8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 07:07:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jBfoXuvkzODxDfiMIpfjEo2Gjj1adHe/3l021qoMwZo=; b=JB97dklKq8dIXR3A+6G8P9mdHI
	KQp2cuF0QnBq5tC7/WeCCwKC+uUxlvsLuFN9YymZqVoRt/NNosRXwJcf8xfa7PqP4tB1eLmTWj7XQ
	4eVlMrADV2GOiqi7EJsD14mqgoN/unA8euAhkSerFqcuf6WngLXmiBrVxUfDUe5wACkioYhyp5S/U
	84t05atVhLopId727gIAO1ajW35XmUTBM7rm13NKD4yxZYX4WVXCHoPF6JXOgvQc9plO8CM+75yf9
	cJgq0eNcFk871kW3+Wq+SeTFujb9k0+HlHSHeZvyKN/+OcijWM/6tQJoXbGtvERUaoEUc+97LdJtB
	YoR/t/gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKy0n-0003G2-H1; Thu, 17 Oct 2019 05:07:45 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKxzp-0002Xw-Q0
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 05:06:48 +0000
Received: by mail-wr1-x441.google.com with SMTP id j18so683116wrq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 22:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NliZFeQ9c/Qq6fBGMoYFeWbfIFjnCeTRD5spAgl/f4s=;
 b=dRUemVlFgZXe06Iwa1cQ+/QjBSoPreZqwAKc8O46K1uwcJqYL9kpym/A6G3uZ7Wt/g
 fF0/XTNYYLnvn4piLEjhJaaEbbs8dh/6vkQufKzNzGb1FrBOaKadnvHCSyoAz2c8r18z
 j3wyPn4tDVMdJMRLBAySsH/LOLg0XFCU+bzoBg7PzCTtHA04gH8Bu33+vSs2+ifUZq6a
 9qrMbPI/0AMXGrQQ0rUetL/vHr3YwsIBoM/B4Blsu/rQt7vyRHPscg3AD9XpeglZaBuZ
 +MiMMBcu0EXQ6eUCy6ST7rlZnvR4jp6t2mbGp4UHWtWKJXzhMRvVfaMOOF+r6cqp6kJc
 fIqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NliZFeQ9c/Qq6fBGMoYFeWbfIFjnCeTRD5spAgl/f4s=;
 b=b3kOGwcfOGCcz1asi620Swv0H1cZV/PvhWV9wU977xLS+A2ZOsMHRJqeBfPD9LhH85
 WIvT0vLLXEGpSLpfRA9f9fyYpHn/ppxEDH2mKZMfj9b1UlOBJy8BtIXrbl73zuYuVlzt
 HkMdE7sYkrvPh+bJtmZrIyUqeznFpRCeMjvVVvBvJHATk1MUj03uAk33UW1sy1mDj9u3
 uhmF3Sxz7taDuXs1bU1r8DSsMELhM9LuAbU8f/anqySHGXqFxj/xElbOkgh6hHBvxvRp
 iZTB6ywuEfc7VH1sHUUHhF3JxL2CFWYutgU1cRDRH/Q5l1c6VT54EkI2Dk8pBbUW8zKx
 pHQQ==
X-Gm-Message-State: APjAAAVGxFQf3NbV4FurGng8jhi48/F1ErEtj9CrGHaggcv4hTHxqAPR
 Oqh9JPQn42L3kWTyeDaa0hN6Fg==
X-Google-Smtp-Source: APXvYqwpWPAmMJBUo0MsFvw9uiPvopqY1tScgpI01QQMpwwHyjbjfcGVRkmhS52RZk9CEfhYTAjmtQ==
X-Received: by 2002:adf:fe81:: with SMTP id l1mr1128594wrr.165.1571288804371; 
 Wed, 16 Oct 2019 22:06:44 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id b5sm1010762wmj.18.2019.10.16.22.06.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 16 Oct 2019 22:06:43 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, khilman@baylibre.com,
 mark.rutland@arm.com, robh+dt@kernel.org
Subject: [PATCH v3 2/4] MAINTAINERS: Add myself as maintainer of amlogic crypto
Date: Thu, 17 Oct 2019 05:06:24 +0000
Message-Id: <1571288786-34601-3-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571288786-34601-1-git-send-email-clabbe@baylibre.com>
References: <1571288786-34601-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_220645_839514_719225D8 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Corentin Labbe <clabbe@baylibre.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I will maintain the amlogic crypto driver.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 2120c74f476a..59e360ca9fe7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1477,6 +1477,13 @@ F:	drivers/soc/amlogic/
 F:	drivers/rtc/rtc-meson*
 N:	meson
 
+ARM/Amlogic Meson SoC Crypto Drivers
+M:	Corentin Labbe <clabbe@baylibre.com>
+L:	linux-crypto@vger.kernel.org
+S:	Maintained
+F:	drivers/crypto/amlogic/
+F:	Documentation/devicetree/bindings/crypto/amlogic*
+
 ARM/Amlogic Meson SoC Sound Drivers
 M:	Jerome Brunet <jbrunet@baylibre.com>
 L:	alsa-devel@alsa-project.org (moderated for non-subscribers)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
