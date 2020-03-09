Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F03D17E48E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 17:18:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nCM8d3EKD7fKCrYSltl952RuqXmMzfenMREJCZP+TzY=; b=m5tNlPqok5oquJ
	bWJ5mrYZqvCoNE14u4tprkv0OCiThenNyLvAnXazanRk+X6TEqf+m1yUOgrfUL1VZf3MEHapXtiCj
	fCeDXktJYVMZFS9zz6jBXgZ3fnyuaCq1dx5oe9pd1SXH1TkZEy6/NSLx+r19/yhC75F0VKrP3ODdC
	irkf3iMhNHxkH7mKm3Wo9tAc0wHO3bU5Lq5gYfXkuS/1UsOOF6chCvkE7rBvl4R5SGrdqqhJJc0t0
	2vZ48l0KRVxX9c7zZeB8mv6TlPRE8/qNKRjxfpo9/5VzN4rn37OyRN409xLmfVs8p2FI7yb+T89Zl
	Wg0/s6AQKHwdDYyGyHBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBL71-0000Ka-2G; Mon, 09 Mar 2020 16:18:39 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBL6E-0008SU-ES
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 16:17:52 +0000
Received: by mail-pj1-x1043.google.com with SMTP id d8so43293pje.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 09:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w+EuGboWkCGYso9gYjOWNAC83ZosPayQVPNA4G1V2eE=;
 b=fLi4SKjsIboh6FDxhRljAQDXqB1dkqX+IsIyNLHh/4K2bD9f+SBcWvXFTzMP5M3AqZ
 XS+DzBWbQGgXHcvjS0ahGDiP6Q8cKtCHrVCu0QBEXxSmrKzxHEBZuma8cSAFUtFXJ4ss
 ivIi0GLoRmSnBoacfZuQdZhny81HACm3E67PRZc9Xt+j/8ZrBfzFTpFKmtfGuQbpYBBH
 mYvpLehxS4IMdnyQngUhbSJOhNd38mzs/w5Hz8b1LLTFqZ8aufQaQ8sKbScI0rA6wHBP
 xe4cQmbH0NooTY2B/tN3hfK/bINqy621esvagi0jZaVs0e0Pzx4MVwYURASZMQmYg+3s
 PN9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w+EuGboWkCGYso9gYjOWNAC83ZosPayQVPNA4G1V2eE=;
 b=PCV/0xNF10dfBXdYC2UiwB7tMJ3JLJU2SgLffOwi78vTh72F93WdPVCYqG0gefhtWe
 tJacb/52o3hKVSsI1+A0TPM3aJrOvXKCjPKB8GA3oHiMDJWMT+k0zKvG5/u9vVI9bd1p
 o/xDVOyRl5sjX9kc7iRcGz3D+dg3fW4URZSb272PoRPeAjyjVcuH7EtOoEkXnCRayeW2
 5KJLvy5VyzmMbtW/cijpGlOH1BK+VyApmDVkUdxUpnqO9AWW7axS+b8sqX4xmxlUhVV8
 Ib0CHTWnaN5kqClfOxX03i6KyatqoZKst2cU6yeAVFYp9PDuMHk+jPbSsycHIJxWRXCs
 5OHw==
X-Gm-Message-State: ANhLgQ3eaaQH8lB5OkOBk7NwNHS8BGR9YQ+7cRKOXXHxEMtwnnW6zAHH
 xUDWdkbEZmAnKfZw757nNK4ZzW9p5dA=
X-Google-Smtp-Source: ADFU+vsoKb6i1cv2d1tEoqVfgMygCD6mwEdH8szR01q3S3bkhYzxH7T3qc276Ckf2pR4Evp0OfUvCA==
X-Received: by 2002:a17:90a:c251:: with SMTP id
 d17mr28053pjx.179.1583770669475; 
 Mon, 09 Mar 2020 09:17:49 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m11sm38403pjl.18.2020.03.09.09.17.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 09:17:49 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 00/13] coresight: next v5.6-rc5 
Date: Mon,  9 Mar 2020 10:17:35 -0600
Message-Id: <20200309161748.31975-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_091750_513364_777CA349 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Greg,

Here is what I have for inclusion in the v5.7 cycle.  As usual it applies to
your char-misc branch.  Please have a look when time permits.

Thanks,
Mathieu

Mike Leach (12):
  coresight: cti: Initial CoreSight CTI Driver
  coresight: cti: Add sysfs coresight mgmt register access
  coresight: cti: Add sysfs access to program function registers
  coresight: cti: Add sysfs trigger / channel programming API
  dt-bindings: arm: Adds CoreSight CTI hardware definitions
  coresight: cti: Add device tree support for v8 arch CTI
  coresight: cti: Add device tree support for custom CTI
  coresight: cti: Enable CTI associated with devices
  coresight: cti: Add connection information to sysfs
  docs: coresight: Update documentation for CoreSight to cover CTI
  docs: sysfs: coresight: Add sysfs ABI documentation for CTI
  Update MAINTAINERS to add reviewer for CoreSight

Nathan Chancellor (1):
  coresight: cti: Remove unnecessary NULL check in cti_sig_type_name

 .../testing/sysfs-bus-coresight-devices-cti   |  221 ++++
 .../bindings/arm/coresight-cti.yaml           |  336 +++++
 .../devicetree/bindings/arm/coresight.txt     |    7 +
 .../trace/coresight/coresight-ect.rst         |  211 +++
 Documentation/trace/coresight/coresight.rst   |   13 +
 MAINTAINERS                                   |    3 +
 drivers/hwtracing/coresight/Kconfig           |   21 +
 drivers/hwtracing/coresight/Makefile          |    3 +
 .../coresight/coresight-cti-platform.c        |  485 +++++++
 .../hwtracing/coresight/coresight-cti-sysfs.c | 1173 +++++++++++++++++
 drivers/hwtracing/coresight/coresight-cti.c   |  745 +++++++++++
 drivers/hwtracing/coresight/coresight-cti.h   |  235 ++++
 .../hwtracing/coresight/coresight-platform.c  |   20 +
 drivers/hwtracing/coresight/coresight-priv.h  |   15 +
 drivers/hwtracing/coresight/coresight.c       |   86 +-
 include/dt-bindings/arm/coresight-cti-dt.h    |   37 +
 include/linux/coresight.h                     |   27 +
 17 files changed, 3624 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/ABI/testing/sysfs-bus-coresight-devices-cti
 create mode 100644 Documentation/devicetree/bindings/arm/coresight-cti.yaml
 create mode 100644 Documentation/trace/coresight/coresight-ect.rst
 create mode 100644 drivers/hwtracing/coresight/coresight-cti-platform.c
 create mode 100644 drivers/hwtracing/coresight/coresight-cti-sysfs.c
 create mode 100644 drivers/hwtracing/coresight/coresight-cti.c
 create mode 100644 drivers/hwtracing/coresight/coresight-cti.h
 create mode 100644 include/dt-bindings/arm/coresight-cti-dt.h


base-commit: bb3a151dd42765acc8f469ff994de3ab31f15a95
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
