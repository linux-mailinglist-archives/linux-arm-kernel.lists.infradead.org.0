Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 087364BFA1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:30:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Ii0Uv6CG/u8vzDT8Owx2o4o9XXiSedk0fM9yPdqNtaM=; b=IMN
	qE8p4zV5MuaPqNU2XBTgushgVougsary7V8oa1ROF/MM6vEX9b6iFY+FymZT8F4RMdv2ibvg5HvQj
	KEJ45k/1YyCAKsqnIFT70Lu6fAtmPflsKTWRgWzZEbmx9e58qIJqFtF6JydtoShGtWiIEfuV4y4jQ
	zxj/P+tObb/v1pOV3as/jtsLZTzD8L3qnNluRPPHO1whb7cdv/j3phDMfledkNLxF7cjdtv0P3tsM
	Y/S+wvCimwJ3ZuPb9c+ON9Rm0MisSI9+z68Ngw6qfROG4FmkXWdvQPXRsgK3ke+KQeSOlYvYABEEd
	gokc0yv5YAP+SXatlUrLw6m8HVIrr8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdePg-00072f-6b; Wed, 19 Jun 2019 17:30:24 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdeP9-000719-VW
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:29:53 +0000
Received: by mail-pg1-x536.google.com with SMTP id f25so34682pgv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=oP0aTjMbfF7JmtnE+SXwgb+qHNolCe1d9zIVqsRs9Ng=;
 b=sR/yZJ5o6p13zsBxCBQo1oUQjWtK8kA7ApzzkKr+9DSVhD6uf/331yYwByysZ7iBtK
 LH8n6U0i8A3u894rv8Et2+TeQKqksin60eD9GVj0t8CJMhQItyDhlnCH7MvoU8BYYeaj
 5CPiqQ+G0MXPLInV5/I775b89xaoRcPAQpvds73KgCv8H+2Rr9V7QsN/uhSdZ3RIn4WM
 +bMaulE/vIEF1ttSC12Fa/X2P77ag4Y86yOCLDNY8gUqo0aOUO2xuRiW0sx8PptFRzx4
 LCMtcRfgNXlWpw7q64OMGQJ4saRUMFlyJWklsOVzKU7oEf/7CsRoDDPOaC9O1Tqt+hn6
 WUHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=oP0aTjMbfF7JmtnE+SXwgb+qHNolCe1d9zIVqsRs9Ng=;
 b=uiTz3bZ3u5qpkH6ROvbtkM4qCIIJUcZuJH5MTHPJSuwkoFP2h6+NHCTQjtXCfW8dcH
 dNdLNqBMkWn+Sr9A8FeAlBjPogKSxKkjP+cT7Hg5moGqZ7ScRZXTKub7mU9vRPQAup8X
 eMIZR+Ep2jr867mf59CAmMtMaPfNdrXvWz1Rkfmnq/R8XQ7tMBFxTnKEi2gAJoyXxEHa
 enB3w2YPTGrwxwCD6A3eU1TEspHP5cJqQLtagLO1t2r07l98SpIpn5Vr6vkmL5yI3JUD
 9aOBdn56fF8adSQVhkOYsEiqsCl+Ko9JeRYwcvQr5UFiaHml1CgEbK532ez/2syNVFIV
 Wb9A==
X-Gm-Message-State: APjAAAW9YH4tyBR1db26Wjdwra0bZQW9UqoRntQ/tb51OiXT4jSSNI3b
 YrB60zH2jyOrGzxuW3t0fDqx+jzHm33wkw==
X-Google-Smtp-Source: APXvYqxfFptsy1QCgQSGQIgT0hCRp3MNgFkBIfvnSN24/qxBZNLggQO+XPbbMhSBWOpRX+1lfC8tjw==
X-Received: by 2002:a65:44c8:: with SMTP id g8mr8706586pgs.443.1560965391078; 
 Wed, 19 Jun 2019 10:29:51 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.29.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:29:50 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 00/45] coresight: next v5.2-rc5
Date: Wed, 19 Jun 2019 11:29:04 -0600
Message-Id: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_102952_046667_D93CCDB0 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:536 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Good morning,

These are the patches I have collected for the 5.3 cycle.  Please consider
having a look when you have the opportunity.

Applies cleanly on your char-misc-next branch (312d362c6ae4).

Thanks,
Mathieu

Arnd Bergmann (1):
  coresight: platform: add OF/APCI dependency

Dan Carpenter (1):
  coresight: Potential uninitialized variable in probe()

Mathieu Poirier (6):
  coresight: etb10: Properly set AUX buffer head in snapshot mode
  coresight: tmc-etr: Properly set AUX buffer head in snapshot mode
  coresight: tmc-etf: Properly set AUX buffer head in snapshot mode
  coresight: tmc-etf: Fix snapshot mode update function
  coresight: perf: Don't set the truncated flag in snapshot mode
  coresight: Use coresight device names for sinks in PMU attribute

Suzuki K Poulose (36):
  coresight: funnel: Clean up device book keeping
  coresight: replicator: Cleanup device tracking
  coresight: tmc: Clean up device specific data
  coresight: catu: Cleanup device specific data
  coresight: tpiu: Clean up device specific data
  coresight: stm: Cleanup device specific data
  coresight: etm: Clean up device specific data
  coresight: etb10: Clean up device specific data
  coresight: Rename of_coresight to coresight-platform
  coresight: etm3x: Rearrange cp14 access detection
  coresight: stm: Rearrange probing the stimulus area
  coresight: tmc-etr: Rearrange probing default buffer size
  coresight: platform: Make memory allocation helper generic
  coresight: Make sure device uses DT for obsolete compatible check
  coresight: Introduce generic platform data helper
  coresight: Make device to CPU mapping generic
  coresight: Remove cpu field from platform data
  coresight: Remove name from platform description
  coresight: Cleanup coresight_remove_conns
  coresight: Reuse platform data structure for connection tracking
  coresight: Rearrange platform data probing
  coresight: Add support for releasing platform specific data
  coresight: platform: Use fwnode handle for device search
  coresight: Use fwnode handle instead of device names
  coresight: Use platform agnostic names
  coresight: stm: ACPI support for parsing stimulus base
  coresight: Support for ACPI bindings
  coresight: acpi: Support for AMBA components
  coresight: acpi: Support for platform devices
  coresight: Add dummy definition for of_coresight_get_cpu()
  coresight: tmc-etr: Do not call smp_processor_id() from preemptible
  coresight: tmc-etr: alloc_perf_buf: Do not call smp_processor_id from
    preemptible
  coresight: tmc-etf: Do not call smp_processor_id from preemptible
  coresight: etb10: Do not call smp_processor_id from preemptible
  coresight: etm3x: Smatch: Fix potential NULL pointer dereference
  coresight: tmc: Smatch: Fix potential NULL pointer dereference

Wei Yongjun (1):
  coresight: replicator: Add terminate entry for acpi_device_id tables

 drivers/acpi/acpi_amba.c                      |   9 +
 drivers/hwtracing/coresight/Kconfig           |   1 +
 drivers/hwtracing/coresight/Makefile          |   3 +-
 drivers/hwtracing/coresight/coresight-catu.c  |  40 +-
 drivers/hwtracing/coresight/coresight-catu.h  |   1 -
 .../hwtracing/coresight/coresight-cpu-debug.c |   3 +-
 drivers/hwtracing/coresight/coresight-etb10.c |  78 +-
 .../hwtracing/coresight/coresight-etm-perf.c  |   8 +-
 drivers/hwtracing/coresight/coresight-etm.h   |   6 +-
 .../coresight/coresight-etm3x-sysfs.c         |  12 +-
 drivers/hwtracing/coresight/coresight-etm3x.c |  46 +-
 drivers/hwtracing/coresight/coresight-etm4x.c |  37 +-
 drivers/hwtracing/coresight/coresight-etm4x.h |   2 -
 .../hwtracing/coresight/coresight-funnel.c    |  36 +-
 .../hwtracing/coresight/coresight-platform.c  | 815 ++++++++++++++++++
 drivers/hwtracing/coresight/coresight-priv.h  |   4 +
 .../coresight/coresight-replicator.c          |  43 +-
 drivers/hwtracing/coresight/coresight-stm.c   | 118 ++-
 .../hwtracing/coresight/coresight-tmc-etf.c   |  43 +-
 .../hwtracing/coresight/coresight-tmc-etr.c   |  80 +-
 drivers/hwtracing/coresight/coresight-tmc.c   |  96 ++-
 drivers/hwtracing/coresight/coresight-tmc.h   |   2 -
 drivers/hwtracing/coresight/coresight-tpiu.c  |  24 +-
 drivers/hwtracing/coresight/coresight.c       | 164 +++-
 drivers/hwtracing/coresight/of_coresight.c    | 297 -------
 include/linux/coresight.h                     |  61 +-
 26 files changed, 1398 insertions(+), 631 deletions(-)
 create mode 100644 drivers/hwtracing/coresight/coresight-platform.c
 delete mode 100644 drivers/hwtracing/coresight/of_coresight.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
