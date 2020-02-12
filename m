Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5214615A377
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 09:41:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zgETVAK9saUgzSioZ4p+2dcjNCNmVIQmePk8iLI+zhw=; b=WKMxZimp7NVZFC
	eKpW2XC0Ps4iCkyhisV+8NfzB2t96Ut3h1l9BV7SIIxsttqKUVRji0nVlrarje9YhGpgTGqcMC3lX
	0mr63verSoKKXG42BBmLPDAHr0fGQ/u75uQhy3oLgpgCQdldTDIA/MMi6YAziYvCq9TSC72V90wL3
	Tfsvxb3u4dUGwf+bWsQEIQRLWfZrIGJWBTu7QCSKXioPn6VRL43tUNgr8hrcXSD0HlRclGSHzBTAo
	mTrlveYQOrf3cSywm+0/cXT3jXtpNw2EGSjJXkJ1PBiq2c1ix8GlFyOoVXNX38bEwc7T9roOp8U64
	XzZixShzC3sTCGJnxylw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1nZp-0007K2-Te; Wed, 12 Feb 2020 08:40:57 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1nZ2-0005V5-4m
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 08:40:10 +0000
Received: by mail-wr1-x443.google.com with SMTP id t2so1133506wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 00:40:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sh9edya09m3ampotYP3rKXxFWAQAZ1sl203zZxDnubY=;
 b=Rd9ZsYVqBQpLNRN1NUoCJwtgrHIvxjFXbiYEbesFFL+EtggZeSkMBsmX6aQN4sRPqk
 BFm7ziMyioakOHPenVv+pazCq1xMgITET4yi3liedrfDOAYUiIlLzo7E7XNEIvegXUBX
 VVryKZVBrlSDZxSLbfYqPEDFJgSbi3oy3nDXlTZs8GcWdZZwU3frgCCR/swJU89rUorq
 q2MuolQSmMWjjazZ+JadmnTMhsRcwMVWiPPvoHqIzEPRmpPdhSyYd0CI+AdR0i+Jc/rO
 DdIo+gr5eG0/N7R7ER0Wvm5aB55R/zxAvE9YDjWfOqt+5/iPXeOQxA4BGm1SPsdQctNB
 PeXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=sh9edya09m3ampotYP3rKXxFWAQAZ1sl203zZxDnubY=;
 b=p2FlOJO0zRnT0RhniNUetW6COhST0EoSXxB1ijuHg7wYfatC0HR3+qA32dI6Xbr3r+
 1Q2PA0Q40BDMcsyivatYPIc9qkZz0idXS2tIVRA8vfqELA7KYOUp8GViwVcYUukdaJnk
 ulr4yxYT741+fQO859f05eTVtXDlBi2ye+r8ucYCDhQr9XWSVmbCv+poOkarT+0EEpzK
 od0jJ1g9Vnvy5Ge8Vv8LF30BF6c+ogNMrzJPoi1IapVPO4aNpmpF5wWleCTKf5XBK1vW
 rrVRsddnVzAJoL5xCl+cHz/SpRHsTNv69uLsg6d7BXCmPxuhZZWy/Qh7acNq+2cw+mta
 GNWQ==
X-Gm-Message-State: APjAAAVQxXlPypWNEmBtRanMr2R57vGOFLjuml9rrTSNqr36z+vHIxUs
 ex7p0lz4UCW8ThzCUwTCV7UU0g==
X-Google-Smtp-Source: APXvYqwuS7+TqsdETIEjYnS5F+Hk3WQXvU5tJoIGMYYgCfRi7CqmSIQCIAeJ5eLjixqHvrdhZP54DA==
X-Received: by 2002:a5d:42c6:: with SMTP id t6mr13871376wrr.151.1581496800421; 
 Wed, 12 Feb 2020 00:40:00 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id x17sm8482201wrt.74.2020.02.12.00.39.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 12 Feb 2020 00:39:59 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
 git@xilinx.com
Subject: [PATCH 0/3] irqchip: xilinx: Switch to generic domain handler
Date: Wed, 12 Feb 2020 09:39:55 +0100
Message-Id: <cover.1581496793.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_004008_238267_DDB9AD9D 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stefan Asserhall <stefan.asserhall@xilinx.com>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Mubin Sayyed <mubinusm@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

this series is based on cascade mode patch sent by Mubin
(https://lkml.org/lkml/2020/2/11/888 - v3 series).

The first patch is just fixing error patch. The second and the third are
converting microblaze do_IRQ() to generic IRQ handler with appropriate
changes in xilinx intc driver. I have done it in two steps to be visible
how it was done.

The last patch removes concurrent_irq global variable which wasn't wired
anywhere but it stores number of concurrent IRQs handled by one call. There
is option to get it back if needed but I haven't seen it in other archs
that's why I have removed it too.

Thanks,
Michal


Michal Simek (3):
  irqchip: xilinx: Fill error code when irq domain registration fails
  irqchip: xilinx: Enable generic irq multi handler
  irqchip: xilinx: Use handle_domain_irq()

 arch/microblaze/Kconfig           |  2 ++
 arch/microblaze/include/asm/irq.h |  3 ---
 arch/microblaze/kernel/irq.c      | 21 +------------------
 drivers/irqchip/irq-xilinx-intc.c | 35 ++++++++++++++++++-------------
 4 files changed, 24 insertions(+), 37 deletions(-)

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
