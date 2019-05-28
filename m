Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3182BE8D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 07:19:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GssEIp6abdifGT3MtDJ3GE2mt0/W48ryhnRDfSSDUzQ=; b=nuSa52VpGRGmYH
	CWH8Kd2r66fntE09nyIQS8s6tgUsRT3/yV+hC9ZxlAi1v3F3a/1VSvfBgRbAtVhkgBeZBEHOw9EYJ
	LE12CoZvvRy8ElwIsS0u83LgetXtGghtIoQ+GJhNsFOdLiYGzzHtyyiNh67HyriXmXq6DqvuDLQ3N
	Xrr4bnJxcd9g2gU+j6MvedhuEWMd9fTOIA6zQm7U2Pg0iyudiv92JqCDtGeqUUbGhhqt2hK1ETe8x
	nhgay6mEmH4Au9ywP9iXum6+fJYXt5/tqIpaolOcuhFoVC/0BYlRXIGVwXHdgAoYpOGIV15Aftx5d
	RJXmCXTusrSxKUBjKF5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVUWU-0003z3-8W; Tue, 28 May 2019 05:19:42 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVUWM-0003yA-RP
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 05:19:36 +0000
Received: by mail-qk1-x741.google.com with SMTP id w187so10385977qkb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 22:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=d9vAkjT4zw1XDm8fsnSZlNEkjl4Nf7vHSlfSiY9KNso=;
 b=ALnyFScMHMtERUW5uD1FraHSomTN3wSkzcc4PKpGg+PWHBFD84hbVQEZQWoagJ5Xhb
 Mv1aFVz+PDS7WTLRjjzI3/r4f3n/zx7N3TJBC3qPz/FgPJY6s+MobfxiX3TxfZ4FQITm
 UtogIZKfFDygLEtHVL0jzihfUraD7hhrSKZ5jVQ9B64yED3R1Hs+HbvBE7hRMCNY5+5Y
 B/Yt2q4HmPgHIjcXO60h+/KlR+T943toFQ9IFKyU0WPZ2uNthhcK1PVqEO5iew+mGhU0
 U497rM9uHMfnVPHfaU8O3uc/81MIvFhI+gAfEoN0yIRlpSvXJViZoXlf2cC9Gn22QzPW
 yUZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=d9vAkjT4zw1XDm8fsnSZlNEkjl4Nf7vHSlfSiY9KNso=;
 b=tAogdslMlj664vLFxnELJ7yz9UFZ8aArOrh8rU59aWEPJp8GL0aCP3Pe61i1zVvGK4
 /1+pFWw2ylJrlUVYcIXK0tpwRbU56fO16IOmfUeDPSVkk8Ehggsiw8kacjjAEYQrxqyV
 XS9NLa2gZTqPLgFCs0ier9wJXXOd6+EHzZdinJccWa8Mq54sEPIoAnf9l2IFhjFnojqy
 QTkTuBFl5sSgA/s2lZ9n7vQP9FUdoIKKW7dxbVATeQKeZk62DEkcB5fpgFaYBY2qMxv7
 Nq5XLZ6zKYnI/6Y0cGthQe0TF6QDlsPGvz3BvrOgRfydrg1I9XUYqeVQHlP+FGgBs/wE
 ocUg==
X-Gm-Message-State: APjAAAVKkSHmUGOPwJLn5LDP9RX6Yip6FBKfUKO8RTKtPIrUb+DteXTj
 jjVRxPQV3Yvoo750nvOfRSuysw==
X-Google-Smtp-Source: APXvYqxy8NJKLvh/0D73f9xSTX35TDleS3jm+lfG9xUeZFBhjVdzfEIXiW9z84VlnU9ZXc5GOVMmrw==
X-Received: by 2002:a37:a247:: with SMTP id l68mr540762qke.89.1559020771336;
 Mon, 27 May 2019 22:19:31 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li483-211.members.linode.com.
 [50.116.44.211])
 by smtp.gmail.com with ESMTPSA id w189sm1054949qkc.38.2019.05.27.22.19.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 27 May 2019 22:19:30 -0700 (PDT)
Date: Tue, 28 May 2019 13:19:24 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v4 00/30] coresight: Support for ACPI bindings
Message-ID: <20190528051924.GA19112@leoy-ThinkPad-X240s>
References: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_221934_951222_B36A101E 
X-CRM114-Status: GOOD (  23.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On Wed, May 22, 2019 at 11:34:33AM +0100, Suzuki K Poulose wrote:
> This series adds the support for CoreSight devices on ACPI based
> platforms. The device connections are encoded as _DSD graph property[0],
> with CoreSight specific extensions to indicate the direction of data
> flow as described in [1]. Components attached to CPUs are listed
> as child devices of the corresponding CPU, removing explicit links
> to the CPU like we do in the DT.
> 
> The majority of the series cleans up the driver and prepares the subsystem
> for platform agnostic firwmare probing, naming scheme, searching etc.
> 
> We introduce platform independent helpers to parse the platform supplied
> information. Thus we rename the platform handling code from:
> 	of_coresight.c  => coresight-platform.c
> 
> The CoreSight driver creates shadow devices that appear on the Coresight
> bus, in addition to the real devices (e.g, AMBA bus devices). The name
> of these devices match the real device. This makes the device name
> a bit cryptic for ACPI platform. So this series also introduces a generic
> platform agnostic device naming scheme for the shadow Coresight devices.
> Towards this we also make changes to the way we lookup devices to resolve
> the connections, as we can't use the names to identify the devices. So,
> we use the "fwnode_handle" of the real device for the device lookups.
> Towards that we clean up the drivers to keep track of the "CoreSight"
> device rather than the "real" device. However, all real operations,
> like DMA allocation, Power management etc. must be performed on
> the real device which is the parent of the shadow device.
> 
> Finally we add the support for parsing the ACPI platform data. The power
> management support is missing in the ACPI (and this is not specific to
> CoreSight). The firmware must ensure that the respective power domains
> are turned on.
> 
> Applies on v5.2-rc1
> 
> Tested on a Juno-r0 board with ACPI bindings patch (Patch 31/30) added on
> top of [2]. You would need to make sure that the debug power domain is
> turned on before the Linux kernel boots. (e.g, connect the DS-5 to the
> Juno board while at UEFI). arm32 code is only compile tested.

After I applied this patch set, I found all device names under
'/sys/bus/event_source/devices/cs_etm/sinks/' have been changed as
below on my DB410c board:
# ls /sys/bus/event_source/devices/cs_etm/sinks/
tmc_etf0  tmc_etr0  tpiu0

This leads to below command failure when open PMU device:
# perf record -e cs_etm/@826000.etr/ --per-thread uname
failed to set sink "826000.etr" on event cs_etm/@826000.etr/ with 2 (No such file or directory)

I must use below command so that perf can match string with the
device name under '/sys/bus/event_source/devices/cs_etm/sinks/':
# perf record -e cs_etm/@tmc_etr0/ --per-thread uname

Seems to me, this is an unexpected change and when I worked on the
patch set v2, IIRC that version still can use '826000.etr' to open PMU
device.

Please help confirm for this.  Thanks!

Leo.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
