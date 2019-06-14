Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60ACD46B1E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 22:41:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FP806F/q5N+3tgD1V/zd2AIYeXmCfqs5A29nI7fQr/w=; b=L5xeXfB3Cu4nen
	8C0Y8mIlpc0udG5C72Ni4pveSOkGbqE2CaYMq75mWs59fM9Kzz4VDddshpLQp0LGqKFknx+8ElZqI
	AFKcZnrItyCWWdbcbXilnzmo2ZlTPyQyr+9fD4SYVskZ/tSRu0QBvmIaUGmsuYMJFGYtLNSlHV7G6
	ffV05xtcw+UuYx0Ez4eAv/BaXQyibxyJnX3OkF7GV+oS1C7rYH9VQtbeIK4zgxgONZ8nidzaz0fHN
	Y+AAlbf1eZFfz6/0ZYNKeaasv9zIdSzShPXJ1YDEgi6qMqBJ2m0UL3BDi2d7wQtkjBoW//37aoNtf
	sO6/ULIG6klvWPsYhrmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbt0b-0000KF-TE; Fri, 14 Jun 2019 20:41:13 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbswq-0004Iu-Mo
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 20:37:30 +0000
Received: by mail-pf1-x442.google.com with SMTP id x15so2109879pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 13:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6vrmhhZaEzM19h9Zlx4Mo9l21Q8Z/1tpB8JbdgO/6Q0=;
 b=Wx04VyZXSi7uEkn+qcquHj3EoBnN4m9FX9vJIgJ6cgeChrc10QLuaKpp7+rGSiDvGN
 Sk53gojxneIiAZ8hn+pPpC6+ljGcvOasLCV6lMxQw1+3d6Tp7bsi0XiXzlyoQRZ2r0b1
 rCNafT3ZKZUrDMLDEKZq4H1mERd0VafFAJUpw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6vrmhhZaEzM19h9Zlx4Mo9l21Q8Z/1tpB8JbdgO/6Q0=;
 b=dnrG6wkVU2682WgRKwFFGTDBNPtsW3+i9XW1J9HRsSQja1aZmHDFJotdJqOsm01mSP
 IU2fU/guXoTINXxPINN08lvdud5hh5+5zO1+mYvxfBi8xFDqx1g/Np11CiUiJNFmIn+G
 KWiDLyDKW6Ivpg3wVzXGo9AAbA8cMcK0GSR1fwBgLtZZ1UNw9wADTUIkN25zPv2W5cnj
 TT8jcm7FeTHRsCmb7+K1mM1aT4pv0hfFMOdKizzv3P9P/p9ce1UqvTMzhBbd3I37nYzq
 C9HZBeHUoqyRYigIzyCuxlotkqR1QcJf4KPFgE5mnlXqxlrsnbpjMVv/7Q1ldX7wuWh3
 5lAw==
X-Gm-Message-State: APjAAAW3RDVmzA7+z5MoctAmQmECk6oTLIFtZHuykTS7HJIH9gDdmUns
 YuWepK8YPOzZt1p0WSleJya0nQ==
X-Google-Smtp-Source: APXvYqzfpvXhgutGtT3dFx0GfX5kTtc8h04BE0rk7Qac+K8Ljsdx6ZzVsIxdzlj/CBTPmUiseBZrxw==
X-Received: by 2002:a63:6005:: with SMTP id u5mr28274041pgb.123.1560544639097; 
 Fri, 14 Jun 2019 13:37:19 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id x5sm3673187pjp.21.2019.06.14.13.37.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:37:18 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: Dan Williams <dan.j.williams@intel.com>
Subject: [PATCH v2 0/5] Read-only memremap()
Date: Fri, 14 Jun 2019 13:37:12 -0700
Message-Id: <20190614203717.75479-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_133720_834387_D6F8D949 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Changes from v1:
 * Picked up tags and rebased to v5.2-rc3

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


base-commit: f2c7c76c5d0a443053e94adb9f0918fa2fb85c3a
-- 
Sent by a computer through tubes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
