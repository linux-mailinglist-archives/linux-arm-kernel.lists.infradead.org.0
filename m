Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42138A17F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:18:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=docUHH79ILoyVeBKvoQdshyNSBI8BQQv2I2V/SD8OJU=; b=jYPISwaAQm13e4
	u8jtEsN394LlWzRIQmQ8nOKcPi+iux7hk+RjINkkqC5zPWMg4yf0e4WeidMAou6oBc3kGn18ipn44
	e/pvBFcIRdF3q+oyDiSmJ06pdDe0fIOPT9oJLVS5qSEnXGH0cRVB/Bx8gu4SfzV5z/qTTpDXuheUs
	/yhIsQ7VVoe2WuzrgfZgShdrDD8TROW3i6g5LQtdakJNddaiPSoBDGoaF1URO75VwWlxLBl0h3Gmo
	Y4YdIyEkfg6HhvORSh+Wmi/zqwT7M7EUDVEl3KbfNCG1/4UAY3yDykY/8zjUhEZG2N4w7ApxmiNrn
	sLeot7z14IBAGBHXT8qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3IRM-00007Z-KB; Thu, 29 Aug 2019 11:18:08 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IR9-00007A-GU
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:17:56 +0000
Received: by mail-ed1-x544.google.com with SMTP id x19so3589523eda.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Qw9TI/oO75bsTCfpr+cHjs+CGmEWrEJqDhW1Nr5mPhI=;
 b=S8Ri4oDngL/CuKTznOuFJut4kaqtLc9m6OEPBmcrmC9PTg98R4l6Ntojeqare4DfFw
 Ue+QAiofTOSeEn3E0/BxjOQLgEcmVTFzWxXf/RbFaYze8UQYLYXsmo8idr+2My4VQVHO
 xiQyF7kbM5iv+RsDvCU/qFLiwosQ4qE2PgBErmbwLqhtHhVnhy9ZxvLpK5PvWZK8+ra5
 TqQdfoKN+BbrZfXu4iysVRj4aZPP5GWU7rDJ2seuoGic6i98kGKTZABTaRT9p4b2Clsk
 wvL2evwLuZbxEu0B6knoORNMtSB0oGq3Ul3kTNAEVFmJUdo/iu0piqtwO8RTCzpdtAta
 +sNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Qw9TI/oO75bsTCfpr+cHjs+CGmEWrEJqDhW1Nr5mPhI=;
 b=XwcQeZPW8GRIi5MccJ9oujTIHF4jauDrnFkZ8a7vB3AtLw+6gcUk8ccjqoBTd0aAAl
 UadU2L7S0v93sWlXovpk68VIs16npL+N/qeXTrMsZMfA3bi6ju4p62eTu3DX31rqcbed
 1Jnob9kpuY1W0HK8Iz3gnbjIgfJIymCKfjlAfr4jo0KRQkmFeZrpZy1lZfExBtPXUgSN
 7D/omtHuVh7VnG0jCW7RI6s5Y475VZwEWaDfVnS7EJeVXVoFrjHz4BPigcCmOONkzX+O
 OdAqdHDeVx6LlRKg76SD1ZB91yPgnYWBUSeztNbdZR1Q6zdsZFmHAMQgvOBfBJufGloq
 nmCw==
X-Gm-Message-State: APjAAAXviLg6yBBC82e+5ivYK0m2WbdYG7FJy4y0LN1WHUvfBf+/2ESD
 UuN0ZNSaOgoWfU65lm86bxw=
X-Google-Smtp-Source: APXvYqzf3VpKDNdxCgnDwyw+83rYA047IH5YU4ry9v57vAHMKEZsuLCcwInPPOQgF729h0A10YkaTw==
X-Received: by 2002:aa7:c81a:: with SMTP id a26mr9175586edt.26.1567077473918; 
 Thu, 29 Aug 2019 04:17:53 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id y19sm385592edu.90.2019.08.29.04.17.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 04:17:53 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Joerg Roedel <joro@8bytes.org>
Subject: [PATCH 0/5] iommu: Implement iommu_put_resv_regions_simple()
Date: Thu, 29 Aug 2019 13:17:47 +0200
Message-Id: <20190829111752.17513-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_041755_551297_C24C745B 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org, iommu@lists.linux-foundation.org,
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

Thierry

Thierry Reding (5):
  iommu: Implement iommu_put_resv_regions_simple()
  iommu: arm: Use iommu_put_resv_regions_simple()
  iommu: amd: Use iommu_put_resv_regions_simple()
  iommu: intel: Use iommu_put_resv_regions_simple()
  iommu: virt: Use iommu_put_resv_regions_simple()

 drivers/iommu/amd_iommu.c    | 11 +----------
 drivers/iommu/arm-smmu-v3.c  | 11 +----------
 drivers/iommu/arm-smmu.c     | 11 +----------
 drivers/iommu/intel-iommu.c  | 11 +----------
 drivers/iommu/iommu.c        | 19 +++++++++++++++++++
 drivers/iommu/virtio-iommu.c | 14 +++-----------
 include/linux/iommu.h        |  2 ++
 7 files changed, 28 insertions(+), 51 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
