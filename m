Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C641CF182
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:23:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V8KI/NjUAhV5wqSiAEBwImKACAZs6GpxHAX0XX6dnag=; b=KBXyfF/lu5Vf3GAQkWNuqyWPJ
	KFdnhPu2NMbe+etcJskYe02nROEZ1+6OOc7WH//VGNW4sVM9wIPfJSvJqQxTl12cU3dIpHl5+ujhp
	GpRN/4GFd2eX56jwWuwJCromvhQyNRdhLCmC3D8v9U4Uniu2qQ2+YGwvIGTaGzRYNBokW5oTrJ1hv
	Vp3QCorOlgfOdbmoQM5KrwmkQTH1+PALYQmMAPxbm5QtUyDXvlFUo5Zqr4k/TPU/BrJE0CBA4nD8N
	XQHS9cc9kmqk6320MRacPuQmvQz9ikNbH+KUxhdUFWo2G60AXBd0AxKpfCWz7KSwK3rg9T3YKxnvX
	HnQE6/BXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYR87-0008Lj-5T; Tue, 12 May 2020 09:23:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYR7z-0008Kz-Uy
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:23:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F221A1045;
 Tue, 12 May 2020 02:23:06 -0700 (PDT)
Received: from [10.37.12.83] (unknown [10.37.12.83])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 65BAC3F305;
 Tue, 12 May 2020 02:23:05 -0700 (PDT)
Subject: Re: [PATCH] memory/samsung: reduce unnecessary mutex lock area
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20200508131338.32956-1-bernard@vivo.com>
 <20200512065023.GA10741@kozik-lap>
 <e762ce12-eff0-d3a5-f083-2b592921de59@arm.com>
 <CAJKOXPekrkyDf2TMCnX7Nvbdaj-JQwuyqrsurFM4moALqVx8Sw@mail.gmail.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <fd463b97-6db7-f7ba-c4bd-5c709a4898c0@arm.com>
Date: Tue, 12 May 2020 10:23:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAJKOXPekrkyDf2TMCnX7Nvbdaj-JQwuyqrsurFM4moALqVx8Sw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_022308_046375_FAEE4879 
X-CRM114-Status: GOOD (  21.37  )
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
Cc: opensource.kernel@vivo.com,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-pm@vger.kernel.org, Bernard Zhao <bernard@vivo.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/12/20 10:05 AM, Krzysztof Kozlowski wrote:
> On Tue, 12 May 2020 at 10:47, Lukasz Luba <lukasz.luba@arm.com> wrote:
>>
>> Hi Krzysztof,
>>
>> I am sorry, I was a bit busy recently.
>>
>> On 5/12/20 7:50 AM, Krzysztof Kozlowski wrote:
>>> On Fri, May 08, 2020 at 06:13:38AM -0700, Bernard Zhao wrote:
>>>> Maybe dmc->df->lock is unnecessary to protect function
>>>> exynos5_dmc_perf_events_check(dmc). If we have to protect,
>>>> dmc->lock is more better and more effective.
>>>> Also, it seems not needed to protect "if (ret) & dev_warn"
>>>> branch.
>>>>
>>>> Signed-off-by: Bernard Zhao <bernard@vivo.com>
>>>> ---
>>>>    drivers/memory/samsung/exynos5422-dmc.c | 6 ++----
>>>>    1 file changed, 2 insertions(+), 4 deletions(-)
>>>
>>> I checked the concurrent accesses and it looks correct.
>>>
>>> Lukasz, any review from your side?
>>
>> The lock from devfreq lock protects from a scenario when
>> concurrent access from devfreq framework uses internal dmc fields 'load'
>> and 'total' (which are set to 'busy_time', 'total_time').
>> The .get_dev_status can be called at any time (even due to thermal
>> devfreq cooling action) and reads above fields.
>> That's why the calculation of the new values inside dmc is protected.
> 
> I looked at this path (get_dev_status) and currently in devfreq it
> will be only called from update_devfreq() -> get_target_freq()... at
> least when looking at devfreq core and governors. On the other hand
> you are right that this is public function and this call scenario
> might change. It could be called directly from other paths sooner or
> later.

Indeed, I am currently changing this while I am adding devfreq devices
to the Energy Model.

> 
>> This patch should not be taken IMO. Maybe we can release lock before the
>> if statement, just to speed-up.
> 
> Yep.
> 
> Bernard, you can send just this part of the patch.

Thank you Bernard and please submit the patch v2.

> 
> Best regards,
> Krzysztof
> 

Thank you Krzysztof for your time spent on this.


Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
