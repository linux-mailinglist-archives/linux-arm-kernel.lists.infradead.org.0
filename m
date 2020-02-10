Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E385F157318
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 11:51:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f9nKmJakVYb+CGCbhnRgc3A/MkbJnt25ilBMaw4VV70=; b=lHigmfLUvTvAgr
	qoEqiBxZUZPuTMP7NXjWCg818o4l6NNT1pm0qtZWBRdNg8XNPmSubhQKWLa44nuJulHDfSYLvXEyd
	fHyf7UnM4JGAkyWU/9qnoAVzKTYGRltGE84+N63gU9mfkef104pQ9RSZ9rhmB8VAqERh3ld20m8bj
	GICPYh+wKpgsQmzcZFy15Pw+cC8kz7X/RT3zIrwr/kYOkPvSZYbC7DaqXHZa2op9C00eHYxvgc7mu
	0EMzVJH9u6u9XlX9Yo4l//YB8vhi5MYENUM8QUQACmDzSDM8Zf2sipb5ISN8leqXCI8h19c/yECdF
	fPSpGHSJu5t9V22fZc0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j16fI-0001sU-Jt; Mon, 10 Feb 2020 10:51:44 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j16ey-0001gq-SZ
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 10:51:26 +0000
Received: by mail-pg1-x542.google.com with SMTP id 70so1593772pgf.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 02:51:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QBNYByC51okZLquqQezYQbeXlL8xTAzZxOhffPmc4pU=;
 b=AmPIPB4vqGUWQHShGxgXUnHutULTZOq82V7KIScQTXR7eIg7LOK7zL5FfO/1gxyd3t
 nZaZ9zpKUHUQh7P3bAE/tHPJYrpzWKg1uRdhh9URybxuq2/d+71r7WTpmFGsZTHhux26
 Cv1WbiIukFUAIPttpyQPOBbgSFecThkKsGN9G2oomkpdns88YR3RIkU8K5C0Nn/8TdOC
 jAuO+2g6O9kinaF12dMwrtyGSckbwAd32hC/b/xP12Qw+OUtmRthixvt/IPr0Najt9lA
 7Y5ivFBdlMQmYMAUk1WPhRGUF3vA6aqfoUB+nSlrw+19jF73jed0QI7QVorldTUkczYk
 S17A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QBNYByC51okZLquqQezYQbeXlL8xTAzZxOhffPmc4pU=;
 b=aafhIg2k3EXgKMe1uIKRWmjPMEe1lOZjIAFJGckWBrTnNkHG3jhfC21J4peAqfKw1d
 nLAlYR2ZY8lizfRbpYCffCMktQ7Gck3OhcyFIqwT0nm9QzIOm5Ir/+Euo25ZNNLQh45Q
 xheyljKi2p4/xTDZrOBk1FAKtCzADw8ko4snqcHHwrxvEeB2lTfjYAG6PYI0JWIOjuz2
 zelFzHG1QkMNOBs9o6TkcZy0s+7Iq3A8/5fFJSyBH+3lq52PTItmDsXh+mRVVix65ezJ
 sOyXfFDEKu4hQ1PXJR4kJ4+IaIQv4j8J+l2ElvUKwFj7RVJzUa8MIrm13FkK0gM9MoiU
 qLWw==
X-Gm-Message-State: APjAAAUCVwEqaEqAwvKeXYBCAPbssZuePTWqjeWaPsKhRZN1FKM3HEOH
 kP4nE/CdkNXVjAfcvSSWNaweJg+R
X-Google-Smtp-Source: APXvYqyoeGjEc2VAonS90ocBj+wUmSedrbUGJzgkXzQU68mZPb95iMTmMSkGzC2ygPB65E9GeFIn8g==
X-Received: by 2002:a63:2701:: with SMTP id n1mr1042924pgn.332.1581331882159; 
 Mon, 10 Feb 2020 02:51:22 -0800 (PST)
Received: from localhost.localdomain ([45.114.62.33])
 by smtp.gmail.com with ESMTPSA id g18sm12104833pfi.80.2020.02.10.02.51.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 02:51:21 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCHv3 1/3] devicetree: bindings: exynos: Add new compatible for
 Exynos5420 dwc3 clocks support
Date: Mon, 10 Feb 2020 10:51:06 +0000
Message-Id: <20200210105108.1128-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200210105108.1128-1-linux.amoon@gmail.com>
References: <20200210105108.1128-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_025124_920152_5AD93CFD 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the new compatible string for Exynos5422 DWC3
to support enable/disable of core and suspend clk by DWC3 driver.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 Documentation/devicetree/bindings/usb/exynos-usb.txt | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/exynos-usb.txt b/Documentation/devicetree/bindings/usb/exynos-usb.txt
index 66c394f9e11f..6d27f4c0e5a2 100644
--- a/Documentation/devicetree/bindings/usb/exynos-usb.txt
+++ b/Documentation/devicetree/bindings/usb/exynos-usb.txt
@@ -69,7 +69,9 @@ DWC3
 Required properties:
  - compatible: should be one of the following -
 	       "samsung,exynos5250-dwusb3": for USB 3.0 DWC3 controller on
-					    Exynos5250/5420.
+					    Exynos5250.
+	       "samsung,exynos5420-dwusb3": for USB 3.0 DWC3 controller on
+					    Exynos5420.
 	       "samsung,exynos5433-dwusb3": for USB 3.0 DWC3 controller on
 					    Exynos5433.
 	       "samsung,exynos7-dwusb3": for USB 3.0 DWC3 controller on Exynos7.
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
