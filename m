Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6712D19273A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 12:35:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UoIDqN0eHcG/ClAH4hDqsSMrlgz6XSF4vNwp4xg9d0s=; b=hCznV4thUCAWoj
	/dSB7WuhhS+fZpmWO1dCAmaM59I+D/GkbwaU8f7e7JD/Gzqc1pUbRKVBcy/zIW44jz0qY35rHP2n4
	s/mg+aX2oTKkvCDiv2mWvJfDL16t3ifY5vryANHxTJpYfHNJQ5AwYq3wnCdRe5E2F1rpE7anX/yUo
	B0e0vg0R0iJaTeWzthpy3fnjr8UE96z4iJtbdXQcL9rma/gZouZIYotq3yuL08JEDN0DHmeJNCXY8
	at3kTWOctCMyVHSx80YRoBMU8frRrH/t1CkNERd8YFHWFYHeYy0yiJk9JfBT6+qtcNVSeH6cFh3Oa
	w9lbejQcBqCq3XV4OhhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH4Je-0006xD-49; Wed, 25 Mar 2020 11:35:22 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH4Ip-0005u1-LQ
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 11:34:33 +0000
Received: by mail-lf1-x144.google.com with SMTP id j15so1460139lfk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 04:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O7KffvUQLvEtuKLuleQeJ202vBQLqQy9HV1Fxk0tNOM=;
 b=HDfdSaRDnAglhBGm1Inpp4+PGlm69FgGVABJzD28TMp6tqeNsKiHMI777YCormOPzd
 uObNsIFHV1Npk5ziYCXZ0cQLBNe4T8aZZKrc3tZBoKsfGViR+Ix/mqOLR4JsgIMcm9t1
 vFdk3jktgqFH4Z/+GU/IydPzWVGMjeoANomk1rbXDkBKfC1ZsDPJLBW8K0DcZwll9C24
 tp+m/Jzg8CN8lYauf5ETMIUTJ1rrRQ1tXDrgUnt6dLpzH8GpssHm3HOsSizAit60PbjS
 Q/2MXBDO8MYvbDm058vsshlEfxsxUgbcDLCNaTtOnWlyOVawtVI6kXoNhDLMsh67bsk+
 papQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O7KffvUQLvEtuKLuleQeJ202vBQLqQy9HV1Fxk0tNOM=;
 b=Ik3OyC6qNY7Fk/uWelxdOKhwbe62Zt5HemKqNSpcYkT9R2spjrFOVvneoB3X+TxKfd
 jGT6jfWkCyzXEUFOwx7N56j05+ZtXmw6BcUlDLZpaIoV46qDpq8CbF2/GWXqPyt/EPpI
 i9GlY6wuZvdLPRqb5lgYXibJF9HQIVJc7dxOY4dfC905U9r7qtUGqjwmsNUcuQRElmF4
 4BXYPQMKVi2/M19AxZuSVn5+rhUjb6iP9P9J6HSLHtQZsYYFSH/viIWuY9s4g9LyfI5J
 j11g4Ly0+MBBBO0Jg0c7TvqiTK5+GAn3ApdXVhHZBnGlkd5P95Y2e99bsTcVIMTEB/8U
 WJ9w==
X-Gm-Message-State: ANhLgQ2kWLo3XbibKzPxS7XNJfVV9/DukaJJGqxOx3r4sF+tElzBshjw
 ZxCNTgkUCjZXoc0b72zwXhS9uA==
X-Google-Smtp-Source: ADFU+vtF9WPanLG3a1vSHxs2lc6VyzDOkLrVTfTbQpdbdnZ4basqRFJVF+b7L4EKM0fI2K8g88uVuw==
X-Received: by 2002:ac2:4116:: with SMTP id b22mr1933177lfi.172.1585136070290; 
 Wed, 25 Mar 2020 04:34:30 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id v22sm3920009ljc.79.2020.03.25.04.34.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 04:34:29 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] amba: Initialize dma_parms for amba devices
Date: Wed, 25 Mar 2020 12:34:07 +0100
Message-Id: <20200325113407.26996-3-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200325113407.26996-1-ulf.hansson@linaro.org>
References: <20200325113407.26996-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_043431_701056_280A546E 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Haibo Chen <haibo.chen@nxp.com>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-kernel@lists.infradead.org, dmaengine@vger.kernel.org,
 stable@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Ludovic Barre <ludovic.barre@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It's currently the amba driver's responsibility to initialize the pointer,
dma_parms, for its corresponding struct device. The benefit with this
approach allows us to avoid the initialization and to not waste memory for
the struct device_dma_parameters, as this can be decided on a case by case
basis.

However, it has turned out that this approach is not very practical. Not
only does it lead to open coding, but also to real errors. In principle
callers of dma_set_max_seg_size() doesn't check the error code, but just
assumes it succeeds.

For these reasons, let's do the initialization from the common amba bus at
the device registration point. This also follows the way the PCI devices
are being managed, see pci_device_add().

Suggested-by: Christoph Hellwig <hch@lst.de>
Cc: Russell King <linux@armlinux.org.uk>
Cc: <stable@vger.kernel.org>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 drivers/amba/bus.c       | 2 ++
 include/linux/amba/bus.h | 1 +
 2 files changed, 3 insertions(+)

diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
index fe1523664816..5e61783ce92d 100644
--- a/drivers/amba/bus.c
+++ b/drivers/amba/bus.c
@@ -374,6 +374,8 @@ static int amba_device_try_add(struct amba_device *dev, struct resource *parent)
 	WARN_ON(dev->irq[0] == (unsigned int)-1);
 	WARN_ON(dev->irq[1] == (unsigned int)-1);
 
+	dev->dev.dma_parms = &dev->dma_parms;
+
 	ret = request_resource(parent, &dev->res);
 	if (ret)
 		goto err_out;
diff --git a/include/linux/amba/bus.h b/include/linux/amba/bus.h
index 26f0ecf401ea..0bbfd647f5c6 100644
--- a/include/linux/amba/bus.h
+++ b/include/linux/amba/bus.h
@@ -65,6 +65,7 @@ struct amba_device {
 	struct device		dev;
 	struct resource		res;
 	struct clk		*pclk;
+	struct device_dma_parameters dma_parms;
 	unsigned int		periphid;
 	unsigned int		cid;
 	struct amba_cs_uci_id	uci;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
