Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D73BA11E489
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 14:26:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GkaxpBdAH6CRMS6xSenFah7ztJMtKh3j6wjnjRxQBJc=; b=l38qXu+0NynsKk
	97UGoucgtZbNIhYCpTPYsyvXq3mUyti04bKLedEJ8KDY80fz6ZqIWkobC9DQFGp49CPpZ5ERXsPUK
	N6hxU68YcFOpME7fIWP7R5hNsemfYXjOxhh+2Byr1d+MT2hlLVhNdmmq6kq7Jpob9TkY9yQFLB79o
	f6BZO2+nqtYwj84ZBHBv0+1W6erfzC2VfLOJ5wtTyReow9otbYDUCOlVwp0Hy01tkRnsBsy++LQMH
	t58QjCuViJQjdGwENm7uJ1HWRFvHgxtAQOnoGf8A4WluW8NOSSUoKSWqud8oimR6ogw1gP3FxAWrV
	1ZLa185X1UpaM3vvPJWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifkxR-0006NJ-UJ; Fri, 13 Dec 2019 13:26:13 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifkxG-0006MX-9Z
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 13:26:03 +0000
Received: by mail-wm1-x344.google.com with SMTP id p9so6365133wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 05:26:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=95TTKeNptsHmjRNeTiYhUSEDoPaxL2Lysa6poNCdeOY=;
 b=cqa9VsKrTNXmm8jWTRbXuNB0dAn+UF/lDr+W1eYHicYE4BHyYbIKT0r6opo6q3ug0z
 oa+eiT9HpN8A6acHUf8oaA8VwUFQgG4ImibBu6ZzDVcAOMfDPvEHCZQQ1VRHEIdQ/7ih
 lh1sET60jmQzs7VmSwP0stFNFW6tPq34KH1sfDhxRBh/0vAZCT9A2LD5mACdWqcJOad+
 1ISzQP0pdl0BbMZGmPcYLipGrtxN6OSAyAGhqxPOQk3dLfsgyL4+gkYNKQzKCeney+jt
 nZ3PO+XB2PALZk5kKcKrs0qLRmeMKfUl772Q8Snt9koB5CZB60dKO3fi+7I4qrc015UP
 2Fwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=95TTKeNptsHmjRNeTiYhUSEDoPaxL2Lysa6poNCdeOY=;
 b=XNZKgnRWhZQFANWrJEGGMzO6neTeFMpnwrmSqogEJzExssSsnqXIrpyLD9ZbqqSaVU
 cNf12q7ZB287yPgFaUY5lc+rgGHo43Nb+egF7cC2OOpJHJbG1brF03VKE+1PNVaEnKDt
 e2gnXEtmXN+fFRUKl1HMhcqCjmR0LVta/ZGsPY8r39h626StEx2bh9dD3OMkVOakgvT2
 yzJHgKQ04+IEr2dUEJ4ZyU4bCmzQjfr7sVMf/oFGp1x7Hy1G7zufFn7oK9oJNltjgkcV
 tj/Y3xlDJudufXdqGOd4fs/T0XDEfvkpcirWcR0SeC3R/C866QvTg92C5Tb8I2u2BEjx
 kkDg==
X-Gm-Message-State: APjAAAXezgT1SwoG2xpart074g648lkxfYGT0HqxXCwaEd4rFWiaj20x
 3uGrjWf5y+uH7OWLR8CfETtvSw==
X-Google-Smtp-Source: APXvYqzexj2CIyiXUk6k9Pbs023wlmbOjmR95/h3tr7hWUu4/VtgvX05v0FshE4PeD3JZECQnoTqHg==
X-Received: by 2002:a1c:b7c4:: with SMTP id
 h187mr13539211wmf.105.1576243559706; 
 Fri, 13 Dec 2019 05:25:59 -0800 (PST)
Received: from [10.2.4.229] (lfbn-nic-1-505-157.w90-116.abo.wanadoo.fr.
 [90.116.92.157])
 by smtp.gmail.com with ESMTPSA id u10sm10011222wmd.1.2019.12.13.05.25.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Dec 2019 05:25:59 -0800 (PST)
Subject: Re: [PATCH v3 2/4] media: vicodec: use v4l2-mem2mem draining, stopped
 and next-buf-is-last states handling
To: Hans Verkuil <hverkuil@xs4all.nl>, mchehab@kernel.org,
 hans.verkuil@cisco.com
References: <20191209122028.13714-1-narmstrong@baylibre.com>
 <20191209122028.13714-3-narmstrong@baylibre.com>
 <0eb52de8-97a9-40cf-a926-262b1ecdc3e9@xs4all.nl>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <f7e91a9c-266c-0282-414d-5d0333c97d91@baylibre.com>
Date: Fri, 13 Dec 2019 14:25:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <0eb52de8-97a9-40cf-a926-262b1ecdc3e9@xs4all.nl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_052602_363645_B06B0DC5 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Maxime Jourdan <mjourdan@baylibre.com>, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/12/2019 14:21, Hans Verkuil wrote:
> On 12/9/19 1:20 PM, Neil Armstrong wrote:
>> Use the previously introduced v4l2-mem2mem core APIs to handle the drainig,
>> stopped and next-buf-is-last states.
>>
>> With these changes, the v4l2-compliance still passes with the following
>> commands :
>> # v4l2-ctl --stream-mmap --stream-out-mmap --stream-to-hdr out.comp --stream-from in.yuv
>>>>>> <><><><><><><><><><><><><><><><>< 15.53 fps
>>  15.53 fps
>>> <><><><><><><><><><><><>< 13.99 fps
>>  13.99 fps
>>> <><><><><><><><><><><>< 13.52 fps
>>  13.52 fps
>>> <><><><><><><><><><><><>< 13.41 fps
>>  13.41 fps
>>> <><><><><><><><><><><><>< 13.21 fps
>>  13.21 fps
>>> <><><><><><><><><><><>< 13.09 fps
>>  13.09 fps
>>> <><><><><><><
>> STOP ENCODER
>> <<<
>> EOS EVENT
>>
>> # v4l2-compliance --stream-from in.yuv -s
>> v4l2-compliance SHA: 7ead0e1856b89f2e19369af452bb03fd0cd16793, 64 bits
>> [...]
>> Total for vicodec device /dev/video0: 50, Succeeded: 50, Failed: 0, Warnings: 0
>>
>> The full output is available at [1]
>>
>> # v4l2-compliance -d1 --stream-from-hdr out.comp -s
>> v4l2-compliance SHA: 7ead0e1856b89f2e19369af452bb03fd0cd16793, 64 bits
>> [...]
>> Total for vicodec device /dev/video1: 50, Succeeded: 50, Failed: 0, Warnings: 0
>>
>> The full output is available at [2]
>>
>> No functional changes should be noticed.
> 
> Ah, unfortunately there *are* functional changes.
> 
> There is a (much) more extensive test that is done in the test-media script.
> 
> In v4l-utils, go to contrib/test. Now run (as root): test-media vicodec
> 
> This test now fails on some tests for the stateful decoder:
> 
> Streaming ioctls:
>         test read/write: OK (Not Supported)
>         test blocking wait: OK
>                 fail: v4l2-test-buffers.cpp(943): ret == 0
>                 fail: v4l2-test-buffers.cpp(1353): captureBufs(node, node_m2m_cap, q, m2m_q, frame_count, pollmode, capture_count)
>         test MMAP (select): FAIL
>                 fail: v4l2-test-buffers.cpp(951): ret == 0
>                 fail: v4l2-test-buffers.cpp(1353): captureBufs(node, node_m2m_cap, q, m2m_q, frame_count, pollmode, capture_count)
>         test MMAP (epoll): FAIL
>                 fail: v4l2-test-buffers.cpp(943): ret == 0
>                 fail: v4l2-test-buffers.cpp(1607): captureBufs(node, node_m2m_cap, q, m2m_q, frame_count, pollmode, capture_count)
>         test USERPTR (select): FAIL
>                 fail: v4l2-test-buffers.cpp(943): ret == 0
>                 fail: v4l2-test-buffers.cpp(1761): captureBufs(node, node_m2m_cap, q, m2m_q, frame_count, pollmode, capture_count)
>         test DMABUF (select): FAIL
> 
> I also see this:
> 
> cmp: EOF on /tmp/tmp.7KAXKAIkVZ/raw.yu12.1280.24 after byte 23500800, in line 1
> 
> which shouldn't be there either.
> 
> I can recommend the test-media script: it can test all the virtual drivers and it is
> part of the daily build to check for regressions.

Thx for the pointer, I'll analyze the failures.
> 
> Regards,
> 
> 	Hans
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
