Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1617765B5E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 18:19:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Nic7TLQGD9n6B5OI/s3Pigj/5uucur4Xx31FD1CWhk=; b=dSRXhx65ZNLCUf
	T0llwoyWMBFuBUnc5Y15PxDyJqeCevNk9DnY+DlZ8GPaw4a0ndQH7LsDvWHYDHoIdVyfCYuMlc03a
	dDCGTFmqNbUoVEA3MFx7NzJ3zuL2Vm/+OErrXdv5TzfFg3hP+37MCr36iRwlFnqGjsS6HVIWVra93
	GWXEUDorC9PmqywZa9NiaI6ryNvbRu4W1phaKFmSKvQWerxWfOgTPBAjJW2+l6tHcVq+1Cqk4VPei
	8CE4gKVqwYunKw9PV9NBcyTkfdulnxCTdZv4nR6wSBecbb4E3yUG7XWe6Mt9ePcNISe/vRw7GSlCk
	8gu6DFOHfaLwj7s4yPhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlbmj-00032A-BO; Thu, 11 Jul 2019 16:19:05 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlbmP-000304-2w
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 16:18:49 +0000
Received: by mail-io1-xd43.google.com with SMTP id m24so13848244ioo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 09:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dkN1LALrY49oZObQBUhqy7aDuMbuIX1KRPTfDpn/xik=;
 b=J0/y0lu8dsAaZwo1EEGmInWCE5gtwLW1kWi+pdr/J7D7q5d09ri4oru3MRgpzxl69j
 boaj73b6Z2aF4XC1mauxTC56DlcNRlt3KvbUSbWgDysa0ycOYmbLPJTO3ATsZdAHhIzh
 AAKpsUb7Rg6Cmd04ZU1ZAo93oTRazpMq9uFCuYstsRg5P0h0Hf5+y+BOeW2HiaYaRlvy
 6qTVscr8s1ovJtResdE7WFaopBhnxcaMjvCO6xRMYqDPL3NLdZ8MfB6Ov3Ss4ExZ+PLG
 qIvaY1+JY62Zwf9QWbKGX/DMF5Jk85q/iSvG9UtYIr5J6WU8eZRx2a7oolSNNBrFJu2g
 fs/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dkN1LALrY49oZObQBUhqy7aDuMbuIX1KRPTfDpn/xik=;
 b=HOGaGUFxz2xpdPeBSk0tkDEF9Mn9RVbP5c3G9S4enLWuPGxwtOxo8lU08P7OiNta6u
 yMsWuymVl51rLejxySojNUtF894LMaTfMW/lhYPw7aDH5QIEdrrsSGDC4QH3wWvxLY5/
 Ekro/DklOUxuBoRk+wSxwrQSZ2JBI2LAQ+erBF6BtE93GvM0fglVZ6tQVw1rlV0Irst+
 JvdIZ6rTEoBHr8ftEdeETfG1yTLspruBYzQMmwPBjJsGPnlsbwEOMYu8DEFYJQAZQnvY
 Rcv3DI5dPu/2eDWzdzwGDRMKznvULXYPWGr3eTHGxaLEu0kJT7uMu0hmEBeIWOoXAzZN
 Tn0A==
X-Gm-Message-State: APjAAAUGCTy6loN2AY+6KL+L0N3v7XVXGV3KjpSj+9GuHQbYd2SSN1uH
 c/d5eUHoU7pcgTY19mCz7x9j3z7NJ0bOoM0yD9MEoA==
X-Google-Smtp-Source: APXvYqy72wsVdI/6UNrpBdf1Vgi9tR4VlJBS53VLEV8cBegTMVB4UyhgcKyM70RZduXcCAvbpmHcrTiloJZPPbhocOY=
X-Received: by 2002:a5d:9613:: with SMTP id w19mr5289034iol.140.1562861920858; 
 Thu, 11 Jul 2019 09:18:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190705204512.15444-1-tranmanphong@gmail.com>
 <20190710150133.13992-1-tranmanphong@gmail.com>
In-Reply-To: <20190710150133.13992-1-tranmanphong@gmail.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 11 Jul 2019 10:18:29 -0600
Message-ID: <CANLsYkwzsVT38KG29DbWQySHXoLhnhVbbuMwVOninvVKmhKC2w@mail.gmail.com>
Subject: Re: [Patch V4] Documentation: coresight: covert txt to rst
To: Phong Tran <tranmanphong@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_091845_179546_9B01DEBD 
X-CRM114-Status: GOOD (  32.68  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>, Jon Corbet <corbet@lwn.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Leo Yan <leo.yan@linaro.org>, skhan@linuxfoundation.org, mchehab@kernel.org,
 linux-kernel-mentees@lists.linuxfoundation.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 10 Jul 2019 at 09:01, Phong Tran <tranmanphong@gmail.com> wrote:
>
> as doc-guide of kernel documentation, use Sphinx tool to
> generate the html/pdf... files.
>
> This changes the plan text txt to rst format.
>

I agree with Mauro - although the changelong has already been improved
it is still below the minimum requirements.

> Signed-off-by: Phong Tran <tranmanphong@gmail.com>

As for the content of the patch:

Acked-by: Mathieu Poirier <mathieu.poirier@linaro.org>


> ---
> ChangeLog:
> V2: review points from Mathieu, Jonathan
>   * Add coresight-cpu-debug
>   * Update MAINTAINERS file
>   * Avoid use markup as much as posible
> V3: review points from Mauro
>   * add the colon author, date
>   * change to use ```` in the struct
>   * add line for the acronyms
> V4:
>   * Rebase on linux-next tree
> ---
>  ...sight-cpu-debug.txt => coresight-cpu-debug.rst} |  67 ++--
>  .../trace/{coresight.txt => coresight.rst}         | 372 +++++++++++----------
>  Documentation/trace/index.rst                      |   2 +
>  MAINTAINERS                                        |   4 +-
>  4 files changed, 234 insertions(+), 211 deletions(-)
>  rename Documentation/trace/{coresight-cpu-debug.txt => coresight-cpu-debug.rst} (84%)
>  rename Documentation/trace/{coresight.txt => coresight.rst} (56%)
>
> diff --git a/Documentation/trace/coresight-cpu-debug.txt b/Documentation/trace/coresight-cpu-debug.rst
> similarity index 84%
> rename from Documentation/trace/coresight-cpu-debug.txt
> rename to Documentation/trace/coresight-cpu-debug.rst
> index 1a660a39e3c0..993dd294b81b 100644
> --- a/Documentation/trace/coresight-cpu-debug.txt
> +++ b/Documentation/trace/coresight-cpu-debug.rst
> @@ -1,8 +1,9 @@
> -               Coresight CPU Debug Module
> -               ==========================
> +==========================
> +Coresight CPU Debug Module
> +==========================
>
> -   Author:   Leo Yan <leo.yan@linaro.org>
> -   Date:     April 5th, 2017
> +   :Author:   Leo Yan <leo.yan@linaro.org>
> +   :Date:     April 5th, 2017
>
>  Introduction
>  ------------
> @@ -69,6 +70,7 @@ Before accessing debug registers, we should ensure the clock and power domain
>  have been enabled properly. In ARMv8-a ARM (ARM DDI 0487A.k) chapter 'H9.1
>  Debug registers', the debug registers are spread into two domains: the debug
>  domain and the CPU domain.
> +::
>
>                                  +---------------+
>                                  |               |
> @@ -125,18 +127,21 @@ If you want to enable debugging functionality at boot time, you can add
>  "coresight_cpu_debug.enable=1" to the kernel command line parameter.
>
>  The driver also can work as module, so can enable the debugging when insmod
> -module:
> -# insmod coresight_cpu_debug.ko debug=1
> +module::
> +
> +  # insmod coresight_cpu_debug.ko debug=1
>
>  When boot time or insmod module you have not enabled the debugging, the driver
>  uses the debugfs file system to provide a knob to dynamically enable or disable
>  debugging:
>
> -To enable it, write a '1' into /sys/kernel/debug/coresight_cpu_debug/enable:
> -# echo 1 > /sys/kernel/debug/coresight_cpu_debug/enable
> +To enable it, write a '1' into /sys/kernel/debug/coresight_cpu_debug/enable::
> +
> +  # echo 1 > /sys/kernel/debug/coresight_cpu_debug/enable
> +
> +To disable it, write a '0' into /sys/kernel/debug/coresight_cpu_debug/enable::
>
> -To disable it, write a '0' into /sys/kernel/debug/coresight_cpu_debug/enable:
> -# echo 0 > /sys/kernel/debug/coresight_cpu_debug/enable
> +  # echo 0 > /sys/kernel/debug/coresight_cpu_debug/enable
>
>  As explained in chapter "Clock and power domain", if you are working on one
>  platform which has idle states to power off debug logic and the power
> @@ -154,34 +159,34 @@ subsystem, more specifically by using the "/dev/cpu_dma_latency"
>  interface (see Documentation/power/pm_qos_interface.rst for more
>  details).  As specified in the PM QoS documentation the requested
>  parameter will stay in effect until the file descriptor is released.
> -For example:
> +For example::
>
> -# exec 3<> /dev/cpu_dma_latency; echo 0 >&3
> -...
> -Do some work...
> -...
> -# exec 3<>-
> +  # exec 3<> /dev/cpu_dma_latency; echo 0 >&3
> +  ...
> +  Do some work...
> +  ...
> +  # exec 3<>-
>
>  The same can also be done from an application program.
>
>  Disable specific CPU's specific idle state from cpuidle sysfs (see
> -Documentation/admin-guide/pm/cpuidle.rst):
> -# echo 1 > /sys/devices/system/cpu/cpu$cpu/cpuidle/state$state/disable
> +Documentation/admin-guide/pm/cpuidle.rst)::
>
> +  # echo 1 > /sys/devices/system/cpu/cpu$cpu/cpuidle/state$state/disable
>
>  Output format
>  -------------
>
> -Here is an example of the debugging output format:
> -
> -ARM external debug module:
> -coresight-cpu-debug 850000.debug: CPU[0]:
> -coresight-cpu-debug 850000.debug:  EDPRSR:  00000001 (Power:On DLK:Unlock)
> -coresight-cpu-debug 850000.debug:  EDPCSR:  handle_IPI+0x174/0x1d8
> -coresight-cpu-debug 850000.debug:  EDCIDSR: 00000000
> -coresight-cpu-debug 850000.debug:  EDVIDSR: 90000000 (State:Non-secure Mode:EL1/0 Width:64bits VMID:0)
> -coresight-cpu-debug 852000.debug: CPU[1]:
> -coresight-cpu-debug 852000.debug:  EDPRSR:  00000001 (Power:On DLK:Unlock)
> -coresight-cpu-debug 852000.debug:  EDPCSR:  debug_notifier_call+0x23c/0x358
> -coresight-cpu-debug 852000.debug:  EDCIDSR: 00000000
> -coresight-cpu-debug 852000.debug:  EDVIDSR: 90000000 (State:Non-secure Mode:EL1/0 Width:64bits VMID:0)
> +Here is an example of the debugging output format::
> +
> +  ARM external debug module:
> +  coresight-cpu-debug 850000.debug: CPU[0]:
> +  coresight-cpu-debug 850000.debug:  EDPRSR:  00000001 (Power:On DLK:Unlock)
> +  coresight-cpu-debug 850000.debug:  EDPCSR:  handle_IPI+0x174/0x1d8
> +  coresight-cpu-debug 850000.debug:  EDCIDSR: 00000000
> +  coresight-cpu-debug 850000.debug:  EDVIDSR: 90000000 (State:Non-secure Mode:EL1/0 Width:64bits VMID:0)
> +  coresight-cpu-debug 852000.debug: CPU[1]:
> +  coresight-cpu-debug 852000.debug:  EDPRSR:  00000001 (Power:On DLK:Unlock)
> +  coresight-cpu-debug 852000.debug:  EDPCSR:  debug_notifier_call+0x23c/0x358
> +  coresight-cpu-debug 852000.debug:  EDCIDSR: 00000000
> +  coresight-cpu-debug 852000.debug:  EDVIDSR: 90000000 (State:Non-secure Mode:EL1/0 Width:64bits VMID:0)
> diff --git a/Documentation/trace/coresight.txt b/Documentation/trace/coresight.rst
> similarity index 56%
> rename from Documentation/trace/coresight.txt
> rename to Documentation/trace/coresight.rst
> index b027d61b27a6..72f4b7ef1bad 100644
> --- a/Documentation/trace/coresight.txt
> +++ b/Documentation/trace/coresight.rst
> @@ -1,8 +1,9 @@
> -               Coresight - HW Assisted Tracing on ARM
> -               ======================================
> +======================================
> +Coresight - HW Assisted Tracing on ARM
> +======================================
>
> -   Author:   Mathieu Poirier <mathieu.poirier@linaro.org>
> -   Date:     September 11th, 2014
> +   :Author:   Mathieu Poirier <mathieu.poirier@linaro.org>
> +   :Date:     September 11th, 2014
>
>  Introduction
>  ------------
> @@ -26,7 +27,7 @@ implementation, either storing the compressed stream in a memory buffer or
>  creating an interface to the outside world where data can be transferred to a
>  host without fear of filling up the onboard coresight memory buffer.
>
> -At typical coresight system would look like this:
> +At typical coresight system would look like this::
>
>    *****************************************************************
>   **************************** AMBA AXI  ****************************===||
> @@ -95,15 +96,24 @@ Acronyms and Classification
>
>  Acronyms:
>
> -PTM:     Program Trace Macrocell
> -ETM:     Embedded Trace Macrocell
> -STM:     System trace Macrocell
> -ETB:     Embedded Trace Buffer
> -ITM:     Instrumentation Trace Macrocell
> -TPIU:    Trace Port Interface Unit
> -TMC-ETR: Trace Memory Controller, configured as Embedded Trace Router
> -TMC-ETF: Trace Memory Controller, configured as Embedded Trace FIFO
> -CTI:     Cross Trigger Interface
> +PTM:
> +    Program Trace Macrocell
> +ETM:
> +    Embedded Trace Macrocell
> +STM:
> +    System trace Macrocell
> +ETB:
> +    Embedded Trace Buffer
> +ITM:
> +    Instrumentation Trace Macrocell
> +TPIU:
> +     Trace Port Interface Unit
> +TMC-ETR:
> +        Trace Memory Controller, configured as Embedded Trace Router
> +TMC-ETF:
> +        Trace Memory Controller, configured as Embedded Trace FIFO
> +CTI:
> +    Cross Trigger Interface
>
>  Classification:
>
> @@ -118,7 +128,7 @@ Misc:
>
>
>  Device Tree Bindings
> -----------------------
> +--------------------
>
>  See Documentation/devicetree/bindings/arm/coresight.txt for details.
>
> @@ -133,79 +143,79 @@ The coresight framework provides a central point to represent, configure and
>  manage coresight devices on a platform.  Any coresight compliant device can
>  register with the framework for as long as they use the right APIs:
>
> -struct coresight_device *coresight_register(struct coresight_desc *desc);
> -void coresight_unregister(struct coresight_device *csdev);
> +.. c:function:: struct coresight_device *coresight_register(struct coresight_desc *desc);
> +.. c:function:: void coresight_unregister(struct coresight_device *csdev);
>
> -The registering function is taking a "struct coresight_device *csdev" and
> -register the device with the core framework.  The unregister function takes
> -a reference to a "struct coresight_device", obtained at registration time.
> +The registering function is taking a ``struct coresight_desc *desc`` and
> +register the device with the core framework. The unregister function takes
> +a reference to a ``struct coresight_device *csdev`` obtained at registration time.
>
>  If everything goes well during the registration process the new devices will
> -show up under /sys/bus/coresight/devices, as showns here for a TC2 platform:
> +show up under /sys/bus/coresight/devices, as showns here for a TC2 platform::
>
> -root:~# ls /sys/bus/coresight/devices/
> -replicator  20030000.tpiu    2201c000.ptm  2203c000.etm  2203e000.etm
> -20010000.etb         20040000.funnel  2201d000.ptm  2203d000.etm
> -root:~#
> +    root:~# ls /sys/bus/coresight/devices/
> +    replicator  20030000.tpiu    2201c000.ptm  2203c000.etm  2203e000.etm
> +    20010000.etb         20040000.funnel  2201d000.ptm  2203d000.etm
> +    root:~#
>
> -The functions take a "struct coresight_device", which looks like this:
> +The functions take a ``struct coresight_device``, which looks like this::
>
> -struct coresight_desc {
> -        enum coresight_dev_type type;
> -        struct coresight_dev_subtype subtype;
> -        const struct coresight_ops *ops;
> -        struct coresight_platform_data *pdata;
> -        struct device *dev;
> -        const struct attribute_group **groups;
> -};
> +    struct coresight_desc {
> +            enum coresight_dev_type type;
> +            struct coresight_dev_subtype subtype;
> +            const struct coresight_ops *ops;
> +            struct coresight_platform_data *pdata;
> +            struct device *dev;
> +            const struct attribute_group **groups;
> +    };
>
>
>  The "coresight_dev_type" identifies what the device is, i.e, source link or
>  sink while the "coresight_dev_subtype" will characterise that type further.
>
> -The "struct coresight_ops" is mandatory and will tell the framework how to
> +The ``struct coresight_ops`` is mandatory and will tell the framework how to
>  perform base operations related to the components, each component having
> -a different set of requirement.  For that "struct coresight_ops_sink",
> -"struct coresight_ops_link" and "struct coresight_ops_source" have been
> +a different set of requirement. For that ``struct coresight_ops_sink``,
> +``struct coresight_ops_link`` and ``struct coresight_ops_source`` have been
>  provided.
>
> -The next field, "struct coresight_platform_data *pdata" is acquired by calling
> -"of_get_coresight_platform_data()", as part of the driver's _probe routine and
> -"struct device *dev" gets the device reference embedded in the "amba_device":
> +The next field ``struct coresight_platform_data *pdata`` is acquired by calling
> +``of_get_coresight_platform_data()``, as part of the driver's _probe routine and
> +``struct device *dev`` gets the device reference embedded in the ``amba_device``::
>
> -static int etm_probe(struct amba_device *adev, const struct amba_id *id)
> -{
> - ...
> - ...
> - drvdata->dev = &adev->dev;
> - ...
> -}
> +    static int etm_probe(struct amba_device *adev, const struct amba_id *id)
> +    {
> +     ...
> +     ...
> +     drvdata->dev = &adev->dev;
> +     ...
> +    }
>
>  Specific class of device (source, link, or sink) have generic operations
> -that can be performed on them (see "struct coresight_ops").  The
> -"**groups" is a list of sysfs entries pertaining to operations
> +that can be performed on them (see ``struct coresight_ops``). The ``**groups``
> +is a list of sysfs entries pertaining to operations
>  specific to that component only.  "Implementation defined" customisations are
>  expected to be accessed and controlled using those entries.
>
> -
>  Device Naming scheme
> -------------------------
> +--------------------
> +
>  The devices that appear on the "coresight" bus were named the same as their
>  parent devices, i.e, the real devices that appears on AMBA bus or the platform bus.
>  Thus the names were based on the Linux Open Firmware layer naming convention,
>  which follows the base physical address of the device followed by the device
> -type. e.g:
> +type. e.g::
>
> -root:~# ls /sys/bus/coresight/devices/
> - 20010000.etf  20040000.funnel      20100000.stm     22040000.etm
> - 22140000.etm  230c0000.funnel      23240000.etm     20030000.tpiu
> - 20070000.etr  20120000.replicator  220c0000.funnel
> - 23040000.etm  23140000.etm         23340000.etm
> +    root:~# ls /sys/bus/coresight/devices/
> +     20010000.etf  20040000.funnel      20100000.stm     22040000.etm
> +     22140000.etm  230c0000.funnel      23240000.etm     20030000.tpiu
> +     20070000.etr  20120000.replicator  220c0000.funnel
> +     23040000.etm  23140000.etm         23340000.etm
>
>  However, with the introduction of ACPI support, the names of the real
>  devices are a bit cryptic and non-obvious. Thus, a new naming scheme was
>  introduced to use more generic names based on the type of the device. The
> -following rules apply:
> +following rules apply::
>
>    1) Devices that are bound to CPUs, are named based on the CPU logical
>       number.
> @@ -220,11 +230,11 @@ following rules apply:
>
>         e.g, tmc_etf0, tmc_etr0, funnel0, funnel1
>
> -Thus, with the new scheme the devices could appear as :
> +Thus, with the new scheme the devices could appear as ::
>
> -root:~# ls /sys/bus/coresight/devices/
> - etm0     etm1     etm2         etm3  etm4      etm5      funnel0
> - funnel1  funnel2  replicator0  stm0  tmc_etf0  tmc_etr0  tpiu0
> +    root:~# ls /sys/bus/coresight/devices/
> +     etm0     etm1     etm2         etm3  etm4      etm5      funnel0
> +     funnel1  funnel2  replicator0  stm0  tmc_etf0  tmc_etr0  tpiu0
>
>  Some of the examples below might refer to old naming scheme and some
>  to the newer scheme, to give a confirmation that what you see on your
> @@ -234,9 +244,12 @@ the system under specified locations.
>  How to use the tracer modules
>  -----------------------------
>
> -There are two ways to use the Coresight framework: 1) using the perf cmd line
> -tools and 2) interacting directly with the Coresight devices using the sysFS
> -interface.  Preference is given to the former as using the sysFS interface
> +There are two ways to use the Coresight framework:
> +
> +1. using the perf cmd line tools.
> +2. interacting directly with the Coresight devices using the sysFS interface.
> +
> +Preference is given to the former as using the sysFS interface
>  requires a deep understanding of the Coresight HW.  The following sections
>  provide details on using both methods.
>
> @@ -245,107 +258,107 @@ provide details on using both methods.
>  Before trace collection can start, a coresight sink needs to be identified.
>  There is no limit on the amount of sinks (nor sources) that can be enabled at
>  any given moment.  As a generic operation, all device pertaining to the sink
> -class will have an "active" entry in sysfs:
> -
> -root:/sys/bus/coresight/devices# ls
> -replicator  20030000.tpiu    2201c000.ptm  2203c000.etm  2203e000.etm
> -20010000.etb         20040000.funnel  2201d000.ptm  2203d000.etm
> -root:/sys/bus/coresight/devices# ls 20010000.etb
> -enable_sink  status  trigger_cntr
> -root:/sys/bus/coresight/devices# echo 1 > 20010000.etb/enable_sink
> -root:/sys/bus/coresight/devices# cat 20010000.etb/enable_sink
> -1
> -root:/sys/bus/coresight/devices#
> +class will have an "active" entry in sysfs::
> +
> +    root:/sys/bus/coresight/devices# ls
> +    replicator  20030000.tpiu    2201c000.ptm  2203c000.etm  2203e000.etm
> +    20010000.etb         20040000.funnel  2201d000.ptm  2203d000.etm
> +    root:/sys/bus/coresight/devices# ls 20010000.etb
> +    enable_sink  status  trigger_cntr
> +    root:/sys/bus/coresight/devices# echo 1 > 20010000.etb/enable_sink
> +    root:/sys/bus/coresight/devices# cat 20010000.etb/enable_sink
> +    1
> +    root:/sys/bus/coresight/devices#
>
>  At boot time the current etm3x driver will configure the first address
>  comparator with "_stext" and "_etext", essentially tracing any instruction
>  that falls within that range.  As such "enabling" a source will immediately
> -trigger a trace capture:
> -
> -root:/sys/bus/coresight/devices# echo 1 > 2201c000.ptm/enable_source
> -root:/sys/bus/coresight/devices# cat 2201c000.ptm/enable_source
> -1
> -root:/sys/bus/coresight/devices# cat 20010000.etb/status
> -Depth:          0x2000
> -Status:         0x1
> -RAM read ptr:   0x0
> -RAM wrt ptr:    0x19d3   <----- The write pointer is moving
> -Trigger cnt:    0x0
> -Control:        0x1
> -Flush status:   0x0
> -Flush ctrl:     0x2001
> -root:/sys/bus/coresight/devices#
> -
> -Trace collection is stopped the same way:
> -
> -root:/sys/bus/coresight/devices# echo 0 > 2201c000.ptm/enable_source
> -root:/sys/bus/coresight/devices#
> -
> -The content of the ETB buffer can be harvested directly from /dev:
> -
> -root:/sys/bus/coresight/devices# dd if=/dev/20010000.etb \
> -of=~/cstrace.bin
> -
> -64+0 records in
> -64+0 records out
> -32768 bytes (33 kB) copied, 0.00125258 s, 26.2 MB/s
> -root:/sys/bus/coresight/devices#
> +trigger a trace capture::
> +
> +    root:/sys/bus/coresight/devices# echo 1 > 2201c000.ptm/enable_source
> +    root:/sys/bus/coresight/devices# cat 2201c000.ptm/enable_source
> +    1
> +    root:/sys/bus/coresight/devices# cat 20010000.etb/status
> +    Depth:          0x2000
> +    Status:         0x1
> +    RAM read ptr:   0x0
> +    RAM wrt ptr:    0x19d3   <----- The write pointer is moving
> +    Trigger cnt:    0x0
> +    Control:        0x1
> +    Flush status:   0x0
> +    Flush ctrl:     0x2001
> +    root:/sys/bus/coresight/devices#
> +
> +Trace collection is stopped the same way::
> +
> +    root:/sys/bus/coresight/devices# echo 0 > 2201c000.ptm/enable_source
> +    root:/sys/bus/coresight/devices#
> +
> +The content of the ETB buffer can be harvested directly from /dev::
> +
> +    root:/sys/bus/coresight/devices# dd if=/dev/20010000.etb \
> +    of=~/cstrace.bin
> +    64+0 records in
> +    64+0 records out
> +    32768 bytes (33 kB) copied, 0.00125258 s, 26.2 MB/s
> +    root:/sys/bus/coresight/devices#
>
>  The file cstrace.bin can be decompressed using "ptm2human", DS-5 or Trace32.
>
>  Following is a DS-5 output of an experimental loop that increments a variable up
>  to a certain value.  The example is simple and yet provides a glimpse of the
>  wealth of possibilities that coresight provides.
> -
> -Info                                    Tracing enabled
> -Instruction     106378866       0x8026B53C      E52DE004        false   PUSH     {lr}
> -Instruction     0       0x8026B540      E24DD00C        false   SUB      sp,sp,#0xc
> -Instruction     0       0x8026B544      E3A03000        false   MOV      r3,#0
> -Instruction     0       0x8026B548      E58D3004        false   STR      r3,[sp,#4]
> -Instruction     0       0x8026B54C      E59D3004        false   LDR      r3,[sp,#4]
> -Instruction     0       0x8026B550      E3530004        false   CMP      r3,#4
> -Instruction     0       0x8026B554      E2833001        false   ADD      r3,r3,#1
> -Instruction     0       0x8026B558      E58D3004        false   STR      r3,[sp,#4]
> -Instruction     0       0x8026B55C      DAFFFFFA        true    BLE      {pc}-0x10 ; 0x8026b54c
> -Timestamp                                       Timestamp: 17106715833
> -Instruction     319     0x8026B54C      E59D3004        false   LDR      r3,[sp,#4]
> -Instruction     0       0x8026B550      E3530004        false   CMP      r3,#4
> -Instruction     0       0x8026B554      E2833001        false   ADD      r3,r3,#1
> -Instruction     0       0x8026B558      E58D3004        false   STR      r3,[sp,#4]
> -Instruction     0       0x8026B55C      DAFFFFFA        true    BLE      {pc}-0x10 ; 0x8026b54c
> -Instruction     9       0x8026B54C      E59D3004        false   LDR      r3,[sp,#4]
> -Instruction     0       0x8026B550      E3530004        false   CMP      r3,#4
> -Instruction     0       0x8026B554      E2833001        false   ADD      r3,r3,#1
> -Instruction     0       0x8026B558      E58D3004        false   STR      r3,[sp,#4]
> -Instruction     0       0x8026B55C      DAFFFFFA        true    BLE      {pc}-0x10 ; 0x8026b54c
> -Instruction     7       0x8026B54C      E59D3004        false   LDR      r3,[sp,#4]
> -Instruction     0       0x8026B550      E3530004        false   CMP      r3,#4
> -Instruction     0       0x8026B554      E2833001        false   ADD      r3,r3,#1
> -Instruction     0       0x8026B558      E58D3004        false   STR      r3,[sp,#4]
> -Instruction     0       0x8026B55C      DAFFFFFA        true    BLE      {pc}-0x10 ; 0x8026b54c
> -Instruction     7       0x8026B54C      E59D3004        false   LDR      r3,[sp,#4]
> -Instruction     0       0x8026B550      E3530004        false   CMP      r3,#4
> -Instruction     0       0x8026B554      E2833001        false   ADD      r3,r3,#1
> -Instruction     0       0x8026B558      E58D3004        false   STR      r3,[sp,#4]
> -Instruction     0       0x8026B55C      DAFFFFFA        true    BLE      {pc}-0x10 ; 0x8026b54c
> -Instruction     10      0x8026B54C      E59D3004        false   LDR      r3,[sp,#4]
> -Instruction     0       0x8026B550      E3530004        false   CMP      r3,#4
> -Instruction     0       0x8026B554      E2833001        false   ADD      r3,r3,#1
> -Instruction     0       0x8026B558      E58D3004        false   STR      r3,[sp,#4]
> -Instruction     0       0x8026B55C      DAFFFFFA        true    BLE      {pc}-0x10 ; 0x8026b54c
> -Instruction     6       0x8026B560      EE1D3F30        false   MRC      p15,#0x0,r3,c13,c0,#1
> -Instruction     0       0x8026B564      E1A0100D        false   MOV      r1,sp
> -Instruction     0       0x8026B568      E3C12D7F        false   BIC      r2,r1,#0x1fc0
> -Instruction     0       0x8026B56C      E3C2203F        false   BIC      r2,r2,#0x3f
> -Instruction     0       0x8026B570      E59D1004        false   LDR      r1,[sp,#4]
> -Instruction     0       0x8026B574      E59F0010        false   LDR      r0,[pc,#16] ; [0x8026B58C] = 0x80550368
> -Instruction     0       0x8026B578      E592200C        false   LDR      r2,[r2,#0xc]
> -Instruction     0       0x8026B57C      E59221D0        false   LDR      r2,[r2,#0x1d0]
> -Instruction     0       0x8026B580      EB07A4CF        true    BL       {pc}+0x1e9344 ; 0x804548c4
> -Info                                    Tracing enabled
> -Instruction     13570831        0x8026B584      E28DD00C        false   ADD      sp,sp,#0xc
> -Instruction     0       0x8026B588      E8BD8000        true    LDM      sp!,{pc}
> -Timestamp                                       Timestamp: 17107041535
> +::
> +
> +    Info                                    Tracing enabled
> +    Instruction     106378866       0x8026B53C      E52DE004        false   PUSH     {lr}
> +    Instruction     0       0x8026B540      E24DD00C        false   SUB      sp,sp,#0xc
> +    Instruction     0       0x8026B544      E3A03000        false   MOV      r3,#0
> +    Instruction     0       0x8026B548      E58D3004        false   STR      r3,[sp,#4]
> +    Instruction     0       0x8026B54C      E59D3004        false   LDR      r3,[sp,#4]
> +    Instruction     0       0x8026B550      E3530004        false   CMP      r3,#4
> +    Instruction     0       0x8026B554      E2833001        false   ADD      r3,r3,#1
> +    Instruction     0       0x8026B558      E58D3004        false   STR      r3,[sp,#4]
> +    Instruction     0       0x8026B55C      DAFFFFFA        true    BLE      {pc}-0x10 ; 0x8026b54c
> +    Timestamp                                       Timestamp: 17106715833
> +    Instruction     319     0x8026B54C      E59D3004        false   LDR      r3,[sp,#4]
> +    Instruction     0       0x8026B550      E3530004        false   CMP      r3,#4
> +    Instruction     0       0x8026B554      E2833001        false   ADD      r3,r3,#1
> +    Instruction     0       0x8026B558      E58D3004        false   STR      r3,[sp,#4]
> +    Instruction     0       0x8026B55C      DAFFFFFA        true    BLE      {pc}-0x10 ; 0x8026b54c
> +    Instruction     9       0x8026B54C      E59D3004        false   LDR      r3,[sp,#4]
> +    Instruction     0       0x8026B550      E3530004        false   CMP      r3,#4
> +    Instruction     0       0x8026B554      E2833001        false   ADD      r3,r3,#1
> +    Instruction     0       0x8026B558      E58D3004        false   STR      r3,[sp,#4]
> +    Instruction     0       0x8026B55C      DAFFFFFA        true    BLE      {pc}-0x10 ; 0x8026b54c
> +    Instruction     7       0x8026B54C      E59D3004        false   LDR      r3,[sp,#4]
> +    Instruction     0       0x8026B550      E3530004        false   CMP      r3,#4
> +    Instruction     0       0x8026B554      E2833001        false   ADD      r3,r3,#1
> +    Instruction     0       0x8026B558      E58D3004        false   STR      r3,[sp,#4]
> +    Instruction     0       0x8026B55C      DAFFFFFA        true    BLE      {pc}-0x10 ; 0x8026b54c
> +    Instruction     7       0x8026B54C      E59D3004        false   LDR      r3,[sp,#4]
> +    Instruction     0       0x8026B550      E3530004        false   CMP      r3,#4
> +    Instruction     0       0x8026B554      E2833001        false   ADD      r3,r3,#1
> +    Instruction     0       0x8026B558      E58D3004        false   STR      r3,[sp,#4]
> +    Instruction     0       0x8026B55C      DAFFFFFA        true    BLE      {pc}-0x10 ; 0x8026b54c
> +    Instruction     10      0x8026B54C      E59D3004        false   LDR      r3,[sp,#4]
> +    Instruction     0       0x8026B550      E3530004        false   CMP      r3,#4
> +    Instruction     0       0x8026B554      E2833001        false   ADD      r3,r3,#1
> +    Instruction     0       0x8026B558      E58D3004        false   STR      r3,[sp,#4]
> +    Instruction     0       0x8026B55C      DAFFFFFA        true    BLE      {pc}-0x10 ; 0x8026b54c
> +    Instruction     6       0x8026B560      EE1D3F30        false   MRC      p15,#0x0,r3,c13,c0,#1
> +    Instruction     0       0x8026B564      E1A0100D        false   MOV      r1,sp
> +    Instruction     0       0x8026B568      E3C12D7F        false   BIC      r2,r1,#0x1fc0
> +    Instruction     0       0x8026B56C      E3C2203F        false   BIC      r2,r2,#0x3f
> +    Instruction     0       0x8026B570      E59D1004        false   LDR      r1,[sp,#4]
> +    Instruction     0       0x8026B574      E59F0010        false   LDR      r0,[pc,#16] ; [0x8026B58C] = 0x80550368
> +    Instruction     0       0x8026B578      E592200C        false   LDR      r2,[r2,#0xc]
> +    Instruction     0       0x8026B57C      E59221D0        false   LDR      r2,[r2,#0x1d0]
> +    Instruction     0       0x8026B580      EB07A4CF        true    BL       {pc}+0x1e9344 ; 0x804548c4
> +    Info                                    Tracing enabled
> +    Instruction     13570831        0x8026B584      E28DD00C        false   ADD      sp,sp,#0xc
> +    Instruction     0       0x8026B588      E8BD8000        true    LDM      sp!,{pc}
> +    Timestamp                                       Timestamp: 17107041535
>
>  2) Using perf framework:
>
> @@ -370,19 +383,18 @@ A Coresight PMU works the same way as any other PMU, i.e the name of the PMU is
>  listed along with configuration options within forward slashes '/'.  Since a
>  Coresight system will typically have more than one sink, the name of the sink to
>  work with needs to be specified as an event option.
> -On newer kernels the available sinks are listed in sysFS under:
> -($SYSFS)/bus/event_source/devices/cs_etm/sinks/
> +On newer kernels the available sinks are listed in sysFS under
> +($SYSFS)/bus/event_source/devices/cs_etm/sinks/::
>
>         root@localhost:/sys/bus/event_source/devices/cs_etm/sinks# ls
>         tmc_etf0  tmc_etr0  tpiu0
>
>  On older kernels, this may need to be found from the list of coresight devices,
> -available under ($SYSFS)/bus/coresight/devices/:
> +available under ($SYSFS)/bus/coresight/devices/::
>
>         root:~# ls /sys/bus/coresight/devices/
>          etm0     etm1     etm2         etm3  etm4      etm5      funnel0
>          funnel1  funnel2  replicator0  stm0  tmc_etf0  tmc_etr0  tpiu0
> -
>         root@linaro-nano:~# perf record -e cs_etm/@tmc_etr0/u --per-thread program
>
>  As mentioned above in section "Device Naming scheme", the names of the devices could
> @@ -395,14 +407,14 @@ to use for the trace session.
>
>  More information on the above and other example on how to use Coresight with
>  the perf tools can be found in the "HOWTO.md" file of the openCSD gitHub
> -repository [3].
> +repository [#third]_.
>
>  2.1) AutoFDO analysis using the perf tools:
>
>  perf can be used to record and analyze trace of programs.
>
>  Execution can be recorded using 'perf record' with the cs_etm event,
> -specifying the name of the sink to record to, e.g:
> +specifying the name of the sink to record to, e.g::
>
>      perf record -e cs_etm/@tmc_etr0/u --per-thread
>
> @@ -421,12 +433,14 @@ Generating coverage files for Feedback Directed Optimization: AutoFDO
>
>  'perf inject' accepts the --itrace option in which case tracing data is
>  removed and replaced with the synthesized events. e.g.
> +::
>
>         perf inject --itrace --strip -i perf.data -o perf.data.new
>
>  Below is an example of using ARM ETM for autoFDO.  It requires autofdo
>  (https://github.com/google/autofdo) and gcc version 5.  The bubble
>  sort example is from the AutoFDO tutorial (https://gcc.gnu.org/wiki/AutoFDO/Tutorial).
> +::
>
>         $ gcc-5 -O3 sort.c -o sort
>         $ taskset -c 2 ./sort
> @@ -455,28 +469,30 @@ difference is that clients are driving the trace capture rather
>  than the program flow through the code.
>
>  As with any other CoreSight component, specifics about the STM tracer can be
> -found in sysfs with more information on each entry being found in [1]:
> +found in sysfs with more information on each entry being found in [#first]_::
>
> -root@genericarmv8:~# ls /sys/bus/coresight/devices/stm0
> -enable_source   hwevent_select  port_enable     subsystem       uevent
> -hwevent_enable  mgmt            port_select     traceid
> -root@genericarmv8:~#
> +    root@genericarmv8:~# ls /sys/bus/coresight/devices/stm0
> +    enable_source   hwevent_select  port_enable     subsystem       uevent
> +    hwevent_enable  mgmt            port_select     traceid
> +    root@genericarmv8:~#
>
>  Like any other source a sink needs to be identified and the STM enabled before
> -being used:
> +being used::
>
> -root@genericarmv8:~# echo 1 > /sys/bus/coresight/devices/tmc_etf0/enable_sink
> -root@genericarmv8:~# echo 1 > /sys/bus/coresight/devices/stm0/enable_source
> +    root@genericarmv8:~# echo 1 > /sys/bus/coresight/devices/tmc_etf0/enable_sink
> +    root@genericarmv8:~# echo 1 > /sys/bus/coresight/devices/stm0/enable_source
>
>  From there user space applications can request and use channels using the devfs
> -interface provided for that purpose by the generic STM API:
> +interface provided for that purpose by the generic STM API::
> +
> +    root@genericarmv8:~# ls -l /dev/stm0
> +    crw-------    1 root     root       10,  61 Jan  3 18:11 /dev/stm0
> +    root@genericarmv8:~#
> +
> +Details on how to use the generic STM API can be found here [#second]_.
>
> -root@genericarmv8:~# ls -l /dev/stm0
> -crw-------    1 root     root       10,  61 Jan  3 18:11 /dev/stm0
> -root@genericarmv8:~#
> +.. [#first] Documentation/ABI/testing/sysfs-bus-coresight-devices-stm
>
> -Details on how to use the generic STM API can be found here [2].
> +.. [#second] Documentation/trace/stm.rst
>
> -[1]. Documentation/ABI/testing/sysfs-bus-coresight-devices-stm
> -[2]. Documentation/trace/stm.rst
> -[3]. https://github.com/Linaro/perf-opencsd
> +.. [#third] https://github.com/Linaro/perf-opencsd
> diff --git a/Documentation/trace/index.rst b/Documentation/trace/index.rst
> index 6b4107cf4b98..b7891cb1ab4d 100644
> --- a/Documentation/trace/index.rst
> +++ b/Documentation/trace/index.rst
> @@ -23,3 +23,5 @@ Linux Tracing Technologies
>     intel_th
>     stm
>     sys-t
> +   coresight
> +   coresight-cpu-debug
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 661def85619c..eb03e5966f11 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -1582,8 +1582,8 @@ R:        Suzuki K Poulose <suzuki.poulose@arm.com>
>  L:     linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
>  S:     Maintained
>  F:     drivers/hwtracing/coresight/*
> -F:     Documentation/trace/coresight.txt
> -F:     Documentation/trace/coresight-cpu-debug.txt
> +F:     Documentation/trace/coresight.rst
> +F:     Documentation/trace/coresight-cpu-debug.rst
>  F:     Documentation/devicetree/bindings/arm/coresight.txt
>  F:     Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt
>  F:     Documentation/ABI/testing/sysfs-bus-coresight-devices-*
> --
> 2.11.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
