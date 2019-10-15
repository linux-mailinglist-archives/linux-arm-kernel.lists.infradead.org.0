Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8F2D7B81
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 18:30:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q0qgUz9cNR0tZvLZDTFTMryRTYGskjKvrTxeZWKELEs=; b=LtN++1vvwYqwB1
	W2Rjpt6XKMgER+JAwfKxzKtWlDMnH58EZPOVf7YVf42P0HbAamU9SI330fiB1MlEiZp0/Em4+JNCE
	A0anma+adfWdGsnR/yYZmhhI4CUGhmHNxr2XpWxr1UoD+4slVCF0+ywoSn/nfH1nIu6M3KSAJcUW1
	UqYOatu82WU7MCn9GEF/4nbkIbdCNvJH46vQn71SYbTweJmyjsajvNu+GmAbzwqq582eS+inLB+wV
	s+10GdZt5K/6N29OXGNN5W6+jWcQsUuoEV2GTM02uyOsVRLJQ+tX4yPWKraXAehMHtWi/28f8U6s3
	2oamLpWDxVFsA0j1bX5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKPhw-0006YY-EN; Tue, 15 Oct 2019 16:30:00 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKPhn-0006Xd-2R
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 16:29:52 +0000
Received: by mail-wr1-x441.google.com with SMTP id n14so24606917wrw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 09:29:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wAzFGzcLL6WAf/z3cyyzneFzX1+V+N4hjXrOwquZa2M=;
 b=o3jhicXQtmz/DSOHvCOjnMHpFbXGymx2Ki6YJHEo/oMfzY26egQxgfjGfk9kZPDrZE
 5yAcYuRtfXxm4M1BktchOWRwOo8l/X8yr8H+rqG34ntMVZVINVqy/QIInxfUBQbfjdal
 U+m5NwKC2SgEopbD+0MjwJcmG/MAloEeuNyT2Eoom2y+Pc0Dhb411nx1OO9m+NOTqL5X
 sXOdDN9BFEE6n5dfWw/+CUSiqMkXZDqQfFVE7ai0ZE2g72S+Q864RwMXBGwQK0HyvKPJ
 IYbCZpkDW15WuGLU+9eGWXOyAmKk/DELFjG6unChFzgzbAzogAezXw0zPeJzDGUbd72S
 lYUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wAzFGzcLL6WAf/z3cyyzneFzX1+V+N4hjXrOwquZa2M=;
 b=jKTVCkkgW67sgMll1cbGk7jCH8q5uW0aH/AFLBEel49iAvWMIwSDZJ2I4pv4Jb8J4y
 8YEDPzhE2IwDCwo4dWFHHGF+GSRrbr6oczIcahu/OmtN+rekOa9K73mAEL6I5RRc9hBC
 HqKJMRjvNQSP7TwOA6SYkiS+/5GDPAntgB+b4s9nmtG39h8WWGTzK3P/a/Z+Zvwcv5hV
 ewEma5yB3Cy5AQrBm3MFR/fsS9rbz1c6WHG4OOrcEWPhNlh6usKl9miChKUBfoPLxCe0
 sR7+aCps4dk5E5ykmwWCyd2UWEgqBQQ2Au/SQ8nbzbQhqT0kg7EPbwDsLs9zqc4x5Dud
 feFQ==
X-Gm-Message-State: APjAAAUiIN2wU638o3yO9WNYeY65Giusi+bXSYhQo8x1D3sgjbii5A7b
 Z+qasZKVWC4hVSIYd9TODWk=
X-Google-Smtp-Source: APXvYqxY8m6ws0Ps/xNd97nA9lPYvlg6lXyRj0BOkqvzazf9zbQrmyXVV6Scivg7OpPzYnTBcU98ew==
X-Received: by 2002:adf:c98b:: with SMTP id f11mr33393097wrh.274.1571156988431; 
 Tue, 15 Oct 2019 09:29:48 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id q19sm45324010wra.89.2019.10.15.09.29.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 09:29:47 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: [RFC 0/3] Introduce memory controller mini-framework
Date: Tue, 15 Oct 2019 18:29:42 +0200
Message-Id: <20191015162945.1203736-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_092951_137380_7A94D005 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Will Deacon <will@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 iommu@lists.linux-foundation.org, linux-tegra@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Hi,

this series proposes the introduction of a mini-framework for memory
controllers. The primary use-case for this right now is to allow for
drivers that depend on the memory controller to defer probe until the
memory controller has been successfully registered.

One example where this is needed is on Tegra186 and later SoCs where
the memory controller needs to program some registers to associate a
stream ID with memory clients. This requires that the IOMMU driver
defers probe until the memory controller has been registered.

This is achieved by providing a trivial memory controller registry that
can be queried.

I haven't written up a full device tree binding for this, but if people
think this is a reasonable proposal, I can flesh things out. Currently I
use something along these lines on Tegra186:

	mc: memory-controller@2c00000 {
		...
		#memory-controller-cells = <0>;
		...
	};

	iommu@12000000 {
		...
		memory-controllers = <&mc>;
		...
	};

Thierry

Thierry Reding (3):
  memory: Introduce memory controller mini-framework
  memory: tegra186: Register as memory controller
  iommu: arm-smmu: Get reference to memory controller

 drivers/iommu/arm-smmu.c          | 12 ++++
 drivers/iommu/arm-smmu.h          |  2 +
 drivers/memory/Makefile           |  1 +
 drivers/memory/core.c             | 99 +++++++++++++++++++++++++++++++
 drivers/memory/tegra/tegra186.c   |  8 ++-
 include/linux/memory-controller.h | 25 ++++++++
 6 files changed, 146 insertions(+), 1 deletion(-)
 create mode 100644 drivers/memory/core.c
 create mode 100644 include/linux/memory-controller.h

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
