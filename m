Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 551E8A0293
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 15:04:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XmqoJ3CtpmdMQiZqLGIf/xSznRTdTEssflSTekdRT+8=; b=tIN/TV6SIh8Fcx
	JL7oCGtHBwEziPkJc9RoegSG2zFQob3mOgcnUYo0RIN8KuCivESoQlhCi6dBQItmKmvCtrcqWhjlR
	wEs8t9iKEQ7CnNmbcI47LctzLi4L1rwYQaIoBuLmELR8imld9Z3ZXwqwQdSBwsmMlI2StfNa1mbQU
	HwmqObrmalR+mfDq5wntUsq5OhmbjK8v8y/CbcJ+KyJZ6PqqHL7S1XjO+WRE2Tr0/1DDWBMG8omQ1
	xIuyqN2exvzC3AjWhGV4lZ2BkkOcYTAtzAS5tcXvR40u+N6zZeqg07pWWNSbZNUqx+6EYdsxRLk6x
	kOM5NJaOAsZFYd2z0UEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2xd3-0003NE-OR; Wed, 28 Aug 2019 13:04:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2xcp-0003Ma-HD
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 13:04:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 56B99344;
 Wed, 28 Aug 2019 06:04:33 -0700 (PDT)
Received: from queper01-lin (queper01-lin.cambridge.arm.com [10.1.195.48])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6BD043F246;
 Wed, 28 Aug 2019 06:04:31 -0700 (PDT)
Date: Wed, 28 Aug 2019 14:04:30 +0100
From: Quentin Perret <quentin.perret@arm.com>
To: Zhang Rui <rui.zhang@intel.com>
Subject: Re: [PATCH v7 4/4] thermal: cpu_cooling: Migrate to using the EM
 framework
Message-ID: <20190828130427.ed5372yq73qysjgh@queper01-lin>
References: <20190812084235.21440-1-quentin.perret@arm.com>
 <20190812084235.21440-5-quentin.perret@arm.com>
 <ebfd68984103084d63cf01a80cfa9538a1a15baf.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ebfd68984103084d63cf01a80cfa9538a1a15baf.camel@intel.com>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_060435_615928_54CB3867 
X-CRM114-Status: UNSURE (   7.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: ionela.voinescu@arm.com, linux-pm@vger.kernel.org, viresh.kumar@linaro.org,
 amit.kachhap@gmail.com, daniel.lezcano@linaro.org, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, edubezval@gmail.com, mka@chromium.org,
 catalin.marinas@arm.com, javi.merino@kernel.org, will@kernel.org,
 dietmar.eggemann@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wednesday 28 Aug 2019 at 20:58:47 (+0800), Zhang Rui wrote:
> this patch has coding style problems, please check the checkpatch.pl
> output.
> total: 5 errors, 17 warnings, 413 lines checked

Argh ! And that's what happens when I forget checkpatch ...
I'll fix this shortly. Sorry about that.

Quentin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
