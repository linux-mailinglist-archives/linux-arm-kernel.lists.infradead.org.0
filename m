Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6933DAEF32
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 18:09:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZafKNIfAWlOmhujhXMssyOcTUlngYpemy5vqWrMs9W8=; b=UltYkkcUfY2Jqf
	C9sQZ7jLKtu6bVOwRiRra45nLUHCwTOa61dUvIkSNC0dOheuqRU1UHW/opTox2jeXfVBxSNWA1lg6
	p3xql+5ZY4twOPH14Zdt5i66FXI8Wn8kHnSRRMbwj9Uq/hTUGaINjOCrvdXQvcLr3GoxRWe8Gn45F
	B+ixbT1Li8l8FEiGwBOzMLONY7zt299ZYacMj1xNJWwYHfpUm3RMkDmv0AV+diLmGjRE0z2JGLTHb
	P6rbmYNZxXxi+vzVCXDX4QTWM36atQPhfQnWn6aGD3D2Il/Lhi8p5+854stk/sEIXdyTWDkVluqGX
	nOabmgJyDpZGJbaJSYHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7ihh-0004LH-BD; Tue, 10 Sep 2019 16:09:17 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7ihV-0004Kb-G9
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 16:09:07 +0000
Received: by mail-pf1-x441.google.com with SMTP id d15so11776680pfo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 09:09:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TUvxJ7wlmXdEjdS8Ji+2ki9BT3REdqo3NpskuD2RAZE=;
 b=YJDh2YLeoTKo99EIHf/GbAcGlRVVjeHebFXD80CmOEXk6TDGBbj/Uh5lPLn3Z2Y21x
 gTixE7rHSZVLLXSJ6GbQCyzq9QYepRhuOnus3wPSwsY1vxwywof4CRlDE9o5bB6kFdRh
 L0aDQx9uJi6dcUYgOueyyIdi7vxhQ8v6gGLkc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TUvxJ7wlmXdEjdS8Ji+2ki9BT3REdqo3NpskuD2RAZE=;
 b=jmB+QuX+TyK4VIxvlGRDfB9Qk50Fw4D7nA2OcTgS1UDeTRL9T+/DgxYEWWTz4gPXEP
 MdfpplATMJ7xmCNEq+pkCuzKW9/CmuU1fXzzy6qd4GC988qV2XMG0RG90bdu4SfBFAbx
 qGhqrmI5RkSDU90dZsxE+tkRXwkdKaY7qHCreVTape4cyPv+6WrNfCxFJtYNDchX3Imv
 poUPjaZM2Et5C4LgS/yAvPtg9BSg1tFGnir7m7OH41ZRvRhrtwq1bkxLSr/fLXnfWeGR
 /8I1/E/Sg8VkgAPGiAWo4ohtm1CNETWN/FpEzixmuMTSy4qcpZE7yIxzv7YoAwCGeiKn
 cnlA==
X-Gm-Message-State: APjAAAWWdDmSfyBOGwtz/hEP9WfvM7QLCpNyJgk2Kmv7Vc/2VD1XX8MY
 m2+GPI40IsmDZn6oOs1KPilX0A==
X-Google-Smtp-Source: APXvYqwv8qruQZ4KH/LAzFeFB5Fw6fLmcphoP8mGiPT4myBOZsUnw+zQpjwu6W6Ar30JnBYs9mBOxQ==
X-Received: by 2002:a62:64c9:: with SMTP id y192mr37931196pfb.6.1568131744630; 
 Tue, 10 Sep 2019 09:09:04 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id em21sm106088pjb.31.2019.09.10.09.09.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Sep 2019 09:09:04 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: Dan Williams <dan.j.williams@intel.com>
Subject: [PATCH v3 0/5] Read-only memremap()
Date: Tue, 10 Sep 2019 09:08:58 -0700
Message-Id: <20190910160903.65694-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.23.0.162.g0b9fbb3734-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_090905_567074_6241392A 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Andy Gross <agross@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
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

Changes from v2 (https://lkml.kernel.org/r/20190614203717.75479-1-swboyd@chromium.org):
 * Added a comment to kerneldoc for the new MEMREMAP_RO flag
 * Rebased to v5.3-rc1

Changes from v1:
 * Picked up tags and rebased to v5.2-rc3

Stephen Boyd (5):
  reserved_mem: Add a devm_memremap_reserved_mem() API
  soc: qcom: cmd-db: Migrate to devm_memremap_reserved_mem()
  memremap: Add support for read-only memory mappings
  arm64: Add support for arch_memremap_ro()
  soc: qcom: cmd-db: Map with read-only mappings

Cc: Evan Green <evgreen@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>

 arch/arm64/include/asm/io.h     |  1 +
 drivers/of/of_reserved_mem.c    | 45 +++++++++++++++++++++++++++++++++
 drivers/soc/qcom/cmd-db.c       | 14 +++-------
 include/linux/io.h              |  1 +
 include/linux/of_reserved_mem.h |  6 +++++
 kernel/iomem.c                  | 20 ++++++++++++---
 6 files changed, 74 insertions(+), 13 deletions(-)


base-commit: 5f9e832c137075045d15cd6899ab0505cfb2ca4b
-- 
Sent by a computer through tubes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
