Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D518518BC0F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 17:13:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JP21fv5WimnhPc1xkFHGF/zhLDPgvHIBTP2V8xvWCR0=; b=FWHdcO5H4UvWZ5jo5qfz2rFUQ
	PWDty195yBcjt6f/HS4+5g+Uv6DeLSjjOcfqM1u85gbVSuXBkK50TGF6wzJR24xKSkuVZ/gM5X9xh
	xHMvpyYQoV7FNHV9DQnhELN0W0L/tbCX2uJ+ubixZGJGiwZ+PxM2NZ2iR6g0RrdUuZXMT1/GRHovL
	grbBV9Js1GSj11L9QNZ519D/yiccIWawhgvfwUpeIWHOo4+nQQIg0vTriZ9RNIScrEK/CVfWehDxE
	KN+Ym4+XK614SfoGx3q4eeKdlWGW5ZBU0SYx25tYVcjN2Ihep1RtdCAUjFOFW9kP79nCWX+Q007x4
	YXG/P9mrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jExn3-0000EB-Iy; Thu, 19 Mar 2020 16:13:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jExmu-0000Cb-4w
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 16:12:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6677330E;
 Thu, 19 Mar 2020 09:12:51 -0700 (PDT)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5A75F3F52E;
 Thu, 19 Mar 2020 09:12:47 -0700 (PDT)
Subject: Re: [PATCH 1/2] perf: dsu: Allow multiple devices share same IRQ.
To: Mark Rutland <mark.rutland@arm.com>,
 Tuan Phan <tuanphan@os.amperecomputing.com>
References: <1584491176-31358-1-git-send-email-tuanphan@os.amperecomputing.com>
 <20200319143250.GA4876@lakrids.cambridge.arm.com>
 <20200319143510.GB4876@lakrids.cambridge.arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <5c1e81ff-467c-f2dc-4d92-f60117f67b40@arm.com>
Date: Thu, 19 Mar 2020 16:12:43 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200319143510.GB4876@lakrids.cambridge.arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_091252_236992_CE540274 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: patches@amperecomputing.com, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-19 2:35 pm, Mark Rutland wrote:
> On Thu, Mar 19, 2020 at 02:32:51PM +0000, Mark Rutland wrote:
>> On Tue, Mar 17, 2020 at 05:26:15PM -0700, Tuan Phan wrote:
>>> Add IRQF_SHARED flag when register IRQ such that multiple dsu
>>> devices can share same IRQ.
>>>
>>> Signed-off-by: Tuan Phan <tuanphan@os.amperecomputing.com>
>>
>> I don't think that this makes sense; further I think that this
>> highlights that the current driver doesn't support such a configuration
>> for other reasons.
>>
>> A DSU instance can only be accessed from a CPU associated with it, since
>> it's accessed via sysregs. The IRQ handler must run on one of those
>> CPUs.
>>
>> To handle that, the DSU PMU driver will need to gain an understanding of
>> which CPUs are associated with the instance. As it stands the driver
>> seems to assume that there's a single DSU instance, and that all CPUs
>> are affine to that same instance.
> 
> Sorry, I misread dsu_pmu_get_online_cpu_any_but(), multiple instances
> are handled already.

Oh, so either way it's effectively a rerun of the U8500 problem of 
having no guarantee that the interrupt will be taken on an appropriate 
CPU, and losing genuine events as apparently spurious if it isn't. Yeah, 
that's really really bad... :(

>> So NAK to this patch, given the above.
> 
> Regardless, this NAK stands.

Agreed, pretending that this might work without significantly more 
invasive workarounds does more harm than good.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
