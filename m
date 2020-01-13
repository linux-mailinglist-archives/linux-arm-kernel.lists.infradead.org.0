Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BCA9139320
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 15:07:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5GQaMVC0tmzUcDj/59JwZu8RhKGnVR7RoRVjEEXCFvE=; b=GHhu4RZRbmr8Gq
	7rAeTlLZHhjxbtZWA/EnEGeK3GDHsBqnaOP3zth0j4L5w59Tr0BoyUFSlwgA8CpSddQA1jEbr5uXv
	Asry9/H7cSywsPpggM2FjvnJCjiDlOo86y92imGtQDu2z1jI0dKIelqjLfDVTJZrpg6nBBnNaCdSF
	OLo8p6dqHz3DbZypDvXC6oEq0KLmldpG6GgcD9lpVvnhjI862Cy4Snu7MKNWBW/RmMx3PWX3NSgrk
	kdvNpQM5TJoCiv+2VfyzMWX89nmuhYqntCBK9Up+US8cyBKCw5yhhjdWxROY8JNz9STQSAeX1KT7C
	uaZpqkBUHXLq25tB0lIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir0Nd-0007do-95; Mon, 13 Jan 2020 14:07:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir0NV-0007cA-3h
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 14:07:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 612991045;
 Mon, 13 Jan 2020 06:07:35 -0800 (PST)
Received: from [10.1.196.63] (e123195-lin.cambridge.arm.com [10.1.196.63])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8DA933F68E;
 Mon, 13 Jan 2020 06:07:34 -0800 (PST)
Subject: Re: [kvm-unit-tests PATCH] arm: expand the timer tests
From: Alexandru Elisei <alexandru.elisei@arm.com>
To: =?UTF-8?Q?Alex_Benn=c3=a9e?= <alex.bennee@linaro.org>, pbonzini@redhat.com
References: <20200110160511.17821-1-alex.bennee@linaro.org>
 <8455cdf6-e5c3-bd84-5b85-33ffad581d0e@arm.com>
Message-ID: <7be15e14-78c7-788f-7a9c-08e80bdb5600@arm.com>
Date: Mon, 13 Jan 2020 14:07:33 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <8455cdf6-e5c3-bd84-5b85-33ffad581d0e@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_060737_201528_5D5A6E9F 
X-CRM114-Status: UNSURE (   7.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, maz@kernel.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/13/20 1:48 PM, Alexandru Elisei wrote:
> [..]
>> +	isb();
>> +	report(!gic_timer_pending(info), "not pending before UINT64_MAX (irqs on)");
> This check can be improved. You want to check the timer CTL.ISTATUS here, not the
> gic. A device (in this case, the timer) can assert the interrupt, but the gic does
> not sample it immediately. Come to think of it, the entire timer test is wrong
> because of this.

I'll write a patch for it in v4 of my fixes series.

Thanks,
Alex



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
