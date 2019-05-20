Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4F623279
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 13:32:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HLIlHurZ/Dxfa8smAtKD12ldL3DLAMwKj02DZdGGyXI=; b=kxu
	DwpXcZi0kLdW6O52i8q5b+d2gW/zuMBw5KBSmZ9aEEgdAahciktSp5+YVf3z5i6Xq0Gyf8GGbqHEg
	aH0NPKHFkFhJ4Gk2zxWXzHYUiDv9TaGrGI3ncdgI5NsuD9H2dETb2RZlJXhwcS3Q135j4nt3tDJfJ
	swnLm+4HDFi3U4jJAD7kON98KHdtMfYuJmWhyKXg/HABFItdCApmX+Dujt6fbGdZND8lOxnFKVLdh
	x54nkv/zghVmcSnFL8CuI7UNb+xlcpywhTYuKufOkGTi02UFiqdtic8iNjr0/lj2fW4Ce20Dj7MUk
	8Bogm7KJe+Zf71QPcFS0REwz4F86j7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSgX1-0001MO-Lj; Mon, 20 May 2019 11:32:39 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSgWu-0001Lf-Ic
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 11:32:33 +0000
Received: by mail-pg1-x52a.google.com with SMTP id z16so6658811pgv.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 04:32:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=2S9MAivwF7zxfimY+INJLOlqiV39ooQLNnYsMx0gRf8=;
 b=URK3N/1kJyHHrmd+w0Bx3YnOfa9G/JKqnZjMFsmCW22W5lxDFJUrmiKylqdW5OiP7c
 ZCxvYv4/7R2tcTo3I6DGZLRXFWNycsWZN/9J88ws7aMlzqo529IQ0Uu8QzwNVDDtmep4
 rRZOvw5qMETo0vhB+ZRq09iNTfSjza+IF4DjBHK7K0myRamsPRFiu8vDdP5kNz5FJDtO
 MDFlProPb/qyG34QmYYrKQcvc+OnM06MqNO0gB2M8ml0xVGeNrRe4UFBdiRB0XtK01Ng
 gP1+SdSm2Xa2e/Ao7G1sHkL56Heorsn+ssZqRfsHmTauEq1vDwgsbUmISsw2EDfUgNs1
 AfAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=2S9MAivwF7zxfimY+INJLOlqiV39ooQLNnYsMx0gRf8=;
 b=AWfFvDtsPQMckSanNP/SZVXmVTc9qPlq2oWyIf6AlSy7J0UFeoMdaNgLSstVLbDLi+
 0TNdCvDTE75eyEnz0G/CUUjbsCDjY0Sxb6YuEkaQTLT7YmLvqxO8KPzk5Pv6P2v/gseQ
 ufY3LUiaxeCW6TcAQZa4lye9AQQUD/HMKhKokNwEXBkbSkYzrQcB/QJ/BkHVFgRUUshp
 J1+SULmWP9kKWFMf4TfRzCwo7Q3u8CczyZdzOPEUi8a/c7a7/M7kJWDyB48YBFFAvwy7
 /+8pqlqm/Gt+Smaeyod6ly/Y8uTNqW5dEsfoWk26eR6tSEljdTbqCpNNfRSb0I5/k3Hy
 +TMg==
X-Gm-Message-State: APjAAAVURA8SQ8e04dQJ7vtjUSqp7Y6AaPegOmFWebqucV2/kcvqBTEc
 Ly+oUqsqbwrSMh3a+1+tWc7O6A==
X-Google-Smtp-Source: APXvYqxnQKIpFWVcVI13NBnHjPEFJoPccFai4k2DvNkDwrNTAcUlVFnQw/aT/Mj6kEAvFmc3w3SFDA==
X-Received: by 2002:a62:604:: with SMTP id 4mr80275260pfg.38.1558351951343;
 Mon, 20 May 2019 04:32:31 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.102])
 by smtp.gmail.com with ESMTPSA id z124sm21310020pfz.116.2019.05.20.04.32.26
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 04:32:30 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: dan.j.williams@intel.com,
	vkoul@kernel.org
Subject: [PATCH v2 0/8] Add matching device node validation in DMA engine core
Date: Mon, 20 May 2019 19:32:13 +0800
Message-Id: <cover.1558351667.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_043232_652598_AD1894B7 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: jroedel@suse.de, vincent.guittot@linaro.org, dmaengine@vger.kernel.org,
 baolin.wang@linaro.org, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 wsa+renesas@sang-engineering.com, thierry.reding@gmail.com, linux-imx@nxp.com,
 kernel@pengutronix.de, linux-tegra@vger.kernel.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This patch set adds a device node validation in DMA engine core, that will
help some drivers to remove the duplicate device node validation in each
driver.

Any comments are welcome. Thanks.

Changes from v1:
 - Add test-by tag from Peter.
 - Use dma_request_channel instead of __dma_request_channel() for
 the fuse-tegra20.c driver to keep bisectable.

Baolin Wang (8):
  dmaengine: Add matching device node validation in
    __dma_request_channel()
  soc: tegra: fuse: Use dma_request_channel instead of
    __dma_request_channel()
  dmaengine: imx-sdma: Let the core do the device node validation
  dmaengine: dma-jz4780: Let the core do the device node validation
  dmaengine: mmp_tdma: Let the core do the device node validation
  dmaengine: mxs-dma: Let the core do the device node validation
  dmaengine: sh: rcar-dmac: Let the core do the device node validation
  dmaengine: sh: usb-dmac: Let the core do the device node validation

 drivers/dma/dma-jz4780.c              |    7 ++-----
 drivers/dma/dmaengine.c               |   10 ++++++++--
 drivers/dma/imx-sdma.c                |    9 ++-------
 drivers/dma/mmp_tdma.c                |   10 ++--------
 drivers/dma/mxs-dma.c                 |    8 ++------
 drivers/dma/of-dma.c                  |    4 ++--
 drivers/dma/sh/rcar-dmac.c            |    6 +++---
 drivers/dma/sh/usb-dmac.c             |    6 ++----
 drivers/soc/tegra/fuse/fuse-tegra20.c |    2 +-
 include/linux/dmaengine.h             |   12 ++++++++----
 include/linux/platform_data/dma-imx.h |    1 -
 11 files changed, 32 insertions(+), 43 deletions(-)

-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
