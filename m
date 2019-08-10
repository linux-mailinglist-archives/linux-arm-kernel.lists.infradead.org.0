Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58037888AA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 07:33:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ckHqltwooELfH4PEJ+m4KouFzCIRY6KIvlbeYVTS4xs=; b=hkLvPNa45L6O/yfCLp9qcfiYB8
	oHSoj+geVMazX7peXICs9SAGyhjZN2RiCFvYP6qahW63VS3QYtfxho1AbzdcxJpIPyV52y5hvCMYf
	SCfHvkYHPq1L5ZmSx+wRjMahEHqB/3MOtHqkHS7q/9GemLa5yeKoB1evV/yq+qhUt6bFBKoM9AVTe
	Na7poHWX9dd4CJ0sQB1m9uVQe03wA9vprlI4fq7jsTy68haByrFyxN/0NfAPG2vFTHuJbtShso17t
	FWhtsioMeP9DAqDsnslp7JXiGmk2wQTnNaMz9nLBgVi7/6dbAi/cy6SYDmw1yYNX/EmPR/TcWPCxv
	EwqF19Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwK0Y-0005Ts-Lb; Sat, 10 Aug 2019 05:33:38 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwJxE-0002hi-N1
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 05:30:14 +0000
Received: by mail-pf1-x442.google.com with SMTP id u14so47137658pfn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 22:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=UosgfXx4rXCpr6ibQdnwjU3IwPluehmRT7Dfu14EBL8=;
 b=cnd6S+DBub3Od7fbxAslNjlYDsv5ue3V/132Q7Xf5VEoqcGO/DFlOhgzdxc1VaXJ96
 2PgeD2F10SWJaBt6QchPdzKipe28KCDHn7XEueb2a1Qmmn7b0rYA3pxnvd+MlRxLpK9S
 TyT1uhKHI7DwDTPH+EK09luy6RrTrsPoswDsPfOnoHH9BTFOG/zAp+kePk2ZFZB4nQJ6
 UlCaKIpk2um+gw3jipGxtsaJTly/AxqEDb+hPv+V9GMV56EzLzQBZTyBMP3aS0lgNXhr
 UAhG0lm88oyH85kLR0QmMPKTpdo+cW9JxDcL2fSw30jI1n6BRmnPx+f1Ur3DZz74F04U
 UX2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=UosgfXx4rXCpr6ibQdnwjU3IwPluehmRT7Dfu14EBL8=;
 b=C43wOEJHOD1I18yns6G3mWO9Ym9KxLHCJKMe3ARZiUFaGa/bLoHx06AnjkkwTaUCVX
 PaFDh/bv5/a/VPaXjbONfpktVwWEYpZw1v+2XwOclBD+89/U8ujRZ+jG5ukkJL6dcnEr
 VHxtUKirkRXY+82oE5mfThMmbRmo0UqhKqMbxvxpIqbpC7CdY9sMNTs3ZZ2UJ5uipmxz
 OAo/IhJQHMEjspSbXIky2T/j+1rQk0O/qfGJI9wVFi073rY7e+bi6v1Uvep6iMCseUud
 EJR7AfsSkmCHuuWbF++99yWUq8tqslxV2X8+4BJz5EKKGlTxxAuPmKU6PsudaQ1s2cIk
 KTHQ==
X-Gm-Message-State: APjAAAWw8dwlwZmeaIpGCgjt985t6x4XJ+oeGgK13dJhkSeVjrNvfWad
 sc4L/qiZTJikJLwh+SHf7y4=
X-Google-Smtp-Source: APXvYqzNvo1OGTUF4/A2gNYiIgcr+dkAqN2eFc1rbhbt9UgJhZ10auqHQ+8MqNVMZkpLbNDrfDMG1A==
X-Received: by 2002:a63:d84e:: with SMTP id k14mr20737624pgj.234.1565415012208; 
 Fri, 09 Aug 2019 22:30:12 -0700 (PDT)
Received: from localhost ([202.182.106.211])
 by smtp.gmail.com with ESMTPSA id f7sm96704339pfd.43.2019.08.09.22.30.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 09 Aug 2019 22:30:11 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, mchehab+samsung@kernel.org, davem@davemloft.net,
 gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
 nicolas.ferre@microchip.com
Subject: [PATCH v5 14/18] dt-bindings: thermal: add binding document for h5
 thermal controller
Date: Sat, 10 Aug 2019 05:28:25 +0000
Message-Id: <20190810052829.6032-15-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190810052829.6032-1-tiny.windzz@gmail.com>
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_223013_086404_F6F37ED9 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

This patch adds binding document for allwinner h5 thermal controller.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml b/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
index f935b4fab8ec..2e28f5b33d33 100644
--- a/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
@@ -18,6 +18,7 @@ properties:
     enum:
       - allwinner,sun8i-h3-ths
       - allwinner,sun50i-a64-ths
+      - allwinner,sun50i-h5-ths
       - allwinner,sun50i-h6-ths
 
   reg:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
