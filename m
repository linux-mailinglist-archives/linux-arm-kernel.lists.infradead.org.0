Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7DE81A1C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 14:59:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y4xHv2AtoFkOx3U0K4drNRBu3Y/gmxK64Zu9R+VrWwY=; b=ZT1jYHybk1vI5c
	qKMEGSAsh3LCnIkJ3/sWl5wsEKt0cwN5SbXZqcKF7IUgMeCNGRK85kh2LoAbYxlMhTiC8ZLX15YEu
	CSctlC/Eh5ua9XwCGrbNR0U6gjGO5j3YqXhU0xb31+mewM1qP+bTVVeUGEgYu99PRrulCY2Uw7FE/
	JoKp3COIJQTH/AckdFJHp0hHoG5I7FzzSgF95pASFt2f/Bp9k5OtThGB2sz1Fi0voPBKHcnVFyyDa
	e32QHTFda1xavChhckujplUkwFi5II3XZjd/hVEj+4rPphG+JH3yQUmUwwdBjwcS0Jjz+yLgodsT5
	xWY2ly7AJmRD+a/G3TAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huca0-00048G-1O; Mon, 05 Aug 2019 12:59:12 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hucZk-00045D-Bu
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 12:58:59 +0000
Received: by mail-wr1-x442.google.com with SMTP id n9so59247390wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 05:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=D1BgNM2O50qMEacQ9ueo5XhVsMsgr663mURR/65nCS8=;
 b=x6ZSwOQbFU227kVmjbkUTbeCX9UkSrwO9Y8Znms5YvqO/c1EY25vYimVjwyKE5XMlj
 xJMPeL++r0FG3YpFbrCEe+ky0RgbyXi55r9HvWZJkPtDGGM5+soXNUqG+O6o+sP7aYfD
 212hWYsFrNbVLrGizdS5xi34j6WrVYVVFaZaZTqpO0hBgtuhzWNwvFwCOlllAmx5vL4q
 wVpuUveOgy8ouv555qscQY3uQEvTQtI7w6WJW5adzrJgmRnHwX96QTKEfN6Czmayd6ib
 pEL2h1ow0J8ZumiZ2bDybnyRVgaucZQ2U13go7woATDuA1K7P+UmMSjsMvmGd5jI7RD4
 ldaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=D1BgNM2O50qMEacQ9ueo5XhVsMsgr663mURR/65nCS8=;
 b=h+cDFx9rAql+wDlvpjllDaYc8ioggBEHlgC4wMI4qnmq9VpSkPXNlKLD4EsxIhW4MF
 IREYmPSy7DSNsbrUTp6muLku9zsXrHKlzTNGC8sNXj5Rj4/CuBXaUmL+iOxMDYIWb27e
 OLdPTYRJytryhvGUwZbHNqaP/bd6fgTW2A4fHShUaLFW71NZQILYxoEuMcHcx8jaIOyY
 pY0XH5ijDGkNlxXQwFs5pBd4GkOp85BdIITaupgfSYMnpop5SbDCcf3aqlKBqlGfISA0
 TJ3+u54J97/DChRKjvJ1ghFcQcglO5xaYVpHYJIU5b/+INxAVZOxW22bIuTqj6BqZzaN
 vSbg==
X-Gm-Message-State: APjAAAU9qsSgEdd19Dgco6yd5HNI9m6jZULcP2mZDtfTTa9lc8if7e4F
 BUw3nNv3MDVlBlnhgdesUB6oNQ==
X-Google-Smtp-Source: APXvYqxjUyHGwnsENRGPnY7OdGXXY3X3GMtZZhvQF/96Pw7p0vEa9V6iBlA2Mnw7rhqJaFvPqAiD3g==
X-Received: by 2002:adf:c003:: with SMTP id z3mr79675952wre.243.1565009931515; 
 Mon, 05 Aug 2019 05:58:51 -0700 (PDT)
Received: from radium.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id k9sm15582779wrd.46.2019.08.05.05.58.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 05:58:50 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: thierry.reding@gmail.com,
	robh+dt@kernel.org,
	matthias.bgg@gmail.com
Subject: [PATCH 1/2] dt-bindings: pwm: pwm-mediatek: Add documentation for
 MT8516
Date: Mon,  5 Aug 2019 14:58:47 +0200
Message-Id: <20190805125848.15751-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_055857_666026_1C681247 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the device-tree documentation for the PWM IP on the MediaTek
MT8516 SoCs.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 Documentation/devicetree/bindings/pwm/pwm-mediatek.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt b/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
index 991728cb46cb..9152bf5afe56 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
+++ b/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
@@ -6,6 +6,7 @@ Required properties:
    - "mediatek,mt7622-pwm": found on mt7622 SoC.
    - "mediatek,mt7623-pwm": found on mt7623 SoC.
    - "mediatek,mt7628-pwm": found on mt7628 SoC.
+   - "mediatek,mt8516-pwm": found on mt8516 SoC.
  - reg: physical base address and length of the controller's registers.
  - #pwm-cells: must be 2. See pwm.txt in this directory for a description of
    the cell format.
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
