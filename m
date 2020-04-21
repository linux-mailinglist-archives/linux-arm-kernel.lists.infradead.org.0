Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF0C1B2CD9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 18:39:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JWY3alKcIesfvg6i3+eHjXx5RsEoYo/t6/+R15fwZsg=; b=Q7f
	8pUD9c9qtKV4A2Bdg+62BqyVw9dfz3Z6WWXVlrc4jXbfV65IGQqDuFB7q5HQP3gjTJxNGHK6NxNTj
	5BnipK0mQ5j0GqeWn5PuSBhbMl3GXXMHWpf8u753g3CvTs3J7C4dFGC76ZpDes6UCKnXQCGkBcysG
	rf+Qeh49lFJZoUNHRu428FU5MVFG9m8vLoagD+s/rBNxcMsYjGv0jBQvLpOaMXlE2Hn5nAfBxtKdR
	gnfg3jG5ZjBVEdr98iigJ+Eqiz5u+Jn/PBC+7jKjtubNHnDt0tm7kBF7MA+HzyCsr3Aibqh4DzS4B
	1Vi39qIqwbu4y8r7uwwKML6Qk7WfFfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQvvf-0003fr-M0; Tue, 21 Apr 2020 16:39:23 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQvvU-0003e1-L1
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 16:39:14 +0000
Received: by mail-wm1-x343.google.com with SMTP id t63so4292372wmt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 09:39:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=cpcsJig0GOzBqMohPbuz/pjFci1RE1DIPfHT1dd3q2E=;
 b=VDVDjM1PKxq8hcUmDwxm3pYN3PdcUBrRnAInUPCwYUa1C3uuW4cd0r3m5tjGfLHW2s
 REOsGcsned9GKRUYhoxUjNdl1HiXW8DTo98oRFQorITL1ewTUPqmyTQr+4Vb7K1GrFvf
 ZCkVGbd1tsz31toNZMPSJDaHwXB/IX1qifusC5u+ju+sZ6e1qrwQER7uP6zQD/mQOtWI
 tpD6rPTv4iHd9xdksU6+X+/czTM59nskYYYYLRuyuhJAAN418VnIMdunjQnFVPjJGHlG
 +Mvb9dIIiiki0fbF6clxbRE6TAAzOD/KVgqpYWA8iVOpkLbk8RKUQl23mllUyMQOoMp4
 DS1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=cpcsJig0GOzBqMohPbuz/pjFci1RE1DIPfHT1dd3q2E=;
 b=GMz5EA5wM6oa4Tes+qIsGMfvyIPg8a+PvhTOkEcsxTkC042mohQbfPoxr+c6vDmENy
 2qox3ruuuEXdL39X8E3WwdHVLJb6aF9cDKvtaqX0CwwYkuHr1fsS2Nafnn/VG/x+9ZsG
 Ggb1tiww1p0HuZvxEe767DUSYjmCI4ApZXZ2Gx4oq2xlf4qP897JQaIkv0bzAMNU2gzO
 K/TEShXVVPcKHCBiZO7tuxkBFGEUwUfeIGSvfICO0CF3MCGf6GMx5Md2ryaKujw+dR/C
 HoFA/P5FsWf7FAjcu9GAM/4BrUl69khN1FKbAUqYAFpGrrMw2uFYjCiaaXuwC1ZNZ1+z
 SfRw==
X-Gm-Message-State: AGi0PubVpPjXX/FIMKV05uqFaViGcFjIn/Bl0t9JKxFRdeDsi7IN1MHL
 57Wu0XkFMp5OPqec8uX2xMrqwsCV5aQFygzv
X-Google-Smtp-Source: APiQypLw4tm9UR1P5gxmtUBnKckudtQYp7IIUmpMLn5xxiMjaWWZ1WQX1BhGSbGdYMo6UYXnDfs1pw==
X-Received: by 2002:a1c:bd8b:: with SMTP id n133mr6086580wmf.175.1587487150085; 
 Tue, 21 Apr 2020 09:39:10 -0700 (PDT)
Received: from lmecxl0524.lme.st.com
 (2a01cb058702ff00947c0d9b78b8fa1e.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8702:ff00:947c:d9b:78b8:fa1e])
 by smtp.gmail.com with ESMTPSA id q143sm4389055wme.31.2020.04.21.09.39.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 09:39:09 -0700 (PDT)
From: Etienne Carriere <etienne.carriere@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH v2 0/6] firmware: conduit method helpers for SMCCC v1.0
 calls
Date: Tue, 21 Apr 2020 18:38:05 +0200
Message-Id: <20200421163811.22720-1-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_093912_697590_4507D5F0 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

V2:
 Fix several build issues reported by kbuild test robot:
 - patch 1/6: fix erroneous ';' in inline functions;
 - patch 5/6: fix bad function label used;
 - patch 6/6: fix bad function label used.
 Reported-by: kbuild test robot <lkp@intel.com>
 Fix function stubs to return -ENXIO not -EINVAL when SMCCC is not supported.
 Few rephrasing in commit message for all patches of the series.
 Add an empty line between a trace and a return instruction in patch 1/6.
 Add argument label in arm_smccc_1_0_set_conduit() prototype in patch 1/6.
 Fix typo in inline description comments in patch 1/6.

These changes propose helper functions and macros to consolidate choice of
the conduit method among devices communicating with a secure world that
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
 drivers/firmware/arm_smccc_conduit.c | 148 +++++++++++++++++++++++++++
 drivers/firmware/psci/psci.c         |  60 ++---------
 drivers/firmware/stratix10-svc.c     |  97 ++----------------
 drivers/firmware/xilinx/zynqmp.c     |  87 ++--------------
 drivers/tee/optee/call.c             |  14 +--
 drivers/tee/optee/core.c             |  85 ++++-----------
 drivers/tee/optee/optee_private.h    |   4 +-
 include/linux/arm-smccc.h            | 106 +++++++++++++++++++
 include/linux/psci.h                 |   1 -
 11 files changed, 338 insertions(+), 344 deletions(-)
 create mode 100644 drivers/firmware/arm_smccc_conduit.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
