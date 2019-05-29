Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 173C12D594
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 08:35:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fiyevErRdsRsJAMeXUj4a7S2WDdAjfonBwAj3eaFaHA=; b=UYiNj3wrWoA7Jj
	4uAPNToKxTbim8YKgfMUSXK4VQnt7dALvw9oopIXQVJndOD9YIP/ZfNGF18BQ2tQbIxjh4l0woMac
	A1js5QdNubl5qvsmLcGnXSGO+6ssQardlYRa25GcgEYsnv8hQy2xhO2qJTyuJgpZxzaWVev1pwEZ3
	DsqXkTT7cO0DQpZqSqaiSk9FjGkmyAZALvkygvkx4IiTYmzGNp06IaBYWaCJ8xXvoG1riKU6uimbR
	dUxJ3JMzApZsHLjO4I3VEP43whKit/hnbJD25ibe0tRPRYTe0NaUWEekIjgR3bfIApJWUExbsaOv9
	giYT9MOgZObbilw+nXSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVsB1-000492-8L; Wed, 29 May 2019 06:35:07 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVsAr-00048M-Ot
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 06:34:59 +0000
Received: by mail-oi1-x244.google.com with SMTP id v2so1124967oie.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 23:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=32oNNfOBxR/dIJDiqOCCeX3FJ2erRbG9x3SCfpFAaFc=;
 b=A0ThL7X9hLFBwyv6iK++tvStLIKMPWGta2pKdZiVten8r/ND4jT+vyGCCE5oL3sH4K
 APmx7ul95R/6gOgmEKWfoVrpaGhcozdHFgqQI4OAWBFMI0KT5KqgwRam+1TzGFVE8UzN
 AAIJVGcoqGd8spLrUOFgdK44JrEKVFmEoFOD6ccDslM4FoQiBPlpqGODKufQm61utEkj
 IyY35WqR1UX4/a4EJMV6Gi9xkOO4K6Zz4YvKInXqb3CR5bnZ1pP9WLciOAz6pR/rykjo
 6wQ4dz2Xsskpd3n7gHc9OUls52XyE3gyNqL52tMRc3LNph5j4qxbiRJWnhoqBxUr2S7E
 wb8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=32oNNfOBxR/dIJDiqOCCeX3FJ2erRbG9x3SCfpFAaFc=;
 b=MBmbOo3FNvFczciuPNHZtoWe6qdmpJiiwGM8xjYbVUQq4bKLWBzfF+QrV1eVXsEdqc
 ozLxyP9qMUYHifIATDaHCZUYbho2oC8DkrhtUu3FVsJKDlUsno1Q26+DNLExz9CfsJIX
 fZA9kK/aQQEItjXgBYggZxJtYAF5cZ7sD5wYMBF63rKEJ08xBY5LlPP7SHT5kMKhyGAr
 sGCw2zQHveC/xekChdsXynLuP8Ty1kBt+ZpqpvrOUta1yRhze3Q9vRb7TtfGGzjDfT4r
 XAdKqEcl2xpJUy8E1gUf28Vy+HbWGgbgdmTA+tWsaLToUXaowtNvkSYJ4e5nYA4T2bSJ
 HwYQ==
X-Gm-Message-State: APjAAAUoej43tosCFRZ5pheiln64XGkk6q74xl4KjB94uS3TZXokXrvL
 7CRHW0dLYCRUOns9/txP2v0ZXQ==
X-Google-Smtp-Source: APXvYqxHsfGGqbhU2XvuVpniJ59bCKj++ACikAww1d20dZ3Q6JWKSdvvP6mQjxwxg5tf7cOqfRU+xw==
X-Received: by 2002:aca:342:: with SMTP id 63mr5026668oid.10.1559111695072;
 Tue, 28 May 2019 23:34:55 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li808-42.members.linode.com.
 [104.237.132.42])
 by smtp.gmail.com with ESMTPSA id l184sm6005234oih.49.2019.05.28.23.34.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 28 May 2019 23:34:54 -0700 (PDT)
Date: Wed, 29 May 2019 14:34:49 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v4 00/30] coresight: Support for ACPI bindings
Message-ID: <20190529063449.GA15808@leoy-ThinkPad-X240s>
References: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
 <20190528051924.GA19112@leoy-ThinkPad-X240s>
 <20190528145126.GA20714@xps15>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528145126.GA20714@xps15>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_233457_814319_9DB48FFB 
X-CRM114-Status: GOOD (  29.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Tue, May 28, 2019 at 08:51:26AM -0600, Mathieu Poirier wrote:
> Good day,
> 
> On Tue, May 28, 2019 at 01:19:24PM +0800, Leo Yan wrote:
> > Hi Suzuki,
> > 
> > On Wed, May 22, 2019 at 11:34:33AM +0100, Suzuki K Poulose wrote:
> > > This series adds the support for CoreSight devices on ACPI based
> > > platforms. The device connections are encoded as _DSD graph property[0],
> > > with CoreSight specific extensions to indicate the direction of data
> > > flow as described in [1]. Components attached to CPUs are listed
> > > as child devices of the corresponding CPU, removing explicit links
> > > to the CPU like we do in the DT.
> > > 
> > > The majority of the series cleans up the driver and prepares the subsystem
> > > for platform agnostic firwmare probing, naming scheme, searching etc.
> > > 
> > > We introduce platform independent helpers to parse the platform supplied
> > > information. Thus we rename the platform handling code from:
> > > 	of_coresight.c  => coresight-platform.c
> > > 
> > > The CoreSight driver creates shadow devices that appear on the Coresight
> > > bus, in addition to the real devices (e.g, AMBA bus devices). The name
> > > of these devices match the real device. This makes the device name
> > > a bit cryptic for ACPI platform. So this series also introduces a generic
> > > platform agnostic device naming scheme for the shadow Coresight devices.
> > > Towards this we also make changes to the way we lookup devices to resolve
> > > the connections, as we can't use the names to identify the devices. So,
> > > we use the "fwnode_handle" of the real device for the device lookups.
> > > Towards that we clean up the drivers to keep track of the "CoreSight"
> > > device rather than the "real" device. However, all real operations,
> > > like DMA allocation, Power management etc. must be performed on
> > > the real device which is the parent of the shadow device.
> > > 
> > > Finally we add the support for parsing the ACPI platform data. The power
> > > management support is missing in the ACPI (and this is not specific to
> > > CoreSight). The firmware must ensure that the respective power domains
> > > are turned on.
> > > 
> > > Applies on v5.2-rc1
> > > 
> > > Tested on a Juno-r0 board with ACPI bindings patch (Patch 31/30) added on
> > > top of [2]. You would need to make sure that the debug power domain is
> > > turned on before the Linux kernel boots. (e.g, connect the DS-5 to the
> > > Juno board while at UEFI). arm32 code is only compile tested.
> > 
> > After I applied this patch set, I found all device names under
> > '/sys/bus/event_source/devices/cs_etm/sinks/' have been changed as
> > below on my DB410c board:
> > # ls /sys/bus/event_source/devices/cs_etm/sinks/
> > tmc_etf0  tmc_etr0  tpiu0
> 
> Yes, that is the expected behavior.
> 
> > 
> > This leads to below command failure when open PMU device:
> > # perf record -e cs_etm/@826000.etr/ --per-thread uname
> > failed to set sink "826000.etr" on event cs_etm/@826000.etr/ with 2 (No such file or directory)
> 
> Correct.
> 
> > 
> > I must use below command so that perf can match string with the
> > device name under '/sys/bus/event_source/devices/cs_etm/sinks/':
> > # perf record -e cs_etm/@tmc_etr0/ --per-thread uname
> 
> Correct.
> 
> > 
> > Seems to me, this is an unexpected change and when I worked on the
> > patch set v2, IIRC that version still can use '826000.etr' to open PMU
> > device.
> 
> Correct - v2 did not address the new naming convention for devices present under
> 'event_source', something that was corrected in v3.

Thanks for confirmation, Mathieu.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
