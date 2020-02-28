Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 984D1174221
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 23:42:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CEJfdDeHym9Q9hP7Br8K2cO69I0VU+H6EwvN2ZkAGEY=; b=eyuBJoH2SjtzOo
	Oz/re9SwrRLNANjS20vPw9gfci3Hb2+CxiayUPqOK6sO8YlrVPbbyLBM3c5K4whazl2u6u6J2UAWW
	M7Bow/jN5MWzvBbKvuvU0WXSemmlC4YZqceAc6LcWESHSIE5ZsW3MWTaSaTR+/7wuhohzl2QYq3ER
	12GxmX+2w2k4qPlSQuvSwdM+W0fgYqFY3VLZziO4W3lVrYvc6dR5IFQcWdrfeD/fK0POAULtpyeua
	MzVmI9/S4ZnCVoLI9FnHwSDQFjOhlPg1JyfRmGGgarPt05xQodvNkwy8FZT1U0mG+wLxJsW+Q4iP1
	EDFIXUOEbiGDCXASGevw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7oL5-0003g3-SJ; Fri, 28 Feb 2020 22:42:35 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7oKh-0003fE-LI
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 22:42:13 +0000
Received: by mail-yw1-xc42.google.com with SMTP id n127so4915318ywd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 14:42:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oMZxZrJ7Bl6W7lIllps1//BZzQUZEEMLhplq5QKAqeg=;
 b=oDzkbR7R4NzPzmaT//fTmrzHcCOKEMQHBe9r7VqhE/ldZx8JdDmCONOjnyK/uYRDKj
 mabkq79qRqJFZc3w4CK7VhFMvdD5YMSC8mnkI5sn/Z9fREwE2S8WGpbjppe0XUp9N9p4
 Q/98pdlJq28+U8ixvVWL4fZ7tL+9/Uk5F9CDtLpIaMlNeY1ncYQ26MUqRR0wSXJk5MJv
 buWtsnriVQeWjjWc5v3fj1hgaF8OToIEcqHOf38c3AEkiic8+HDTQLOvtqr8HP1WyRSS
 qACdW2pHSHnSbcR7+CS5mHA6ICpZTuA5ajDJG0+bjZE0Ru3AM2qyQ5ageuDrWXPyHhcX
 fiQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oMZxZrJ7Bl6W7lIllps1//BZzQUZEEMLhplq5QKAqeg=;
 b=oW95StWHjzq9+daXCos9WdsdREx3lx0d3hGQhNFNqo84D9HGZwHUcSOkgoiOSFsS7Y
 vgbvAUs2IT+6IQeG03tquC8GROuvLC72ry/kQ+YXLhbtXY5KEo+b4cBu7aWiTgB/OYic
 OZ/0YdHf9iPtViD40JwUQ7mBMRp5Tb3nOzgOFbMmW/kM1yKkq/mOQ6eokiVaArF+RSxG
 qZshEz++Hg+Eksegf+k8gfHPzrv5Md1geb6pjVnlsF87rvkpfiXAfqX/IPS0BiUT9ST6
 2HsSVRk+wpp2M7zURF0tk1b6TjZaHO02tUO8yh9JJfBGF46Fth1mcRIqsq0C9b/trynf
 XCHA==
X-Gm-Message-State: APjAAAWIInEZBCaNNNTurMZqseHDik2Z9CMOnxjQcutLFz+4a479oiPJ
 w+Ru/6vf+w5aQ30PWRwih+wZ4A==
X-Google-Smtp-Source: APXvYqwbqaT0saJvvn1kO9AMPxhCtCU02r6P8JPFybRCZw7gJ1GttFT36f9OLbROm/kzLbUGxjOrBg==
X-Received: by 2002:a81:82c5:: with SMTP id s188mr6858670ywf.59.1582929729704; 
 Fri, 28 Feb 2020 14:42:09 -0800 (PST)
Received: from localhost.localdomain (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.gmail.com with ESMTPSA id d188sm4637830ywe.50.2020.02.28.14.42.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 14:42:08 -0800 (PST)
From: Alex Elder <elder@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>,
	David Miller <davem@davemloft.net>
Subject: [PATCH 00/17] net: introduce Qualcomm IPA driver (UPDATED)
Date: Fri, 28 Feb 2020 16:41:47 -0600
Message-Id: <20200228224204.17746-1-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_144211_704759_5D762919 
X-CRM114-Status: GOOD (  27.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Susheel Yadav Yadagiri <syadagir@codeaurora.org>,
 Eric Caruso <ejcaruso@google.com>, devicetree@vger.kernel.org,
 Dan Williams <dcbw@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 Evan Green <evgreen@google.com>, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 Johannes Berg <johannes@sipsolutions.net>, linux-soc@vger.kernel.org,
 Siddharth Gupta <sidgup@codeaurora.org>,
 Chaitanya Pratapa <cpratapa@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series presents the driver for the Qualcomm IP Accelerator (IPA).

I have posted earlier versions of this code previously, but it has
undergone quite a bit of development since the last time, so rather
than calling it "version 3" I'm just treating it as a new series
(indicating it's been updated in this message).  The fast/data path
is the same as before.  But the driver now (nearly) supports a
second platform, its transaction handling has been generalized
and improved, and modem activities are now handled in a more
unified way.

This series is available (based on v5.6-rc3) in branch "ipa_updated-v1"
in this git repository:
  https://git.linaro.org/people/alex.elder/linux.git

The branch depends on other code that I sent out for review earlier
today.  The first is a very simple patch (which I already know will
be updated, but generally seems acceptable), and the second is a small
series of bugfixes for remoteproc:
  https://lore.kernel.org/lkml/20200228165343.8272-1-elder@linaro.org/
  https://lore.kernel.org/lkml/20200228183359.16229-1-elder@linaro.org/


I want to address some of the discussion that arose last time.

First, there was the WWAN discussion.  Here's the history:
  - This was last posted nine months ago.
  - Reviewers at that time favored developing a new WWAN subsystem that
    would be used for managing devices like this.  And the suggestion
    was to not accept this driver until that could be developed.
  - Along the way, Apple acquired much of Intel's modem business.
    And as a result, the generic framework became less pressing.
  - I did participate in the WWAN subsystem design however, and
    although it went dormant for a while it's been resurrected:
      https://lore.kernel.org/netdev/20200225100053.16385-1-johannes@sipsolutions.net/
  - Unfortunately the proposed WWAN design was not an easy fit
    with Qualcomm's integrated modem interfaces.  Given that
    rmnet is a supported link type for in the upstream "iproute2"
    package (more on this below), I have opted not to integrate
    with any WWAN subsystem.

So in summary, this driver does not integrate with a generic WWAN
framework.  And I'd like it to be accepted upstream despite that.


Next, Arnd Bergmann had some concerns about flow control.  (Note:
some of my discussions with Arnd about this were offline.) The
overall architecture here also involves the "rmnet" driver:
  drivers/net/ethernet/qualcomm/rmnet

The rmnet driver presents a network device for use.  It connects
with another network device presented, by the IPA driver.  The
rmnet driver wraps (and unwraps) packets transferred to (and from)
the IPA driver with QMAP headers.

   ---------------
   | rmnet_data0 |    <-- "real" netdev
   ---------------
          ||       }- QMAP spoken here
   --------------
   | rmnet_ipa0 |     <-- also netdev, transporting QMAP packets
   --------------
          ||
   --------------
  ( IPA hardware )
   --------------

Arnd's concern was that the rmnet_data0 network device does not
have the benefit of information about the state of the underlying
IPA hardware in order to be effective in controlling TX flow.
The feared result is over-buffering of TX packets (bufferbloat).
I began working on some simple experiments to see whether (or how
much) his concern was warranted.  But it turned out that completing
these experiments was much more work than had been hoped.

The rmnet driver is present in the upstream kernel.  There is also
support for the rmnet link type in the upstream "ip" user space
command in the "iproute2" package.  Changing the layering of rmnet
over IPA likely involves deprecating the rmnet driver and its
support in "iproute2".  I would really rather not go down that
path.

There is precedent for this sort of layering of network devices
(L2TP, VLAN).  And any architecture like this would suffer the
issues Arnd mentioned; the problem is not limited to rmnet and IPA.
I do think this is a problem worth solving, but the prudent thing
to do might be to try to solve it more generally.

So to summarize on this issue, this driver does not attempt to
change the way the rmnet and IPA drivers work together.  And even
though I think Arnd's concerns warrant more investigation, I'd like
this driver to to be accepted upstream without any change to this
architecture.


Finally, a more technical description for the series, and some
acknowledgements to some people who contributed to it.

The IPA is a component present in some Qualcomm SoCs that allows
network functions such as aggregation, filtering, routing, and NAT
to be performed without active involvement of the main application
processor (AP).

In this initial patch series these advanced features are not
implemented.  The IPA driver simply provides a network interface
that makes the modem's LTE network available in Linux.  This initial
series supports only the Qualcomm SDM845 SoC.  The Qualcomm SC7180
SoC is partially supported, and support for other platforms will
follow.

This code is derived from a driver developed by Qualcomm.  A version
of the original source can be seen here:
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

					-Alex

Alex Elder (17):
  remoteproc: add IPA notification to q6v5 driver
  dt-bindings: soc: qcom: add IPA bindings
  soc: qcom: ipa: main code
  soc: qcom: ipa: configuration data
  soc: qcom: ipa: clocking, interrupts, and memory
  soc: qcom: ipa: GSI headers
  soc: qcom: ipa: the generic software interface
  soc: qcom: ipa: IPA interface to GSI
  soc: qcom: ipa: GSI transactions
  soc: qcom: ipa: IPA endpoints
  soc: qcom: ipa: filter and routing tables
  soc: qcom: ipa: immediate commands
  soc: qcom: ipa: modem and microcontroller
  soc: qcom: ipa: AP/modem communications
  soc: qcom: ipa: support build of IPA code
  MAINTAINERS: add entry for the Qualcomm IPA driver
  arm64: dts: sdm845: add IPA information

 .../devicetree/bindings/net/qcom,ipa.yaml     |  192 ++
 MAINTAINERS                                   |    6 +
 arch/arm64/boot/dts/qcom/sdm845.dtsi          |   51 +
 drivers/net/Kconfig                           |    2 +
 drivers/net/Makefile                          |    1 +
 drivers/net/ipa/Kconfig                       |   19 +
 drivers/net/ipa/Makefile                      |   12 +
 drivers/net/ipa/gsi.c                         | 2097 +++++++++++++++++
 drivers/net/ipa/gsi.h                         |  257 ++
 drivers/net/ipa/gsi_private.h                 |  118 +
 drivers/net/ipa/gsi_reg.h                     |  417 ++++
 drivers/net/ipa/gsi_trans.c                   |  786 ++++++
 drivers/net/ipa/gsi_trans.h                   |  226 ++
 drivers/net/ipa/ipa.h                         |  148 ++
 drivers/net/ipa/ipa_clock.c                   |  313 +++
 drivers/net/ipa/ipa_clock.h                   |   53 +
 drivers/net/ipa/ipa_cmd.c                     |  680 ++++++
 drivers/net/ipa/ipa_cmd.h                     |  195 ++
 drivers/net/ipa/ipa_data-sc7180.c             |  307 +++
 drivers/net/ipa/ipa_data-sdm845.c             |  329 +++
 drivers/net/ipa/ipa_data.h                    |  280 +++
 drivers/net/ipa/ipa_endpoint.c                | 1706 ++++++++++++++
 drivers/net/ipa/ipa_endpoint.h                |  110 +
 drivers/net/ipa/ipa_gsi.c                     |   54 +
 drivers/net/ipa/ipa_gsi.h                     |   60 +
 drivers/net/ipa/ipa_interrupt.c               |  253 ++
 drivers/net/ipa/ipa_interrupt.h               |  117 +
 drivers/net/ipa/ipa_main.c                    |  954 ++++++++
 drivers/net/ipa/ipa_mem.c                     |  314 +++
 drivers/net/ipa/ipa_mem.h                     |   90 +
 drivers/net/ipa/ipa_modem.c                   |  383 +++
 drivers/net/ipa/ipa_modem.h                   |   31 +
 drivers/net/ipa/ipa_qmi.c                     |  538 +++++
 drivers/net/ipa/ipa_qmi.h                     |   41 +
 drivers/net/ipa/ipa_qmi_msg.c                 |  663 ++++++
 drivers/net/ipa/ipa_qmi_msg.h                 |  252 ++
 drivers/net/ipa/ipa_reg.c                     |   38 +
 drivers/net/ipa/ipa_reg.h                     |  476 ++++
 drivers/net/ipa/ipa_smp2p.c                   |  335 +++
 drivers/net/ipa/ipa_smp2p.h                   |   48 +
 drivers/net/ipa/ipa_table.c                   |  700 ++++++
 drivers/net/ipa/ipa_table.h                   |  103 +
 drivers/net/ipa/ipa_uc.c                      |  211 ++
 drivers/net/ipa/ipa_uc.h                      |   32 +
 drivers/net/ipa/ipa_version.h                 |   23 +
 drivers/remoteproc/Kconfig                    |    6 +
 drivers/remoteproc/Makefile                   |    1 +
 drivers/remoteproc/qcom_q6v5_ipa_notify.c     |   85 +
 drivers/remoteproc/qcom_q6v5_mss.c            |   42 +-
 .../linux/remoteproc/qcom_q6v5_ipa_notify.h   |   82 +
 50 files changed, 14235 insertions(+), 2 deletions(-)
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
 create mode 100644 drivers/net/ipa/ipa_data-sc7180.c
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
 create mode 100644 drivers/net/ipa/ipa_modem.c
 create mode 100644 drivers/net/ipa/ipa_modem.h
 create mode 100644 drivers/net/ipa/ipa_qmi.c
 create mode 100644 drivers/net/ipa/ipa_qmi.h
 create mode 100644 drivers/net/ipa/ipa_qmi_msg.c
 create mode 100644 drivers/net/ipa/ipa_qmi_msg.h
 create mode 100644 drivers/net/ipa/ipa_reg.c
 create mode 100644 drivers/net/ipa/ipa_reg.h
 create mode 100644 drivers/net/ipa/ipa_smp2p.c
 create mode 100644 drivers/net/ipa/ipa_smp2p.h
 create mode 100644 drivers/net/ipa/ipa_table.c
 create mode 100644 drivers/net/ipa/ipa_table.h
 create mode 100644 drivers/net/ipa/ipa_uc.c
 create mode 100644 drivers/net/ipa/ipa_uc.h
 create mode 100644 drivers/net/ipa/ipa_version.h
 create mode 100644 drivers/remoteproc/qcom_q6v5_ipa_notify.c
 create mode 100644 include/linux/remoteproc/qcom_q6v5_ipa_notify.h

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
