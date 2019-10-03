Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D43E6C9D17
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 13:22:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NNw3Ccpi+FvuXHdOg6CyXZiT9PCd76GGptB8b8VwVd4=; b=YPl
	ET5xfpVuIJSktxmB68FDW09Pd8CUYSwb7RFxtrMfsJ+Tq5TU13mrO3tUboFVWzlbq2fCIg5SWGo5W
	YjMBCD2vAWNA9u9X+XXt0ISlJfplmFsXTeIA4NttwyfJ2OPk8CqiEZGI8DWoFVU7WToIpP1JE/8B2
	zsciH9dCuYc9I7bDMQ6QF4LJKziYTNYsLEu9WylxRnxCRaqoRpIeeXpmtvekxoaultTnhHf+HxRzl
	qFFmpk7kLX529qoCqUZKXvdCBn4Xg0DqFkmIvI+hIYQss09FdwcyyzxCmJsYAlXI8hNDAxDbGaB00
	qAO9hHAKgC27LrcnkbR0b5MjgaA4AMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFzBu-0003fB-Rb; Thu, 03 Oct 2019 11:22:38 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFzBm-0003eC-C6
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 11:22:32 +0000
Received: by mail-pg1-x541.google.com with SMTP id q7so1553112pgi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 04:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=4vvWZOnDaYB306KLyalX1Vu4JeBx1avHtcxqLv3dAQI=;
 b=XLnU6ZGBqa577KBUFDzfnYkNp6/eIoX6Pq9euUphJF1eaLkGpQyppKve1wUxuESwu5
 ZJvOyoz7Fjr+XB+RNcksDtCovFTo3ED706fd3n3IH2W4NWqquJz+ijcLNcbGryn4DTjs
 55VDB8F/RFZ4jOgbmebt8kgKu+sISxrGzicyARLK1gbwIeKiIDA/YnY2oROdTtgXo9Lp
 OhgwAiEmccjOVtNmAa25PRDCf+fOl4AqZJwpjOekZT6+jrEjcGb3ZiOpJSLV4Nc0LmGG
 YHPOh5KemQuBPqNnHLJbuZPqFqbs8hwaM6Sz1REmnrszkUwm6Y6AJ+oQvdDFSQPGqO+A
 IjMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=4vvWZOnDaYB306KLyalX1Vu4JeBx1avHtcxqLv3dAQI=;
 b=V7xkyhj3yut3YJ7I9czMXrTkqx7uUKtbR/hVyZqI7Y55pHIrQvsNImW2YNXE2EgJhe
 9q6scDrEccOc3mblAHxHpwBhktYG94hWAc+tmZ0qCXg8jkUH/1eq3RaLGl25HqHswYg5
 ecExFdQ/f6319o4DGHtMtcLknXWOV+sdWGURzQ35J6NIRuHCnkCeBqE+akmXsn8iF4V0
 3Jbp7uDcRhO1Rq2HQ63zEAgPvk1aKO06VvSb7LbLyb8YHUHGXoItV0ESZ5bbtogJa3o0
 9X3by9o1h79EI8v7DtK9nJ99X+y/lFJcEVjV5HFbFQhqlaCv0k8xf0iZzTPD2ov0bhuX
 IhrQ==
X-Gm-Message-State: APjAAAWnKnpGrRqN6exOlk5G98ld5E6DL3aDrXW64fg1nDLZqUStJ0Rn
 dd3pAYWepbS7m4IA8DKcSwcmUv6TYLQFsg==
X-Google-Smtp-Source: APXvYqyo/GBuKYMgok2Qu85GyYWcZ/kBG23UO0oZtmNIMkGIJX0uwqdZO5n/Gy1IyWW72l28hy/lCQ==
X-Received: by 2002:a65:4543:: with SMTP id x3mr8479928pgr.300.1570101748857; 
 Thu, 03 Oct 2019 04:22:28 -0700 (PDT)
Received: from localhost ([49.248.175.14])
 by smtp.gmail.com with ESMTPSA id k8sm1998881pgm.14.2019.10.03.04.22.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 03 Oct 2019 04:22:28 -0700 (PDT)
From: Amit Kucheria <amit.kucheria@linaro.org>
To: linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH] media: dt-bindings: media: Fixup Allwinner A10 CSI binding
Date: Thu,  3 Oct 2019 16:52:24 +0530
Message-Id: <b47ec7088aa4b07458519ab151de92df552a9302.1570101510.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_042230_440274_F863B6A5 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This new binding fails dt_binding_check due to a typo. Fix it up.

linux.git/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml: $id: path/filename 'arm/allwinner,sun4i-a10-csi.yaml' doesn't match actual filename
linux.git/Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.example.dts' failed
make[2]: *** [Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.example.dts] Error 1
make[2]: *** Waiting for unfinished jobs....
linux.git/Makefile:1284: recipe for target 'dt_binding_check' failed
make[1]: *** [dt_binding_check] Error 2

Fixes: c5e8f4ccd7750 ("media: dt-bindings: media: Add Allwinner A10 CSI binding")
Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
---
 .../devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
index 27f38eed389e4..5dd1cf490cd9d 100644
--- a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
+++ b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/arm/allwinner,sun4i-a10-csi.yaml#
+$id: http://devicetree.org/schemas/media/allwinner,sun4i-a10-csi.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Allwinner A10 CMOS Sensor Interface (CSI) Device Tree Bindings
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
