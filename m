Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87011199C5A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 19:00:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K5Phihv1LpgU9nQfIZ1B5B+pasIyED/Ja85nuSMcrKA=; b=Yeowk9PS3LiXue
	MRAtAApAACpN2n3u6BC4D4pgmPdEbq4XmD2fkDK8xtcq/dBCd9AKl1H+XgVueCT1isU/ICQB6Ji+8
	QOC4wIS65SekqQE8anUkps88Sahlto/IJLkgfStiEPfDP9rq+Mzerkb3CNSBfYwGVsCJ3IaAUXQyJ
	g+1PcIeL84hD94l1GdCSn60OrU6RXCux4Q63D0ZLK70eEB09DHlaVkPBL8p/mfojCrgT2w7a90V2K
	KHSxNHP244zygEW0aD3uQA1i99Up3Mqf0cg7XvgeCtxjut77CcmByWVeuPOqy5XuxLMCaRQrdWlLB
	2PQgKcTBguijnWzlzJkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJKFY-0005hq-La; Tue, 31 Mar 2020 17:00:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJKFQ-0005h9-QW
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 17:00:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2E74030E;
 Tue, 31 Mar 2020 10:00:18 -0700 (PDT)
Received: from [172.16.1.108] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B0EA53F71E;
 Tue, 31 Mar 2020 10:00:16 -0700 (PDT)
Subject: Re: SError handling vs. SIGSEGV
To: Florian Fainelli <f.fainelli@gmail.com>
References: <3da89354-78f7-5f48-9eec-75c74270fa3e@gmail.com>
 <68580476-eba8-2615-c25f-f3f1b53118e0@arm.com>
 <2506b851-8ee2-dca5-82ac-b06c0d406c6d@gmail.com>
From: James Morse <james.morse@arm.com>
Openpgp: preference=signencrypt
Message-ID: <04dfeceb-0277-2db9-9263-b40b5a8f1c91@arm.com>
Date: Tue, 31 Mar 2020 17:59:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <2506b851-8ee2-dca5-82ac-b06c0d406c6d@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_100020_907734_1D45516E 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Doug Berger <opendmb@gmail.com>,
 Scott Branden <sbranden@broadcom.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 bcm-kernel-feedback-list@broadcom.com, Ray Jui <rjui@broadcom.com>,
 Will Deacon <will@kernel.org>, Dave.Martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

Some more light on this one:

On 3/30/20 10:11 PM, Florian Fainelli wrote:
>>> Doug had tried to submit a patch series that allowed a given platform to
>>> install custom abort handlers, similar to what ARM 32-bit permits, but
>>> this got shot down:

>> For good reason. You cannot know that the abort was caused by your broken
>> hardware, and not an ECC error for the stack memory...

> ECC are separate syndromes which are actually known to the kernel.

Those extra external-abort FSC are for what the core was doing when it took the
abort. (e.g. page table walk)
You'd only get one of the ECC/parity values if the error was detected by the
core. But other components can detect an ECC error and return an abort, the core
doesn't know why this happened, it will show up with that 'catch all' value.

The v8.2 extensions change this by letting the component that triggered the
error describe why it did that.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
