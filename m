Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0223F15C877
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 17:40:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mScSRaeVogGG3FWQtzZ3/10L4Y/Z8W8hJEEffUhHegk=; b=BmElASv+E9n06X
	n485CVvXhcULKImNgGcF3C/ivKZocy62f3EfBjg0Msd6PEWih4Potkyf+yXyL4yQ4OMJP5GUVR21P
	qpl4DTw1yyptba2oGTOVZiImEqo3BsF7+mNFpJOEtQbtFxXAoylfypHgbEWYVZkagrmi/S0qtLyev
	qi8h9VqBp4CnnFGteAs3JNt/gL7brTjzfKqerFyUqAKCYECod6IPi5HyGMntO5el9m/tvI21oQ/uI
	OSkGK0skKF2Pgela3yFhwaUNCHxVds/3fh9qZvZF6mRF/rgVOTERvLPbDO02P4xybxYx2awlzXl9v
	I30+1OEdevhVS0m+I9XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2HXK-0000R6-Rr; Thu, 13 Feb 2020 16:40:22 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2HX7-0008R6-Cy
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 16:40:10 +0000
Received: by mail-wm1-x334.google.com with SMTP id a6so7516184wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 08:40:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=U9NzKrnsK6arcq1Stt3BEs5RjKuMGTXTF0ludE/ZUXY=;
 b=GTU4/l0L1dLFrTu9OEv/PL4t7RvMbpp0XWwcP6zntmaWC5q3XEkJ5pOLF8yJ9XYRHd
 xjOrhXV5nTSbp/z+C9yy0mbL/OgKwy3/HgTgFl9Ru67LCp9inGm6KhQGawl/xgHb80x7
 Dl0L0fuRMkDOSg/CT9/3W4xnw4LycRzo/nIvHZ3KdAHmjuXde+gp6CfA60H54/TMSeqN
 TZMDvdfuWTctyKOHza/dvWNF1VJ4lJhD5bzidgTXu176rg4iGhm6VMfiPKzb1F5K6n5T
 nFLxjiGvNbIv7oLr+nZ3/6OKiq5zBkc81E6owMQYNbSwIAHoZi6S9OpjIot/CfnYbbVL
 XNrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=U9NzKrnsK6arcq1Stt3BEs5RjKuMGTXTF0ludE/ZUXY=;
 b=b4CqvS0ByaAK2INgWrbPrlfHl6IRyNn8xoWBA6s57biyUYvZdQNgXyKzzA802eHMU8
 X6wbQvzIw+BLxaupnOl8m4VmoTWnBXW9ChcIGLZVlQ4h/85uNDG8yifGAB4XoBj9Cap/
 JoD3LVXfPB9Nh/nAp6Tmb621Sk1vFjWteHZrVODiNwgKaJd+YbSD9vNmSFsVRseTvJyl
 biGoV4u6AOOVzRjm0am5Tp/e1/0JJjkrI8nOXmmFDsSm2zwaVJOugQ7Q8Za/zFY3YjQ8
 E+nC3eHh8rYXcP0JwCsBYySrmwaML7WPG6kIxFemMWlVvyw7uEFKEnwi7o/gnj/QfSA7
 NdUA==
X-Gm-Message-State: APjAAAX/11dHAvWDdxv8c4AzC0P52aYmCrFf/MLcX16lyCd/mjjuIs8h
 Y2OwX3NtJKf0XPaZl6+R7N6iRaNM
X-Google-Smtp-Source: APXvYqyw+7OwayCrFaSi1FHtOjrVg7Ijl4xMXki8QHzS05nbvc7DFuI+y8+pzrJHUJ0/jIgfdpXXPw==
X-Received: by 2002:a05:600c:2c13:: with SMTP id
 q19mr6875106wmg.144.1581612007455; 
 Thu, 13 Feb 2020 08:40:07 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id f11sm3567493wml.3.2020.02.13.08.40.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 08:40:06 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 0/5] memory: Introduce memory controller mini-framework
Date: Thu, 13 Feb 2020 17:39:54 +0100
Message-Id: <20200213163959.819733-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_084009_470144_DADCA2C6 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:334 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 linux-tegra@vger.kernel.org, iommu@lists.linux-foundation.org,
 Olof Johansson <olof@lixom.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Hi,

this set of patches adds a new binding that allows device tree nodes to
explicitly define the DMA parent for a given device. This supplements
the existing interconnect bindings and is useful to disambiguate in the
case where a device has multiple paths to system memory. Beyond that it
can also be useful when there aren't any actual interconnect paths that
can be controlled, so in simple cases this can serve as a simpler
variant of interconnect paths.

One other case where this is useful is to describe the relationship
between devices such as the memory controller and an IOMMU, for example.
On Tegra186 and later, the memory controller is programmed with a set of
stream IDs that are to be associated with each memory client. This
programming needs to happen before translations through the IOMMU start,
otherwise the used stream IDs may deviate from the expected values. The
memory-controllers property is used in this case to ensure that the
memory controller driver has been probed (and hence has programmed the
stream ID mappings) before the IOMMU becomes available.

Patch 1 introduces the memory controller bindings, both from the
perspective of the provider and the consumer. Patch 2 makes use of a
memory-controllers property to determine the DMA parent for the purpose
of setting up DMA masks (based on the dma-ranges property of the DMA
parent). Patch 3 introduces a minimalistic framework that is used to
register memory controllers with along with a set of helpers to look up
the memory controller from device tree.

An example of how to register a memory controller is shown in patch 4
for Tegra186 (and later) and finally the ARM SMMU driver is extended to
become a consumer of an (optional) memory controller. As described
above, the goal is to defer probe as long as the memory controller has
not yet programmed the stream ID mappings.

Thierry

Thierry Reding (5):
  dt-bindings: Add memory controller bindings
  of: Use memory-controllers property for DMA parent
  memory: Introduce memory controller mini-framework
  memory: tegra186: Register as memory controller
  iommu: arm-smmu: Get reference to memory controller

 .../bindings/memory-controllers/consumer.yaml |  14 +
 .../memory-controllers/memory-controller.yaml |  32 +++
 drivers/iommu/arm-smmu.c                      |  11 +
 drivers/iommu/arm-smmu.h                      |   2 +
 drivers/memory/Makefile                       |   1 +
 drivers/memory/core.c                         | 248 ++++++++++++++++++
 drivers/memory/tegra/tegra186.c               |   9 +-
 drivers/of/address.c                          |  25 +-
 include/linux/memory-controller.h             |  34 +++
 9 files changed, 366 insertions(+), 10 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/consumer.yaml
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/memory-controller.yaml
 create mode 100644 drivers/memory/core.c
 create mode 100644 include/linux/memory-controller.h

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
