Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58CD2149AFB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Jan 2020 15:11:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lypzq7XHv4JEwuLxT2KixZs5AFIpUwb4EibDm2INV7Y=; b=WTXmTa7O9Aqyum
	ilWWqaCR1kmG4gcLvHY/UJfNegFbQAbpOY1BPI/jhdSEUSA1UDWH80oRDFVwcOyhcFY5SovEaSQAN
	5DgULd9pIHNR48gu0F5CfzSDlKPHMJyYiyLJ7UmWibdAAVbgDmYM6Rs22AGuwMDT3mvgC/KciB70z
	2pa1XQTe0VHpweqzohj1PhDcmA42RBehQQMspu7HZUsxQ29f5K10qjRtUh6huG+NJqPflnmI17TAV
	vwj4tk0K/sSAjcbvQYqrOMTd9uBqOfw9dJjdpmcUuDc0TgMTqhO+czD94WkU0NRLqG6U4v6WY8rmM
	nttNKPBPdHfMQ7GnJsAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivicl-0003KV-0N; Sun, 26 Jan 2020 14:10:51 +0000
Received: from mail-yw1-xc33.google.com ([2607:f8b0:4864:20::c33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iviba-00017g-Np
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Jan 2020 14:09:40 +0000
Received: by mail-yw1-xc33.google.com with SMTP id l22so3467981ywc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Jan 2020 06:09:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6ZHxAfX3Xl6MKW4bncP+VkEHGeKBmUb+6NPJXOCTjuU=;
 b=AwLGpNYcsS7qaP2kfjXCQkOJaqqUJBsbEzRWANhEt5/OrZzxbCDZDLB/OayyRM5HGz
 CEODHwEt2bNhFRu6QEuhXYqFsTteK0817t8C7TP4s3+Hr6elp/1cy4+KKmYXNuJuQwfC
 m2tuRoZKEL+YN+bjiltULlRwgQ0uD0drmO4P8tyERO0oimdR2m0Pyd4FYCDLDN/mY6+Y
 lMzyvzMzGfUDyTOkVVx6n4HHL7ikL5byMEGHTuyGSUGaVROZI7krzNlw3/VRFeaRPyp6
 r6XaGY92QlMA2DIvBNXTHiVtWs7G9VXyhReIb8Etk8R7lSz/eFBXj+ySuRFbqN3up6kV
 ou7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6ZHxAfX3Xl6MKW4bncP+VkEHGeKBmUb+6NPJXOCTjuU=;
 b=b7Ov3cA6nk+m+X2KTXg1B5NxTRr/gQzSQYukkEIPl9UeZ28tnffJ4+I3xAXCiMKzuh
 Fue6WKufsDdegIAxKEhYHVpxTNXumyrnErhieBlEfffcKs3ISDfCVmJs2qnSXqK5h71/
 2Bx76eUD8KUDrD6olfB0ECOehTDFyFytdPmoR65Mpac0DlaZGkXAQFH2EfMH8GzSJWKN
 xWZktMmpBm3s6PzgZRXjsIDCHv6hBRYkLyxtOttF6nObNIQUzFTx6JkMetFZEHtdY2AB
 0UbpOFMmF9Rq+pQH9CFgzD1hnD9/Nk3Ml7kNU0uWAgH4pMJPxOB82nKgSuDjhLYs/9kv
 FhVQ==
X-Gm-Message-State: APjAAAUgF4lqruvukzeg7uHFONHpQxnMyAZFlJC6XSsEO0FKyT6GbLYy
 VokvamiPWPTTibIL45oDgoOsU4MVYGE=
X-Google-Smtp-Source: APXvYqxAXLFzS6e1uHJOkGKuUKH4syBdGutgLsnCvPMkTMI9Cv5OIx4fObe+2P64lD6bn+Fh2SQq/A==
X-Received: by 2002:a81:3a06:: with SMTP id h6mr8962704ywa.170.1580047776433; 
 Sun, 26 Jan 2020 06:09:36 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id a12sm5237214ywa.95.2020.01.26.06.09.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Jan 2020 06:09:35 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-spi@vger.kernel.org
Subject: [PATCH 4/5] dt-bindings: spi: spi-nxp-fspi: Add support for imx8mm,
 imx8qxp
Date: Sun, 26 Jan 2020 08:09:11 -0600
Message-Id: <20200126140913.2139260-4-aford173@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200126140913.2139260-1-aford173@gmail.com>
References: <20200126140913.2139260-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_060938_801135_03CB8A5E 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c33 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ashish Kumar <ashish.kumar@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Yogesh Gaur <yogeshgaur.83@gmail.com>, Mark Brown <broonie@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, han.xu@nxp.com,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for nxp,imx8qxp-fspi and nxp,imx8mm-fspi do the bindings
document.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt b/Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt
index 2cd67eb727d4..7ac60d9fe357 100644
--- a/Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt
+++ b/Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt
@@ -2,6 +2,9 @@
 
 Required properties:
   - compatible : Should be "nxp,lx2160a-fspi"
+			    "nxp,imx8qxp-fspi"
+			    "nxp,imx8mm-fspi"
+
   - reg :        First contains the register location and length,
                  Second contains the memory mapping address and length
   - reg-names :  Should contain the resource reg names:
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
