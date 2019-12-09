Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F789116F86
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 15:50:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E6waFzXAQ6c6yAeDEwLa1LMkgzyEUYLWlWKjPBiha2A=; b=ZgNEPhrk+8vpJf
	EYapxyjohQm3HReq9EdKvEpJiU1yL7CKlRqwrMuxUPKf3geZZHAjRrapkQyKcQwqCZVHxv7M0TgIp
	1i3bNQy0ZEQoWko85h7NKGPqFHnhJdwOWclE0UDI6e33CWJB84oo03zXuTUW2d5Gos716UuE7/OHt
	aA1T8MpbWgW/keVlYDJpEJXmn7mLpRw1LRfWlgxJOoUCigfgTSZKygJSiYeQ3gZA4lorlwuce1GzR
	prAIxAaTpHCAOcHyP9kpYDlBRrXTP21cR+qJObsDdESr+gpBiQTkUzmLFexNNnTTc7E+cTleeGdo6
	D/24u+Lz1b+LM+N+9ylQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieKMf-0007W4-TE; Mon, 09 Dec 2019 14:50:21 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieKMV-0007Vf-Lv
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 14:50:12 +0000
Received: by mail-wr1-x441.google.com with SMTP id b6so16545552wrq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 06:50:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7g3wSCUkuYWHZsY797oGKzqOQQtMHGZXYj3iutCpVxs=;
 b=u91aLh+YeBCHC44kayet3YM2AUntkYXMMX1pB/CSCzoAIFP+uLAcMwnJdsc7rbnQ+U
 En/u38xmp/ZaSrMelXHGaVP52bkx1ZHf6fa0G31V+GUhQS0AaFSn7ys+h8RO1NV7WwV8
 ymTsoKVUUeJQKGShJcXhRTy2EGqLJh6aGXWYBXpnjQEUtLbQuGVBa6A2YqkH5uprWm/d
 vExxTU69ZDydrFyUChrYMXLctHuRAFns98Wcf6gFerjB0lv8isbF6NZZB1yfy5BvtY8n
 PFFHY7dkbo8v2ddCOwEwVVHdCIfhIVbhWl9DBEzdztx/PK8tsG39arQVINGlMjwc9u28
 QbHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7g3wSCUkuYWHZsY797oGKzqOQQtMHGZXYj3iutCpVxs=;
 b=Y+Fs5OdzgBVC13CsDcyP5XtxU6gWqpCemgt7g+LAmVNRTfmkJs4PYh8PDviRRjAP3u
 9dUbuv6xyupCITppgOHLpDKge5hqMyLuwYFiGzSfF64ExCp7Vi89Wu143s9uh7Tqunn7
 +gthQPVAZRw1xSMsuVRLNqCGAJHy/0a/VYEsbi4UW/E5XLXjhgQvrIL5ZuboI0u8XjHg
 jRnPEjPeoYlz2fdlLlSISkp/LDuil/aHM8v0Ii7Xofs8rtmGP4US4cdXrkVAsrdyVY8l
 7ix8w0JKtgPdBxJw/C3RkQvH8aKZJcz8qG5fSEFvuR2A05ruXJPiv552pfCqelwhXVlL
 qypQ==
X-Gm-Message-State: APjAAAWodcwv3WOLDbW8wFpHfl3Q8cV/GkSsFPvsrvE67oPO9AcDLenH
 SJRgDWxNHm5mYyV5lpiTVNI=
X-Google-Smtp-Source: APXvYqwgHRCIfDFUwn/zmwWNRl9/DgRU5Wwz5H2iHGf8TX85hbSYzSKuX7Aal6o+CbkISCPQgbBhvQ==
X-Received: by 2002:adf:e984:: with SMTP id h4mr2512872wrm.275.1575903009994; 
 Mon, 09 Dec 2019 06:50:09 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id s82sm13863411wms.28.2019.12.09.06.50.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 06:50:08 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Joerg Roedel <joro@8bytes.org>
Subject: [PATCH v2 0/5] iommu: Implement iommu_put_resv_regions_simple()
Date: Mon,  9 Dec 2019 15:50:02 +0100
Message-Id: <20191209145007.2433144-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_065011_744388_2FA77C02 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org,
 Christoph Hellwig <hch@infradead.org>, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, David Woodhouse <dwmw2@infradead.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Most IOMMU drivers only need to free the memory allocated for each
reserved region. Instead of open-coding the loop to do this in each
driver, extract the code into a common function that can be used by
all these drivers.

Changes in v2:
- change subject prefix to "iommu: virtio: " for virtio-iommu.c driver

Thierry

Thierry Reding (5):
  iommu: Implement iommu_put_resv_regions_simple()
  iommu: arm: Use iommu_put_resv_regions_simple()
  iommu: amd: Use iommu_put_resv_regions_simple()
  iommu: intel: Use iommu_put_resv_regions_simple()
  iommu: virtio: Use iommu_put_resv_regions_simple()

 drivers/iommu/amd_iommu.c    | 11 +----------
 drivers/iommu/arm-smmu-v3.c  | 11 +----------
 drivers/iommu/arm-smmu.c     | 11 +----------
 drivers/iommu/intel-iommu.c  | 11 +----------
 drivers/iommu/iommu.c        | 19 +++++++++++++++++++
 drivers/iommu/virtio-iommu.c | 14 +++-----------
 include/linux/iommu.h        |  2 ++
 7 files changed, 28 insertions(+), 51 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
