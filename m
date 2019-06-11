Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F573D190
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 17:58:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JyYKgkUOjImQQqCfmQ3rHQNqkmg2/FWUjReacGWVawc=; b=POTGve85Hn8VQO
	cTPPZFllwA/NO5+UqytdMZZQ/mejXHApgzIrjBFFvf+12XvvxZWLyFOMmElWipWquw5O4+jlO2AgL
	DXHka4GVfgHZ/OFI4TdbB56v/phxCm+I3uIFokODHh3146dle9WQ/sZ/9ipgstmDsTKgG2xUABlXZ
	I8F+xBOMLCKDUCvkKYoD7LoK3BGUgk20yGaupr+8mXUDa50BiUstdOU1qxKQv52mOZmonUIzlFmeJ
	FXdClrZW/4LjYdXTFQDc/l3CRYIse/VlHBuO72GG0sS1w0HwLTjVDoINHSzeiwkPz3qRZQ2ZTrIP9
	1+APnge+zo+1qTyrdBsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hajAF-0000G2-Au; Tue, 11 Jun 2019 15:58:23 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hajA1-0000FI-Ux
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 15:58:11 +0000
Received: by mail-it1-x144.google.com with SMTP id m187so5785605ite.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 08:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QcBUhGZxr4QDNhrZySal9tBNdJxMbcOWcA1qAnQLKyg=;
 b=WaIkLHsl+Z2pV41NF8G6xmRfgnHElT76MqnXYa+6n7SCVIGZF+NvqOostb3POKMptC
 AAlgVdrn8CZpUIxHzBvEeL1ME9qtj5cR0B9IvzHat766PQhMz706X4kQIWNXAKkRtO0q
 n9eR+TFGXCGu8SaIbPm5Q/nVrWWcDs/9gTfu3OoTZau1LDdxqTsy68LGLjK2zijGICqf
 FzK4ViUV1+ec1dJyiI3pXH3IIgGG4UbR0r8Mv5cjqpVhvziaHnvSOLSOrkgedNxdX6LE
 VqtEx1Qoy07wLfGG1Ougs7Q4VH6RWRKKwWrj5FvbYHVs2aofKWylSt5WZNzsiaID5CVC
 ZEQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QcBUhGZxr4QDNhrZySal9tBNdJxMbcOWcA1qAnQLKyg=;
 b=pGnlYRSHKNM14UZQ9AqmqJMpHd2PcT88EzCniZofPutZsojdPvTGHbuVsffgSj2Jlo
 CxyXbnvxPNwZR4wyXSQQ0610JOm1K/DtZMVio1kT4bMQEFtARDJhOhaizbNBDhMQ7l5w
 aAMIrqpUWdZs4BlPkyZjr6N2L2avS0w9dcwYMZnGaD0RzFtrwzxKR37rSIZiQqgQBNot
 qa4AgeM55Al1f2W9iKOBJVVb/HouxCeIZU8seJZYcvVr4eg5dBAlKg2KI+Wj2qDFm+r5
 ua+rGUzNQ8tnXQzQfOsIBbH6YZqOaqMHJjl6wBTB49l5wmxs5242Irp628x5uL/7RNgl
 kWZQ==
X-Gm-Message-State: APjAAAUYMZdSSoavz2X4TKIkVofVpMg8Pexh9iULnivM1kPuKjmhiAfn
 7Y4HNyOrwGgN7rwS3fVVD+2OGbXX0W1RMedUPM0/cg==
X-Google-Smtp-Source: APXvYqyTveQ3jOw5sZAO0BnHQaOY9wzwHK3f1gFn/Eb88+eCsIESvnVo6r5xbT5BjKuAwgEbLS7UQI6RGwIpl6mj8WQ=
X-Received: by 2002:a24:14f:: with SMTP id 76mr18228211itk.115.1560268688329; 
 Tue, 11 Jun 2019 08:58:08 -0700 (PDT)
MIME-Version: 1.0
References: <1560189762-5267-1-git-send-email-suzuki.poulose@arm.com>
In-Reply-To: <1560189762-5267-1-git-send-email-suzuki.poulose@arm.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 11 Jun 2019 09:57:57 -0600
Message-ID: <CANLsYkzEz6RvDQT-ua+NmV=H3y08TZUJ2RqutQCEXxpL+75_=g@mail.gmail.com>
Subject: Re: [PATCH v2] Documentation: coresight: Update the generic device
 names
To: Suzuki K Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_085810_004788_D105CE8A 
X-CRM114-Status: GOOD (  27.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
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
Cc: Jonathan Corbet <corbet@lwn.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Leo Yan <leo.yan@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 10 Jun 2019 at 12:02, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
> Update the documentation to reflect the new naming scheme with
> latest changes.
>
> Reported-by: Leo Yan <leo.yan@linaro.org>
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Cc: Jonathan Corbet <corbet@lwn.net>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
> Changes since v1
>   - Add a section about the Device Naming scheme and add refer to
>     it in the examples.
> ---
>  Documentation/trace/coresight.txt | 82 ++++++++++++++++++++++++++++++++-------
>  1 file changed, 67 insertions(+), 15 deletions(-)
>
> diff --git a/Documentation/trace/coresight.txt b/Documentation/trace/coresight.txt
> index efbc832..b027d61 100644
> --- a/Documentation/trace/coresight.txt
> +++ b/Documentation/trace/coresight.txt
> @@ -188,6 +188,49 @@ specific to that component only.  "Implementation defined" customisations are
>  expected to be accessed and controlled using those entries.
>
>
> +Device Naming scheme
> +------------------------
> +The devices that appear on the "coresight" bus were named the same as their
> +parent devices, i.e, the real devices that appears on AMBA bus or the platform bus.
> +Thus the names were based on the Linux Open Firmware layer naming convention,
> +which follows the base physical address of the device followed by the device
> +type. e.g:
> +
> +root:~# ls /sys/bus/coresight/devices/
> + 20010000.etf  20040000.funnel      20100000.stm     22040000.etm
> + 22140000.etm  230c0000.funnel      23240000.etm     20030000.tpiu
> + 20070000.etr  20120000.replicator  220c0000.funnel
> + 23040000.etm  23140000.etm         23340000.etm
> +
> +However, with the introduction of ACPI support, the names of the real
> +devices are a bit cryptic and non-obvious. Thus, a new naming scheme was
> +introduced to use more generic names based on the type of the device. The
> +following rules apply:
> +
> +  1) Devices that are bound to CPUs, are named based on the CPU logical
> +     number.
> +
> +     e.g, ETM bound to CPU0 is named "etm0"
> +
> +  2) All other devices follow a pattern, "<device_type_prefix>N", where :
> +
> +       <device_type_prefix>    - A prefix specific to the type of the device
> +       N                       - a sequential number assigned based on the order
> +                                 of probing.
> +
> +       e.g, tmc_etf0, tmc_etr0, funnel0, funnel1
> +
> +Thus, with the new scheme the devices could appear as :
> +
> +root:~# ls /sys/bus/coresight/devices/
> + etm0     etm1     etm2         etm3  etm4      etm5      funnel0
> + funnel1  funnel2  replicator0  stm0  tmc_etf0  tmc_etr0  tpiu0

This looks goo do me.  Jonathan, if you prefer to handle this via your tree:

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

Otherwise I'll pick it up.

Thanks,
Mathieu

> +
> +Some of the examples below might refer to old naming scheme and some
> +to the newer scheme, to give a confirmation that what you see on your
> +system is not unexpected. One must use the "names" as they appear on
> +the system under specified locations.
> +
>  How to use the tracer modules
>  -----------------------------
>
> @@ -326,16 +369,25 @@ amount of processor cores), the "cs_etm" PMU will be listed only once.
>  A Coresight PMU works the same way as any other PMU, i.e the name of the PMU is
>  listed along with configuration options within forward slashes '/'.  Since a
>  Coresight system will typically have more than one sink, the name of the sink to
> -work with needs to be specified as an event option.  Names for sink to choose
> -from are listed in sysFS under ($SYSFS)/bus/coresight/devices:
> +work with needs to be specified as an event option.
> +On newer kernels the available sinks are listed in sysFS under:
> +($SYSFS)/bus/event_source/devices/cs_etm/sinks/
>
> -       root@linaro-nano:~# ls /sys/bus/coresight/devices/
> -               20010000.etf   20040000.funnel  20100000.stm  22040000.etm
> -               22140000.etm  230c0000.funnel  23240000.etm 20030000.tpiu
> -               20070000.etr     20120000.replicator  220c0000.funnel
> -               23040000.etm  23140000.etm     23340000.etm
> +       root@localhost:/sys/bus/event_source/devices/cs_etm/sinks# ls
> +       tmc_etf0  tmc_etr0  tpiu0
>
> -       root@linaro-nano:~# perf record -e cs_etm/@20070000.etr/u --per-thread program
> +On older kernels, this may need to be found from the list of coresight devices,
> +available under ($SYSFS)/bus/coresight/devices/:
> +
> +       root:~# ls /sys/bus/coresight/devices/
> +        etm0     etm1     etm2         etm3  etm4      etm5      funnel0
> +        funnel1  funnel2  replicator0  stm0  tmc_etf0  tmc_etr0  tpiu0
> +
> +       root@linaro-nano:~# perf record -e cs_etm/@tmc_etr0/u --per-thread program
> +
> +As mentioned above in section "Device Naming scheme", the names of the devices could
> +look different from what is used in the example above. One must use the device names
> +as it appears under the sysFS.
>
>  The syntax within the forward slashes '/' is important.  The '@' character
>  tells the parser that a sink is about to be specified and that this is the sink
> @@ -352,7 +404,7 @@ perf can be used to record and analyze trace of programs.
>  Execution can be recorded using 'perf record' with the cs_etm event,
>  specifying the name of the sink to record to, e.g:
>
> -    perf record -e cs_etm/@20070000.etr/u --per-thread
> +    perf record -e cs_etm/@tmc_etr0/u --per-thread
>
>  The 'perf report' and 'perf script' commands can be used to analyze execution,
>  synthesizing instruction and branch events from the instruction trace.
> @@ -381,7 +433,7 @@ sort example is from the AutoFDO tutorial (https://gcc.gnu.org/wiki/AutoFDO/Tuto
>         Bubble sorting array of 30000 elements
>         5910 ms
>
> -       $ perf record -e cs_etm/@20070000.etr/u --per-thread taskset -c 2 ./sort
> +       $ perf record -e cs_etm/@tmc_etr0/u --per-thread taskset -c 2 ./sort
>         Bubble sorting array of 30000 elements
>         12543 ms
>         [ perf record: Woken up 35 times to write data ]
> @@ -405,7 +457,7 @@ than the program flow through the code.
>  As with any other CoreSight component, specifics about the STM tracer can be
>  found in sysfs with more information on each entry being found in [1]:
>
> -root@genericarmv8:~# ls /sys/bus/coresight/devices/20100000.stm
> +root@genericarmv8:~# ls /sys/bus/coresight/devices/stm0
>  enable_source   hwevent_select  port_enable     subsystem       uevent
>  hwevent_enable  mgmt            port_select     traceid
>  root@genericarmv8:~#
> @@ -413,14 +465,14 @@ root@genericarmv8:~#
>  Like any other source a sink needs to be identified and the STM enabled before
>  being used:
>
> -root@genericarmv8:~# echo 1 > /sys/bus/coresight/devices/20010000.etf/enable_sink
> -root@genericarmv8:~# echo 1 > /sys/bus/coresight/devices/20100000.stm/enable_source
> +root@genericarmv8:~# echo 1 > /sys/bus/coresight/devices/tmc_etf0/enable_sink
> +root@genericarmv8:~# echo 1 > /sys/bus/coresight/devices/stm0/enable_source
>
>  From there user space applications can request and use channels using the devfs
>  interface provided for that purpose by the generic STM API:
>
> -root@genericarmv8:~# ls -l /dev/20100000.stm
> -crw-------    1 root     root       10,  61 Jan  3 18:11 /dev/20100000.stm
> +root@genericarmv8:~# ls -l /dev/stm0
> +crw-------    1 root     root       10,  61 Jan  3 18:11 /dev/stm0
>  root@genericarmv8:~#
>
>  Details on how to use the generic STM API can be found here [2].
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
