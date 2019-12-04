Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F47112C13
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 13:52:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7zxcJdmjq8sTw95oGOK3FhdwfkhZpHfKPbDECfwDq8o=; b=dyfYXyTL+p3s+6
	rxmqWWO6zQ8gL9sDZzBAu9brm6ThJSOHFWgurjS6hO7/JBaz5qArtZnWmePqf+Qd+1nyT/2bm/Bil
	iw2iGoKNADKGOxhRTk+t+QxFXcaCdJb519kX4pa/qZ0v4/uTdMIF7U1ICSmIxv1GZmDlhsVYeyN3P
	tYekH+2ZvgfuKsvbILwW14paHSBjqtU+Vwoc+GzQbb7jVuIoqehLsFGuT4QOXSTtKqrJZ9yrkHSMi
	M/9s2Oke5Ea3HtFgN4KZMMNEsCPnGGmzUrz6fyuWQjPWq0/cQfsNTe9IZyYcuNYYBl5a266hdVuDj
	z/wO6chPGyFFBdOB6WDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icU98-0007Hb-Cy; Wed, 04 Dec 2019 12:52:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icU8z-0007H0-3Y
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 12:52:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 038D31FB;
 Wed,  4 Dec 2019 04:52:36 -0800 (PST)
Received: from [192.168.1.18] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4515A3F68E;
 Wed,  4 Dec 2019 04:52:35 -0800 (PST)
Subject: Re: Kernel v5.2+ on HiKey960?
To: Catalin Marinas <catalin.marinas@arm.com>,
 Jerome Forissier <jerome@forissier.org>
References: <f58c2c0e-ec82-6675-84e6-ad63fd93c8ff@forissier.org>
 <20191204101851.GC13081@arrakis.emea.arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <a24f817e-86dc-ae32-417d-08eadc96d0eb@arm.com>
Date: Wed, 4 Dec 2019 12:55:07 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191204101851.GC13081@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_045237_192412_22805CA3 
X-CRM114-Status: GOOD (  13.78  )
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/4/19 10:18 AM, Catalin Marinas wrote:
>> 1. "arm64: vdso: Substitute gettimeofday() with C implementation"
> Commit 28b1a824a4f4, merged in 5.3
> 
>> 2. "arm64: vdso: Explicitly add build-id option"
> Commit 7a0a93c51799, merged in 5.2
> 
>> 3. "arm64: arch_timer: Ensure counter register reads occur with seqlock
>>     held"
> Commit 75a19a0202db, merged in 5.2.
> 
>> 4. "arm64: vdso: Remove stale files from old assembly implementation"
> Commit 37a5076098c1, merged in 5.4.
> 
> The above is a pretty random set of reverts that doesn't really help
> pinpoint the issue.
> 
> Since 5.2 was the first kernel where the regression was noticed, could
> you try reverting commit 75a19a0202db in 5.2 and try that specific
> kernel version? If this doesn't solve the issue, it may be simpler to
> bisect only between 5.1 and 5.2 rather than across multiple kernel
> versions.

I agree with Catalin here. The unified vDSO change is a 5.3+ change, should not
impact what you are seeing in 5.2.

Could you please as well provide some guidelines to reproduce your scenario
exactly? This would help in the debugging.

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
