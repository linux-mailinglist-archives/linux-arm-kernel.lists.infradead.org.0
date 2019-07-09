Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 517A962D0F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 02:26:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7SYy6Sh5yy5HsU+8vvVAe8lswHDAAIOO+3FogYkat+E=; b=Ysg2FxPxh7oZLG
	JIbFaqCr9q8gRn4tpWlEvOLFS9OWhAXnJj9JmxXqAs77ORlbGncq/KqGXRFsjmV82TgyKDOFWqnb1
	p0y2NrUhs447MZuy7JRbcFaRZMNQ4SOns87ObYPu3V6SgCkOP8tWsmXFUtMlqkRHByOqPyBBHrkou
	ZXsFoMAQJbuVku7r6nhLGhxeL8YlPpNs0mEf7oODukfu2RDklObbOD+LtV1ec2ES83jb2ITy97Vlz
	P5ddQBoYEYTXWuIgGLn1237mhOHgS/BEiNEkF0Nsnbz6JsgGDyag2Tym2vN6oq0e1UCeGrbGPUVWA
	TVWejqvQCZGnZ7LxI9xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkdxk-0007Z7-P4; Tue, 09 Jul 2019 00:26:28 +0000
Received: from edison.jonmasters.org ([173.255.233.168])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkdxF-0007Yg-4X
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 00:25:58 +0000
Received: from boston.jonmasters.org ([50.195.43.97]
 helo=tonnant.bos.jonmasters.org)
 by edison.jonmasters.org with esmtpsa (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.71) (envelope-from <jcm@jonmasters.org>)
 id 1hkdxB-0003Xo-BL; Tue, 09 Jul 2019 00:25:53 +0000
To: "qi.fuli@fujitsu.com" <qi.fuli@fujitsu.com>, Will Deacon <will@kernel.org>
References: <20190617143255.10462-1-indou.takao@jp.fujitsu.com>
 <20190617170328.GJ30800@fuggles.cambridge.arm.com>
 <e8fe8faa-72ef-8185-1a9d-dc1bbe0ae15d@jp.fujitsu.com>
 <20190627102724.vif6zh6zfqktpmjx@willie-the-truck>
 <5999ed84-72d0-9d42-bf7d-b8d56eaa4d4a@jp.fujitsu.com>
From: Jon Masters <jcm@jonmasters.org>
Message-ID: <675313fe-007b-c850-d730-a629b82ccfc8@jonmasters.org>
Date: Mon, 8 Jul 2019 20:25:52 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <5999ed84-72d0-9d42-bf7d-b8d56eaa4d4a@jp.fujitsu.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 50.195.43.97
X-SA-Exim-Mail-From: jcm@jonmasters.org
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
 edison.jonmasters.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 URIBL_BLOCKED autolearn=ham version=3.3.1
Subject: Re: [PATCH 0/2] arm64: Introduce boot parameter to disable TLB flush
 instruction within the same inner shareable domain
X-SA-Exim-Version: 4.2.1 (built Sun, 08 Nov 2009 07:31:22 +0000)
X-SA-Exim-Scanned: Yes (on edison.jonmasters.org)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_172557_248573_2DC625B1 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Jonathan Corbet <corbet@lwn.net>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "indou.takao@fujitsu.com" <indou.takao@fujitsu.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/2/19 10:45 PM, qi.fuli@fujitsu.com wrote:

> However, we found that with the increase of that the TLB flash was called,
> the noise was also increasing. Here we understood that the cause of this 
> issue is the implementation of Linux's TLB flush for arm64, especially use of 
> TLBI-is instruction which is a broadcast to all processor core on the system. 

Are you saying that for a microbenchmark in which very large numbers of
threads are created and destroyed rapidly there are a large number of
associated tlb range flushes which always use broadcast TLBIs?

If that's the case, and the hardware doesn't do any ASID filtering and
each TLBI results in a DVM to every PE, would it make sense to look at
whether there are ways to improve batching/switch to an IPI approach
rather than relying on broadcasts, as a more generic solution?

Jon.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
