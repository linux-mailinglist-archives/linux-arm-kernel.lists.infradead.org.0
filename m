Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9077A105034
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 11:15:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YHNnKLWuMljbXVsxPiwMFrJ4kEjRIwn88LWDjUbqujA=; b=nf+w4nWXPqETUN
	JcmwN/vmNIKSr5mhyWLOf2NTXI1E3FOIYcnGsE+VaUSltLFqbVIgonqwCLPv4fT6SKZTe/Raz6s0x
	lLAZo9praEpz6EDI6U4QUDOYKiAQ87AcsgXNGQNbMHARFhCKCfnbNwTQj/Ixszdv03NvxQ9i/TgE1
	ehR+OdevmeZoqFMGuFq2PCujVQ84C6X1clKx8VxjdooveGiDxa6ucPdITzLgpEdA4P5Rn98dviEZa
	2XQVf9e5vinuy1fVxeQnXlv+c2ovziDegz6HVLEcmKMACXLsXA0dXF0CA6zbpfamu5UOUvVk9uEbU
	w3B1CUD8I83+pzjqF2HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXjV1-0004rS-HF; Thu, 21 Nov 2019 10:15:43 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXjTx-00040g-0W
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 10:14:42 +0000
Received: by mail-wm1-x341.google.com with SMTP id l1so3052083wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 02:14:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FduBAwwMEHW84QfHh6b1tdX58pVww+y/7cRWB+UMkbY=;
 b=gYhCPNg9B4NLAQ6K7VLo0nzzDQaInJM7Hf864FAuXqZfI2Jc1yLh9PMQiTaLmNB+mV
 EqT7xwT8uNA1ntizSXNTpAnY/17baf4nfFyRH1jHSYu4nNpsy0nZ/rWyrX4HbdwvXqLM
 sH6VOkZNct+q1ZT2V5TDE1zLeVuuGlrzP3CCifoDSNgCrhVNyHOgs4w9VaL6jdFATevZ
 BkYePMw7gyVJ62maxFfsNFBQiRdxH5VZGKPaAqU527vISy8VTa1HYfES4DwNdbGutEe1
 /QMpVdOXWkV0U48snGckdcUmiuUye7GRqbqyM+Nq4K1NBdj2P9nb6OBH46AZ3hvYi4PR
 en9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FduBAwwMEHW84QfHh6b1tdX58pVww+y/7cRWB+UMkbY=;
 b=d8o/qjCNX1HuqdevdHygnWGmWl2UfrivKIWibh+BtQ2mWHLJc/kYCZMOxCpwbrOujK
 1bAKYahKxvDOxohpQsWt/HhQ1rw/YHbGiLoltK8vz6W+viF+Db9h+MGC2y9kqvGT91tr
 uU1LfiqkfIz1TlAI17LsxKbRQnsK+RQ7kp104pzpfsxZ9IlPOB5VpJfF31IJoISJLCPv
 Bo4nFVKmyVE70WxtzBX8WzBrAcfNPtWupaeRMbggbfkPMhYQ3pH8/D566mSl8Li1LyoN
 rPQhsWKHo+SIzQklAh54i1IwjcjfXIk6Atqz0Kw7aQHt+bTytnYgOHfutkEHGyEi6grD
 k/7w==
X-Gm-Message-State: APjAAAWGBZrwoGCfkiS1bThbtQLCxMF6RtMhiQfJOw3rxHqtApZGeOu1
 bcKw508zvxxGa7qYM7wxJPgixA==
X-Google-Smtp-Source: APXvYqzdsV8tU3MpgnNLOKLPCEPdCdfdteZK2zsom+LUvNxzOUhXlYOv4B+zASrT6qXl8f+2fDeuiA==
X-Received: by 2002:a05:600c:296:: with SMTP id
 22mr8886475wmk.155.1574331272221; 
 Thu, 21 Nov 2019 02:14:32 -0800 (PST)
Received: from bender.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o21sm1289932wmc.17.2019.11.21.02.14.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 02:14:31 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mjourdan@baylibre.com,
	devicetree@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: media: amlogic,
 gx-vdec: add bindings for SM1 family
Date: Thu, 21 Nov 2019 11:14:27 +0100
Message-Id: <20191121101429.23831-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191121101429.23831-1-narmstrong@baylibre.com>
References: <20191121101429.23831-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_021437_076029_701FD709 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add bindings to support the Amlogic Video Decoder on the Amlogic SM1 family.

SM1 has a slightly different power management handling, thus needing a
separate compatible.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml b/Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml
index 8ea979bb97e6..a7ef69d02336 100644
--- a/Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml
+++ b/Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml
@@ -36,6 +36,7 @@ properties:
         - const: amlogic,gx-vdec
       - enum:
         - amlogic,g12a-vdec # G12A (S905X2, S905D2)
+        - amlogic,sm1-vdec # SM1 (S905X3, S905D3)
 
   interrupts:
     minItems: 2
@@ -100,6 +101,7 @@ allOf:
           contains:
             enum:
               - amlogic,g12a-vdec
+              - amlogic,sm1-vdec
 
     then:
       properties:
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
