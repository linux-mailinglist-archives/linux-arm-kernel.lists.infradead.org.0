Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D0A46929
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 22:32:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8ZxR7ljdCF6qCl6cjdX6GtRBnzo63Bbnq0NR/6p94UQ=; b=cUkJceIo+X9vPg
	VpQ3blkUMkllixCb4nra59khoT5TA0b+BjsfM4kLknQ6DvImUM38j0z24yyB0f4K2wUQCVA1rlzIg
	yngSuQC9BgR3BBdN7j1K821H1eM5XHrUHhJaCWne/ZcZX7npzuZk4+xEOevELjguaFQE45O7Rmk94
	cBqzA8ukLOpVIOzAtyJMyEl2T/2XEtYSrL+gdkEzPdaXnQTsgrc054/YSrWXM3uf3L2X0KsybHaMa
	FVgInpVF0+pd2WQF1/Xk/ICigdnEylcOdrgSyqeFLUhBb2Y9x+B2RJhk8yhzGzxH722tsk4XeeCKB
	Wfu11ITCTAaoRMn2y+XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbsrh-0000Lw-AK; Fri, 14 Jun 2019 20:32:01 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbsrY-0000L7-Jz
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 20:31:53 +0000
Received: by mail-pl1-x642.google.com with SMTP id bi6so1438809plb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 13:31:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8o+2bmk3JHw3bcscvg5i4csgQd4Cy57o3YZ91vrIQhk=;
 b=fmawliYbYe9RXgjYQw83JcEt3qnDc3a9Nr/dyRNlHVBsgPGykJOXH3w4C6Eu8DUyrl
 CrVaRFJv6oVjd8TD6dc/eUa7oEIvf83UPAFA5Q4p1A3H4Wds8oD+aKkPZAZ4GAloWSXF
 lkcOfoeKV9tkQsnV6TZGx4twjlJ657SfhMJThGkxwoqTmSl42l3+NQmlYoAwVd6LQCPI
 H310JzrVEUHkQYzmyWSIsaIQQrQdSBYWq3oxxJz4A54WeHv/5W2NdVQQByL9alDO0mVr
 DOsXQMJrpoV352/sQafvE8ReOUVpCrOQxC7VUWjKJbQC9TYzmOxWI8JDfDcweI/Lbyqq
 1p1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8o+2bmk3JHw3bcscvg5i4csgQd4Cy57o3YZ91vrIQhk=;
 b=FUJu4P/QZ5qKHf/iJ8PZYZKEdZ6rtmGSXqXS8VDQ/PjDTKBD5zMdl0Al/t8qTp7STM
 tOKz7aIToQfu6yFGm2I1TJHJcZh9sIziAnVp3HYWbXht0oCWI7/XgpisCBOLkb1x6T/F
 WAMocjZTWwA4oMOhxfIIKFtjtsZDuf/qrSm7JiHE2uyewL9H7+bJmlWOXRn1wljunOyU
 JJdPhrpzwQvqxgHzOGDjCb9auycTgOk70lYajralKnu1FBLlNBDbAcqMFZMGuHn9v2g3
 UYUBnLt8douAxRFjbsmTFbK4RIyx3g1oyuNApZEuXpBLQw03W/0nY8OXAdxso3NPDf70
 cwJQ==
X-Gm-Message-State: APjAAAXsjZpQRddgjT7t/69/rgBlbGTdzpbJe9Eo3NudAunSGLdUWZ9v
 9Gz6EmBQ1GLSa+110O9hDX0=
X-Google-Smtp-Source: APXvYqz8fXZMHh678m38GXZ7cOMf9Jew7ASJ24aKHKsv3zkzKPKgQG0N0NmX7eCgd61B1rxu1Qc+Kg==
X-Received: by 2002:a17:902:8203:: with SMTP id
 x3mr11439487pln.304.1560544311481; 
 Fri, 14 Jun 2019 13:31:51 -0700 (PDT)
Received: from localhost.localdomain ([162.251.69.147])
 by smtp.gmail.com with ESMTPSA id 188sm5189016pfe.30.2019.06.14.13.31.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:31:50 -0700 (PDT)
From: Joseph Kogut <joseph.kogut@gmail.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, kgene@kernel.org, krzk@kernel.org
Subject: [PATCH 1/2] dt-bindings: gpu: add Exynos Mali vendor specifics
Date: Fri, 14 Jun 2019 13:31:43 -0700
Message-Id: <20190614203144.3850-1-joseph.kogut@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_133152_670890_CDBC21AE 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joseph.kogut[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Joseph Kogut <joseph.kogut@gmail.com>, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Document vendor specific compatible string for Mali gpus on Exynos SoCs.

Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
---
 Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
index 1b1a74129141..a9704c736d07 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
@@ -18,6 +18,7 @@ Required properties:
     + "amlogic,meson-gxm-mali"
     + "rockchip,rk3288-mali"
     + "rockchip,rk3399-mali"
+    + "samsung,exynos-mali"
 
 - reg : Physical base address of the device and length of the register area.
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
