Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA533BD38B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 22:27:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Hs2BvOg3IvRTs8qU8eFeqiEFTLXrD5r/zn1u/qTjty8=; b=KuXPp3iL2WOhRRDguaA3aRJt1
	uhB4YbFpXwjFuzOFCemk4fYXd0PITOqoFVQSEOIIW6ExRvzSvr96xyH+GmnzWvqjyh35OgpMGTznn
	I/5RvCBm+2UwysC0747F4Tw8oEaYoCXZFBM4jjtHs7YQY8afdDKDb/4cC4qLVqqj6J2vXxBVpAjs/
	p+M0vAdwd2MX2d9ggUWDgz6xjjozOW7ZMx3bTKFMIWDyX2h/Hjc7lyUktNnw9Cm2M2EtXoEpgh63A
	/52DLh2o39qFGpRv/jUFhJzdLSYW6RnvO7xsb9zpt5KG2CRfz2qggEVYHE9HKjbopJ/P0yN62g2Ld
	d9UUoRG3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCrPC-0005KZ-Gg; Tue, 24 Sep 2019 20:27:26 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCrOt-0005Ir-J2; Tue, 24 Sep 2019 20:27:09 +0000
Received: from [10.200.156.146] (unknown [167.220.2.18])
 by linux.microsoft.com (Postfix) with ESMTPSA id 0EEC620BBF87;
 Tue, 24 Sep 2019 13:27:07 -0700 (PDT)
Subject: Re: [RFC PATCH v1 1/1] Add support for arm64 to carry ima measurement
 log in kexec_file_load
To: Thiago Jung Bauermann <bauerman@linux.ibm.com>
References: <20190913225009.3406-1-prsriva@linux.microsoft.com>
 <20190913225009.3406-2-prsriva@linux.microsoft.com>
 <87zhiz1x9l.fsf@morokweng.localdomain>
From: prsriva <prsriva@linux.microsoft.com>
Message-ID: <baf74901-a594-c15d-b93f-f7d0a8c584b8@linux.microsoft.com>
Date: Tue, 24 Sep 2019 13:27:06 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <87zhiz1x9l.fsf@morokweng.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_132707_647654_8D0FD2B9 
X-CRM114-Status: GOOD (  18.97  )
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
Cc: mark.rutland@arm.com, jean-philippe@linaro.org, arnd@arndb.de,
 yamada.masahiro@socionext.com, sboyd@kernel.org, catalin.marinas@arm.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, zohar@linux.ibm.com,
 takahiro.akashi@linaro.org, kristina.martsenko@arm.org, duwe@lst.de,
 linux-arm-kernel@lists.infradead.org, james.morse@arm.org,
 linux-integrity@vger.kernel.org, tglx@linutronix.de, allison@lohutok.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 9/19/19 8:07 PM, Thiago Jung Bauermann wrote:
> 
> Hello Prakhar,
> 
> Prakhar Srivastava <prsriva@linux.microsoft.com> writes:
> 
>> During kexec_file_load, carrying forward the ima measurement log allows
>> a verifying party to get the entire runtime event log since the last
>> full reboot since that is when PCRs were last reset.

<snip>

> In the previous patch, you took the powerpc file and made a few
> modifications to fit your needs. This file is now somewhat different
> than the powerpc version, but I don't understand to what purpose. It's
> not different in any significant way.
> 
> Based on review comments from your previous patch, I was expecting to
> see code from the powerpc file moved to an arch-independent part of the
> the kernel and possibly adapted so that both arm64 and powerpc could use
> it. Can you explain why you chose this approach instead? What is the
> advantage of having superficially different but basically equivalent
> code in the two architectures?
> 
> Actually, there's one change that is significant: instead of a single
> linux,ima-kexec-buffer property holding the start address and size of
> the buffer, ARM64 is now using two properties (linux,ima-kexec-buffer
> and linux,ima-kexec-buffer-end) for the start and end addresses. In my
> opinion, unless there's a good reason for it Linux should be consistent
> accross architectures when possible.
> 
> --
> Thiago Jung Bauermann
> IBM Linux Technology Center

I looked at the of_ drivers are it became apparent that the driver calls
were already available for consumption. Adding ima specific code will be
same as adding wrapper code for any other property. Which is true for
all properties, effectively setting the property name and pass through
for other parameters.

I still like to move both implementations to a arch independent code 
path, i could not convince my self that of_*ima is probably the place, 
but if that's the best place?, then i will go ahead and make that change 
as well.

Regarding using two properties, it just seemed more consistent how the
properties(start-end) are being used in the kexec, and hides the inner 
details for the cell structures, thats all.

Its just the placement of the wrapper functions, but once thats done
both archs will call the same.

Thanks,
Prakhar Srivastava

> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
