Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD37E0EDE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 02:06:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=TWNlQ7ucFcpKzPad+HqLTZsjsWTp4yw2foTSLIflMwM=; b=sHC
	fbRSiEQ2nXgYckCjCFozXIqKs/6BqoACwIWvnSVwb6iEzmDuZ86c8R9fO/iODPzYjVePupYzoaxAF
	o4c1MPgD9p+5fn2eTspja8DaemZJjI/nvEtTadsKquH+3KAfNJ1rgbxw0rTVc3/AF4bWfbKTesNtL
	KqSpAs1WKxN3e1JULNyuynnX5f1zOTFfI/7BnPswqJtFjquEu2RBaBHPZFW2OYcoxIE30bOJKQK25
	S1VZjte5xTmo7pWZ4eTrRdqtXGyK3OqvjVNtaZXbTfFUm/mYKG8uy1xRMWfACtmtH8QI4o/gJzDYi
	0/7QQga8mtQm9zU6xj4emPpGgXeigZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN4AC-0006xW-Sz; Wed, 23 Oct 2019 00:06:08 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN4A0-0006wO-Pn
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 00:05:58 +0000
Received: by mail-wr1-x444.google.com with SMTP id q13so14984439wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 17:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=RVKbhGUPx9Rp4t5lnvvSGAoEpsAteMrVsae47CNGU14=;
 b=rV4dprwNkqYCdBGstHoA61ZbChSAvfasMEjznbxr7K8YlZ6b/uCc65hPy+xGsoLfgk
 lIXI860w/KucgAduq4zMJLowbW5NklpuLCq1VTl4xtE5l6jH8XOQE8f9F+l3Jso0P3B+
 iU9V/ExzTp617nC7rcnqjAHqSsAHBSSdwmwBGDFX7Si9Cp+5EfrbaleMqfk9U/wJWdjO
 XWJ7Dha21OzRYq/nP9iK0O/g3AAZl1i7Vn/P9cveEur3J1uXHI/b1e1kpd+S1pDBEGXB
 X8w/CU9k5k0PZXFFgu6qsQEHckF1ficun2aF/ndxVbBXnKcoWwbg37IoqaBa5sEozBX6
 goqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=RVKbhGUPx9Rp4t5lnvvSGAoEpsAteMrVsae47CNGU14=;
 b=GvGBprhKwRz57Lr+M+5qcZaFJMatv9V3RQHfHuRlHZIXdlAQZZK3DsPTOFELRqsRtn
 vhRcpByJfpSrHZiU5paz1AfSzmfAm402A5sFdebL/vzx0acEGJKSyzY2q5U512eWB9AG
 o7ptMYsYkBHSxduFragSuHrv1mCIg6DVjc3RYtz0/7qyR+Nb6PZFoum9k2Tu5mbJmaQa
 nRTkrY+tN36xibgU8QxwL21bOG1+v/cULSvqNcWDdeOkfyYC1KVWGe6HU8L73VmnzEyx
 uK1FsMXEgNCElc+y4DRgx1PLCgdCK42AdzYbGNFgAr3rmk4iuNOk17/CqTuI0rbTqCTh
 3l8A==
X-Gm-Message-State: APjAAAWAnVCkqsb8+8D4nqJld5ZhpLVvdGv0HdPGj9oLrgzpI1qcutU9
 zjpoNyEfQzhgsgjgTKw4N3M=
X-Google-Smtp-Source: APXvYqyyX1wB2kOZ08WrMc2jMATBMd5XgQO6AIaHwnrUyVWtMDn1LyZ/X+WuzzvPv9A62KSXHBtCzw==
X-Received: by 2002:adf:e2cc:: with SMTP id d12mr5775327wrj.345.1571789154654; 
 Tue, 22 Oct 2019 17:05:54 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id v10sm18500272wmg.48.2019.10.22.17.05.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 17:05:53 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH RFC 0/2] irqchip/gic: Allow the use of SGI interrupts
Date: Tue, 22 Oct 2019 17:05:45 -0700
Message-Id: <20191023000547.7831-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_170556_863903_2F32C0D8 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Thanu Rangarajan <Thanu.Rangarajan@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 Jim Quinlan <james.quinlan@broadcom.com>, Sudeep Holla <Sudeep.Holla@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Sending this as RFC so as to gather comments on the approach chosen
here. The Broadcom STB mailbox driver and its firmware in EL3 use a
combination of "smc" for inbound (Linux to monitor) and SGI for outbound
(monitor to Linux) signaling. This mailbox driver can be seen here:

https://github.com/ffainelli/linux/commit/17cc97919f4cd2583d67e624273da8b54b44a4a7

(we may switch to the recently proposed standard arm-smc mailbox driver
proposed by Peng Fang, but we would need interrupt notification anyway).

In our downstream kernel, we have hacked the arch/*/kernel/smp.c code to
permit the installation of custom "IPI" handlers, this is obviously
wrong and absolutely not suitable for usptream.

Here, we allow the GIC to recognize SGI interrupt specified in Device
Tree with a new specifier in the first cell (2) and then we let the
mapping and translation occur provided that we are above the NR_IPI
range.

Immediate problems that I am aware of:

- on ARM (32-bit) NR_IPI does not include IPI_CPU_BACKTRACE, so we could
  (are) be off by one in our check against NR_IPI

Florian Fainelli (3):
  dt-bindings: Define interrupt type for SGI interrupts
  irqchip/gic: Allow the use of SGI interrupts

 .../interrupt-controller/arm,gic.yaml         |   2 +-
 drivers/irqchip/irq-gic.c                     |  41 ++-
 .../interrupt-controller/arm-gic.h            |   1 +
 7 files changed, 313 insertions(+), 16 deletions(-)
 create mode 100644 drivers/mailbox/brcmstb-mailbox.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
