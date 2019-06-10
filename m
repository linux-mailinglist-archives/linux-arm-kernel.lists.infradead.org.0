Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2A43AD2E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 04:45:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OKiKDcIGCV88+eFgZDPjNmJbjVMaczmG9nfcFNHZZDA=; b=OusZGjkXD6zAYh
	kolbgH+6IAx90TBSnvKMeMSipFo/cI2MnvMsaXywB0HhmeDFgZ3rqyQoyYSEh5zt0MG08bGtR78rz
	dQyvwD87NLcQWu/evoaWaDiCxBfaKe+RiItyH8QmCCbjfsDiKOqzObK8zRNiAULCjWSmeDYeW7LcB
	Z957YY9Cus35DQ32zYrFBUed32sxRGLAfsPckTd/4CRxGbJM0qdkK4iqyyL8ODL7fArXTjYVsuqM0
	iKVn0RZf6Zb5exh0Yy65rwLoZEnRRLWqE5VnokMNeSYFFGubG6XQxvHb2QdXgMxAvpf1wlZkYxRX7
	Pi4bqKFUdDWK9eUj0IwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haAJD-0000Tm-1L; Mon, 10 Jun 2019 02:45:19 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haAIv-0008Va-5g
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 02:45:03 +0000
Received: by mail-it1-x142.google.com with SMTP id e25so4748987itk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Jun 2019 19:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=uyE6O5829Iit7LrbbINJJ5Hde/JPjBOStJwy/WHSO/Q=;
 b=Hft9c1PwDvn9dL4bpuxzJp5hG9WwhV8qcvb+oVK+QnmMcX0jlRT/ixYWm+5/JzLIU0
 QfDn26uSaR3ac7yuDSsI5XmpOpQkjJU81i+aQ99Sy07jRZ79sggcLSXbyd6WEH0tVY9a
 mSY2nuEJ8+Um4odOCMbyWwEroHBLyeFpuU8uzI6MDY5lRcyfKhmjH1iYZi3rPaJfEQ+3
 2Z2veDd3LWJ3AJhPJdqU+zhvmbm5fGILyB9kTvF4RXvwJkZTmPD8dIEUoTdS9y7Cfk7m
 PAzx1Y96IUdmoJ4ekNLGWevHZSSsLebl5xKlTuUjJkZu7vUAzymOPe4ZonKiHKgGAcrA
 sefQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uyE6O5829Iit7LrbbINJJ5Hde/JPjBOStJwy/WHSO/Q=;
 b=Q717kYL12mRhc2ZdtmpJB7s6aW10XuIiuzi+C7jXNWsI7H/3+R8dVygl2tSvMfsTji
 lNxs/7wrmO0C2hNtPK4EtsqO2sq8IoRXGR8oIQ+woZ81AslnxytUJdRWXM9Lmd+0bq68
 nciscy2s1BqWb+mSG2SE+2WZJErWIpc3WJoWIRuPTSMRKt3KmukTrBAAMzcMThRNmgmS
 Ub0knwyaoQcPn0KnJy6+Z1hgcrs9iBOGeqYqtkAeOnPQEk3D9i3cfuu1PlHMVNselnTF
 zhxbsU2QHAwzMyEYKLe3fattqyIxZHvQ0Y0uoxIF/FsGjCkBFypXIRvqjOUihosqYDIh
 J+Yg==
X-Gm-Message-State: APjAAAXOPS6jnQNUBZ3tpAG3K3I6cXsbITo22lolxdDwsRVzcR3sC7Q+
 gt5LGaPzPcq/I78vJatif9VAeg==
X-Google-Smtp-Source: APXvYqwM2PWWToQbyY8isdY/82CA5HZmvHCOtv3E50fA+M/HWfkgft0GazJ6yPl6/LK7k05U0y1juA==
X-Received: by 2002:a05:6638:29a:: with SMTP id
 c26mr9623089jaq.98.1560134698729; 
 Sun, 09 Jun 2019 19:44:58 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id r143sm1423781ita.0.2019.06.09.19.44.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 09 Jun 2019 19:44:57 -0700 (PDT)
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
From: Alex Elder <elder@linaro.org>
To: davem@davemloft.net, arnd@arndb.de, bjorn.andersson@linaro.org,
 ilias.apalodimas@linaro.org
References: <20190531035348.7194-1-elder@linaro.org>
Message-ID: <1cd39433-4abd-b995-1794-5f63a56d3da2@linaro.org>
Date: Sun, 9 Jun 2019 21:44:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190531035348.7194-1-elder@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_194501_268398_9BA2CC59 
X-CRM114-Status: GOOD (  31.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, syadagir@codeaurora.org, ejcaruso@google.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, evgreen@chromium.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 subashab@codeaurora.org, linux-soc@vger.kernel.org, abhishek.esse@gmail.com,
 cpratapa@codeaurora.org, benchan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/30/19 10:53 PM, Alex Elder wrote:
> This series presents the driver for the Qualcomm IP Accelerator (IPA).
> 
> This is version 2 of the series.  This version has addressed almost
> all of the feedback received in the first version:
>   https://lore.kernel.org/lkml/20190512012508.10608-1-elder@linaro.org/
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

Any more feedback?  The only comment that I acted on is a trivial
suggestion from Dave Miller:  change the types for the route_virt
and filter_virt fields of the ipa structure from void pointer to
u64 pointer.  That required no other changes to the code.

At this point I plan to post a version 3 of this series in the
coming week and it will include just that one change.  I might
do some comment updates before then as well.

But if anyone expects to provide any additional input on the
code in the near term, I can delay posting v3 until that has
been addressed.  If this applies to you, please let me know.
(No pressure; things can always wait for v4...)

Thanks.

					-Alex

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
> 
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
>   https://lore.kernel.org/lkml/20181107003250.5832-1-elder@linaro.org/
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
>   13c627b5a078 net: qualcomm: rmnet: Move common struct definitions to include
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
>  drivers/net/ipa/gsi.c                         | 1635 +++++++++++++++++
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
>  create mode 100644 Documentation/devicetree/bindings/net/qcom,ipa.yaml
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
