Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A03291AFB92
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 17:05:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zBP1xxDzpak5gnnVJ31lTv/zTwUr9j3OEixjLdS+BgU=; b=bw8
	mHNZ9ChTHHAWCtVWDEYGpzjY8ov71JFDCvfoGWV97gRg974pCwB3Aepg2lvw/u5UVKyT857/+DQZY
	se4NQPF3KKoMwepm/JuKnFum2xCqSNsdzlbmWRvkagROWXjHD7rPrXs8BTroPVAjsU2fNqPvHDH7y
	Vpq6Lg3ijYLZO0vtVdpWIbodCnWH23NHJqteBXP1rHaEMtHzfVI1P8c/2fzFwEGZc3l/WWgJKg2qY
	KNKdvdJ8RiNbCGW+Ja7Cjnh7QAWTyR4YXU4G9YG787FF6t71dcFRLWiDuZ8+PeZGi/y3j2XQX0KhF
	1qPlxGRz5NAah6nZ0OZ7l1Cn8WuMyAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQBVy-0007gQ-5h; Sun, 19 Apr 2020 15:05:46 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQBVn-0007eK-Vt
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 15:05:38 +0000
Received: by mail-wr1-x442.google.com with SMTP id u13so8870975wrp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 08:05:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=f5P85hmUMhEq+eY3Fw9ehsoGgopm9PSDgtwYxrXj4Rw=;
 b=UB3FbtblWCqsJJwAEUxsm67LpYnI51ri/oflUT3gRwEcpE3oOtro/2Pyno9yFIkw7R
 SWvlGrvRGjUv6hsKiFXYvrTKl4JGNDkMsdXIg5aoa/LCGRqKKJtH/C0nGEgnlxH2TyU6
 QxfF9kRqpei3BqZ2GmTVbISesOABpKjO8KEuZlfP3iJif4sfBx+8N2qjQ4YTvcKyWnH2
 Zogz4jOcxDAwf15GHC0DgEeCZd0JKr4YabErRuvw3z6PRqHSn5l03f/RDIvj5CI7uCJH
 iq8OCZhWD6c1voXRpao0tSEkJ+4FEWso57f7QnzvzOkZ0QpZPtIlNzghKlZRI2XmaPFC
 YgkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=f5P85hmUMhEq+eY3Fw9ehsoGgopm9PSDgtwYxrXj4Rw=;
 b=aD5En3HUGleksJJagsYD/H446ePU5kdEjDfVdrX8nClJRMxFn4/c7RGfH1Nz4IW38m
 Fdv3V7yK0X2vRMQTBijTfJSUYLPlqkWrZhRE5JhkfA6gRm5IDFlbQFrrnYlyDcu5GMJV
 /7gmHDvLzBzmksv59S8bTNW0SENrIk9KQX+2LB0kZgu5+ChC8M9kAK/D9Y8NQTy4ia6I
 aidyjqFvMfvZ/aa/4WATjUamKg8LKEC013ZTQ5YjaFM5/9f7PY31PgNLSGz3MumJOoCJ
 0iwy5vx+5Cnkf8VNkL1N50vj7OnT2wLjl1P7V3TpSCs+aVNHsu48SOE23oqCU13wupLX
 jlVQ==
X-Gm-Message-State: AGi0PuaN31tkks3Aruk9Rb3N9sTbsQHxiDWjK7okqqgWBk1tIQ7tAoHO
 jCAqz62+mW9bw0DcJgxbyi0Fag==
X-Google-Smtp-Source: APiQypKJVViZSl1iZBIeUYfV13AGcmfiqHfkciGRh6iFjmSPINU2ia6Mo5Hmv29OfSfWyivJZNe+7A==
X-Received: by 2002:a5d:4306:: with SMTP id h6mr13371145wrq.234.1587308733878; 
 Sun, 19 Apr 2020 08:05:33 -0700 (PDT)
Received: from lmecxl0524.home
 (2a01cb058702ff00947c0d9b78b8fa1e.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8702:ff00:947c:d9b:78b8:fa1e])
 by smtp.gmail.com with ESMTPSA id w12sm25948635wrk.56.2020.04.19.08.05.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 08:05:33 -0700 (PDT)
From: Etienne Carriere <etienne.carriere@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH 0/6] firmware: conduit method helpers for SMCCC v1.0 calls
Date: Sun, 19 Apr 2020 17:05:24 +0200
Message-Id: <20200419150530.20508-1-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_080536_541688_05681A23 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, michal.simek@xilinx.com,
 tee-dev@lists.linaro.org, Etienne Carriere <etienne.carriere@linaro.org>,
 james.morse@arm.com, sudeep.holla@arm.com, richard.gong@linux.intel.com,
 jens.wiklander@linaro.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These changes propose helper functions and macros to consolidate choice of
the conduit method among devices communicating with an secure world that
complies with SMCCC v1.0 but not SMCCC v1.1 or later. The new helper
functions mimic arm_smccc_1_1_*() function but for SMCCC v1.0 compliant
firmwares.

This series of changes updates several firmware drivers that each define a
conduit method whereas kernel drivers are expected to use the very same
conduit. This series obviously does not enforce these drivers to apply the
proposed changes but the interest of the first patch is this series is that
at least the PSCI driver upgrades as it will allow new drivers to benefit
from the early initialized PSCI conduit method.

Etienne Carriere (6):
  firmware: helper functions for SMCCC v1.0 invocation conduit
  firmware: psci: set SMCCC v1.0 conduit and use helpers functions
  tee: optee: use SMCCC v1.0 helper functions
  firmware: arm_sdei: use SMCCC v1.0 helper functions
  firmware: stratix10: use SMCCC v1.0 helper functions
  firmware: zynqmp: use SMCCC v1.0 helper functions

 drivers/firmware/Makefile            |   1 +
 drivers/firmware/arm_sdei.c          |  79 +++++---------
 drivers/firmware/arm_smccc_conduit.c | 147 +++++++++++++++++++++++++++
 drivers/firmware/psci/psci.c         |  60 ++---------
 drivers/firmware/stratix10-svc.c     |  97 ++----------------
 drivers/firmware/xilinx/zynqmp.c     |  87 ++--------------
 drivers/tee/optee/call.c             |  14 +--
 drivers/tee/optee/core.c             |  85 ++++------------
 drivers/tee/optee/optee_private.h    |   4 +-
 include/linux/arm-smccc.h            | 106 +++++++++++++++++++
 include/linux/psci.h                 |   1 -
 11 files changed, 337 insertions(+), 344 deletions(-)
 create mode 100644 drivers/firmware/arm_smccc_conduit.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
