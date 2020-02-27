Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 817631721FF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 16:14:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=414Psbdpb61cC0sUoMcyRvWmKap4eSQLzw46u7HQrBA=; b=Etw
	cktQVcGzZmX7edJCu0ZWsd1DBWw1XIKRj00Ej1qZVfSpenjNt+uNRqVYgzEdt/91WRV2KoC35U6D4
	Km/OPoCYBqCcBlisNxsrWemZsuXAJzfOQgPFIBs4Nc7lUD4uCNR29/0b6y+5K+crB8m+70pVIUQC4
	LJ7Fmk+VeaFetB0mXKxWaSe/5gkIc0svuT3WQV3ePWacEggk7Jlg9BCI2xYcTSF7aQ3ZPnJo7E5a9
	j4r+PFne1Ux3FVNVpoiAjDLOlQv8kaOFAh6tgPod36YJVt9rgSTQoUh7vB/8yLkQRItpt27NMe9sZ
	v7TcpOllY1odapfR+yjJ88om9V5wCmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Ks7-0008Tk-8A; Thu, 27 Feb 2020 15:14:43 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Kro-0008Sv-Ch
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 15:14:25 +0000
Received: by mail-wm1-x342.google.com with SMTP id p9so3999881wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 07:14:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=qOuCrOwr9icy0lhM+HGSUbOmDx9He9WGKHL3ShagQ/g=;
 b=jUIf5v994+e1mMqOD41hRNu7xJfMj1/GQDAkOqJVsUEiO0DCh9Fh0GLTeoP/qqyjIB
 FqSd1SpWCvwjcX5PfrfdDSi4C/Uquw0hYnw2zlgn0O2hQ4jKXC9fM5tHygyInNtOPiI5
 KhRYAHBIVXEjD4OqevWKYevePEZqtRAxi3i1cUZ7ROvogd0GngDKXBMoLliSKLqa7Xg8
 FmjZ4pnbNznQ3Kw9qWHtaJGcU/iCW1+xi8LVT7TIQ+hWF+TlaLPny9KyaPuYMCKu5FWa
 Y3rHDkiq3uW+Paog1ccC3MCAtbCkMDmZUcbHos7Vgw3UpqBH9anv4rrZHx0eq5mI5SQ/
 IXvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=qOuCrOwr9icy0lhM+HGSUbOmDx9He9WGKHL3ShagQ/g=;
 b=JVAMTgg/YF8z+HyhhtwtTVTepUtGlR/tvD8hA56+tm4zyeg97EdMUhSbeZL46AHyjB
 ClzL65uQsTODhieluHQiLQ6jLxI97nzx7aKGkb/VEWM1v2rIaZJrqdXYWtmtagQc6OZs
 OkuNfNthpS+0wRxG/uARAvxHDUW7FqPy2df1Ox6yW3P4cW4NBL3IoUHITepYBYlpOyK5
 KlP+vz/CJATypo5ROXjw0vW9pu1p67Wps83T5nr8tEBrOo4RUeoKTsIC1cGJp9KOGyOn
 jTpiR2JnOgStjy8/N5wcLLZjjbiUpkNKaLUSi53XhVwS9pnz5+88ae0W/XLDxRr9rlKU
 My/w==
X-Gm-Message-State: APjAAAW0M8CVx1tZ9w8OkofeHD+DFl4f/06wyM6qzsLWgZ/KvWEL9wBf
 Fho7uYgCRz4p4Qamc+6xEDdG39rCyJ0=
X-Google-Smtp-Source: APXvYqwhU877pPDZ1WNgWTWR4BXz8ryUlRcInZw/5SRoIW9k/2nEM6T06hXmvHcN636rvDIurMWaQA==
X-Received: by 2002:a7b:c119:: with SMTP id w25mr15581wmi.112.1582816461524;
 Thu, 27 Feb 2020 07:14:21 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6801:1801:2dc1:e60d:4b1c:70e0])
 by smtp.gmail.com with ESMTPSA id q12sm8973079wrg.71.2020.02.27.07.14.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 07:14:19 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v5 0/6] Describe CoreSight topology using sysfs links
Date: Thu, 27 Feb 2020 15:14:10 +0000
Message-Id: <20200227151416.14271-1-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_071424_433777_96B54532 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

This patchset applies on top of the recent CTI v10 patchset [1].

Adaptation of an original patchset [2] from Suzuki, reusing 2 patches
unchanged with update to 3rd adapt to the new common code for trace
path and CTI component links & add a default connections group.

Tested on Juno r1, DB410c; kernel 5.6-rc3

[1] http://lists.infradead.org/pipermail/linux-arm-kernel/2020-February/714140.html
[2] https://lists.linaro.org/pipermail/coresight/2019-May/002803.html

Changes since v4:
1) Rebased for v10 CTI set[1].
2) Code for adding in the CTI->[other CoreSight] links revised to ensure
consistent create / release process. Warn on highly unlikely event that
link cannot be made & remove any programmatic association between the
components.

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
  coresight: Add generic sysfs link creation functions
  coresight: cti: Add in sysfs links to other coresight devices
  coresight: docs: Add information about the topology representations

Suzuki K Poulose (3):
  coresight: Pass coresight_device for coresight_release_platform_data
  coresight: add return value for fixup connections
  coresight: Expose device connections via sysfs

 .../trace/coresight/coresight-ect.rst         |   5 +-
 Documentation/trace/coresight/coresight.rst   |  85 ++++++++
 drivers/hwtracing/coresight/Makefile          |   3 +-
 drivers/hwtracing/coresight/coresight-cti.c   |  52 ++++-
 .../hwtracing/coresight/coresight-platform.c  |   2 +-
 drivers/hwtracing/coresight/coresight-priv.h  |  12 +-
 drivers/hwtracing/coresight/coresight-sysfs.c | 204 ++++++++++++++++++
 drivers/hwtracing/coresight/coresight.c       |  75 ++++---
 include/linux/coresight.h                     |  22 ++
 9 files changed, 428 insertions(+), 32 deletions(-)
 create mode 100644 drivers/hwtracing/coresight/coresight-sysfs.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
