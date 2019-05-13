Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF25E1BC9A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 20:05:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cOnHaZmH8RYozJNYGZwLc4fuxE7oYXu0HXEkZ059buU=; b=UQWjMWiOVxRUL3
	Kv5VBHEA+7yBjIAS5HoaDLcRiqWP3j3g40tquitiwfXSnoMacogoicpp5uWGZUKlpBpy/FLc3EU4i
	Dq2ENjBglqlsrubic3YDvd2P81ZikrZ6o8dnFBjvf3tEZoW0ZUcvBMJoOpZ9jV3sJgp47UBbq1noa
	jaZuhi0YeA2O0jmOHyka3sChkXl2hP+JFCyS8aqcaPqKfaPWjuslWpunP/Ef505esGFS5X74kjTM2
	8oQfVo2hB83mJ+FwXZ9RRKbo7YqpBToNAAQ+erWwrL+uXVA7qKm2vrVGy3iOn09CDRz2sEgYzIEII
	hbxp6EzWLocroKildmyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQFJz-0004Vl-92; Mon, 13 May 2019 18:05:07 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQFJo-0004VP-IR
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 18:04:57 +0000
Received: by mail-wr1-x441.google.com with SMTP id v11so16337467wru.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 11:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4ShfiSHZNiNvaog9lGofhsvzN9PjIHcO6bJwZMd5dm4=;
 b=ah9G/JAAh9QSKb+xD+yCYFrE4FWXvb+tVkcazfNzSJBLYvzhjfxtRrQBv4ipnulXfH
 ARm5Jk4HEhdlboQ9eXRZqSIsqt13LlD2Rte6TRHoR7dZs8N3+Egc6/ExCEDG32aWzpWy
 HN6cJJvS7OqHWUoD3ZHmNMBc39JoYjdm0W2rH3V6Y4rR65q7z1kkEL4ujgBVcN3hp2X4
 coZxPUFmwVdKXgApvxqffyptfV5EsRiuKl0ra2oKVGzN3x8Ct0XiyuuTJnWTAyeAUVQZ
 qCpVEzNIm+ge2LS+PXV95LXpT/UudGPuc/+bbl5mzXochgpjP222yo1u+uoVVYn9et5w
 saCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=4ShfiSHZNiNvaog9lGofhsvzN9PjIHcO6bJwZMd5dm4=;
 b=O+hEwjuWS7LtJ11FQZ58ovrKla8KRwQb4QomhxZJ6xAThso5VkNP4t4F/SVQ3tZHDA
 JYeK5fSXgmogMCU9EkuvVDEp7Dtksndc/KRb4ingo3jjbVx9PRy2Oml/h49wo9Fjb7g/
 sb90cIGiS9eAAf1E5aZYbwslimVURioe2Y26GlvkHP7Udzj5m0xEN1siTV1Cx31W8bIy
 dInGqFHGzp3Z/ggEYQTcCjEPAS+Ap6ZjIn3+vpvjD2oBZkXpTVgMJ0iCdZQ2R2EfDBq6
 jp1OF5uL5c2fI1UVSUe7gVwxbwaA2S5ILcUTMhor7jXdoow8ynsvEb180z2+k5RhpOgk
 HBBg==
X-Gm-Message-State: APjAAAVQVt1TQt6wuDUhDvSsEde5c6u1osqLgwin9VgTXYH0GusCMuVX
 63MEtBXcuVsVgcBQfxaYPwlUy9JN
X-Google-Smtp-Source: APXvYqx64l6tyJ12+qIM+shSMPHdlGF3If68zQAcZMb9rC/EAv8bRYuwjAa+1aUfYV9HhOsHLk0FHg==
X-Received: by 2002:adf:eb44:: with SMTP id u4mr18728854wrn.83.1557770694373; 
 Mon, 13 May 2019 11:04:54 -0700 (PDT)
Received: from [10.67.49.52] ([192.19.223.250])
 by smtp.googlemail.com with ESMTPSA id 88sm15824276wrc.33.2019.05.13.11.04.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 11:04:53 -0700 (PDT)
Subject: Re: [PATCH] perf vendor events arm64: Map Brahma-B53 CPUID to
 cortex-a53 events
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
References: <20190405165047.15847-1-f.fainelli@gmail.com>
 <20190408162607.GB7872@fuggles.cambridge.arm.com>
 <46ac3066-fa55-9fb8-dd54-32fb702030cb@gmail.com>
 <20190502235725.GB22982@kernel.org>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <60f367b4-1c5b-0778-eaa6-1a78d58f33a1@gmail.com>
Date: Mon, 13 May 2019 11:04:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190502235725.GB22982@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_110456_638914_9C9DE05D 
X-CRM114-Status: GOOD (  16.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, bcm-kernel-feedback-list@broadcom.com,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 "moderated list:ARM PMU PROFILING AND DEBUGGING"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/2/19 4:57 PM, Arnaldo Carvalho de Melo wrote:
> Em Thu, May 02, 2019 at 02:28:02PM -0700, Florian Fainelli escreveu:
>> On 4/8/19 9:26 AM, Will Deacon wrote:
>>> On Fri, Apr 05, 2019 at 09:50:47AM -0700, Florian Fainelli wrote:
>>>> Broadcom's Brahma-B53 CPUs support the same type of events that the
>>>> Cortex-A53 supports, recognize its CPUID and map it to the cortex-a53
>>>> events.
>>>>
>>>> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
>>>> ---
>>>>  tools/perf/pmu-events/arch/arm64/mapfile.csv | 1 +
>>>>  1 file changed, 1 insertion(+)
>>>>
>>>> diff --git a/tools/perf/pmu-events/arch/arm64/mapfile.csv b/tools/perf/pmu-events/arch/arm64/mapfile.csv
>>>> index 59cd8604b0bd..e97c12484bc6 100644
>>>> --- a/tools/perf/pmu-events/arch/arm64/mapfile.csv
>>>> +++ b/tools/perf/pmu-events/arch/arm64/mapfile.csv
>>>> @@ -13,6 +13,7 @@
>>>>  #
>>>>  #Family-model,Version,Filename,EventType
>>>>  0x00000000410fd03[[:xdigit:]],v1,arm/cortex-a53,core
>>>> +0x00000000420f100[[:xdigit:]],v1,arm/cortex-a53,core
>>>>  0x00000000420f5160,v1,cavium/thunderx2,core
>>>>  0x00000000430f0af0,v1,cavium/thunderx2,core
>>>>  0x00000000480fd010,v1,hisilicon/hip08,core
>>>
>>> Acked-by: Will Deacon <will.deacon@arm.com>
>>
>> Thanks! Can this be picked up?
> 
> Thanks, applied to perf/core.

Thanks, I don't seem to be able to find it being pushed out to that tree
or in linux-next.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
