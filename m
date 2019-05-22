Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 319F72646B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 15:16:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=saQHqqbory2s8ZdHcm4tEjBWXGLq26TSaUL9ALC6tM0=; b=FjA2S8I0PRzWyYf6g9Rd9p2PZo
	zljGeegtxWSndPJehV7upg4l46dBmDZF4tJWLVY1lCw813penuvrjCmZjsPVXERiNXu52nUMMAmZP
	AO8p1ov2LtFYt6jGKCNbauS7tXZwHVbukhWE/rmRmJvFe+t4dg1Fy8qNQbgLqpN+2Yx6/c83AYkn4
	RHJ5CuBBWmX00v7V1Lv+r3Jqnr28wrDSRpdDL8W4eL1YbNIMCnhKHEkiAUuJh/At1LX5GECh0NemH
	1BjQiuLvJ0F3JFEK56F+rkz88ypZET3bxEyCB3iVLocbf8d6sp8Tar7zXfECCZpvqmtRp4UPKZMtm
	z6C0vw7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTR6g-0003N3-Ri; Wed, 22 May 2019 13:16:34 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTR6W-0003Hr-6c
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 13:16:25 +0000
Received: by mail-pl1-x62f.google.com with SMTP id p1so1081877plo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 06:16:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SOja6zqPN99/TlARSAlHzPeJdNcxfVK04/w1hxpH3MY=;
 b=lCYbaaocmA8VEskB3jrpVdSD5Ipzt8wpR49VsnAaXwjgmwZDoztzUTWCsCg+s6X2Kt
 AsiMmMp541wFD1sSxYOeb/r1ZyEqQpD98y3JHFZO4GjTcForJ2tN1s4QF+flYxY67KJ9
 AIO0QWpQXMOT7jyRZSV1bW8c9ipuZqV21a06ZYntxN+sx6GDfwtlVVeMNSj08nYquODO
 LddSX6WmcGJu8GXdsPD5BlOu6Vx1NkSHmnlyycpHc2ylfGo0ewlNZgLKyY6sHhQzZfQe
 G3Xz4p4G5dBclug699MLb3EVBcUfJm6r/qk+Hyv2S9lLMCdXv88ZG9LDg1XyZReHyyQm
 4p1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=SOja6zqPN99/TlARSAlHzPeJdNcxfVK04/w1hxpH3MY=;
 b=jGcTsua83Xo1mOV48axFLopOONwWfhAXM35HYun+OW3aF83XKJHeAmSjxcF0+pBQf8
 /t+0rKYqGbm26zQbA57FPwqlssXXejBLK2csvLWtvMaNPpx/PocXtovZzUjD0epl1SD7
 VkXnT2BKGucrjEEwUHOhNlEuoXS9zHQVKsOMje1B1HJBu8/ldr07JhIKuS3HzF75DqBx
 pIYQKSwMbHipkpVxFKG9h0WiIqo0xbAoJyf5ZEdRAmWjHLtdZ0mmJ5U97z0hMTr0/dju
 jueeh6FHEmCS6Wn+vyVQnnLeRmebsaLMW+p5JhRqCB+E309oeKNHVWJbas3I6f/VvtRW
 evzQ==
X-Gm-Message-State: APjAAAVvoBn4tgIpfrjKgMbsV+hL5UxBtm1w38DqRxX8SlopFvmtEN3u
 tTrnzj9XER9gxNHuEUB34BfD
X-Google-Smtp-Source: APXvYqwXHuqmUWgB39qseJ8piAj5qG/SLqw3JwF4ubtMTY0LOxy4i/1zTs0Eqn+oRbZURef/N9kqkw==
X-Received: by 2002:a17:902:bd46:: with SMTP id
 b6mr29151656plx.173.1558530983212; 
 Wed, 22 May 2019 06:16:23 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:73c4:1ab0:ac45:9c21:7eb3:888a])
 by smtp.gmail.com with ESMTPSA id b7sm22273565pgq.71.2019.05.22.06.16.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 06:16:22 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org,
 festevam@gmail.com
Subject: [PATCH 1/2] dt-bindings: arm: Document 96Boards Meerkat96 devicetree
 binding
Date: Wed, 22 May 2019 18:45:49 +0530
Message-Id: <20190522131550.9034-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190522131550.9034-1-manivannan.sadhasivam@linaro.org>
References: <20190522131550.9034-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_061624_369523_8B125DEF 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, yossi@novtech.com,
 nazik@novtech.com, pbrobinson@gmail.com, kernel@pengutronix.de,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Document 96Boards Meerkat96 devicetree binding based on i.MX7D SoC.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 7e2cd6ad26bd..dcd6c90b0cef 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -141,6 +141,7 @@ properties:
         items:
           - enum:
               - fsl,imx7d-sdb             # i.MX7 SabreSD Board
+              - novtech,imx7d-meerkat96   # i.MX7 Meerkat96 Board
           - const: fsl,imx7d
 
       - description:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
