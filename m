Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6B21913CC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 16:02:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=znK5dN0wXbUbGwebbK052StkNCDakhMlkidPK7pqjVs=; b=qwsl3CTWpp9vEi
	URs2hlFsHwkTdlsn1hbIMGBZI1GpQaSYMAasP5sD3QUKjqoYJIV36/AGz0LcCN0kd980CLQKISrNn
	ugSIrABwVPaxDzFrofd1oAIe9xvu3RsVrh1jjV7u/Wts32/3UazM2kfy+JvS+HkpHE3qTpFKaewJ0
	aGn2nN9Y3lI8GZoMswclHKgQ5KsE3TpnUje/o9OmP+wJKRK+Ti/whxJSUDBBQr5aa0A+naTtOKmQX
	fbOV4BKUlh09KMLB/QknB09hCitrLgvSLfGhyTlXP7l+3Q4l6XusR1IH6+2qoGeaRMS7l/WasbxXx
	8To1B0MK/Hh+tJKUE5AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGl4G-0001lE-EN; Tue, 24 Mar 2020 15:02:12 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGl44-0001kh-1W; Tue, 24 Mar 2020 15:02:00 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 9B539300096;
 Tue, 24 Mar 2020 16:01:55 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 7F491286C138B; Tue, 24 Mar 2020 16:01:55 +0100 (CET)
Date: Tue, 24 Mar 2020 16:01:55 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Zhenyu Ye <yezhenyu2@huawei.com>
Subject: Re: [RFC PATCH v4 0/6] arm64: tlb: add support for TTL feature
Message-ID: <20200324150155.GH20713@hirez.programming.kicks-ass.net>
References: <20200324134534.1570-1-yezhenyu2@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324134534.1570-1-yezhenyu2@huawei.com>
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-mm@kvack.org,
 guohanjun@huawei.com, will@kernel.org, linux-arch@vger.kernel.org,
 yuzhao@google.com, maz@kernel.org, steven.price@arm.com, arm@kernel.org,
 Dave.Martin@arm.com, arnd@arndb.de, suzuki.poulose@arm.com, npiggin@gmail.com,
 zhangshaokun@hisilicon.com, broonie@kernel.org, rostedt@goodmis.org,
 prime.zeng@hisilicon.com, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, xiexiangyou@huawei.com,
 linux-kernel@vger.kernel.org, aneesh.kumar@linux.ibm.com,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 09:45:28PM +0800, Zhenyu Ye wrote:
> In order to reduce the cost of TLB invalidation, the ARMv8.4 TTL
> feature allows TLBs to be issued with a level allowing for quicker
> invalidation.  This series provide support for this feature. 
> 
> Patch 1 and Patch 2 was provided by Marc on his NV series[1] patches,
> which detect the TTL feature and add __tlbi_level interface.

I realy hate how it makes vma->vm_flags more important for tlbi.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
