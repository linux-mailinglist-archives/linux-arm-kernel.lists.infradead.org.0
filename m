Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB59831285
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 18:37:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dEhQ4Ly5VLdjJd4vyOnRkv/h0wRBKfap2iycaWc1MFs=; b=Gkl44ybuj8QoLm
	8GMKOQ5LvsuXwKRjPlI6ui21b81xgf1jMPM0Pmgx/YcgTd37KOpDtBCTBeRCdG7QrJClQgNwpYWhE
	SUI0TxwzTSFtFMq+ApsX5FX7zssB7ZnTTPjnQ8mN0F1o3pxR92ktvJyYs4dY+UiojCMfGkvcqw0zZ
	LZPo7ih5WneJP0Tlb0k+6iNlTrfFDtQMCNGLlE8xJYAhcMsbA6tGQl6+wkc8a3i56xRBcRLeabzYh
	H1LBmN5wPUKxVcWAPxQZX7Anh0UO4nceBivB2fF58ZM58YyepKvVazHgd6fzLJfCnxY+ZsuEEpZ1B
	/hF5SiwdH+YlV7eu+B7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWkWa-0005dE-9u; Fri, 31 May 2019 16:37:00 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWkWS-0005cK-IN
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 16:36:54 +0000
Received: by mail-io1-xd41.google.com with SMTP id e3so8679018ioc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 09:36:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=sWH2fRj1Mi7gFEy1Vo3Yban4ZfrElYghc3kI9aR4+g4=;
 b=EaG977szScW8r2vr4msPSESu7B0zum65EZBOErQAq2N32o9DBG6pFfG9P6qstZFi93
 yPit22+S0RkamVcwb3yToQUOGJvx4Yw6B0Nt8/dowbd8OaE2/J0vz0rXzt5eLtlpsqcC
 qhmMlPn7fhNXVeJY8gbtXhBPL1xjxwLZkQ6KWD4pYjrSxJmbm9plyNZ/gmlgkv37Yfgw
 esCNaYzzX0vnPJQpM6V0dpfeGXL+Ic7NZ7ZcI8N16WBif9y+JV8wRyl4IEmWtCWN9R7T
 QpiJdGOdFyWFW/LyaZDXnqz4yoin68RrQ7akFhEnTbfQYY35HzsBySFnhbIrMMBCNvLd
 cVcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sWH2fRj1Mi7gFEy1Vo3Yban4ZfrElYghc3kI9aR4+g4=;
 b=sLZbugYhMf0AfwCBBYgbVSaVqb8yXq5qOSf932nF+qqMXKXB07YT1qROeYPXKdqlME
 tlK+ANgRdc1VNrWp/bFC2V3KTJfEsDpeWOknz15sKzFGM3RLGVLcQh2DpFe+FxQi0NuJ
 qld0XHmQoXk7tpueboH6lG3INOkPDvlei5PkwYg86fyxLDdLrk4aTiYagcoGjng8iQ8O
 tijlxf1b/4ri0YRs5qffJzfr1AnxAtN9uTPhBQXJxpYnGKU2/NNk1ItmLcbYw9apZPj/
 jiM1VNSdZto0RGpQ/uNQK4ZY38x3G2qmgTCM1lNKNeAPXBsBIY5eg8rXAUqxkJgGP1WS
 WznQ==
X-Gm-Message-State: APjAAAUlvWlXM7i5f89FolftihDKPBI7jVyTXBQLzLClzo1vCu8rrehx
 YbCN43qrG1/rzIlCVp8b5t1fGg==
X-Google-Smtp-Source: APXvYqwF1QelzFZK9OIIns6zH2PSZ2TasRMDIzTWOpJ7KwvscJ5avHLcUTTuC1V8jHgWrTx3FSJMFg==
X-Received: by 2002:a6b:8b8b:: with SMTP id n133mr6924128iod.183.1559320611338; 
 Fri, 31 May 2019 09:36:51 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id j13sm1985761iog.78.2019.05.31.09.36.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 May 2019 09:36:50 -0700 (PDT)
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Dan Williams <dcbw@redhat.com>, davem@davemloft.net, arnd@arndb.de,
 bjorn.andersson@linaro.org, ilias.apalodimas@linaro.org
References: <20190531035348.7194-1-elder@linaro.org>
 <e75cd1c111233fdc05f47017046a6b0f0c97673a.camel@redhat.com>
From: Alex Elder <elder@linaro.org>
Message-ID: <065c95a8-7b17-495d-f225-36c46faccdd7@linaro.org>
Date: Fri, 31 May 2019 11:36:48 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <e75cd1c111233fdc05f47017046a6b0f0c97673a.camel@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_093652_610397_6B917AA3 
X-CRM114-Status: GOOD (  31.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On 5/31/19 9:58 AM, Dan Williams wrote:
> On Thu, 2019-05-30 at 22:53 -0500, Alex Elder wrote:
>> This series presents the driver for the Qualcomm IP Accelerator
>> (IPA).
>>
>> This is version 2 of the series.  This version has addressed almost
>> all of the feedback received in the first version:
>>   
>> https://lore.kernel.org/lkml/20190512012508.10608-1-elder@linaro.org/
>> More detail is included in the individual patches, but here is a
>> high-level summary of what's changed since then:
>>   - Two spinlocks have been removed.
>>       - The code for enabling and disabling endpoint interrupts has
>>         been simplified considerably, and the spinlock is no longer
>> 	required
>>       - A spinlock used when updating ring buffer pointers is no
>>         longer needed.  Integers indexing the ring are used instead
>> 	(and they don't even have to be atomic).
>>   - One spinlock remains to protect list updates, but it is always
>>     acquired using spin_lock_bh() (no more irqsave).
>>   - Information about the queueing and completion of messages is now
>>     supplied to the network stack in batches rather than one at a
>>     time.
>>   - I/O completion handling has been simplified, with the IRQ
>>     handler now consisting mainly of disabling the interrupt and
>>     calling napi_schedule().
>>   - Some comments have been updated and improved througout.
>>
>> What follows is the introduction supplied with v1 of the series.
>>
>> -----
>>
>> The IPA is a component present in some Qualcomm SoCs that allows
>> network functions such as aggregation, filtering, routing, and NAT
>> to be performed without active involvement of the main application
>> processor (AP).
>>
>> Initially, these advanced features are disabled; the IPA driver
>> simply provides a network interface that makes the modem's LTE
>> network available to the AP.  In addition, only support for the
>> IPA found in the Qualcomm SDM845 SoC is provided.
> 
> My question from the Nov 2018 IPA rmnet driver still stands; how does
> this relate to net/ethernet/qualcomm/rmnet/ if at all? And if this is
> really just a netdev talking to the IPA itself and unrelated to
> net/ethernet/qualcomm/rmnet, let's call it "ipa%d" and stop cargo-
> culting rmnet around just because it happens to be a net driver for a
> QC SoC.

First, the relationship between the IPA driver and the rmnet driver
is that the IPA driver is assumed to sit between the rmnet driver
and the hardware.

Currently the modem is assumed to use QMAP protocol.  This means
each packet is prefixed by a (struct rmnet_map_header) structure
that allows the IPA connection to be multiplexed for several logical
connections.  The rmnet driver parses such messages and implements
the multiplexed network interfaces.

QMAP protocol can also be used for aggregating many small packets
into a larger message.  The rmnet driver implements de-aggregation
of such messages (and could probably aggregate them for TX as well).

Finally, the IPA can support checksum offload, and the rmnet
driver handles providing a prepended header (for TX) and
interpreting the appended trailer (for RX) if these features
are enabled.

So basically, the purpose of the rmnet driver is to handle QMAP
protocol connections, and right now that's what the modem
provides.

> Is the firmware that the driver loads already in linux-firmware or
> going to be there soon?

It is not right now, and I have no information on when it can be
available.  The AP *can* load the firmware but right now we rely
on the modem doing it (until we can make the firmware available).

> How does the driver support multiple PDNs (eg PDP or EPS contexts) that
> are enabled through the control plane via QMI messages? I couldn't
> quite find that out.

To be honest, I don't know the answer to this.  All of my work
has been on this transport driver and I believe these things
are handled by user space.  But I really don't know details.

					-Alex

> Thanks,
> Dan
> 
>> This code is derived from a driver developed internally by Qualcomm.
>> A version of the original source can be seen here:
>>   https://source.codeaurora.org/quic/la/kernel/msm-4.9/tree
>> in the "drivers/platform/msm/ipa" directory.  Many were involved in
>> developing this, but the following individuals deserve explicit
>> acknowledgement for their substantial contributions:
>>
>>     Abhishek Choubey
>>     Ady Abraham
>>     Chaitanya Pratapa
>>     David Arinzon
>>     Ghanim Fodi
>>     Gidon Studinski
>>     Ravi Gummadidala
>>     Shihuan Liu
>>     Skylar Chang
>>
>> A version of this code was posted in November 2018 as an RFC.
>>   
>> https://lore.kernel.org/lkml/20181107003250.5832-1-elder@linaro.org/
>> All feedback received was addressed.  The code has undergone
>> considerable further rework since that time, and most of the
>> "future work" described then has now been completed.
>>
>> This code is available in buildable form here, based on kernel
>> v5.2-rc1:
>>   remote: ssh://git@git.linaro.org/people/alex.elder/linux.git
>>   branch: ipa-v2_kernel-v5.2-rc2
>>     75adf2ac1266 arm64: defconfig: enable build of IPA code
>>
>> The branch depends on a commit now found in in net-next.  It has
>> been cherry-picked, and (in this branch) has this commit ID:
>>   13c627b5a078 net: qualcomm: rmnet: Move common struct definitions
>> to include
>> by 
>>
>> 					-Alex
>>
>> Alex Elder (17):
>>   bitfield.h: add FIELD_MAX() and field_max()
>>   dt-bindings: soc: qcom: add IPA bindings
>>   soc: qcom: ipa: main code
>>   soc: qcom: ipa: configuration data
>>   soc: qcom: ipa: clocking, interrupts, and memory
>>   soc: qcom: ipa: GSI headers
>>   soc: qcom: ipa: the generic software interface
>>   soc: qcom: ipa: GSI transactions
>>   soc: qcom: ipa: IPA interface to GSI
>>   soc: qcom: ipa: IPA endpoints
>>   soc: qcom: ipa: immediate commands
>>   soc: qcom: ipa: IPA network device and microcontroller
>>   soc: qcom: ipa: AP/modem communications
>>   soc: qcom: ipa: support build of IPA code
>>   MAINTAINERS: add entry for the Qualcomm IPA driver
>>   arm64: dts: sdm845: add IPA information
>>   arm64: defconfig: enable build of IPA code
>>
>>  .../devicetree/bindings/net/qcom,ipa.yaml     |  180 ++
>>  MAINTAINERS                                   |    6 +
>>  arch/arm64/boot/dts/qcom/sdm845.dtsi          |   51 +
>>  arch/arm64/configs/defconfig                  |    1 +
>>  drivers/net/Kconfig                           |    2 +
>>  drivers/net/Makefile                          |    1 +
>>  drivers/net/ipa/Kconfig                       |   16 +
>>  drivers/net/ipa/Makefile                      |    7 +
>>  drivers/net/ipa/gsi.c                         | 1635
>> +++++++++++++++++
>>  drivers/net/ipa/gsi.h                         |  246 +++
>>  drivers/net/ipa/gsi_private.h                 |  148 ++
>>  drivers/net/ipa/gsi_reg.h                     |  376 ++++
>>  drivers/net/ipa/gsi_trans.c                   |  624 +++++++
>>  drivers/net/ipa/gsi_trans.h                   |  116 ++
>>  drivers/net/ipa/ipa.h                         |  131 ++
>>  drivers/net/ipa/ipa_clock.c                   |  297 +++
>>  drivers/net/ipa/ipa_clock.h                   |   52 +
>>  drivers/net/ipa/ipa_cmd.c                     |  377 ++++
>>  drivers/net/ipa/ipa_cmd.h                     |  116 ++
>>  drivers/net/ipa/ipa_data-sdm845.c             |  245 +++
>>  drivers/net/ipa/ipa_data.h                    |  267 +++
>>  drivers/net/ipa/ipa_endpoint.c                | 1283 +++++++++++++
>>  drivers/net/ipa/ipa_endpoint.h                |   97 +
>>  drivers/net/ipa/ipa_gsi.c                     |   48 +
>>  drivers/net/ipa/ipa_gsi.h                     |   49 +
>>  drivers/net/ipa/ipa_interrupt.c               |  279 +++
>>  drivers/net/ipa/ipa_interrupt.h               |   53 +
>>  drivers/net/ipa/ipa_main.c                    |  921 ++++++++++
>>  drivers/net/ipa/ipa_mem.c                     |  234 +++
>>  drivers/net/ipa/ipa_mem.h                     |   83 +
>>  drivers/net/ipa/ipa_netdev.c                  |  251 +++
>>  drivers/net/ipa/ipa_netdev.h                  |   24 +
>>  drivers/net/ipa/ipa_qmi.c                     |  402 ++++
>>  drivers/net/ipa/ipa_qmi.h                     |   35 +
>>  drivers/net/ipa/ipa_qmi_msg.c                 |  583 ++++++
>>  drivers/net/ipa/ipa_qmi_msg.h                 |  238 +++
>>  drivers/net/ipa/ipa_reg.h                     |  279 +++
>>  drivers/net/ipa/ipa_smp2p.c                   |  304 +++
>>  drivers/net/ipa/ipa_smp2p.h                   |   47 +
>>  drivers/net/ipa/ipa_uc.c                      |  208 +++
>>  drivers/net/ipa/ipa_uc.h                      |   32 +
>>  include/linux/bitfield.h                      |   14 +
>>  42 files changed, 10358 insertions(+)
>>  create mode 100644
>> Documentation/devicetree/bindings/net/qcom,ipa.yaml
>>  create mode 100644 drivers/net/ipa/Kconfig
>>  create mode 100644 drivers/net/ipa/Makefile
>>  create mode 100644 drivers/net/ipa/gsi.c
>>  create mode 100644 drivers/net/ipa/gsi.h
>>  create mode 100644 drivers/net/ipa/gsi_private.h
>>  create mode 100644 drivers/net/ipa/gsi_reg.h
>>  create mode 100644 drivers/net/ipa/gsi_trans.c
>>  create mode 100644 drivers/net/ipa/gsi_trans.h
>>  create mode 100644 drivers/net/ipa/ipa.h
>>  create mode 100644 drivers/net/ipa/ipa_clock.c
>>  create mode 100644 drivers/net/ipa/ipa_clock.h
>>  create mode 100644 drivers/net/ipa/ipa_cmd.c
>>  create mode 100644 drivers/net/ipa/ipa_cmd.h
>>  create mode 100644 drivers/net/ipa/ipa_data-sdm845.c
>>  create mode 100644 drivers/net/ipa/ipa_data.h
>>  create mode 100644 drivers/net/ipa/ipa_endpoint.c
>>  create mode 100644 drivers/net/ipa/ipa_endpoint.h
>>  create mode 100644 drivers/net/ipa/ipa_gsi.c
>>  create mode 100644 drivers/net/ipa/ipa_gsi.h
>>  create mode 100644 drivers/net/ipa/ipa_interrupt.c
>>  create mode 100644 drivers/net/ipa/ipa_interrupt.h
>>  create mode 100644 drivers/net/ipa/ipa_main.c
>>  create mode 100644 drivers/net/ipa/ipa_mem.c
>>  create mode 100644 drivers/net/ipa/ipa_mem.h
>>  create mode 100644 drivers/net/ipa/ipa_netdev.c
>>  create mode 100644 drivers/net/ipa/ipa_netdev.h
>>  create mode 100644 drivers/net/ipa/ipa_qmi.c
>>  create mode 100644 drivers/net/ipa/ipa_qmi.h
>>  create mode 100644 drivers/net/ipa/ipa_qmi_msg.c
>>  create mode 100644 drivers/net/ipa/ipa_qmi_msg.h
>>  create mode 100644 drivers/net/ipa/ipa_reg.h
>>  create mode 100644 drivers/net/ipa/ipa_smp2p.c
>>  create mode 100644 drivers/net/ipa/ipa_smp2p.h
>>  create mode 100644 drivers/net/ipa/ipa_uc.c
>>  create mode 100644 drivers/net/ipa/ipa_uc.h
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
