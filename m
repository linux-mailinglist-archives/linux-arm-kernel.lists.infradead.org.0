Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A534A23E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 15:32:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j52ZLYGmwJDCeoQbkp77HUTL7Vk4Ihwg44Ynl2d9gs8=; b=ncBbNZlMoNGpKd
	doXF6taCa5fgTItzZKHEgVp095GvuqJKdagCjxou3uxIeRJ4qtmvQ1hZnJa2PlTUBofaZkQnkt2Er
	k3ie+5+7p/0VNpL0UwKuSyVX9rCq8h52E6SiIq4iSkXx2IgAs6eins9zyWnFdKby+HHybsfF3UErG
	5ka3vxArCHpfRkjhWlwZWsZjLfuq3Af5ZSisLiXH9de/Ws3DNY0IsLxAqwU+nPJx49/k2aE+jC4j6
	OK6VGnBntnazIL1IwonzckyGeacP6x48P7P/RIdFZfWEHZfaRytdg0iUXsB+ifz+1lByuCuoY5xQ4
	EFLZcBrfiAy0Bpa8KqDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdEED-0005qy-HJ; Tue, 18 Jun 2019 13:32:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdE3t-0006LQ-QF
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 13:22:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 690722B;
 Tue, 18 Jun 2019 06:22:06 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 814903F718;
 Tue, 18 Jun 2019 06:22:05 -0700 (PDT)
Date: Tue, 18 Jun 2019 14:21:59 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v1 5/5] coresight: etm4x: save/restore state across CPU
 low power states
Message-ID: <20190618132159.GA18121@e107155-lin>
References: <20190618125433.9739-1-andrew.murray@arm.com>
 <20190618125433.9739-6-andrew.murray@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618125433.9739-6-andrew.murray@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_062210_224199_7FD2E755 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 01:54:33PM +0100, Andrew Murray wrote:
> Some hardware will ignore bit TRCPDCR.PU which is used to signal
> to hardware that power should not be removed from the trace unit.

So, how or can we identify or discover such system ? DT/ACPI ?

> Let's mitigate against this by saving and restoring the trace
> unit state when the CPU enters low power states.
>

I prefer to do this conditionally. It's unnecessary on systems which
don't ignore the TRCPDCR.PU and I really don't like them to be penalised
while we want to add this support for *broken* systems.

This is generally most useful to debug CPU suspend/resume exercising
the code path completely with emulated CPU power on/off as most of the
systems have the trace unit and the CPUs in the same power domain.

Just curious if this reported on any platforms ?

I wounder if we can use TRCPDSR(Power Down Status Register) to check the
status. I know on Juno, it doesn't loose context rather the power down
is emulated and saving/restoring may not be needed at all. Have you
tested on Juno with and without these patches and seen any difference ?

--
Regards,
Sudeep


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
