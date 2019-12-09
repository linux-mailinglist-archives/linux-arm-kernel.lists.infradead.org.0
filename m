Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8461116FE9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 16:08:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QlJakxOViHgltbjN7eGtFZcmFK4Tjy+fLiTohtDXzAI=; b=qJLuE+iEBy0cNF
	qlmCKoF1GB8NHfNT8daYW0B8XfM/vjMi5zSpCGecA9Bq3Nylu9X02fBKrmmZYwHXwetBM5e3jWNO4
	9Y6/Nxnqu2PVJnuDC9/89rbB0bQBlswKx6B8YY0KM+zSbztjlLkAOVJki9BgEkxBzBIkCkrm1knAg
	tPTWzqKosfJpo8pFv8MrKa7wzNxT9rPQ077Zbn5VF4JCwXrIh6BOmhVdaWkaQBXsRrIrw0a7cpcAF
	F8E5clATgG9NkcEz/WuK7P+A3D8K/ERvEnmVGx5MvwTqdCSSW7r3/y8kqrwpXr6wSfUH42fpK0BwV
	ABYHBhFjDtu0u/mBa5Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieKe0-00077y-Pv; Mon, 09 Dec 2019 15:08:16 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieKdi-00076D-6C
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 15:08:05 +0000
Received: by mail-wr1-x443.google.com with SMTP id t2so16634681wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 07:07:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=i9S04JDPyYWqmVYsR9CCUAiqutorZgMZt/OWk8Z0jLs=;
 b=DjKqp/mLV5RlPNLnYcqvmWnPEEETVXv4EyspYbunjaTfFLHBv7o5xFaaqx4LXgM5Mf
 b16Ly0UR1viJI8Hh0TmcG2lUNMBuWy2Rm7a/MzhTtdcI4bj0rl+kffI7NRl2TpDPI1vG
 8xRDod5/4Y0wiog27SE3AJnel1tAA+Gd2tXo3WXl3DOh5vuVHdYqkPCEg5aYZHgoPrIM
 QUMuEJLYU4v+sRUVzQbtNN0ZtzhYN3L83ljzD6p3N1EuM+m5pKgw0AKTkradaohdB9Ei
 ePJZTQV5Z+I8vShHTn4VqFdZiyPh6DFyHqy+viEgKg2VNqPKtHZlSdJGqXXNgDvLSs9O
 x4BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=i9S04JDPyYWqmVYsR9CCUAiqutorZgMZt/OWk8Z0jLs=;
 b=j5ByhLThN0E6P5+XmGOgZrbzBTvd3ksC9RLjLISM0lxigeCq+tlRcJ0HZ+xNMhHAV0
 3DEBPQCtg2SxhbPUOWXZhEKz6EK+3AdGrhzuWs7LzbyKCCBwe+OW0PfPBKqo8ZesXbCG
 n0lzoy9V66iJlL0+pORgo2pn48KzlZTyrxAr/SJD7yMIitRM8RmT84UXtcrWhr9wvLh2
 5McDkn1sTl4/tn/W4vJ1aZdsr1TAG6MAiWyv8SYMR240qpF9fLvmHHsSaX/zszOlaZY7
 8k3XnEpVAsthBa0BCUMjYyfrRHBxnMO77hhbWvBi/PxKrYUieWol80pmGwHNHnIWnBvr
 1f4g==
X-Gm-Message-State: APjAAAWip6JtUvH1e3/8e+upH+YKtgVoIlmQ7V34BfaOhj6Ybu/Y3Djs
 dZApVpWFRu01W0AN3mhFvF0=
X-Google-Smtp-Source: APXvYqzGieSGCM1eahc8eoNyjBUi4olOJR8GjSmssbMHpICHRsLwq00wg/cxhK5N8DYZAEF0nDUkIw==
X-Received: by 2002:adf:e6cb:: with SMTP id y11mr2728041wrm.345.1575904076660; 
 Mon, 09 Dec 2019 07:07:56 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id l7sm27588659wrq.61.2019.12.09.07.07.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 07:07:54 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Joerg Roedel <joro@8bytes.org>
Subject: [RFC 0/2] iommu: arm-smmu: Add support for early direct mappings
Date: Mon,  9 Dec 2019 16:07:46 +0100
Message-Id: <20191209150748.2471814-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_070758_817996_059CF21A 
X-CRM114-Status: GOOD (  18.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: linux-tegra@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 iommu@lists.linux-foundation.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

On some platforms, the firmware will setup hardware to read from a given
region of memory. One such example is a display controller that is
scanning out a splash screen from physical memory.

During Linux' boot process, the ARM SMMU will configure all contexts to
fault by default. This means that memory accesses that happen by an SMMU
master before its driver has had a chance to properly set up the IOMMU
will cause a fault. This is especially annoying for something like the
display controller scanning out a splash screen because the faults will
result in the display controller getting bogus data (all-ones on Tegra)
and since it repeatedly scans that framebuffer, it will keep triggering
such faults and spam the boot log with them.

In order to work around such problems, scan the device tree for IOMMU
masters and set up a special identity domain that will map 1:1 all of
the reserved regions associated with them. This happens before the SMMU
is enabled, so that the mappings are already set up before translations
begin.

One thing that was pointed out earlier, and which I don't have a good
idea on how to solve it, is that the early identity domain is not
discarded. The assumption is that the standard direct mappings code of
the IOMMU framework will replace the early identity domain once devices
are properly attached to domains, but we don't have a good point in time
when it would be safe to remove the early identity domain.

One option that I can think of would be to create an early identity
domain for each master and inherit it when that master is attached to
the domain later on, but that seems rather complicated from an book-
keeping point of view and tricky because we need to be careful not to
map regions twice, etc.

Any good ideas on how to solve this? It'd also be interesting to see if
there's a more generic way of doing this. I know that something like
this isn't necessary on earlier Tegra SoCs with the custom Tegra SMMU
because translations are only enabled when the devices are attached to a
domain. I'm not sure about other IOMMUs, but in the absence of a struct
device, I suspect that we can't really do anything really generic that
would work across drivers.

Thierry

Thierry Reding (2):
  iommu: arm-smmu: Extract arm_smmu_of_parse()
  iommu: arm-smmu: Add support for early direct mappings

 drivers/iommu/arm-smmu.c | 195 +++++++++++++++++++++++++++++++++++++--
 drivers/iommu/arm-smmu.h |   2 +
 2 files changed, 189 insertions(+), 8 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
