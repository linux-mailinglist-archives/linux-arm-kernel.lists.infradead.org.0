Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E41715D1A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 08:10:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=a4LBY2ONoXIjW7GPnoG5sLBdYlu6nWnYZ2HrZK8en8s=; b=eQy
	cvf5782qWSVSMg/vXd782wqQWhpsE5HkRbjnyGmHvurXFdldIIZrj66UvQ0waWn+Ftvp54ehyR8kr
	H8AZpyJfpY2yyr4m+bG1eczs6LC/Bsg+TCPvNNlTFO60rsC6Qwat0m+gg9yi8z1sPmKfpOLIHq9RP
	Fxnp6JnrrskJME18oKbbTJ2zMsXgtnPvEerThrz6ogGCBqqx/IorZkFaN2v789tomrKrWPXgGsN5/
	LVz3W0OwhinHeLypNSljVmhLxOwbXmIuhFEziAtQZFZ3tNLRFVFr1DXL6QXnn28KWQbQVWPecFNXg
	l5Aa31NGTLUmNuQeJG8A/Rjtrtx2rxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNtIu-000638-3W; Tue, 07 May 2019 06:10:16 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNtIm-0005ow-0d
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 06:10:09 +0000
Received: by mail-pl1-x644.google.com with SMTP id a5so2674113pls.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 23:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=F2rlrgjaiJp1NZ6RM4VM9hD4Rmd/jUUVurwXpw2zOD0=;
 b=Dl5JgfjZLUNAedfPuQQEAtFakRXAUtWL3Qc7a0Ko7nRreVMr5QXRF9ELOhpMzYIXEF
 M+uqiTbjF/ZOFb9Sy+fVQzLBwvmpryBUYQ/+FdjbY6Hn5tU95O3/0by2Hv5r5CaTSk9U
 a9ISQUlkFaTyzuMtX1+uVWLFQZAsUKnaI5jGOPi1EbiB3yaPKy75oW0BPNMZMsdRBw2O
 +xUO/mmPVEm418F9q7Aclbkl5PTgkOdagQsrzNnQdQK3bbq5zfJrduth/X3I7ZpcKkXd
 tCRFsqKB1xW66ic0/V8jaC1kGEWwhP7tYUHaJVsMVtBAwISXMYtJ/YAdq2dTVyVrPtwg
 mafw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=F2rlrgjaiJp1NZ6RM4VM9hD4Rmd/jUUVurwXpw2zOD0=;
 b=g7PHycJmofSC3r/OVYMT072Bh0Z09WKleTQYttZXFe//NC8Mdb3LSrbZLm3pGMJila
 aCSn1D6DOTdrRpCYCIvv7UX+BoQG+GeJukoTl48P2Rl2eMvjvOJAoxbuWQaWIQfEZdOk
 cr89XtCtQQHW0g4mlCLtJaBzzLYLVBgb71wvW/cazxa/vrOw7lwIPcjOf/5urPUOZCdH
 0L0qLL6JMeGSC1034gN+toJRio9mVZ7EeNLJRw0iys1cIj6qL44PEDGSHdKLjgy8/h6u
 QY57gL9+pYXrZOV3Ctrr3qLKsU7OkCHvmtihe60ELktJSzPxgxkj5vpDG/NFu1YXlGbC
 arLg==
X-Gm-Message-State: APjAAAWUI8U6gO4koa3ALlWzyfiozmEuTw5+XYzxp+OtZVSW6mvRS3qa
 mPjOMUEuCxq5Cr13KmlEqiTcpw==
X-Google-Smtp-Source: APXvYqyFxErSKOJGlANeP4eMybnknfCs0uOocek9g5tx0HVX9gFqZV9fJIv0GNvM6WxbwVQ6k420WQ==
X-Received: by 2002:a17:902:9a0c:: with SMTP id
 v12mr38439694plp.184.1557209406749; 
 Mon, 06 May 2019 23:10:06 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.102])
 by smtp.gmail.com with ESMTPSA id e184sm30786325pfc.102.2019.05.06.23.10.01
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 06 May 2019 23:10:06 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: dan.j.williams@intel.com,
	vkoul@kernel.org
Subject: [PATCH 0/8] Add matching device node validation in DMA engine core
Date: Tue,  7 May 2019 14:09:37 +0800
Message-Id: <cover.1557206859.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_231008_090510_2FD2294A 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: jroedel@suse.de, vincent.guittot@linaro.org, Zubair.Kakakhel@imgtec.com,
 baolin.wang@linaro.org, dmaengine@vger.kernel.org, festevam@gmail.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
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

Baolin Wang (8):
  dmaengine: Add matching device node validation in
    __dma_request_channel()
  soc: tegra: fuse: Change to the correct __dma_request_channel()
    prototype
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
