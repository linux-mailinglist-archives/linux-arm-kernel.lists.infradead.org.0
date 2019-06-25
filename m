Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CADFD55061
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:30:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WSs6mfs+k63d2wVzacgYyE3Q9A3fwW1tihTQh1xj/dw=; b=bjB0dnGoHRehDM0/bqqJXVBIC
	gxLHp6nYXLxgY+8fcNJ4HyWmx4wGE0q7dbquT8BigCbjB7mpECl2hXKqoLAf7wpbp7gzupepxIdVz
	AlkTsPcuLB0gsMHMlr+J2nPfp5MBcI/R9S2auzNF+CTuXMbPcHb4qYKUMdVO/+jIrrmLiQbMn8Ypr
	47+YMvYYHemS2LBFZL0e3kxWG8CkWRc1qhR7RBn5Z3CEAMA9SPiSInNUZBkn13kB92MfpPPtIcK9W
	tp4bsp2PgOmgDwogqfeYaT1u9KYy7mEGmMOe4eyD8PtpxjjZ/yPSQJMiDVX2qO31BAX62Z4i+GVcp
	ydTCHzA4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflWj-0001Bd-28; Tue, 25 Jun 2019 13:30:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hflWJ-0000lo-Hp
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:30:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0E1FC2B;
 Tue, 25 Jun 2019 06:29:59 -0700 (PDT)
Received: from [10.1.196.120] (e121650-lin.cambridge.arm.com [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DCCE93F718;
 Tue, 25 Jun 2019 06:29:57 -0700 (PDT)
Subject: Re: [PATCH 3/7] perf: arm64: Use rseq to test userspace access to pmu
 counters
To: Mark Rutland <mark.rutland@arm.com>, will.deacon@arm.com
References: <20190611125315.18736-1-raphael.gault@arm.com>
 <20190611125315.18736-4-raphael.gault@arm.com>
 <20190611143346.GB28689@kernel.org>
 <20190611165755.GG29008@lakrids.cambridge.arm.com>
From: Raphael Gault <raphael.gault@arm.com>
Message-ID: <ff5897eb-ae6c-482f-148b-947a661fde4f@arm.com>
Date: Tue, 25 Jun 2019 14:29:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190611165755.GG29008@lakrids.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_062959_652611_0ADF0E72 
X-CRM114-Status: GOOD (  11.40  )
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
Cc: peterz@infradead.org, catalin.marinas@arm.com,
 Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
 linux-kernel@vger.kernel.org, mingo@redhat.com, mathieu.desnoyers@efficios.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark, Hi Will,

Now that we have a better idea what enabling this feature for 
heterogeneous systems would look like (both with or without using 
rseqs), it might be worth discussing if this is in fact a desirable 
thing in term of performance-complexity trade off.

Indeed, while not as scary as first thought, maybe the rseq method would 
still dissuade users from using this feature. It is also worth noting 
that if we only enable this feature on homogeneous system, the `mrs` 
hook/emulation would not be necessary.
If because of the complexity of the setup we need to consider whether we 
want to upstream this and have to maintain it afterward.

Thanks,

-- 
Raphael Gault

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
