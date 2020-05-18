Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86ED31D8323
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 20:03:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H8HVBuRNEQGcRDSm5wWFw2vSn/uplX5NC/KecDI0OPA=; b=F9ASV7uBfWsDs/
	ZuJ7U85uht3/64ERwqxIJtjAF9tHm0L2KYOIr/uysZwZkm5IzEwTock4aHFOB8fsvJ1Zy84w8Djxl
	et2E5hOZFSH3dSZCuA0/Q2A4J2TYF5GyKriSqyabJxIVfo/JadQT+zYsaeCIZtTHrnxMInMUZauAu
	weIghiHenk52eV7xGY+Dbo/V4SVtsLDfl0PhbtN6Kn+TUDcypw4SFUeg6iK7mcb5bM2WrXWAtBLAf
	Np8rterS5tlDo2FscsHJgB+ZagAE/bCNoIguFu7/BOiKGcJGG1inowMEIzv64MFpWEmzMrsmwO891
	CX1VonXi9D+OTyzVY8pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jak6p-0003ZO-M9; Mon, 18 May 2020 18:03:27 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jak6B-0003Ek-9M
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 18:02:48 +0000
Received: by mail-pg1-x544.google.com with SMTP id n11so5182257pgl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 11:02:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w9A8nzHZByIrXEP9o53/VVYr/19ZK2axbj0Q20U48iA=;
 b=f1wVd929DAFon5UPUyCo+mwOqNivmVar2ELMn0/wwuKGvhYbcCGRvZzNAlb9wNyRqB
 N5B+FuRkLkNucI869lnfNNacXD/XmwzGmHBmuin4SjMSgHhSqScmOCco0SJRK+buGmxG
 TosA6TQz6IHIPtkNP/xGqL/b18EcxYE3mM3IFumyXnv2jbAhqOYYcGZunshTgFkcbvOP
 /BPvX6QvaM+I0HaOhDhrt2Yp8zMQtK63bL3e0T4LmYk191OsDa5lATbulW/sJeIAu4LC
 MQGLGzIR9w2VcPjG1guTEvqw8MCXBM+zMagOweVnuA1/YaVQhOs+zlXcjwLOZq1UXNxv
 hK9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w9A8nzHZByIrXEP9o53/VVYr/19ZK2axbj0Q20U48iA=;
 b=JZwStxGHeq6J3aZUC1g72TILYvzmBtXBikS6UOD2oBTYoA3fhCtr9Gl5BkgAORhGYL
 coGwFp6zyp1CCVam/V2PIAYu7KM49L2RHVtamQh08UiilctgW0vC8Vxs3mfrcAAqYSQK
 2+pkXDFjz/X3d4hpEMJ4OZlie8l44yo5sfJTzip7OCK+KmqaoTkmsE6tNvyOHBG2dSQk
 TAxSBm1QaGo3CqNy1mcxu/CH+IDxA56k4lkz+fFHQ3q0+q/IaIEKLWCaYmalkcmEpSBf
 5281w/g2YaEIkumICFTk4aXz+NMe1b8vBLFmvH2X/oQ4sr0tIqC25nO2awR3OoAeeojj
 A+Yw==
X-Gm-Message-State: AOAM533Vg0h3KmstfpmT9N8XYUsqZhxm4nrcXr5ZjVBLmLU07OkA8WOJ
 AgNr0/ZLL81MrBRCftq0775/Ci5AWaM=
X-Google-Smtp-Source: ABdhPJyavTc62L7CjUQBif9JoRFmJkHr0nsdE8+NVx/tM4NG3cEIksn+dwOsRrglnwY/nMCkquLncQ==
X-Received: by 2002:a63:3101:: with SMTP id x1mr15395159pgx.392.1589824963933; 
 Mon, 18 May 2020 11:02:43 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id v3sm9212314pfv.186.2020.05.18.11.02.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 11:02:43 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 00/23] coresight: next for v5.8 
Date: Mon, 18 May 2020 12:02:19 -0600
Message-Id: <20200518180242.7916-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_110247_323956_1F5ACA06 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Good morning Greg,

Please see if you can add these to your tally for the 5.8 cycle.

Applies cleanly on char-misc-next (57c76221d5af)

Thanks,
Mathieu

Anurag Koul (1):
  coresight: etm4x: Add support for Neoverse N1 ETM

Jason Yan (2):
  coresight: cti: Make some symbols static
  coresight: etb10: Make coresight_etb_groups static

Mauro Carvalho Chehab (1):
  docs: trace: coresight-ect.rst: Fix a build warning

Mike Leach (6):
  coresight: Add generic sysfs link creation functions
  coresight: cti: Add in sysfs links to other coresight devices
  coresight: docs: Add information about the topology representations
  coresight: etmv4: Update default filter and initialisation
  coresight: cti: Add CPU Hotplug handling to CTI driver
  coresight: cti: Add CPU idle pm notifer to CTI devices

Sai Prakash Ranjan (3):
  coresight: etm4x: Add support for Qualcomm SC7180 SoC
  coresight: etm4x: Replace ETM PIDs with UCI IDs for Kryo385
  coresight: tmc: Fix TMC mode read in tmc_read_prepare_etb()

Stephen Boyd (5):
  coresight: Mark some functions static
  coresight: Don't initialize variables unnecessarily
  coresight: Initialize arg in sparse friendly way
  coresight: Include required headers in C files
  coresight: Avoid casting void pointers

Suzuki K Poulose (5):
  coresight: Pass coresight_device for coresight_release_platform_data
  coresight: Add return value for fixup connections
  coresight: Expose device connections via sysfs
  coresight: Fix support for sparsely populated ports
  coresight: etm4x: Fix use-after-free of per-cpu etm drvdata

 .../trace/coresight/coresight-ect.rst         |   6 +-
 Documentation/trace/coresight/coresight.rst   |  85 +++++++
 drivers/hwtracing/coresight/Makefile          |   3 +-
 .../coresight/coresight-cti-platform.c        |  11 +-
 .../hwtracing/coresight/coresight-cti-sysfs.c |  16 +-
 drivers/hwtracing/coresight/coresight-cti.c   | 232 +++++++++++++++++-
 drivers/hwtracing/coresight/coresight-cti.h   |   8 +-
 drivers/hwtracing/coresight/coresight-etb10.c |   2 +-
 drivers/hwtracing/coresight/coresight-etm3x.c |   2 +-
 .../coresight/coresight-etm4x-sysfs.c         |   2 +-
 drivers/hwtracing/coresight/coresight-etm4x.c |  33 +--
 .../hwtracing/coresight/coresight-platform.c  |  91 ++++---
 drivers/hwtracing/coresight/coresight-priv.h  |  21 +-
 drivers/hwtracing/coresight/coresight-sysfs.c | 204 +++++++++++++++
 .../hwtracing/coresight/coresight-tmc-etf.c   |  16 +-
 drivers/hwtracing/coresight/coresight-tmc.c   |   2 +-
 drivers/hwtracing/coresight/coresight.c       |  82 +++++--
 include/linux/coresight.h                     |  32 ++-
 include/linux/cpuhotplug.h                    |   1 +
 19 files changed, 738 insertions(+), 111 deletions(-)
 create mode 100644 drivers/hwtracing/coresight/coresight-sysfs.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
