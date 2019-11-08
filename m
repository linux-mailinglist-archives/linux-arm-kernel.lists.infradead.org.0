Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2D0F3F9F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 06:20:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZcIkhJr72HtpkTgGAvsOs35WqD9G/p8KqNWFVO1RJUs=; b=JsMZiJhk7bKxIS
	XSJnmINQyZ6HOEGUjHU8Jt0aVJHD5mlpYooBasFSZyzdFPvKyXy9TtWjVqOGexbGZ1xkulpHI0/ay
	rIA1y5r/+vxzI8tWe6/8mtBiTxbqz3kZwdhSF2gDBR8esr5SQVyWbdfoIMd9hjpzp1bkNptoG4fur
	Q/rwhsTgv+4rpQOSMJfKfxt7dth+CZ61183XXdG6VPgAbMS12x9zcASPC9F+l0tnCvizIGjYqF7q7
	CIJmLOS+O+cqVYY6dpBvxgmnO0dod6ns29GdgpYnhHLO8dND8iBR6d6rNLgYcJXAqvsZWVncApmo2
	zeNz4plOBeb1k8QXub5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwgw-0001zS-Ej; Fri, 08 Nov 2019 05:20:14 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwgi-0001fy-UD
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 05:20:02 +0000
Received: by mail-pf1-x443.google.com with SMTP id c13so3882662pfp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 21:20:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eFsH+L829oE/OwopODh0Rlc4QU2iHdxkZ2p54c8xCJE=;
 b=giOoN2iCH2gl4XYTC0DGivxErEzR5sLnO1BZwomEBJoVbi1J6uhyraLvE7dTiDRgey
 RkWQdvxY70+dcIFsnXXexmPODvZCOPIlDXW/h7JVh2rwqwO4IcSi2Xp2LHO5jmI6n6tB
 bSG64yvooZ4nvkoNm4Qujv/rOpUCB7Xx4fKc7nozepHxazodVWLgjGT1QV2j9BUqLXOb
 sjJOLcPM7mW+l1DR7IwNuGUDOOCUmyFf2w9zUslEEMAWW2Y2q7OpRZz42SNw2lhx5IQO
 UHG1cfVpvu3+COKSodN2RSBXIdlb06DLj4zDduX2n4+TrzKvHoGLE0BgQiEZD1irrt4k
 GUgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=eFsH+L829oE/OwopODh0Rlc4QU2iHdxkZ2p54c8xCJE=;
 b=Pd84l1W0+NmrpBwjRod2kM3b/hZ2rwhC3V3Q2mxH0AvUUkreBm6B4KBQldRFw77XAE
 EXloZW0Y19im0KISy4rfW3Z1QGGi9HYse/qXBZCBvqZC2cB4BiYW/xq1+8HP19vFdnJh
 km7rGCiZkCq4nHi35vzJpiMCeYuUuF5x+AJ5jgH1dDPJXkiyOlT3PgXMN9eZMZAv8zuf
 vhOc47YNnKWOlif+E+3c4/Q2SMRPPFof+t8vHMhBS2lXzWakte5N0LxQtDwiBgPPuXdM
 H0J8T5yHuwGohyFvIWkAjSjTB7qfR2zce5KGWnKii4TWdRsSClwVjmFObORXBDPU60R5
 i7iQ==
X-Gm-Message-State: APjAAAVJiFBdq325vifEef7QCRjJX87r0xFAal44o76/0/BRVN4W74lZ
 g6Wk5O388KaaQsvuFLlKmxE=
X-Google-Smtp-Source: APXvYqyH/KD6c9XA8sPBchDP+LUk0Aegmnor+q9X7ysQCpoU4EoBt0as0FnheT5yRmG7x8dClNiuiQ==
X-Received: by 2002:a63:234c:: with SMTP id u12mr9239958pgm.384.1573190399697; 
 Thu, 07 Nov 2019 21:19:59 -0800 (PST)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id v19sm3798443pjr.14.2019.11.07.21.19.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 21:19:59 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Rob Herring <robh+dt@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Jeremy Kerr <jk@ozlabs.org>
Subject: [PATCH v2 00/11] fsi: Patches for 5.5
Date: Fri,  8 Nov 2019 15:49:34 +1030
Message-Id: <20191108051945.7109-1-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_212000_997761_6F2566F0 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Alistar Popple <alistair@popple.id.au>,
 Eddie James <eajames@linux.ibm.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel@lists.infradead.org, linux-fsi@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series forms the FSI pull request for 5.5.

1-3 adds a FSI class type and updates the documentation for the sysfs files
4-7 makes some cleanups and fixes to the fsi core
8-10 adds the support for the FSI master in the ASPEED AST2600 BMC 

The driver has been tested on hardware for most operations. Future
enhancements include robust error recovery, DMA support and interrupt
support.

The fix for byte order registers is not squashed in as Andrew's commit
message is a piece of art that deserves to be in the kernel history. It
does not need to go to stable as it fixes a patch earlier in this
series.

Andrew Jeffery (3):
  trace: fsi: Print transfer size unsigned
  fsi: core: Fix small accesses and unaligned offsets via sysfs
  fsi: aspeed: Fix OPB0 byte order register values

Jeremy Kerr (2):
  fsi: Add fsi-master class
  fsi: Move master attributes to fsi-master class

Joel Stanley (5):
  ABI: Update FSI path documentation
  fsi: Move defines to common header
  dt-bindings: fsi: Add description of FSI master
  fsi: Add ast2600 master driver
  fsi: aspeed: Add trace points

kbuild test robot (1):
  fsi: fsi_master_class can be static

 Documentation/ABI/testing/sysfs-bus-fsi       |  16 +-
 .../bindings/fsi/fsi-master-aspeed.txt        |  24 +
 drivers/fsi/Kconfig                           |   8 +
 drivers/fsi/Makefile                          |   1 +
 drivers/fsi/fsi-core.c                        |  67 ++-
 drivers/fsi/fsi-master-aspeed.c               | 544 ++++++++++++++++++
 drivers/fsi/fsi-master-hub.c                  |  46 --
 drivers/fsi/fsi-master.h                      |  71 +++
 include/trace/events/fsi.h                    |   6 +-
 include/trace/events/fsi_master_aspeed.h      |  77 +++
 10 files changed, 785 insertions(+), 75 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/fsi/fsi-master-aspeed.txt
 create mode 100644 drivers/fsi/fsi-master-aspeed.c
 create mode 100644 include/trace/events/fsi_master_aspeed.h

-- 
2.24.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
