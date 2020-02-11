Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA79C158D15
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 11:58:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rlltqtmuMhDKU5S0ammF/MflUVfauwEnUM1LbD4WBzk=; b=iYB
	QQWlgMNCcbDwR0UlXoCq1IH9eO0aSGML/RjS4Lush4jthssTWSllwDWYgPdeoMzHRuz5RWbzNi1mQ
	7ODaE0zY/zqDZQvBzEzCQxDjZH2Z5LXbHwMOjjsQ8+z0WETQ3BHg+FwNPIYm9mtDWLTMO+U3zYT5C
	OwYCg4I5Cv7UsEIfmksTg14l7Lqxc0vKdadhbY1p67Ih3R//Xntlw8J4Ea/b6w7N4uSBbtUGJV3Bn
	xQP5y4UBNmt25/GoMHwgNQ0UsZ+MNTqIdUpQ9KIuejEPKkqpzoAo5gvZ3V7YVDY/JPXZ/xjLuyViU
	961PGz+XDePmWrvecsz8+weDfX2V+UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1TFN-0001JX-6C; Tue, 11 Feb 2020 10:58:29 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1TFB-0001IM-SS
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 10:58:19 +0000
Received: by mail-wm1-x341.google.com with SMTP id p9so2891979wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 02:58:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=iEzg9BEEGNGWOvSlwBHFmI6M0qcjXSJtDCpjQK6W6Sg=;
 b=cx1fFHVyHFRomjgKw39VKbvL1ogvaAEB1bQwnLJyOFhCy7TNrsx6qPCMtaUZcrOA0p
 xrGtwWEDrFrlqZV1/zS10lbGxCw+qHQUXmpSc4fD5L9VE1XIcsc9NkQE0+/jhgvghR22
 iX7qAYLd6PUKZsYPuWzDicXBofxVV/8EWMjAAgV34j/fFRN96WsmZp9Dl12dSoHw2Drv
 aOemJsF7/nRsEvt5/Urk58ic8BtOgnRoEWi83bL3obfD1klhwhoOxpHa+sI1tGNnbPPF
 PnZKilUj8XuHg3+QuFv07XLsQ2TohqLBgPOLCda2CvLrIhTCqGnaSk/jpJ95UVDNgS0X
 v4WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=iEzg9BEEGNGWOvSlwBHFmI6M0qcjXSJtDCpjQK6W6Sg=;
 b=t1Jh6ilIK3u5I71WHG2XergRtsG2QBEuR1E342zM7yuR1GWjzfV4Q/yh0murH+POmM
 b9vCUKbZCpf3RwSEmj20b1z16xCobaVcN6joWDnn7ePZrtetqXCs5cSEZO+cipbIjPac
 IeQJ4tlry1R/65M541LeLGnB5Fb5RQmtfFVSbBe/UToyWOQABSmCVABCRc70QPCBcXQs
 T9WNhMeyMV+xI8uxT5D2dX79eAPin58uw/Atd5k8UPzrqWg/xO+eINdkYMMKL3wZautC
 Go7GCpXF4CKda6tNKFCXuAAVBn28KLhiQAG0P/9AopbnVehsAv7rfJmz5K1IQU7x95xP
 yYyg==
X-Gm-Message-State: APjAAAXM1YcoE8Z8Gew1PND9ElRLJVOza7RJ4d1dDKrEcDxdN2/GwzFt
 T2dEkatLwEZZWeVIwM/7Ec1FSs2KpdI=
X-Google-Smtp-Source: APXvYqzi9ytc7tkCd57rjQAPshy2dZOQR2inPwqc4U8hc63ppgXzcVR1EfEUOa5WNS8ZnJV5CWM9/Q==
X-Received: by 2002:a1c:b607:: with SMTP id g7mr5065765wmf.110.1581418695902; 
 Tue, 11 Feb 2020 02:58:15 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:a1cf:b00b:5683:ed40])
 by smtp.gmail.com with ESMTPSA id g21sm3171291wmh.17.2020.02.11.02.58.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 02:58:15 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v4 0/6] Describe CoreSight topology using sysfs links.
Date: Tue, 11 Feb 2020 10:58:02 +0000
Message-Id: <20200211105808.27884-1-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_025817_953638_B8D0767B 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mike Leach <mike.leach@linaro.org>, mathieu.poirier@linaro.org,
 suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The connections between CoreSight sources, links and sinks is not obvious
without documentation or access to the device tree / ACPI definitions for
the platform.

This patchset provides sysfs links to enable the user to follow the trace
patch from source to sink.

Components in the trace path are updated to have a connections sysfs
group, which collates all the links for that component.

The CTI components which exist aside from the main trace patch, also
have an added connections directory showing connections to other
CoreSight devices.

This patchset applies on top of the recent CTI v9 patchset [1].

Adaptation of an original patchset [2] from Suzuki, reusing 2 patches
unchanged with update to 3rd adapt to the new common code for trace
path and CTI component links & add a default connections group.

Tested on Juno r1, DB410c; kernel 5.6-rc1

[1] http://lists.infradead.org/pipermail/linux-arm-kernel/2020-February/709923.html
[2] https://lists.linaro.org/pipermail/coresight/2019-May/002803.html

Changes since v3:
1) Rebased onto 5.6-rc1 kernel with CTI set[1].

Changes since v2:
1) Fixed issues with signature ordering noted by Suzuki.
2) Alterations to main CTI set[1] to overcome issue noted by Matthieu.

Changes since v1:
1) Code from original v4 CTI set moved here so that all connections related
code in this set.
2) Connections directory mandatory for all CoreSight components and
generated as part of the registration process.

Mike Leach (3):
  coresight: Add generic sysfs link creation functions.
  coresight: cti: Add in sysfs links to other coresight devices.
  coresight: docs: Add information about the topology representations.

Suzuki K Poulose (3):
  coresight: Pass coresight_device for coresight_release_platform_data
  coresight: add return value for fixup connections
  coresight: Expose device connections via sysfs

 .../trace/coresight/coresight-ect.rst         |   5 +-
 Documentation/trace/coresight/coresight.rst   |  85 ++++++++
 drivers/hwtracing/coresight/Makefile          |   3 +-
 drivers/hwtracing/coresight/coresight-cti.c   |  41 +++-
 .../hwtracing/coresight/coresight-platform.c  |   2 +-
 drivers/hwtracing/coresight/coresight-priv.h  |  12 +-
 drivers/hwtracing/coresight/coresight-sysfs.c | 204 ++++++++++++++++++
 drivers/hwtracing/coresight/coresight.c       |  75 ++++---
 include/linux/coresight.h                     |  22 ++
 9 files changed, 420 insertions(+), 29 deletions(-)
 create mode 100644 drivers/hwtracing/coresight/coresight-sysfs.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
