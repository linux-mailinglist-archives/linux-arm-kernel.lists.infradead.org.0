Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C431330727
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 05:54:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n4cfYKCqucJ2aZxbtUtTLzaICeP+X7Ta7BzxOYWcyyg=; b=X17grN5way9Wfc
	FHm1DKsNLwBCR92mK+CJN3Uc3AX2htHpOyHUXncYopmt0CYn5BzCWM5baZ6ZbEGWyATE96qwPDxlO
	Bqcnmg+GHed/IoWjupK2/xKXCKKXWYI3oD+zQj6a2m+2mUkav19Tx7k3p+g+pA3C1F9SGv1Nvbymk
	jDZD9oDUQ7bYfwJW+X4MaTqnqTI1Azclo0edEFapEtQNMutyXFNBaqtyKkHpP3lrFEl2W7xDth5ON
	abG4XWza+ZRQrTcDVI36R6Wj7SRcSsnfakkfnpldy9fTZzgBSHeIFAzFX/7QMVsUBynR73BvuWYKR
	SuX4iDxI1QgRjfO+DQqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWYcc-0002uT-Go; Fri, 31 May 2019 03:54:26 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWYc9-0002Yi-A2
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 03:53:59 +0000
Received: by mail-io1-xd42.google.com with SMTP id p2so7030854iol.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 20:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qiDwYYLK/UhIbl9s/WpybFHrIbRZZe2OI2BUDB/tIvk=;
 b=px5Z06FdMy/JpNuYqv+FKrw8GhwQsE2VohNj+jatep9R5Meu5nZ6CSqyF4wiTBg+xF
 0yi5y+nqqEhQQrC7vcqN06gyr531mdgyGueFaO1IUnXQABlnhTTu63LTa81AgumVKnMg
 s4FiYRUm/fRZx2k4Cu5TChMV0yqefpmNf3iak4VhDBn7ppY1J9vr9ScrYzuRmoKAqHne
 b1UG2reRgeVrqBn9/zANoLv5beuZsT//8PAoVEFJAWYFV4eK6l3r9iVNJM0WY7x0naUv
 mZLE05DKlE6PhWtYXdLbaSnCV8jeTLuh3f/Qisjg6DnY5pllliSoFDcSoOjOt6trHwOt
 VNjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qiDwYYLK/UhIbl9s/WpybFHrIbRZZe2OI2BUDB/tIvk=;
 b=tNHHwQL/2+c4Sygmu5soEgv/dl+Iihmz0q4hzvEavazRFFjHITPmJRsR9L48ZU3MZY
 +6oPnnIhBttEpbyqX1MvtXOeOKzY2WRN8G7P3AjXV3dneOkhhmbn2fJ5OoSyyJiofZrL
 mjcX8W+vzXffvwDH/sH5wP1If42yajIXLrarihaqwAGczk+nG4M2kXCnWTQDCHehVAml
 k8Z4FzbEFTns5GbLsFzxrfNEKXH8wy+rcaXRqwpECL8VgHW5yjK48W9i0jR6+yexC0xa
 qV9gH5qtP4CGhpdl2RoZCic0Qt7zFc0cpX3HwQr0LbsB2p9+PqAq5DCtubmCp7Snl6rt
 XW3A==
X-Gm-Message-State: APjAAAV6couHMTrcDGF9i0t5YDPjbxvDRylSUCxF7E1Fj3fYu+THCKZh
 cOqcUWgmehGyJWoGEvdbkMBXuA==
X-Google-Smtp-Source: APXvYqzOaHwFk2Rpm4cpNWk1k94aEB87yYlehJT0O1ztWzvpmoc2TZzi2kk704LSMF3NrCXnexbijg==
X-Received: by 2002:a5d:804f:: with SMTP id b15mr4963187ior.189.1559274835505; 
 Thu, 30 May 2019 20:53:55 -0700 (PDT)
Received: from localhost.localdomain (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.gmail.com with ESMTPSA id q15sm1626947ioi.15.2019.05.30.20.53.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 20:53:55 -0700 (PDT)
From: Alex Elder <elder@linaro.org>
To: davem@davemloft.net, arnd@arndb.de, bjorn.andersson@linaro.org,
 ilias.apalodimas@linaro.org
Subject: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
Date: Thu, 30 May 2019 22:53:31 -0500
Message-Id: <20190531035348.7194-1-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_205357_438284_45BFCBE4 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, syadagir@codeaurora.org, ejcaruso@google.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, evgreen@chromium.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 subashab@codeaurora.org, linux-soc@vger.kernel.org, abhishek.esse@gmail.com,
 cpratapa@codeaurora.org, benchan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series presents the driver for the Qualcomm IP Accelerator (IPA).

This is version 2 of the series.  This version has addressed almost
all of the feedback received in the first version:
  https://lore.kernel.org/lkml/20190512012508.10608-1-elder@linaro.org/
More detail is included in the individual patches, but here is a
high-level summary of what's changed since then:
  - Two spinlocks have been removed.
      - The code for enabling and disabling endpoint interrupts has
        been simplified considerably, and the spinlock is no longer
	required
      - A spinlock used when updating ring buffer pointers is no
        longer needed.  Integers indexing the ring are used instead
	(and they don't even have to be atomic).
  - One spinlock remains to protect list updates, but it is always
    acquired using spin_lock_bh() (no more irqsave).
  - Information about the queueing and completion of messages is now
    supplied to the network stack in batches rather than one at a
    time.
  - I/O completion handling has been simplified, with the IRQ
    handler now consisting mainly of disabling the interrupt and
    calling napi_schedule().
  - Some comments have been updated and improved througout.

What follows is the introduction supplied with v1 of the series.

-----

The IPA is a component present in some Qualcomm SoCs that allows
network functions such as aggregation, filtering, routing, and NAT
to be performed without active involvement of the main application
processor (AP).

Initially, these advanced features are disabled; the IPA driver
simply provides a network interface that makes the modem's LTE
network available to the AP.  In addition, only support for the
IPA found in the Qualcomm SDM845 SoC is provided.

This code is derived from a driver developed internally by Qualcomm.
A version of the original source can be seen here:
  https://source.codeaurora.org/quic/la/kernel/msm-4.9/tree
in the "drivers/platform/msm/ipa" directory.  Many were involved in
developing this, but the following individuals deserve explicit
acknowledgement for their substantial contributions:

    Abhishek Choubey
    Ady Abraham
    Chaitanya Pratapa
    David Arinzon
    Ghanim Fodi
    Gidon Studinski
    Ravi Gummadidala
    Shihuan Liu
    Skylar Chang

A version of this code was posted in November 2018 as an RFC.
  https://lore.kernel.org/lkml/20181107003250.5832-1-elder@linaro.org/
All feedback received was addressed.  The code has undergone
considerable further rework since that time, and most of the
"future work" described then has now been completed.

This code is available in buildable form here, based on kernel
v5.2-rc1:
  remote: ssh://git@git.linaro.org/people/alex.elder/linux.git
  branch: ipa-v2_kernel-v5.2-rc2
    75adf2ac1266 arm64: defconfig: enable build of IPA code

The branch depends on a commit now found in in net-next.  It has
been cherry-picked, and (in this branch) has this commit ID:
  13c627b5a078 net: qualcomm: rmnet: Move common struct definitions to include
by 

					-Alex

Alex Elder (17):
  bitfield.h: add FIELD_MAX() and field_max()
  dt-bindings: soc: qcom: add IPA bindings
  soc: qcom: ipa: main code
  soc: qcom: ipa: configuration data
  soc: qcom: ipa: clocking, interrupts, and memory
  soc: qcom: ipa: GSI headers
  soc: qcom: ipa: the generic software interface
  soc: qcom: ipa: GSI transactions
  soc: qcom: ipa: IPA interface to GSI
  soc: qcom: ipa: IPA endpoints
  soc: qcom: ipa: immediate commands
  soc: qcom: ipa: IPA network device and microcontroller
  soc: qcom: ipa: AP/modem communications
  soc: qcom: ipa: support build of IPA code
  MAINTAINERS: add entry for the Qualcomm IPA driver
  arm64: dts: sdm845: add IPA information
  arm64: defconfig: enable build of IPA code

 .../devicetree/bindings/net/qcom,ipa.yaml     |  180 ++
 MAINTAINERS                                   |    6 +
 arch/arm64/boot/dts/qcom/sdm845.dtsi          |   51 +
 arch/arm64/configs/defconfig                  |    1 +
 drivers/net/Kconfig                           |    2 +
 drivers/net/Makefile                          |    1 +
 drivers/net/ipa/Kconfig                       |   16 +
 drivers/net/ipa/Makefile                      |    7 +
 drivers/net/ipa/gsi.c                         | 1635 +++++++++++++++++
 drivers/net/ipa/gsi.h                         |  246 +++
 drivers/net/ipa/gsi_private.h                 |  148 ++
 drivers/net/ipa/gsi_reg.h                     |  376 ++++
 drivers/net/ipa/gsi_trans.c                   |  624 +++++++
 drivers/net/ipa/gsi_trans.h                   |  116 ++
 drivers/net/ipa/ipa.h                         |  131 ++
 drivers/net/ipa/ipa_clock.c                   |  297 +++
 drivers/net/ipa/ipa_clock.h                   |   52 +
 drivers/net/ipa/ipa_cmd.c                     |  377 ++++
 drivers/net/ipa/ipa_cmd.h                     |  116 ++
 drivers/net/ipa/ipa_data-sdm845.c             |  245 +++
 drivers/net/ipa/ipa_data.h                    |  267 +++
 drivers/net/ipa/ipa_endpoint.c                | 1283 +++++++++++++
 drivers/net/ipa/ipa_endpoint.h                |   97 +
 drivers/net/ipa/ipa_gsi.c                     |   48 +
 drivers/net/ipa/ipa_gsi.h                     |   49 +
 drivers/net/ipa/ipa_interrupt.c               |  279 +++
 drivers/net/ipa/ipa_interrupt.h               |   53 +
 drivers/net/ipa/ipa_main.c                    |  921 ++++++++++
 drivers/net/ipa/ipa_mem.c                     |  234 +++
 drivers/net/ipa/ipa_mem.h                     |   83 +
 drivers/net/ipa/ipa_netdev.c                  |  251 +++
 drivers/net/ipa/ipa_netdev.h                  |   24 +
 drivers/net/ipa/ipa_qmi.c                     |  402 ++++
 drivers/net/ipa/ipa_qmi.h                     |   35 +
 drivers/net/ipa/ipa_qmi_msg.c                 |  583 ++++++
 drivers/net/ipa/ipa_qmi_msg.h                 |  238 +++
 drivers/net/ipa/ipa_reg.h                     |  279 +++
 drivers/net/ipa/ipa_smp2p.c                   |  304 +++
 drivers/net/ipa/ipa_smp2p.h                   |   47 +
 drivers/net/ipa/ipa_uc.c                      |  208 +++
 drivers/net/ipa/ipa_uc.h                      |   32 +
 include/linux/bitfield.h                      |   14 +
 42 files changed, 10358 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/qcom,ipa.yaml
 create mode 100644 drivers/net/ipa/Kconfig
 create mode 100644 drivers/net/ipa/Makefile
 create mode 100644 drivers/net/ipa/gsi.c
 create mode 100644 drivers/net/ipa/gsi.h
 create mode 100644 drivers/net/ipa/gsi_private.h
 create mode 100644 drivers/net/ipa/gsi_reg.h
 create mode 100644 drivers/net/ipa/gsi_trans.c
 create mode 100644 drivers/net/ipa/gsi_trans.h
 create mode 100644 drivers/net/ipa/ipa.h
 create mode 100644 drivers/net/ipa/ipa_clock.c
 create mode 100644 drivers/net/ipa/ipa_clock.h
 create mode 100644 drivers/net/ipa/ipa_cmd.c
 create mode 100644 drivers/net/ipa/ipa_cmd.h
 create mode 100644 drivers/net/ipa/ipa_data-sdm845.c
 create mode 100644 drivers/net/ipa/ipa_data.h
 create mode 100644 drivers/net/ipa/ipa_endpoint.c
 create mode 100644 drivers/net/ipa/ipa_endpoint.h
 create mode 100644 drivers/net/ipa/ipa_gsi.c
 create mode 100644 drivers/net/ipa/ipa_gsi.h
 create mode 100644 drivers/net/ipa/ipa_interrupt.c
 create mode 100644 drivers/net/ipa/ipa_interrupt.h
 create mode 100644 drivers/net/ipa/ipa_main.c
 create mode 100644 drivers/net/ipa/ipa_mem.c
 create mode 100644 drivers/net/ipa/ipa_mem.h
 create mode 100644 drivers/net/ipa/ipa_netdev.c
 create mode 100644 drivers/net/ipa/ipa_netdev.h
 create mode 100644 drivers/net/ipa/ipa_qmi.c
 create mode 100644 drivers/net/ipa/ipa_qmi.h
 create mode 100644 drivers/net/ipa/ipa_qmi_msg.c
 create mode 100644 drivers/net/ipa/ipa_qmi_msg.h
 create mode 100644 drivers/net/ipa/ipa_reg.h
 create mode 100644 drivers/net/ipa/ipa_smp2p.c
 create mode 100644 drivers/net/ipa/ipa_smp2p.h
 create mode 100644 drivers/net/ipa/ipa_uc.c
 create mode 100644 drivers/net/ipa/ipa_uc.h

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
