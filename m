Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 517F921BED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 18:48:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wN4nv6tTVVqSYZ8C6G+Qrj+rurUBnlYGL+fZwmGR9L0=; b=sS2Qgu2VhcODcv
	XXtzhAlDl9PLtdFnRYJfZN4lMj1ffi1NvyzsF+kkMX4Wmthh2r2z8eZpqxlB0mAd/8DWc6rRMSKOM
	EtUkcUfV33FWgrgPzFNdW2F+M0k4x8+YVOwdE3++f7LpPLkz1ToxR18Q6IqLySJkG4uTsVh2Woj6X
	NBbvSh2SuYFpGZheaCTm319BMRHqDN3GuSvqLwG+OsfveKsuskRhglR+Uw7EDqjjk8cqNsyG2EVri
	kVv5l4Q0+Wye5rjszp47DFIzI6Paft950iKDJVJFglScufZ0C46XaSeTQ+V8qMHQ6baahmiURBQUY
	nPB+cb/1+54ZZzp60qjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRg1Y-0007TA-Ei; Fri, 17 May 2019 16:48:00 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRg1P-0007S1-VM
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 16:47:53 +0000
Received: by mail-pf1-x444.google.com with SMTP id y11so3932832pfm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 09:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZEOBQ+tiRCBCDhxOnqUK3ak9dZiYIaMI5j8XdfHoJPo=;
 b=apNC443IjOu26zOUT73921FGrnZ1n43OPBcwr8RIvJ+ZwA785Xj8ae/wdc1rrNkXDy
 23fQnlF+WLg7ie94sC7Saky9o7IuCQHw5EtDYIwfJ3Hhg5BFCSLEIgSAq/ijzHWjvVtg
 gNLSxE2QaGgEAbJZHjlXf9OVihYSzy2yxrfjA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZEOBQ+tiRCBCDhxOnqUK3ak9dZiYIaMI5j8XdfHoJPo=;
 b=WcfsiB6HqxGPyG1OV//7H3BInJ8xsyqXgjY7vRZ62MxWS7H3A3NLwXfWTL+ccaxUrf
 qDl6d7u2ovbQTCH4rdtiaZhMNuycfDurTMytxjMBAddj8AUGxyPg3s43SFRzw8wWNJoB
 R/mdE+OH/d3fwMl88gtIqSW0+6YF0H3mlo09qeerTCPETAK21sBPBCn4SEmgkXTUqDDl
 eRHlk/AcJKNXgf+KoqfmCMND0ktPi5RXsN4p72kLDK0bbGGOYL4qTIVlneomMnNJ1zAM
 BoBgG1r2c03x3lg7ZlK9k4YzM09IUuKmISzAgvS9tCddr8cPE95vh9SM6VNSc2wKRWRQ
 hZEA==
X-Gm-Message-State: APjAAAWek8lOtrT5K2LXoCvR+pr5AJhCdY3MOuQK3C8+EPo7kF5BrEQ/
 lhiEna0wnmZlT3OvmP1HR/fsxg==
X-Google-Smtp-Source: APXvYqxzWh7+qSyhy1qYyWLoyY4I2do1NdTj92SZJu+yMhoeS1eAS3iHOrpPbfYELyOXmcFNaUiphA==
X-Received: by 2002:a63:170a:: with SMTP id x10mr56459139pgl.355.1558111671057; 
 Fri, 17 May 2019 09:47:51 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id l141sm12229810pfd.24.2019.05.17.09.47.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 09:47:50 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [RFC/PATCH 0/5] Read-only memremap() proposal
Date: Fri, 17 May 2019 09:47:41 -0700
Message-Id: <20190517164746.110786-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_094752_036792_314FB4BB 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, Andy Gross <agross@kernel.org>,
 Evan Green <evgreen@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series implements a read-only version of memremap() via
a new MEMREMAP_RO flag. If this is passed in the mapping call, we'll
try to map the memory region as read-only if it doesn't intersect
with an existing mapping. Otherwise, we'll try to fallback to other
flags to try to map the memory that way.

The main use case I have is to map the command-db memory region on
Qualcomm devices with a read-only mapping. It's already a const marked
pointer and the API returns const pointers as well, so this series makes
sure that even stray writes can't modify the memory. To get there we
introduce a devm version of memremap() for a reserved memory region, add
a memremap() flag, and implement support for that flag on arm64.

Cc: Evan Green <evgreen@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>

Stephen Boyd (5):
  reserved_mem: Add a devm_memremap_reserved_mem() API
  soc: qcom: cmd-db: Migrate to devm_memremap_reserved_mem()
  memremap: Add support for read-only memory mappings
  arm64: Add support for arch_memremap_ro()
  soc: qcom: cmd-db: Map with read-only mappings

 arch/arm64/include/asm/io.h     |  1 +
 drivers/of/of_reserved_mem.c    | 45 +++++++++++++++++++++++++++++++++
 drivers/soc/qcom/cmd-db.c       | 14 +++-------
 include/linux/io.h              |  1 +
 include/linux/of_reserved_mem.h |  6 +++++
 kernel/iomem.c                  | 15 +++++++++--
 6 files changed, 70 insertions(+), 12 deletions(-)


base-commit: 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b
prerequisite-patch-id: 62119e27c0c0686e02f0cb55c296b878fb7f5e47
prerequisite-patch-id: bda32cfc1733c245ae3f141d7c27b18e4adcc628
prerequisite-patch-id: b8f8097161bd15e87d54dcfbfa67b9ca1abc7204
-- 
Sent by a computer through tubes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
