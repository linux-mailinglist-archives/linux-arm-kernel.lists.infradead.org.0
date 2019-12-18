Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 187E41248A6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 14:42:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GvAcRr9h2Gs2TopaCFn3WbriVZ+B1NTT0x0oO39chlA=; b=tWotZSytbWN9bs
	XgvOsPZfXdBrAHh7TVa1lK5qmOPXlEDeAx6b4fWRC4nn84hHJ3fcF6goej/UFa8gjWdegj7nrpJSq
	gav3wm5qSMi/4dbTH5OCXA/1i9M7H8dWWEK1ll21h1Tctrd+41g5Bx8EHviJhVPB2knDowQIlWnUP
	UtU07GXNEqF3cUGl42QvzvSbUoig3E7C0661p0xlHC98brhtaL5wc0W/TgG7e+5jflDx/9bcVpRGG
	79zk+aR/mg40Y3Xk15KQQlolntak9IQ4225fCj+xE3K/1WP+KgnLlQXGaEi8XTGnfL2ODmnCr+qdV
	enIsHr6kLmH6KoY/lFow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihZat-0008Ob-3O; Wed, 18 Dec 2019 13:42:27 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihZaf-0008MZ-2d
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 13:42:14 +0000
Received: by mail-wm1-x344.google.com with SMTP id b19so1880708wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 05:42:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=d4mZXGCvD+6EnbswTu7ksRYdm4UYDrB4ruC6F1AgNC8=;
 b=vSSU4VP4UooPjqt2LRy/or7Vt22ojWOll9hfB0oO9Yqo5lrx5x4OyxENz29e4lG5xP
 UjrKNruwA59k3B7ckYCAd4uCMOmSz4WX75DkvPcftr40JhiLaR72BkNZ3v1bOzCnYjfH
 YE6JWzHOrYZ3iMIj6Fo0O2HDBRix8VbFfgr9kAxNLeZgpI3rZ1AFgsFYvb6ldyV5Y6XA
 cnHmc8LMP47OlrgjHj8AZsBI3t8mi2eOVAbNuDXTn//RisePxjzez7wLCXn7svuQO5rV
 0Q6cKXOJ6OfuaUGsztmLfdEGIwaLIF8q12EOZbswX3wqzqA4Z6YzcYHKI40vvr4Ocuiy
 HQ8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=d4mZXGCvD+6EnbswTu7ksRYdm4UYDrB4ruC6F1AgNC8=;
 b=kPyZHFMJEp2MI+XlKxf0c5tyEIbtzVFHeCjM4AJHUW9QJR1lgYutGtbnFxCzfsx3sr
 s7Nore8KiNph0jCw5AAgv0jT5MASUtg/K8pwtJSIcMp9UkaNfWRZolXklJMq/QqKq/q5
 Q4+d9cRUB4NVvw6mPPiApNQEPIw49jQu/PkVQFheU4nE8ZLJFMB2A07Qy3jVUZ2wwOUB
 J/F6kUJSRJDZlSyjMDiiDN/bfywcwQ1M+6e0YFstVzSAOQzewEXvivPHRbSPEd6SRLlA
 8flxpSK2cyAbnkw4964jtJt/g78eSo8Y7bY256aYyn/7H4VfoHWYm/rfk1RkP64M88Kp
 vq5A==
X-Gm-Message-State: APjAAAX87R5/VOwsDvNIp6Kg0i8nKaJ3mo/4X4e/JtZq2WVRDJTB4R1F
 j4LL92llhG+5GWpXP6pyvNQ=
X-Google-Smtp-Source: APXvYqx00MAdrTJa0b/IcwkLqVUMHW/YwCHT1c0x+FeTNgKpQh9jqa/Uvj/6SYnkwv03WobwQ56A3g==
X-Received: by 2002:a05:600c:22c8:: with SMTP id
 8mr3210705wmg.178.1576676531417; 
 Wed, 18 Dec 2019 05:42:11 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id t5sm2577688wrr.35.2019.12.18.05.42.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 05:42:10 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Joerg Roedel <joro@8bytes.org>
Subject: [PATCH v3 0/5] iommu: Implement generic_iommu_put_resv_regions()
Date: Wed, 18 Dec 2019 14:42:00 +0100
Message-Id: <20191218134205.1271740-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_054213_121437_4B667A96 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org,
 Christoph Hellwig <hch@infradead.org>, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Most IOMMU drivers only need to free the memory allocated for each
reserved region. Instead of open-coding the loop to do this in each
driver, extract the code into a common function that can be used by
all these drivers.

Changes in v3:
- add Reviewed-by from Jean-Philippe Brucker on virtio patch
- add Acked-by from Will Deacon on ARM SMMU patch
- rename to generic_iommu_put_resv_regions()

Changes in v2:
- change subject prefix to "iommu: virtio: " for virtio-iommu.c driver

Thierry

Thierry Reding (5):
  iommu: Implement generic_iommu_put_resv_regions()
  iommu: arm: Use generic_iommu_put_resv_regions()
  iommu: amd: Use generic_iommu_put_resv_regions()
  iommu: intel: Use generic_iommu_put_resv_regions()
  iommu: virtio: Use generic_iommu_put_resv_regions()

 drivers/iommu/amd_iommu.c    | 11 +----------
 drivers/iommu/arm-smmu-v3.c  | 11 +----------
 drivers/iommu/arm-smmu.c     | 11 +----------
 drivers/iommu/intel-iommu.c  | 11 +----------
 drivers/iommu/iommu.c        | 19 +++++++++++++++++++
 drivers/iommu/virtio-iommu.c | 14 +++-----------
 include/linux/iommu.h        |  2 ++
 7 files changed, 28 insertions(+), 51 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
