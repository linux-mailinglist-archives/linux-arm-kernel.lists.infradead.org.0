Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C9C888AD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 07:34:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Gs1mUYOUU16pYNKT0Gg+bbNjM8HqXu/NdTgkswNBSFw=; b=kWgytZiMXkAxMC2pn2jupYBWY4
	TohyD3463Y/9QrhxyNpU0sOIerHXKNCvabhINT5Lov3o0kXBNMWK74iYFS3uFWTO3zRslejsnAe8Z
	8/sUKBUYDrFq2YveXKmFQEhJFydMxL6n4R2dz5hcB7TVi04p1YyUG/iBgXhP0voo8mNtcyPCKBWdw
	St8T96NfTNYyb/GCAUEprh7KxXFNsMRKLnoMFg9x9/MhjdXOLFThF3LS+jc4VhIegZdqTWggchkPE
	I5jU3+iZtBcPVWcK8PlbqU4MjXU8ooEjLK+AOh6Y4wmg0A3XAuily6IiGY0l3BSzoVGE/5qXiaTZA
	TTXL1DdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwK1K-000695-LG; Sat, 10 Aug 2019 05:34:26 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwJxP-0002yU-P7
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 05:30:25 +0000
Received: by mail-pg1-x542.google.com with SMTP id o13so46836232pgp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 22:30:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=hwZTuXR1RQwweZBHdOcMrMag4gKUpB96/RLkAJHYs6E=;
 b=iT05HnTWCRVNX3VU2btAQTjum2T+H9ULSXrJJd/2QrK9AKvJeXrvnxM8TyNOPU14rm
 E1GHGLJgMoUZrLrm4iOekEcYzmBbG11qAPmrtCUQoia0mVsrMWI/PxnfwM5ed4OlB2ip
 4uqyj+cqtpqGg1gzRwK2Y/BdxqgF7kMc+dLxKQNblnDrIUZUfnRJtd3Ir8l9ara8AQ4+
 BgsRHPG1sehtgh86UHXL5li5nvBiEPxNaFLCcf7ah+NhWcrnbthtihKz08RDZ1FKNykI
 jH/Q+cXLV0h5we2av3QOQMJ4iTF9weqw6TmMRPbXIKFliH0wy+rBeeIzYLqKiwq1CX9Q
 M1FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=hwZTuXR1RQwweZBHdOcMrMag4gKUpB96/RLkAJHYs6E=;
 b=YHkYpM4gQy+Xu+r9bOYL50bwGrjDiQytDz4yZUbPzAyMmAMdzjJbZYzT4dl4MBEdOc
 wajouDAVXaQS2U3wrZ+S9b4XxT8X8PKH95K897IVoylaeFAA8RFJHgNZ8PWpR/cQpQWQ
 Q9kXK2re3HO3+y0HIuAJn3rthkpfRWHyPIf2CUogWdwvYH6dDBdr5kMxKHHG/SK3J5eY
 FHERdtb0c7NO2mMearYg5iYkod+WwYp4km5qB8xNjEue1Jog1+1Rpu0ceh4gbJRDBIDW
 IIhMWG98qZkOySBBZzfUaj3R1XDGpaPguHVZjlWyruLkxldKTXZaGhTj3dB7CWQ0Mm4e
 zmUg==
X-Gm-Message-State: APjAAAW608tIkO/L7fjrCvVdQV5RD19YZu0uaK47gOt32H9XJKnKDp0Z
 yMmeuBVxMP0SRGklQHcMBqk=
X-Google-Smtp-Source: APXvYqw4s2jvP5CyZ7Z78O0x5bAHOAkoJ+5b1iaaYMbNLO9REx5WqGP6UNJ+iBWk2V4PX1g9bg983w==
X-Received: by 2002:a63:e807:: with SMTP id s7mr20041477pgh.194.1565415023202; 
 Fri, 09 Aug 2019 22:30:23 -0700 (PDT)
Received: from localhost ([202.182.106.211])
 by smtp.gmail.com with ESMTPSA id k70sm6641708pje.14.2019.08.09.22.30.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 09 Aug 2019 22:30:22 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, mchehab+samsung@kernel.org, davem@davemloft.net,
 gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
 nicolas.ferre@microchip.com
Subject: [PATCH v5 17/18] dt-bindings: thermal: add binding document for r40
 thermal controller
Date: Sat, 10 Aug 2019 05:28:28 +0000
Message-Id: <20190810052829.6032-18-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190810052829.6032-1-tiny.windzz@gmail.com>
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_223023_962425_2C9E01C5 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds binding document for allwinner r40 thermal controller.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml b/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
index 2e28f5b33d33..28c438d3bfea 100644
--- a/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     enum:
       - allwinner,sun8i-h3-ths
+      - allwinner,sun8i-r40-ths
       - allwinner,sun50i-a64-ths
       - allwinner,sun50i-h5-ths
       - allwinner,sun50i-h6-ths
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
