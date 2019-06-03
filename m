Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CE132D9B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 12:12:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IeNDEEHtJ+yVOCbgNsbi4TVqgblgJdKShbsqtDEdZ9k=; b=A9dyAvVpLIrzeSJZtvL20TiYW
	kexGqCvqUu0GYytee6Cmkp3v3UQKakQiYIOlVvvnBgrbNp71oeRrXIMJpWAPMcwRmlhBQmL4xKfNq
	u5c5s9tkOrZ3fnh2LxzJg+1WQgd6/jaCRFa7Ue14Is7VphrYxKz0jqz7x0lmFcVTmjSxg1Yc1caLd
	lCyFgS66J/jzFPMcPuaHUPishd+rVx/BPoB7VZHoROiCHdgnAzyE3T0ENbJ4k+O3r9daauBxRCNQg
	Yk6nXL1cI+e+7hY6/eTlrG8wk0gljtwifOImvlB1NqAe/71rAirdz1law9A+rnqKWC/iwTEfQCBff
	9SiH3Ssjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXjwx-0002pA-Jd; Mon, 03 Jun 2019 10:12:19 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXjwq-0002oO-3M
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 10:12:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E6F5F374;
 Mon,  3 Jun 2019 03:12:08 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 047593F5AF;
 Mon,  3 Jun 2019 03:12:07 -0700 (PDT)
Subject: Re: [PATCH v4 26/30] coresight: Use platform agnostic names
To: mike.leach@linaro.org
References: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
 <1558521304-27469-27-git-send-email-suzuki.poulose@arm.com>
 <CAJ9a7VhwHeN5uSEwDhLVR=CL=vgCfKHtWZ3o8NnLnxw_=mYBOg@mail.gmail.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <80e9fc21-cf1b-4118-52d5-7268f5470d1c@arm.com>
Date: Mon, 3 Jun 2019 11:12:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAJ9a7VhwHeN5uSEwDhLVR=CL=vgCfKHtWZ3o8NnLnxw_=mYBOg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_031212_149307_9F5B0D8B 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mathieu.poirier@linaro.org, coresight@lists.linaro.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mike,

On 29/05/2019 10:32, Mike Leach wrote:
> Hi,
> 
> Why am I not seeing references to coresight-cpu-debug in here? In
> other places in this patchset CPU debug has been changed, but there
> appears to be no platform agnostic name here, nor any ACPI type name
> either. Is cpu-debug remaining device tree only? Should CPU debug not
> be treated like ETM and get a cpu centric name?

Thats because they are not registered as coresight devices and thus do
not appear on the CoreSight bus under /sys/bus/coresight/. This set is
only tuning the "coresight" device names, linked to the real amba device.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
