Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D22A299D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 00:20:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Y/dUy+dTCtNpcPSUYhzRXMGtvSn/LG/xyoe9PT35/A=; b=EZhU1P5mcCaZD/
	34jrEsALes1/YXZDh+emNRi2LZqcmJXjx+EITKESgZJGyJJ+pMVo59/VGJGkypXfy1/onYYcoIREc
	RkHYj4zf9zVFlFFqSW1PsbLllRuvTTUsx/ZJTTvXGcId+V8JQ2T3j5m6lTsUgWFNYPdQ1GDgYQLW4
	VpeqQ66TgGF4dC/5z9wAgBNE4g8XE6CGOf04hpdDczBH/+yYAurNo1HoPmUJbb/ixnNVTvNrbmiEO
	nVvZ0tw7oe5dgS1MqUUFeqGdXphfc2zJ5c8g+iBJPQ0QX5DmXXKzKyZR+LRwdcDHtVrco9ZUBp9dV
	p9X8coxH7Azndr5Awbdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Sm8-0005vs-8F; Thu, 29 Aug 2019 22:20:16 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3SlG-0005K1-FU
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 22:19:23 +0000
Received: by mail-ed1-x541.google.com with SMTP id x19so5694291eda.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 15:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YWWE4IVBHvnoWLCLZVIdhXONrKHwnBndvWwW8Ly/oag=;
 b=CDeCvURHjL/QvJ+JzQh7tQWSKSlqeaR+U1GRH5VNsZypiAr9UJG8f2CRiww4T9qnIN
 8kova/7Nf052viUJOC/QQ6QRWdgMcXd/pYDHAQJMfXrFKIbYS/fJWQdoVuaKFDjcnTD2
 Ab7mwQzRZx6NBZFahqZccVil49TEcdIhcIFrjwp9T/k5q8VXsHrokxuZla167EZ2bBKB
 034EJaQ9J3b2vDvNi8b0q43pkdXGXK7Wef0cknVm/uunrUhmXm5VnVAg8dJnUNezaIax
 b454k/aXfrG8X+JXCkdDIkHVVF0E+cPyNLv9xMB8hwkHKsjKKn3HoP6IXetbbKilfr17
 YG6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YWWE4IVBHvnoWLCLZVIdhXONrKHwnBndvWwW8Ly/oag=;
 b=KFbJ7Jy8FEFLCfoEi7vrh/Tko3Lu2kcduNwqvGaWEA9R5wupRIAKsRqkgoMjfEswDk
 JzxMOKOSMUlUgzEf34O4NvLVz3IUvJegre1k3AYQy16p6CblAY/3ARqiDQm2AxlwSHYS
 Jd+96FKCRkSv94TFbYMadYLk20Efgi5aiWL5k6G2UuLOON+u2s6Q2eH40pAp96IHrH73
 3C5+lyTwfa5spvVJ1KYp1BNzk3pnMXbTPJXxmuexSuuwfxymmTt2d3MeiQ4BWYoAcKO2
 5UgxkSLVlPA56KeH3AxSYS1JoLPPQoGncXDsulb3AW9BNqHUFg9BV8iU+lnThnudexql
 LydQ==
X-Gm-Message-State: APjAAAUCpUSgjOuXYcuOsRvJzBKYnAuo6jRZb9IIl8WKhYSIJrnEd5D8
 1m2TTWRcj8fPdtZPr3+wWsY=
X-Google-Smtp-Source: APXvYqwMwzPHARuYWpo0KwSH4bLFC3MhIdvUeMONlOnt5JZW69A/p+LuCw6K+N1EW6+xLGLdyRXIbg==
X-Received: by 2002:a05:6402:1446:: with SMTP id
 d6mr12728144edx.102.1567117160874; 
 Thu, 29 Aug 2019 15:19:20 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id d21sm670705edv.57.2019.08.29.15.19.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 15:19:19 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 3/7] soc/tegra: fuse: Add cell information
Date: Fri, 30 Aug 2019 00:19:07 +0200
Message-Id: <20190829221911.24876-4-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190829221911.24876-1-thierry.reding@gmail.com>
References: <20190829221911.24876-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_151922_545917_88B78E2D 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-tegra@vger.kernel.org, Nagarjuna Kristam <nkristam@nvidia.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Create nvmem cells for all the fuses currently used by consumers.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/soc/tegra/fuse/fuse-tegra.c | 90 +++++++++++++++++++++++++++++
 1 file changed, 90 insertions(+)

diff --git a/drivers/soc/tegra/fuse/fuse-tegra.c b/drivers/soc/tegra/fuse/fuse-tegra.c
index 3ce2138b278b..c6c6a7746046 100644
--- a/drivers/soc/tegra/fuse/fuse-tegra.c
+++ b/drivers/soc/tegra/fuse/fuse-tegra.c
@@ -86,6 +86,94 @@ static int tegra_fuse_read(void *priv, unsigned int offset, void *value,
 	return 0;
 }
 
+static const struct nvmem_cell_info tegra_fuse_cells[] = {
+	{
+		.name = "tsensor-cpu1",
+		.offset = 0x084,
+		.bytes = 4,
+		.bit_offset = 0,
+		.nbits = 32,
+	}, {
+		.name = "tsensor-cpu2",
+		.offset = 0x088,
+		.bytes = 4,
+		.bit_offset = 0,
+		.nbits = 32,
+	}, {
+		.name = "tsensor-cpu0",
+		.offset = 0x098,
+		.bytes = 4,
+		.bit_offset = 0,
+		.nbits = 32,
+	}, {
+		.name = "xusb-pad-calibration",
+		.offset = 0x0f0,
+		.bytes = 4,
+		.bit_offset = 0,
+		.nbits = 32,
+	}, {
+		.name = "tsensor-cpu3",
+		.offset = 0x12c,
+		.bytes = 4,
+		.bit_offset = 0,
+		.nbits = 32,
+	}, {
+		.name = "sata-calibration",
+		.offset = 0x124,
+		.bytes = 1,
+		.bit_offset = 0,
+		.nbits = 2,
+	}, {
+		.name = "tsensor-gpu",
+		.offset = 0x154,
+		.bytes = 4,
+		.bit_offset = 0,
+		.nbits = 32,
+	}, {
+		.name = "tsensor-mem0",
+		.offset = 0x158,
+		.bytes = 4,
+		.bit_offset = 0,
+		.nbits = 32,
+	}, {
+		.name = "tsensor-mem1",
+		.offset = 0x15c,
+		.bytes = 4,
+		.bit_offset = 0,
+		.nbits = 32,
+	}, {
+		.name = "tsensor-pllx",
+		.offset = 0x160,
+		.bytes = 4,
+		.bit_offset = 0,
+		.nbits = 32,
+	}, {
+		.name = "tsensor-common",
+		.offset = 0x180,
+		.bytes = 4,
+		.bit_offset = 0,
+		.nbits = 32,
+	}, {
+		.name = "tsensor-realignment",
+		.offset = 0x1fc,
+		.bytes = 4,
+		.bit_offset = 0,
+		.nbits = 32,
+	}, {
+		.name = "gpu-calibration",
+		.offset = 0x204,
+		.bytes = 4,
+		.bit_offset = 0,
+		.nbits = 32,
+	}, {
+		.name = "xusb-pad-calibration-ext",
+		.offset = 0x250,
+		.bytes = 4,
+		.bit_offset = 0,
+		.nbits = 32,
+	},
+};
+
 static int tegra_fuse_probe(struct platform_device *pdev)
 {
 	void __iomem *base = fuse->base;
@@ -127,6 +215,8 @@ static int tegra_fuse_probe(struct platform_device *pdev)
 	nvmem.name = "fuse";
 	nvmem.id = -1;
 	nvmem.owner = THIS_MODULE;
+	nvmem.cells = tegra_fuse_cells;
+	nvmem.ncells = ARRAY_SIZE(tegra_fuse_cells);
 	nvmem.type = NVMEM_TYPE_OTP;
 	nvmem.read_only = true;
 	nvmem.root_only = true;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
