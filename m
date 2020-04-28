Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 467F51BC78F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 20:10:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9PkeKAee6zeVWjSy9zkyK1uW9nsO0lpMUBPLQyYBwGQ=; b=BFtXwdtXCoq10k
	Jox1pRi1zxpcUXWNxYgObig1lO8hzHeEWnDKbP9t7XMIubwrqqZqcfvOPoGqZZ79MBFHfIeaJBn9X
	ZXjyPkDzI1Vim4QEHD6VfEdfdo593i6B4pWgYzWJFiedYzBLRbD7O5YvI0nEFz3H9h2IlPL092t/w
	hNmFlxzZPDy5rn+ScXeW1deMbL6Fpp7MU7xulu44WDA5OsRiLYVLgcA4IwwDJPTZCGqcUpbgw3I22
	DLF+25iCKUcmPBkrYRb6erP8rDK2grt5QhncPMWfoj9MWoa2Vb+ih88xgeIh1BAlezfSFvADZiteG
	jeem3/u9bqgQlE6Lni+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTUge-0005d8-V7; Tue, 28 Apr 2020 18:10:28 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTUgO-0005Z1-Ug
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 18:10:14 +0000
Received: by mail-pg1-x544.google.com with SMTP id r4so10762357pgg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 11:10:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YR7svNgZLAa/GMNq00Z1PiEarel0TnzPpj7HuP93QpM=;
 b=jwGWffsD4IH6FHp9Z9ZmMHmEBsm/dQLaHbL3mMwSRiS95j4klMWLaCkN7rQjMN4Ffu
 /su/x7WQH6L/v3beF0mrj0vm9456iZulgBznPQeJfgUKZXCn3vP0dDRGM/zb71TAgYlz
 tVa4FUkgnhzNXt5j3ZpZ+iiIYUEBe+ya1E2B4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YR7svNgZLAa/GMNq00Z1PiEarel0TnzPpj7HuP93QpM=;
 b=aCfpltt6XvCerztze/JOVLcq/Zp3rH5+xA44CLx5N6IiEEw08BJtkE/n5VPPbhkZju
 kht5dXeTgvNLqQqT/IwT78bsrSxzVi24F663/x4gYhlbNxMtCL6s8c9MwtOc8xxMw9FT
 0NcGF+OFXv6/uK+Yl2/+4d6ZE6GX1JWJCH70VhmmyyQ2nohRpbUe0fkIPtU/pnzIip5K
 SBNLZsbYolq5P8uu9/N5/WoesLhWZEvmmWGkCoNoyjragRJc4NnvpfSRAGs54/vILHr3
 wCSF8WnMuKXxF5LBsFpEXzdURdIo4kqT6U4S5YTyPb7gHeW4uj7Y5cndCCwJ3WOVU/Zq
 uNIw==
X-Gm-Message-State: AGi0PuY/kESn67/9VOL5zvmT8f6Y2QR2QRknoJo624Red6ew8JfVT8mA
 Kdra+hfByIMWMnKziDLC2/SnFQ==
X-Google-Smtp-Source: APiQypI9HqVyd1i7Zguj/Ug8tJ6Cif/uN5YcUFbKGqXOIuN5Gf/zPIyJZUoGWDwNsgTGF5Jv7wWhng==
X-Received: by 2002:a63:5853:: with SMTP id i19mr27344873pgm.288.1588097411858; 
 Tue, 28 Apr 2020 11:10:11 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id h197sm16260910pfe.208.2020.04.28.11.10.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 11:10:11 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH v2 0/2] Minor sparse and style fixes
Date: Tue, 28 Apr 2020 11:10:08 -0700
Message-Id: <20200428181010.170568-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_111013_039814_8CC66460 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Douglas Anderson <dianders@chromium.org>,
 Mike Leach <mike.leach@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I got a report that kcalloc() didn't exist in coresight-cti-platform.c
on arm builds and that looked like we didn't include very many headers
to get prototypes of functions like kcalloc(), etc. The first patch fixes
this problem by including the headers and then the rest of these
patches fix minor sparse and style issues that I saw while looking
through the coresight directory.

Pathes based on linux-next.

Cc: Suzuki K Poulose <suzuki.poulose@arm.com> 
Cc: Mike Leach <mike.leach@linaro.org>
Cc: Douglas Anderson <dianders@chromium.org>

Changes from v1:
 * Dropped patches that were applied
 * Added more includes to cti.c and priv.h

Stephen Boyd (2):
  coresight: Include required headers in C files
  coresight: Avoid casting void pointers

 .../hwtracing/coresight/coresight-cti-platform.c    |  8 +++++++-
 drivers/hwtracing/coresight/coresight-cti-sysfs.c   |  7 +++++++
 drivers/hwtracing/coresight/coresight-cti.c         | 13 +++++++++++++
 drivers/hwtracing/coresight/coresight-cti.h         |  8 +++++++-
 drivers/hwtracing/coresight/coresight-priv.h        |  9 ++++++---
 5 files changed, 40 insertions(+), 5 deletions(-)


base-commit: 62eb0c79662ccb3c09c3724d0d4df2501cb8277c
-- 
Sent by a computer, using git, on the internet


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
