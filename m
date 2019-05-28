Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59AF42C945
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 16:51:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6qtYwVsdeOwNfDlGGKAzdwioESzOo32SZT5vKXwbij8=; b=fqOwYeXnDc82C/
	25xWQQWRiPRaHaarU08n/WgXnSTnhN89IG6QRnaUREypo3PbuaHHybgoITCjqtMg1iLy3TwpjSmxP
	RxB4hGpMcXBvBbuYRa1ccca28cwwnuvXI7mDC2Dm6BoEvGVyoI/wjJoJ0QrpX8Ec0aHB4gp8Q6wAd
	xgZLSTFpgpYaSEP6CXaF/QuZJrLFOnjnX4opkfxc4PotidtMpcGz0Q0X5OWtpIzrYzQB+NZ8V+tmc
	YpkuXQYmsSXQcoFmQSaNiXUvAIjnvM5k91tfX3WtqEnhqp3u+qJZgQVNfwQ6ylGWxbCUP8eiPSfd8
	5IcnK/v7CdTOtB5Uc8tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVdRy-0005ep-OI; Tue, 28 May 2019 14:51:38 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVdRr-0005dh-AL
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 14:51:32 +0000
Received: by mail-pl1-x643.google.com with SMTP id d14so2914458pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 07:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4htO74nlZTTjjSOZRb+2oGEss+Qcefe+hGWQCyYkWoQ=;
 b=au44pDegu6gwO+Cf4teDgSVrwJlkGNEtG6C7VatYjseuou/yAacTS7Evb5615xq3g+
 CQ2KSL3YZAs5nW/Lu1FAkoZiLAg//aOMW1cai/0fWPB//zHyX7fonkQudab87mrGCWwO
 0rAlaXMI0UCuAAOuwoDiVWHn7Jp4SbacA+da05vZMNGzDhCnvgcFBtasTYz547ybOgq/
 dp0EQrHKeo1v1ougIdh51QKOB/otNfr9UrlhpwTdNPvZgTPKXs9VgQ5f1CloYbiU1dV2
 Rw7OzaW0syjJt2WODgNPxMcD1qxAm00CSJVg/dNu4RKe8HOo+iZW0uMPI8Ate3xRG+Zt
 WZhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4htO74nlZTTjjSOZRb+2oGEss+Qcefe+hGWQCyYkWoQ=;
 b=aIQqaSslPLKLiPzjt/lVYV/DdJR0rlItDPStAvAX/FmUiVGprXQCg5hKC0OzXEvxpS
 pvtnVAqHf93n+dXP+oJ/jIckqRjgDFWh9bnBHRRAke8KyCgN+uDb/KFNL4/yILNwyJV9
 J6g16lg27CoB6pLD5UcpJXAhx3TmUKTsewfRsyQEgt55iQEAq9OBHsCO9t3fa5/mzssu
 lhjrSxEanJyUjcgneWJspVTpKSPpebqUkx3lV59fahgIWQcDW36nGd5prHjmzI+EMldF
 E77G0ACVA3Twgn/4jTm7ewiyd+Rd69rq0i34ovr1RVY9fnwQ0mbO4qLItu0qFp5yqmSJ
 nV7g==
X-Gm-Message-State: APjAAAXAWs8GPdWwIZ6d5dIjE8IIIuva6ivIxvrs0oHM8SNfzmfqVVFc
 SJ6at7IaGlzASrWOhUE0ueapmA==
X-Google-Smtp-Source: APXvYqy3PNdTZipQ9Cj8tf7D5aG0YpWARynwkOVz5AcSSOfamZYs+WVN/eD3PulYkH/LJp02pSfptg==
X-Received: by 2002:a17:902:760f:: with SMTP id
 k15mr60674375pll.125.1559055089555; 
 Tue, 28 May 2019 07:51:29 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m1sm2701885pjv.22.2019.05.28.07.51.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 28 May 2019 07:51:28 -0700 (PDT)
Date: Tue, 28 May 2019 08:51:26 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v4 00/30] coresight: Support for ACPI bindings
Message-ID: <20190528145126.GA20714@xps15>
References: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
 <20190528051924.GA19112@leoy-ThinkPad-X240s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528051924.GA19112@leoy-ThinkPad-X240s>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_075131_369999_92979F91 
X-CRM114-Status: GOOD (  27.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Good day,

On Tue, May 28, 2019 at 01:19:24PM +0800, Leo Yan wrote:
> Hi Suzuki,
> 
> On Wed, May 22, 2019 at 11:34:33AM +0100, Suzuki K Poulose wrote:
> > This series adds the support for CoreSight devices on ACPI based
> > platforms. The device connections are encoded as _DSD graph property[0],
> > with CoreSight specific extensions to indicate the direction of data
> > flow as described in [1]. Components attached to CPUs are listed
> > as child devices of the corresponding CPU, removing explicit links
> > to the CPU like we do in the DT.
> > 
> > The majority of the series cleans up the driver and prepares the subsystem
> > for platform agnostic firwmare probing, naming scheme, searching etc.
> > 
> > We introduce platform independent helpers to parse the platform supplied
> > information. Thus we rename the platform handling code from:
> > 	of_coresight.c  => coresight-platform.c
> > 
> > The CoreSight driver creates shadow devices that appear on the Coresight
> > bus, in addition to the real devices (e.g, AMBA bus devices). The name
> > of these devices match the real device. This makes the device name
> > a bit cryptic for ACPI platform. So this series also introduces a generic
> > platform agnostic device naming scheme for the shadow Coresight devices.
> > Towards this we also make changes to the way we lookup devices to resolve
> > the connections, as we can't use the names to identify the devices. So,
> > we use the "fwnode_handle" of the real device for the device lookups.
> > Towards that we clean up the drivers to keep track of the "CoreSight"
> > device rather than the "real" device. However, all real operations,
> > like DMA allocation, Power management etc. must be performed on
> > the real device which is the parent of the shadow device.
> > 
> > Finally we add the support for parsing the ACPI platform data. The power
> > management support is missing in the ACPI (and this is not specific to
> > CoreSight). The firmware must ensure that the respective power domains
> > are turned on.
> > 
> > Applies on v5.2-rc1
> > 
> > Tested on a Juno-r0 board with ACPI bindings patch (Patch 31/30) added on
> > top of [2]. You would need to make sure that the debug power domain is
> > turned on before the Linux kernel boots. (e.g, connect the DS-5 to the
> > Juno board while at UEFI). arm32 code is only compile tested.
> 
> After I applied this patch set, I found all device names under
> '/sys/bus/event_source/devices/cs_etm/sinks/' have been changed as
> below on my DB410c board:
> # ls /sys/bus/event_source/devices/cs_etm/sinks/
> tmc_etf0  tmc_etr0  tpiu0

Yes, that is the expected behavior.

> 
> This leads to below command failure when open PMU device:
> # perf record -e cs_etm/@826000.etr/ --per-thread uname
> failed to set sink "826000.etr" on event cs_etm/@826000.etr/ with 2 (No such file or directory)

Correct.

> 
> I must use below command so that perf can match string with the
> device name under '/sys/bus/event_source/devices/cs_etm/sinks/':
> # perf record -e cs_etm/@tmc_etr0/ --per-thread uname

Correct.

> 
> Seems to me, this is an unexpected change and when I worked on the
> patch set v2, IIRC that version still can use '826000.etr' to open PMU
> device.

Correct - v2 did not address the new naming convention for devices present under
'event_source', something that was corrected in v3.

 
> Please help confirm for this.  Thanks!
> 
> Leo.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
