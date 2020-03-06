Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC0717B8B0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 09:52:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=inzVPAXMArz37/SwZcuhDZ1rT0V30llioSgQSJEq3eo=; b=jum+KV22UNiHqV
	B13Vr4jEbOJmkbollrV7KYLZuk6i0C1hYqblbwda8gpg9uMWHWP2VMvP2n6i0ViQNexx7gLcorFJU
	FezoXZPeYsqrZnzira1EOnsTSty9sN/s5hM0ZFFP/2UrQBhYb6ZkwqQOVhSeTaY4V5t2V1UZcLP/5
	5J52QrAw+pfBl1MxYZj80pttYxEsILfWllGni22gEtbIvsVuh/A4xFBUNY+oKIoMTELcYQcFWRrHq
	Tp6WjyaV8IsYGxDjlFR53pf3XNkF/IkJ4JZwMDeOlRR1WUNC5Zp4hVKporU5B5ryTfk75vBt/7Wzo
	8bUuMQVWsI/7t8IHG3aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA8iB-00034s-59; Fri, 06 Mar 2020 08:52:03 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA8hl-0002t1-Up; Fri, 06 Mar 2020 08:51:39 +0000
Received: by mail-pf1-x441.google.com with SMTP id f5so782922pfk.9;
 Fri, 06 Mar 2020 00:51:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KktHYfzCrBS8kPiYs9+pEgMzyzX984i5dmj0nJ9JysY=;
 b=M+RYqjqz1PqntT8vZIEeUK1Lq7/juK/t7qda5QlSqOWKHI773pXI3Z4nOznRH5Zybr
 TqgoDoEy/BB2YcceZ7MPrKVAbLbOb+yyH+c5kSVv4BwG9elregK1zFuQplg//TPMwKbK
 kNAeK5OkinC6a+R+vB8jWP+FluttBYE0GpR0P8O2CWPkaubQ0OiqMcOwUxQ6OcQAzcaz
 EEGJIGpAlcIcbH3UFl9YnRHPkuzZxEvXZDEceAXtwwENfPdJbEQfDQFR+mGQPg/34+R+
 LVhNxxk/5oKgFPr2Ru183itm63XZeAxEovwA2DDpv+tOqi42MMYoEMiWQbURjG2Matnr
 xqtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KktHYfzCrBS8kPiYs9+pEgMzyzX984i5dmj0nJ9JysY=;
 b=hkVUGaXb6/qjmeD+5NVCkLEmIGDQ+aPBWF2Sc4x48N81jD2YolU+QdTY8oepIiCb54
 +EPkNsHYdgu7eFxlg4tL0alHg/PXDcu0xXk2Cq1gPtQMH2Oe2ANMjLhrZELWeJOLcvrw
 hJmvTcFBqJavlfyoIp/gBsogEQGYuyKlfqR+aCv9jIiglTNBFYR4baOJ06YFefHBy7Gx
 MoLwKanL3p0j4+w3z5z9HeH73DUrk1MulZ/2KqwHP3hz7a6YCC2QnAMUXaIiOOqv4nlD
 vgt6vxaJoyB85vtlYSb85hnuA6OoQhshdyFKv6//09h57VK5hp67yEoMkFoqFYnHJqQe
 BGbg==
X-Gm-Message-State: ANhLgQ1635P6x/hJ0yoD3sVxwxhrFeXE4c/JAAvdZh76znOpusWsrCsp
 eQqquHL6kHOQamlE0PVC0Tmmx792N0te5Q==
X-Google-Smtp-Source: ADFU+vvlagy4Ao6KsyQAplR0VBd9/BzhRXGrNvL42TrLHKgeU0S1Y8qBfwhjGq0U3pCP4+wfTR3rBA==
X-Received: by 2002:a63:5713:: with SMTP id l19mr2356319pgb.216.1583484697054; 
 Fri, 06 Mar 2020 00:51:37 -0800 (PST)
Received: from guoguo-omen.lan ([240e:379:94a:b53:8200:7767:6b7e:4da3])
 by smtp.gmail.com with ESMTPSA id s23sm8527334pjp.28.2020.03.06.00.51.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2020 00:51:36 -0800 (PST)
From: Chuanhong Guo <gch981213@gmail.com>
To: linux-mediatek@lists.infradead.org, linux-spi@vger.kernel.org,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v3 0/4] rewrite mtk-quadspi spi-nor driver with spi-mem
Date: Fri,  6 Mar 2020 16:50:48 +0800
Message-Id: <20200306085052.28258-1-gch981213@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_005138_019779_891F058C 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Mark Brown <broonie@kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Chuanhong Guo <gch981213@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset adds a spi-mem driver for Mediatek SPI-NOR controller,
which already has limited support by mtk-quadspi. This new driver can
make use of full quadspi capability of this controller.

1st new commit makes spi-max-frequency optional to match current
binding doc and make this new driver compatible with old driver dt
bindings.

Change since v2:
 revert binding example replacement and add a dummy irq binding

Changes since v1:
 two new commits.

Chuanhong Guo (4):
  spi: make spi-max-frequency optional
  spi: add support for mediatek spi-nor controller
  dt-bindings: convert mtk-quadspi binding doc for spi-mtk-nor
  mtd: spi-nor: remove mtk-quadspi driver

 .../mtk-quadspi.txt => spi/spi-mtk-nor.txt}   |  15 +-
 drivers/mtd/spi-nor/Kconfig                   |   8 -
 drivers/mtd/spi-nor/Makefile                  |   1 -
 drivers/mtd/spi-nor/mtk-quadspi.c             | 565 --------------
 drivers/spi/Kconfig                           |  10 +
 drivers/spi/Makefile                          |   1 +
 drivers/spi/spi-mtk-nor.c                     | 689 ++++++++++++++++++
 drivers/spi/spi.c                             |   9 +-
 8 files changed, 708 insertions(+), 590 deletions(-)
 rename Documentation/devicetree/bindings/{mtd/mtk-quadspi.txt => spi/spi-mtk-nor.txt} (75%)
 delete mode 100644 drivers/mtd/spi-nor/mtk-quadspi.c
 create mode 100644 drivers/spi/spi-mtk-nor.c

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
