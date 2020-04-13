Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 840DA1A6F3B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 00:30:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=32KWj9K3MNTYXlkYKPE1+WTkJfRScfDuTjgtazzKfKI=; b=vCb
	9sI1AcqGGjDeFIxdZW9rpoi/KqrRynUXC4w0sre31xn98PDe1GYe7RZ3l67QnDCMjmkjvsW2EUYI7
	GV2wb0uV/EJ08w6Rl6t3OQuumS0T7ww90ExMvsKGd3JozjvAGl/c+J+V9fkBUFemo+vfFrfcmBlra
	1aZYVw/lA6IJbVGbIPXp+LiyUJWI73h6CnENnbTr4nw0yJropg7CbgZgIiNZiP2zuFDF6wwn1icuS
	E9Lh+k9xsj8M7+vsE+t5hB1Vxm+Zz+5XcMgaE7+sm3WeEpnOWrI4IxIHXI4rfjA4LVynf1fMuoOue
	qIPA6+rnZw0tBBlEmoQ5HzhlaeQe1RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO7ah-0003Xo-Ao; Mon, 13 Apr 2020 22:30:07 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO7a4-0003Ce-K6
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 22:29:30 +0000
IronPort-SDR: UjdZWKw3eXFRn9V1QNuHFCel2eQPSu2+UlYSFRJwYtgn0FHRvtcKNTMqCdVtbNm2UY3VKQRtC0
 vZGFErWLrryQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 15:29:27 -0700
IronPort-SDR: HA1pg7W+JidsbOkG2gETfFSzW+Y8ysmyVsIaPb3QvkwolyAjCMaPayW6gcm5TJRw2fpsJlDfDs
 X/PUIVQAGx/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,380,1580803200"; d="scan'208";a="399760659"
Received: from epcorona-mobl.amr.corp.intel.com (HELO
 epcorona-moblu.amr.corp.intel.com) ([10.254.189.204])
 by orsmga004.jf.intel.com with ESMTP; 13 Apr 2020 15:29:26 -0700
From: Ernesto Corona <ernesto.corona@intel.com>
To: linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org
Subject: [PATCH v29 0/6] JTAG driver introduction 
Date: Mon, 13 Apr 2020 15:29:14 -0700
Message-Id: <20200413222920.4722-1-ernesto.corona@intel.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_152928_670158_39E6F3C1 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ernesto Corona <ernesto.corona@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When a need raise up to use JTAG interface for system's devices
programming or CPU debugging, usually the user layer
application implements jtag protocol by bit-bang or using a 
proprietary connection to vendor hardware.
This method can be slow and not generic.
 
We propose to implement general JTAG interface and infrastructure
to communicate with user layer application. In such way, we can
have the standard JTAG interface core part and separation from
specific HW implementation.
This allow new capability to debug the CPU or program system's 
device via BMC without additional devices nor cost. 

This patch purpose is to add JTAG master core infrastructure by 
defining new JTAG class and provide generic JTAG interface
to allow hardware specific drivers to connect this interface.
This will enable all JTAG drivers to use the common interface
part and will have separate for hardware implementation.

The JTAG (Joint Test Action Group) core driver provides minimal generic
JTAG interface, which can be used by hardware specific JTAG master
controllers. By providing common interface for the JTAG controllers,
user space device programing is hardware independent.
 
Modern SoC which in use for embedded system' equipped with
internal JTAG master interface.
This interface is used for programming and debugging system's
hardware components, like CPLD, FPGA, CPU, voltage and
industrial controllers.
Firmware for such devices can be upgraded through JTAG interface during
Runtime. The JTAG standard support for multiple devices programming,
is in case their lines are daisy-chained together.

For example, systems which equipped with host CPU, BMC SoC or/and 
number of programmable devices are capable to connect a pin and
select system components dynamically for programming and debugging,
This is using by the BMC which is equipped with internal SoC master
controller.
For example:

BMC JTAG master --> pin selected to CPLDs chain for programming (filed
upgrade, production) 
BMC JTAG master --> pin selected to voltage monitors for programming 
(field upgrade, production) 
BMC JTAG master --> pin selected to host CPU (on-site debugging 
and developers debugging)

For example, we can have application in user space which using calls
to JTAG driver executes CPLD programming directly from SVF file
 
The JTAG standard (IEEE 1149.1) defines the next connector pins:
- TDI (Test Data In);
- TDO (Test Data Out);
- TCK (Test Clock);
- TMS (Test Mode Select);
- TRST (Test Reset) (Optional);

The SoC equipped with JTAG master controller, performs
device programming on command or vector level. For example
a file in a standard SVF (Serial Vector Format) that contains
boundary scan vectors, can be used by sending each vector
to the JTAG interface and the JTAG controller will execute
the programming.

Initial version provides the system calls set for:
- SIR (Scan Instruction Register, IEEE 1149.1 Instruction Register scan);
- SDR (Scan Data Register, IEEE 1149.1 Data Register scan);
- RUNTEST (Forces the IEEE 1149.1 bus to a run state for a specified
  number of clocks.

SoC which are not equipped with JTAG master interface, can be built
on top of JTAG core driver infrastructure, by applying bit-banging of
TDI, TDO, TCK and TMS pins within the hardware specific driver. 

Oleksandr Shamray (4):
Ernesto Corona (6):
  drivers: jtag: Add JTAG core driver
  dt-binding: jtag: Aspeed 2400 and 2500 series
  Add Aspeed SoC 24xx and 25xx families JTAG master driver
  Documentation: jtag: Add ABI documentation
  Documentation jtag: Add JTAG core driver ioctl number
  drivers: jtag: Add JTAG core driver Maintainers

 Documentation/ABI/testing/jtag-dev            |   23 +
 .../devicetree/bindings/jtag/aspeed-jtag.yaml |   71 ++
 Documentation/index.rst                       |    1 +
 Documentation/jtag/index.rst                  |   18 +
 Documentation/jtag/jtag-summary.rst           |   47 +
 Documentation/jtag/jtagdev.rst                |  194 ++++
 .../userspace-api/ioctl/ioctl-number.rst      |    2 +
 MAINTAINERS                                   |   11 +
 drivers/Kconfig                               |    2 +
 drivers/Makefile                              |    1 +
 drivers/jtag/Kconfig                          |   31 +
 drivers/jtag/Makefile                         |    2 +
 drivers/jtag/jtag-aspeed.c                    | 1027 +++++++++++++++++
 drivers/jtag/jtag.c                           |  301 +++++
 include/linux/jtag.h                          |   44 +
 include/uapi/linux/jtag.h                     |  194 ++++
 16 files changed, 1969 insertions(+)
 create mode 100644 Documentation/ABI/testing/jtag-dev
 create mode 100644 Documentation/devicetree/bindings/jtag/aspeed-jtag.yaml
 create mode 100644 Documentation/jtag/index.rst
 create mode 100644 Documentation/jtag/jtag-summary.rst
 create mode 100644 Documentation/jtag/jtagdev.rst
 create mode 100644 drivers/jtag/Kconfig
 create mode 100644 drivers/jtag/Makefile
 create mode 100644 drivers/jtag/jtag-aspeed.c
 create mode 100644 drivers/jtag/jtag.c
 create mode 100644 include/linux/jtag.h
 create mode 100644 include/uapi/linux/jtag.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
