Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF9118D4F0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 17:53:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pTzfG0t8DafxihZv+sGbYFyMJL7KRuNO3LypMbteegc=; b=oCRhoVZabkvBRr
	IAPH9JCRGQNUfIgv19Dmg4UJeZOmyEYPamb97DmGJKz4xtoZosb6ltIN0B8h9vh4QvjvC0jStiH6N
	rxcLZJvLpKdpftq47y8pw/L7ypBkcTywNZcNemoW0kzLUx4BoLsBB8J/u7AcAGD07OcCsziJeeeeu
	4+FzCPAbjzVz49tuFk44f1jZWKZQDdeqMcaQG16ejDngCg8NqR+R1jrswa0165HcywLTYsLRo4j7q
	0EqRkr7r9/cIVHLb4eAXgH7T8CAYrHz31ig7kxd4reklBxAEhVSRLUXJBepJG3fFem27P2sU43ugU
	UO2qLZ+6dbrpdbFIDj2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFKth-00033k-OY; Fri, 20 Mar 2020 16:53:25 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFKtO-00032y-3Z
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 16:53:08 +0000
Received: by mail-pg1-x544.google.com with SMTP id b1so3366734pgm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 09:53:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=of4yG/Vch/Qj/D9yPE0fo6j6XLR3095eAUqqs/YSOwY=;
 b=dRAuHm70s32jvPsyJvaRFXlgBM+OeovibGCvoxVlik+9h50MIPbUWkDSZ4a8aBzq1l
 GL5XNXRYj8NCKS1ZkuXYKkS6CpXCpF3ywncpFLeVlkJHeBJogxp+uD6jLjCMJaJRFPAZ
 qmu7zcqMPkRrzPjQz+o/5t+L+KQ+PNi3fln9tbMAjjAdrjc5iEpBg2tDB/6pvRxWBo66
 Zcrfit9iws2DBEOAKkY8SBbfUex7gkB592zgGvf7L39BfU7oHLKp/nOeJHXBieSeK1ne
 nwk4HHBpCgS5kfE9EegxZPTsz3OP494UsZafp4XgRRiiE2zJIVdc2nEOs/H9AHz47VRR
 wa0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=of4yG/Vch/Qj/D9yPE0fo6j6XLR3095eAUqqs/YSOwY=;
 b=ITEp7Gvsxp3Ct8ygEj5gJLxYb8sepGW/hom8jbEDP8qSqUY9i6HoLKDdNglJtutzmE
 AgAp4rjwC5/OzGwoaaLcXGVAnLJhODFRc7GPTw7L99+WODkI/Zj3+rDO/Oceiz0IbDxZ
 un2TT37IHlRJpTepj3mz3PuGV0lnf6ltdMEJAg0hUBWTQ+kn2pk/5H+zwT1BF+R4WAYU
 71/zeZp9tFdTGSrrAT5IR+cmr/1YQw99eqU8S/RsikN5HR4aAIuzCunsZZdrUHA+Gy0x
 tdS7CFCuyv9jfp46tzrJAt9eGqRnFfk30N2DMjJD+hArmOpkUA3HFtv+ndpB/T+yRalY
 cQkw==
X-Gm-Message-State: ANhLgQ1ohgXmybqScIY3mNsvU5RHtHW3VRXJp/yGpISLnzYD0ot23yfH
 0t4FdK+n+S5Pk+GkzteBfCztbQ==
X-Google-Smtp-Source: ADFU+vuk5fqfRt3pgssw0+gJH1iTPp67oYT5MsVGMC+R4pwtrHcwWn3Nrm0p3QhoOUq62L8YDzj6uQ==
X-Received: by 2002:a62:e409:: with SMTP id r9mr10332985pfh.119.1584723184948; 
 Fri, 20 Mar 2020 09:53:04 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id x17sm6064216pfn.16.2020.03.20.09.53.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2020 09:53:04 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH v11 00/12] coresight: next v5.6-rc6 
Date: Fri, 20 Mar 2020 10:52:51 -0600
Message-Id: <20200320165303.13681-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_095306_721567_23583A70 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: suzuki.poulose@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Greg,

As requested here is another respin - the only thing that changed is
the replacement of scnprintf() and all sysfs output are now singular,
i.e don't need any parsing.  That triggered some modification to
sysfs entries, which have been taken into account in the documentation.

Applies and compile cleanly on your char-misc-next branch.

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

 .../testing/sysfs-bus-coresight-devices-cti   |  241 ++++
 .../bindings/arm/coresight-cti.yaml           |  336 +++++
 .../devicetree/bindings/arm/coresight.txt     |    7 +
 .../trace/coresight/coresight-ect.rst         |  222 +++
 Documentation/trace/coresight/coresight.rst   |   13 +
 MAINTAINERS                                   |    3 +
 drivers/hwtracing/coresight/Kconfig           |   21 +
 drivers/hwtracing/coresight/Makefile          |    3 +
 .../coresight/coresight-cti-platform.c        |  485 +++++++
 .../hwtracing/coresight/coresight-cti-sysfs.c | 1206 +++++++++++++++++
 drivers/hwtracing/coresight/coresight-cti.c   |  745 ++++++++++
 drivers/hwtracing/coresight/coresight-cti.h   |  235 ++++
 .../hwtracing/coresight/coresight-platform.c  |   20 +
 drivers/hwtracing/coresight/coresight-priv.h  |   15 +
 drivers/hwtracing/coresight/coresight.c       |   86 +-
 include/dt-bindings/arm/coresight-cti-dt.h    |   37 +
 include/linux/coresight.h                     |   27 +
 17 files changed, 3688 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/ABI/testing/sysfs-bus-coresight-devices-cti
 create mode 100644 Documentation/devicetree/bindings/arm/coresight-cti.yaml
 create mode 100644 Documentation/trace/coresight/coresight-ect.rst
 create mode 100644 drivers/hwtracing/coresight/coresight-cti-platform.c
 create mode 100644 drivers/hwtracing/coresight/coresight-cti-sysfs.c
 create mode 100644 drivers/hwtracing/coresight/coresight-cti.c
 create mode 100644 drivers/hwtracing/coresight/coresight-cti.h
 create mode 100644 include/dt-bindings/arm/coresight-cti-dt.h

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
