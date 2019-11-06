Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9712F17F5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 15:09:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/jgzcjh7EaZygNulWykIPOfUJFd0xAMa0lEVzicnJgY=; b=GOkEXEYS2gnXvY
	7qpug+1m08bTeIBXspky2QA0MtN77J3yRpOkM04rew+Zw5glGe1GLhomkqJ+sK1T5weCNnH7ErZpr
	rduYnKAO/GvmvbLvofH1jC3lRSQ0pDDo/AqWscLhtlU8FlJFi4LHkny1Ba7I/tsxxnekJQy/yJhE+
	nXfFOAGaW6eXilzLwA8Z3JnpQR+w9WLN8sXHcKkRSva0vQSFIXWQhl5GaBfWYdYnA8J+taFCWoq7J
	wZJm55D7HD0XnTWPUwMjikyr+hpLX1q+AJm4GZJ1pbujTODmeupaJW5bMqpbfy+2Cf8xcyGvFxfKL
	9Xmzt1/ehb47VOHcOuiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSLzX-0004ug-7S; Wed, 06 Nov 2019 14:08:59 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSLz8-0004kA-7B; Wed, 06 Nov 2019 14:08:36 +0000
Received: by mail-pg1-x542.google.com with SMTP id f19so8117618pgk.11;
 Wed, 06 Nov 2019 06:08:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Xh0YLDess6L96nvkYhuVlivBqcsNSJ5iJO7vqQb2cA8=;
 b=MB1WGmx7LCN3svj1Z32NEMJi+359bYzJH064LJ6eHLnQ5EGZz73rdHSTAmS8xQ/f7k
 hHXH0vlm9SGNPrsvszHnY5l9DNVOqCNOCYD/2BmSijIBSDEsPvO1kwDOOzCflCUtE+C3
 5uWCFCDsGeJ+btYZbhuxZEZGz66MRbWP9PD463v41i9Y1Oi+XQ1otayKg60K6uZh5Gnc
 4DnZXRz5ohRbcR80EUKrbJhjL/yZPXX9+guRIg4XibxuO27z0vcOTmVyl6Kr/4HGMSSS
 /Wpq0gI97R1uFldSR/4Pmm/H3wRa0HUKiXPV/wUp+1WqruYcT72pfSlLfi8NUFXF9/2d
 +GvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Xh0YLDess6L96nvkYhuVlivBqcsNSJ5iJO7vqQb2cA8=;
 b=JvP/FVKWXWl/Y+rw17tPoFnHDcMRAf042VcVaQZ65xARPVU0BAcgzSOwtRVQT+i3x6
 H/LIdY1/CZGalJadbZ+CFLbTXzCFte/+Q/1sa7WGOk2+LG2cnK7T5x/YXMZhSxtCyim8
 +BicqfAfNeqii8xfEIQ5K+caZuvVmJ7cxAjQPkRHfHqcLecUtRwcSsJQzZw+kCQ8No0r
 G5RpZnASyWTxKtg5GpXmk7SeBTR2SxIb+12DmIUsXDs66OKBaXsnIgEfcBFMlM7AxJy2
 ag6sOyUDNxhvGLO7zuOkswqnFjUdLwPLpMm1dpzBaTS2EJrioUKgghqU8PjOm+z7R06j
 W9Pg==
X-Gm-Message-State: APjAAAX3Woc9UF8PnDCiSN/Xe9mwShKx6AxHPXahWM1qWs3O9YBDT0xA
 hyzMvPxuth4DvnFKx9zGcXI7za+Y
X-Google-Smtp-Source: APXvYqygIEZIViXKClHYSYmolDRBmW+9kj6CnM/P3+aITpIuH+/hhzB9v23qpqr0AtWRs2EX6QzoUw==
X-Received: by 2002:a17:90a:9201:: with SMTP id
 m1mr4135941pjo.74.1573049311958; 
 Wed, 06 Nov 2019 06:08:31 -0800 (PST)
Received: from localhost.localdomain ([2001:19f0:7001:2668:5400:1ff:fe62:2bbd])
 by smtp.gmail.com with ESMTPSA id a16sm4707345pfc.56.2019.11.06.06.08.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 06:08:26 -0800 (PST)
From: Chuanhong Guo <gch981213@gmail.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 0/2] mtd: mtk-quadspi: add support for memory-mapped flash
 reading
Date: Wed,  6 Nov 2019 22:07:46 +0800
Message-Id: <20191106140748.13100-1-gch981213@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_060834_286934_FB6FD3C5 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Chuanhong Guo <gch981213@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset adds support for optional memory-mapped flash reading.

BTW: This controller is a ridiculous one which only supports very limited
spi-nor instructions. I can't rework the driver into a spi-mem one because
MTK didn't provide register description in their datasheet and even if they
do provide the documentation, the resulted driver will still be ridiculous
because it'll need to check every supported instructions in support_op and
do execution in one-by-one case in exec_op.

Chuanhong Guo (2):
  mtd: mtk-quadspi: add support for memory-mapped flash reading
  dt-bindings: mtd: mtk-quadspi: update bindings for mmap flash read

 .../devicetree/bindings/mtd/mtk-quadspi.txt   | 21 ++++++++++++++++++-
 drivers/mtd/spi-nor/mtk-quadspi.c             | 11 ++++++++++
 2 files changed, 31 insertions(+), 1 deletion(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
