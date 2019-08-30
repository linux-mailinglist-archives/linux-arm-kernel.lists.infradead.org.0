Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A31FA373B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 14:55:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=g0Afy3PnbWjFzHj463VUvvnd+aJck3Zn77AZ24ld8P4=; b=eA5
	H3sWgOHyFoe3Se/apY5bCf75VNFfUHyw3vtrXruhfihb5+WRSucuiYM8SLMyV3jAAi7C863In9h0B
	mXk2Kf2cY6bUujF4kYeebxYrXhLj9qnOkWiTl3eAGd1wsZEnXF0S8w6AmBa4/FPoecLVtZZDE4uRO
	G/s/qL7KIH6NubrSPdyWcecmmLDn5b+TcNeOBXNmmJ11R7/yk7LQRkAD6OyPReAy4eJJt3TRxm5++
	3mqp05uPVfiCnt+8o5GqTXeYW0vyCJY7r2CDqETjrXUrzUcSN4SceetGlQm/qxYUnVSn7Jqf3/I+S
	mDSvUixDiM/20PWFWDCo3j80IwfwjBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3gQm-0004cO-QK; Fri, 30 Aug 2019 12:55:08 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3gQY-0004bS-91
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 12:54:55 +0000
Received: by mail-pf1-x443.google.com with SMTP id b24so4640472pfp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 05:54:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=NNZTN+WQXt07/j/McJZ3KBjtoeBvNNmWQ056voTxfiM=;
 b=r3LMGzyx+ZvjV8GlVBxtzk0bSXmI6YPya2Z+VV787v/dxqRkzUSdqMoJr3BP/AdXVA
 yOnUJHMm3fo/9FzNz4iSp4X/yzVvvt3EeiWmaukn9gwfHM5aicnJ7AU4RGFV2l11U3Oe
 Msk6MV2Zi4Sl8E3T+prgYG0386TuPMJmAomxuDqwrrQrodGaE/Qwoe9IuXCPda7DDdwW
 zJ1WvxDn2Cu1wEtI6UvZ0mwgUew0vK4Ba8z4RbiMBYHQUUNyss2N86wQ9exXNIyR+J7V
 36fws7anJkOwLnvS9xCnLygo5oW3GuTBKwAo+E1vy2qmlt4FS3DHE3MwYOfmHZIvRIRL
 KoNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=NNZTN+WQXt07/j/McJZ3KBjtoeBvNNmWQ056voTxfiM=;
 b=Dy+MzgBzXAmPO6yj5RFM+xoXcNdQrsyP8hzlpTaPE9TBC4ge9tZNPQmKg8IX/TO3en
 056gOLaULEUUGEGrKM/6GYQJFdriNEWvdD0K8qBU/vjim77nfhi2+QPXt45kTSyp2PNu
 YPMhrYl5BiJdEStr4uQd97iA3OqeYN6teCd5In79DWvIKImJvlgnPp+zWjpoO6BUVMfw
 opcbKEXZCHb8InRMXMk6OU0fTrT3V+tLlgXp6o3r0vlqFx8qREMEjhLBWTeQtN+AiHZH
 OfbU3YBAX36kCZMXQP4iCgpHNOYdhymhLlZsL6nRcbhBYv0lvsF91BH5Z2L4OthhAwPd
 DZ9w==
X-Gm-Message-State: APjAAAWHivGhyi3S29oF3kF4xEQjUzubX2ip54cBEWrKdxJWM+HJFb05
 y0MzMPWaI7fTauLyoYqsJw8=
X-Google-Smtp-Source: APXvYqwGtfgFCLtLkW6um+vUd1H1urHTPtZAgLo0Vny3nBbacPkJ9IiTdsOutWgr+AjLqpKq8snq4g==
X-Received: by 2002:a63:5945:: with SMTP id j5mr12831171pgm.452.1567169692018; 
 Fri, 30 Aug 2019 05:54:52 -0700 (PDT)
Received: from localhost.localdomain.com ([115.113.156.3])
 by smtp.gmail.com with ESMTPSA id e189sm5871043pgc.15.2019.08.30.05.54.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 05:54:51 -0700 (PDT)
From: ganapat <gklkml16@gmail.com>
X-Google-Original-From: ganapat <ganapat@localhost.localdomain>
To: linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 0/2] Add CCPI2 PMU support
Date: Fri, 30 Aug 2019 18:24:34 +0530
Message-Id: <20190830125436.16959-1-ganapat@localhost.localdomain>
X-Mailer: git-send-email 2.9.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_055454_344998_B80388D4 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gklkml16[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gklkml16[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, gkulkarni@marvell.com, corbet@lwn.net,
 jglauber@marvell.com, jnair@marvell.com, rrichter@marvell.com, will@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ganapatrao Kulkarni <gkulkarni@marvell.com>

Add Cavium Coherent Processor Interconnect (CCPI2) PMU
support in ThunderX2 Uncore driver.

v5:
	Fixed minor bug of v4 (timer callback fuction
	was getting initialized to NULL for all PMUs).

v4:
	Update with review comments [2].
	Changed Counter read to 2 word read since single dword read is misbhehaving(hw issue).

[2] https://lkml.org/lkml/2019/7/23/231

v3: Rebased to 5.3-rc1

v2: Updated with review comments [1]

[1] https://lkml.org/lkml/2019/6/14/965

v1: initial patch


Ganapatrao Kulkarni (2):
  Documentation: perf: Update documentation for ThunderX2 PMU uncore
    driver
  drivers/perf: Add CCPI2 PMU support in ThunderX2 UNCORE driver.

 .../admin-guide/perf/thunderx2-pmu.rst        |  20 +-
 drivers/perf/thunderx2_pmu.c                  | 267 +++++++++++++++---
 2 files changed, 245 insertions(+), 42 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
