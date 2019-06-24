Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBAD518E4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 18:45:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ei+CERRFnrEMlCm3cOe+8Kng8V6z14WZ9vTrh/pnvDU=; b=YzsS1C/XU7f+pnkczz3H5kfDe
	94WLvC6p92hPRCWxOwEIyfkJG4vjhHrG64iXZxis16RJzgLtFfDTf8BBMWUdks+qpuJyC+VYvfoOC
	MhgLxUbqy0jEoRcQmc/xf0JfinBk4wH4UD+sJkN4/dNzX8qpoe92c4bPlZsZrwQxz2U1vmzHbbU3a
	Jt3AjJdznMYeUx8ROStjrN2yBf8CGkm8EpIr4iv1zQRFSyqlDhjdcvTTENwcp5vXrdbujWcBgDj9L
	3QkLF+jbOI8cpdaiucSCzigGuTl412ju8vCuTKg6BT7c0gXs+hkOkj7zJHCwuW/x7TLtJeC6nlwmd
	s3ng67QQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfS5i-0003GL-C2; Mon, 24 Jun 2019 16:45:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfS5Q-0003G2-Gl
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 16:44:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C503D360;
 Mon, 24 Jun 2019 09:44:55 -0700 (PDT)
Received: from [10.37.12.219] (unknown [10.37.12.219])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4D68A3F71E;
 Mon, 24 Jun 2019 09:44:54 -0700 (PDT)
Subject: Re: [RFC PATCH v2 7/8] arm64/sve: Don't disable SVE on syscalls return
To: Dave Martin <Dave.Martin@arm.com>
References: <20190613161656.20765-1-julien.grall@arm.com>
 <20190613161656.20765-8-julien.grall@arm.com>
 <20190621153316.GC2790@e103592.cambridge.arm.com>
From: Julien Grall <julien.grall@arm.com>
Message-ID: <54e5e484-0268-0593-e5e7-16d7451cc849@arm.com>
Date: Mon, 24 Jun 2019 17:44:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190621153316.GC2790@e103592.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_094456_603037_D75AAEB9 
X-CRM114-Status: GOOD (  17.36  )
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
Cc: Anton.Kirilov@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 oleg@redhat.com, zhang.lei@jp.fujitsu.com, alex.bennee@linaro.org,
 linux-arm-kernel@lists.infradead.org, Daniel.Kiss@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,

I will answer the rest of the e-mail separately.

On 6/21/19 4:33 PM, Dave Martin wrote:
> On Thu, Jun 13, 2019 at 05:16:55PM +0100, Julien Grall wrote:
>> +	 * state on context switch. The bit will be set again while
>> +	 * restoring/zeroing the registers.
>>   	 */
>> -	sve_user_disable();
>> +	if (test_and_clear_thread_flag(TIF_SVE))
>> +		set_thread_flag(TIF_SVE_NEEDS_FLUSH);
> 
> Do we need to do this under local_bh_disable()?  Does it matter?
> 
> It looks to me like this is called when we still have interrupts
> disabled, which is probably worth fixing.  This may actually be a bug:
> if kzalloc() causes us to sleep, we have the potential to trigger
> sleeping-while-atomic splats.

I am not sure to understand this. Which kzalloc do you refer to? Is it 
the one in sve_alloc?

> 
> If you agree that's a bug, try to come up with a preliminary patch
> that's suitable for stable.
> 
> (I may have just misunderstood / misremembered something here.)

Cheers,

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
