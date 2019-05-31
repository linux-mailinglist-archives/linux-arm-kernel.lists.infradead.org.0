Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0311F310C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 16:59:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1MDMBGGo6TWGP+5BfQXI5fzLGqsSwfgG7jaOGbkGB0I=; b=WNxYqM9F8x9Ceb
	jqV9CcALhTKIUjtHIRxujDVvcxo4/MUFp3x42emJBL4/FFpRsmZh7sHmnu147URuF5PdS0b1SCGpd
	9wQKi5XDRehovENm41PbK01GvHvhP36dXzOtYALR8ez4YRZn6xyx2ZG3q8eWbNl3oyJKOJeRCJRSf
	so/rBTr1/xeKjzM+Q8D+V5v/B9dyLmPNIQV9+ULYDWQSKXo5/X8WQfh1gjXp1LNU26UA6dzFzgtSd
	uB9ySI7hzD86k1RmCPuEDstTuvvToz64Kv/vLGndN5FAgtbukKN0EMY58vs5/NWcwQZp8DBbG7Mfh
	HQyIaq3DLFS0egiW0n7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWj0D-0001U5-HU; Fri, 31 May 2019 14:59:29 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWj03-0001TG-Di
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 14:59:22 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 57F013078AAE;
 Fri, 31 May 2019 14:59:10 +0000 (UTC)
Received: from ovpn-112-17.rdu2.redhat.com (ovpn-112-17.rdu2.redhat.com
 [10.10.112.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D8202891B0;
 Fri, 31 May 2019 14:58:59 +0000 (UTC)
Message-ID: <e75cd1c111233fdc05f47017046a6b0f0c97673a.camel@redhat.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
From: Dan Williams <dcbw@redhat.com>
To: Alex Elder <elder@linaro.org>, davem@davemloft.net, arnd@arndb.de, 
 bjorn.andersson@linaro.org, ilias.apalodimas@linaro.org
Date: Fri, 31 May 2019 09:58:58 -0500
In-Reply-To: <20190531035348.7194-1-elder@linaro.org>
References: <20190531035348.7194-1-elder@linaro.org>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Fri, 31 May 2019 14:59:13 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_075919_509535_49AA08B1 
X-CRM114-Status: GOOD (  31.80  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Thu, 2019-05-30 at 22:53 -0500, Alex Elder wrote:
> This series presents the driver for the Qualcomm IP Accelerator
> (IPA).
> 
> This is version 2 of the series.  This version has addressed almost
> all of the feedback received in the first version:
>   
> https://lore.kernel.org/lkml/20190512012508.10608-1-elder@linaro.org/
> More detail is included in the individual patches, but here is a
> high-level summary of what's changed since then:
>   - Two spinlocks have been removed.
>       - The code for enabling and disabling endpoint interrupts has
>         been simplified considerably, and the spinlock is no longer
> 	required
>       - A spinlock used when updating ring buffer pointers is no
>         longer needed.  Integers indexing the ring are used instead
> 	(and they don't even have to be atomic).
>   - One spinlock remains to protect list updates, but it is always
>     acquired using spin_lock_bh() (no more irqsave).
>   - Information about the queueing and completion of messages is now
>     supplied to the network stack in batches rather than one at a
>     time.
>   - I/O completion handling has been simplified, with the IRQ
>     handler now consisting mainly of disabling the interrupt and
>     calling napi_schedule().
>   - Some comments have been updated and improved througout.
> 
> What follows is the introduction supplied with v1 of the series.
> 
> -----
> 
> The IPA is a component present in some Qualcomm SoCs that allows
> network functions such as aggregation, filtering, routing, and NAT
> to be performed without active involvement of the main application
> processor (AP).
> 
> Initially, these advanced features are disabled; the IPA driver
> simply provides a network interface that makes the modem's LTE
> network available to the AP.  In addition, only support for the
> IPA found in the Qualcomm SDM845 SoC is provided.

My question from the Nov 2018 IPA rmnet driver still stands; how does
this relate to net/ethernet/qualcomm/rmnet/ if at all? And if this is
really just a netdev talking to the IPA itself and unrelated to
net/ethernet/qualcomm/rmnet, let's call it "ipa%d" and stop cargo-
culting rmnet around just because it happens to be a net driver for a
QC SoC.

Is the firmware that the driver loads already in linux-firmware or
going to be there soon?

How does the driver support multiple PDNs (eg PDP or EPS contexts) that
are enabled through the control plane via QMI messages? I couldn't
quite find that out.

Thanks,
Dan

> This code is derived from a driver developed internally by Qualcomm.
> A version of the original source can be seen here:
>   https://source.codeaurora.org/quic/la/kernel/msm-4.9/tree
> in the "drivers/platform/msm/ipa" directory.  Many were involved in
> developing this, but the following individuals deserve explicit
> acknowledgement for their substantial contributions:
> 
>     Abhishek Choubey
>     Ady Abraham
>     Chaitanya Pratapa
>     David Arinzon
>     Ghanim Fodi
>     Gidon Studinski
>     Ravi Gummadidala
>     Shihuan Liu
>     Skylar Chang
> 
> A version of this code was posted in November 2018 as an RFC.
>   
> https://lore.kernel.org/lkml/20181107003250.5832-1-elder@linaro.org/
> All feedback received was addressed.  The code has undergone
> considerable further rework since that time, and most of the
> "future work" described then has now been completed.
> 
> This code is available in buildable form here, based on kernel
> v5.2-rc1:
>   remote: ssh://git@git.linaro.org/people/alex.elder/linux.git
>   branch: ipa-v2_kernel-v5.2-rc2
>     75adf2ac1266 arm64: defconfig: enable build of IPA code
> 
> The branch depends on a commit now found in in net-next.  It has
> been cherry-picked, and (in this branch) has this commit ID:
>   13c627b5a078 net: qualcomm: rmnet: Move common struct definitions
> to include
> by 
> 
> 					-Alex
> 
> Alex Elder (17):
>   bitfield.h: add FIELD_MAX() and field_max()
>   dt-bindings: soc: qcom: add IPA bindings
>   soc: qcom: ipa: main code
>   soc: qcom: ipa: configuration data
>   soc: qcom: ipa: clocking, interrupts, and memory
>   soc: qcom: ipa: GSI headers
>   soc: qcom: ipa: the generic software interface
>   soc: qcom: ipa: GSI transactions
>   soc: qcom: ipa: IPA interface to GSI
>   soc: qcom: ipa: IPA endpoints
>   soc: qcom: ipa: immediate commands
>   soc: qcom: ipa: IPA network device and microcontroller
>   soc: qcom: ipa: AP/modem communications
>   soc: qcom: ipa: support build of IPA code
>   MAINTAINERS: add entry for the Qualcomm IPA driver
>   arm64: dts: sdm845: add IPA information
>   arm64: defconfig: enable build of IPA code
> 
>  .../devicetree/bindings/net/qcom,ipa.yaml     |  180 ++
>  MAINTAINERS                                   |    6 +
>  arch/arm64/boot/dts/qcom/sdm845.dtsi          |   51 +
>  arch/arm64/configs/defconfig                  |    1 +
>  drivers/net/Kconfig                           |    2 +
>  drivers/net/Makefile                          |    1 +
>  drivers/net/ipa/Kconfig                       |   16 +
>  drivers/net/ipa/Makefile                      |    7 +
>  drivers/net/ipa/gsi.c                         | 1635
> +++++++++++++++++
>  drivers/net/ipa/gsi.h                         |  246 +++
>  drivers/net/ipa/gsi_private.h                 |  148 ++
>  drivers/net/ipa/gsi_reg.h                     |  376 ++++
>  drivers/net/ipa/gsi_trans.c                   |  624 +++++++
>  drivers/net/ipa/gsi_trans.h                   |  116 ++
>  drivers/net/ipa/ipa.h                         |  131 ++
>  drivers/net/ipa/ipa_clock.c                   |  297 +++
>  drivers/net/ipa/ipa_clock.h                   |   52 +
>  drivers/net/ipa/ipa_cmd.c                     |  377 ++++
>  drivers/net/ipa/ipa_cmd.h                     |  116 ++
>  drivers/net/ipa/ipa_data-sdm845.c             |  245 +++
>  drivers/net/ipa/ipa_data.h                    |  267 +++
>  drivers/net/ipa/ipa_endpoint.c                | 1283 +++++++++++++
>  drivers/net/ipa/ipa_endpoint.h                |   97 +
>  drivers/net/ipa/ipa_gsi.c                     |   48 +
>  drivers/net/ipa/ipa_gsi.h                     |   49 +
>  drivers/net/ipa/ipa_interrupt.c               |  279 +++
>  drivers/net/ipa/ipa_interrupt.h               |   53 +
>  drivers/net/ipa/ipa_main.c                    |  921 ++++++++++
>  drivers/net/ipa/ipa_mem.c                     |  234 +++
>  drivers/net/ipa/ipa_mem.h                     |   83 +
>  drivers/net/ipa/ipa_netdev.c                  |  251 +++
>  drivers/net/ipa/ipa_netdev.h                  |   24 +
>  drivers/net/ipa/ipa_qmi.c                     |  402 ++++
>  drivers/net/ipa/ipa_qmi.h                     |   35 +
>  drivers/net/ipa/ipa_qmi_msg.c                 |  583 ++++++
>  drivers/net/ipa/ipa_qmi_msg.h                 |  238 +++
>  drivers/net/ipa/ipa_reg.h                     |  279 +++
>  drivers/net/ipa/ipa_smp2p.c                   |  304 +++
>  drivers/net/ipa/ipa_smp2p.h                   |   47 +
>  drivers/net/ipa/ipa_uc.c                      |  208 +++
>  drivers/net/ipa/ipa_uc.h                      |   32 +
>  include/linux/bitfield.h                      |   14 +
>  42 files changed, 10358 insertions(+)
>  create mode 100644
> Documentation/devicetree/bindings/net/qcom,ipa.yaml
>  create mode 100644 drivers/net/ipa/Kconfig
>  create mode 100644 drivers/net/ipa/Makefile
>  create mode 100644 drivers/net/ipa/gsi.c
>  create mode 100644 drivers/net/ipa/gsi.h
>  create mode 100644 drivers/net/ipa/gsi_private.h
>  create mode 100644 drivers/net/ipa/gsi_reg.h
>  create mode 100644 drivers/net/ipa/gsi_trans.c
>  create mode 100644 drivers/net/ipa/gsi_trans.h
>  create mode 100644 drivers/net/ipa/ipa.h
>  create mode 100644 drivers/net/ipa/ipa_clock.c
>  create mode 100644 drivers/net/ipa/ipa_clock.h
>  create mode 100644 drivers/net/ipa/ipa_cmd.c
>  create mode 100644 drivers/net/ipa/ipa_cmd.h
>  create mode 100644 drivers/net/ipa/ipa_data-sdm845.c
>  create mode 100644 drivers/net/ipa/ipa_data.h
>  create mode 100644 drivers/net/ipa/ipa_endpoint.c
>  create mode 100644 drivers/net/ipa/ipa_endpoint.h
>  create mode 100644 drivers/net/ipa/ipa_gsi.c
>  create mode 100644 drivers/net/ipa/ipa_gsi.h
>  create mode 100644 drivers/net/ipa/ipa_interrupt.c
>  create mode 100644 drivers/net/ipa/ipa_interrupt.h
>  create mode 100644 drivers/net/ipa/ipa_main.c
>  create mode 100644 drivers/net/ipa/ipa_mem.c
>  create mode 100644 drivers/net/ipa/ipa_mem.h
>  create mode 100644 drivers/net/ipa/ipa_netdev.c
>  create mode 100644 drivers/net/ipa/ipa_netdev.h
>  create mode 100644 drivers/net/ipa/ipa_qmi.c
>  create mode 100644 drivers/net/ipa/ipa_qmi.h
>  create mode 100644 drivers/net/ipa/ipa_qmi_msg.c
>  create mode 100644 drivers/net/ipa/ipa_qmi_msg.h
>  create mode 100644 drivers/net/ipa/ipa_reg.h
>  create mode 100644 drivers/net/ipa/ipa_smp2p.c
>  create mode 100644 drivers/net/ipa/ipa_smp2p.h
>  create mode 100644 drivers/net/ipa/ipa_uc.c
>  create mode 100644 drivers/net/ipa/ipa_uc.h
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
