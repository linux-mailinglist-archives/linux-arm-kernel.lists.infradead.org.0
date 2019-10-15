Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6478DD7574
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 13:47:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sz55P8FMrbsFqLhETsLVHS+llLWWMLE0UQfFwy3II20=; b=YAtVnAjb2MEaJy
	3ZR5M3khTA2lfrPn2XM+pmTS0vQUR8vdv8gM5wR1mDIcKAtMmmepKl1f+eLUWH6QQ7maCvlHa6UVd
	9FSKEvzy7M8me+gNfIdG8LV/dDFS4NpLTgu3+9bRXfHEj/wzTS5Da1kmeNxZssL0OU3gj8xClUdAM
	GJ/rpfpNmvYzPywy16kxeMjEhASWdXTbLSpcrvamptMFOR3X4guGlZP07ckwcAw8fh88aVBN1UJWv
	zYDKwjch5xfTV1LWKYFiCv7dusAuAmDRIic1qaY+tmceS1P45hdhss6WYL7lR3AYKFmwJIQ6ycowj
	IfolIYNo21OAzOWxY7FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKLIC-0002id-8K; Tue, 15 Oct 2019 11:47:08 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKLI0-0002h3-5G
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 11:46:57 +0000
Received: by mail-wm1-x344.google.com with SMTP id b24so19931816wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 04:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=4zelbzKgVDVBwk81v7buJVDFvSf6vHsLsJcsmpqmrPI=;
 b=VjizehmN0uOxhlOUKSK0mqVotk5XxIUrRgm2wP/aanx6zX6P6gIKLbzQyv/VXAJPhP
 fMdv0/7RvB0kNmmXF5wfAC/eifKbsc/b6DtSR7CLHt/ZBBjBKdVRhrLVPTSAtB/z+pmh
 RJVoowni62uvdQeH855va18w0jm1qSXkcz2AOe9r6ffj+Xe7Cl2PNJOkNIiOI97bvk6P
 fPuX3lfIU6tb2oQW6BVnC0A4eZgRc0UWgGmW03wyBOCv+eXetdoS6bClE/fM16pkm5is
 Qnsf1SL9ROSKvne8a6LkYmQWe95r6nF3iUA94HYOHXEuNUYl4N/COYiT3UnUCpzW4+VJ
 Yflw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=4zelbzKgVDVBwk81v7buJVDFvSf6vHsLsJcsmpqmrPI=;
 b=oQQzNJ5NHfoRs+p7D9Eq593C5I/AiVzfQtENrEmxZ1iFzf1gRk6mlFYJIZA2zpShzR
 1JcTKVbAf9uGtrAc4iBSasrf4Wfw1CWwJhxzs/bkFY04RCuBZGjq7S1JX26Bnk/34LWy
 4ZsNGdlKuYYJiKqHvR606dDbsKWMoBvgv/zQ3Ha0oekVtmcX6IDFtxovTpEKT0DHM4yM
 8Ocza1ckSMyAVgXbUAYWgv0ALBX9YhB5H0FXNmGqm0HI7DJgyBnZKi5IIuS/Gh63uTOb
 9uNSA3gOKHT7OT6z6dKhZrRXbCxv2Qf1ztplNxEJcySDeH76/ICkkNiF2b8/TMOF31t3
 2SAA==
X-Gm-Message-State: APjAAAUr24mi60f1Ye2mby5raF70oZbEiucAL8UGvfJs5KkiMcKOUcif
 bPZKUBm/h7OF1oepmc1zon5pww==
X-Google-Smtp-Source: APXvYqzLnkJN9zRYZ21Y1M8YN4dbJd0EC5sTlVOGdoe+wAXsdl3nXKYGJgtoav7TkFmWi/KS+MDhtg==
X-Received: by 2002:a1c:7c0a:: with SMTP id x10mr19229567wmc.48.1571140014611; 
 Tue, 15 Oct 2019 04:46:54 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id r13sm31730589wrn.0.2019.10.15.04.46.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 15 Oct 2019 04:46:54 -0700 (PDT)
Subject: Re: [PATCH 4/7] drm/meson: plane: add support for AFBC mode for OSD1
 plane
To: Brian Starkey <Brian.Starkey@arm.com>
References: <20191010092526.10419-1-narmstrong@baylibre.com>
 <20191010092526.10419-5-narmstrong@baylibre.com>
 <20191010132601.GA10110@arm.com>
 <44f1771f-d640-f23d-995f-7bfcadd213bc@baylibre.com>
 <20191011084108.i7lfh2d7asfmcdk4@DESKTOP-E1NTVVP.localdomain>
 <c9d4f840-a3da-0f40-3a1c-c4aa522daf0f@baylibre.com>
 <20191011105559.clttghy52wfdmb34@DESKTOP-E1NTVVP.localdomain>
 <d1010021-cbd8-4328-4b21-7481cba5485e@baylibre.com>
 <20191015111812.vl2yabdoncz77xh6@DESKTOP-E1NTVVP.localdomain>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <828ac069-35db-e356-add3-55a2900b4336@baylibre.com>
Date: Tue, 15 Oct 2019 13:46:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191015111812.vl2yabdoncz77xh6@DESKTOP-E1NTVVP.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_044656_202540_F6CDB016 
X-CRM114-Status: GOOD (  18.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ayan Halder <Ayan.Halder@arm.com>,
 "khilman@baylibre.com" <khilman@baylibre.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/10/2019 13:18, Brian Starkey wrote:
> Hi Neil,
> 
> On Fri, Oct 11, 2019 at 02:07:01PM +0200, Neil Armstrong wrote:
>> On 11/10/2019 12:56, Brian Starkey wrote:
>>> Hi,
>>>
>>> On Fri, Oct 11, 2019 at 11:14:43AM +0200, Neil Armstrong wrote:
>>>> Hi Brian,
>>>>
>>>> On 11/10/2019 10:41, Brian Starkey wrote:
>>>>> Hi Neil,
>>>>>
>>>>> On Thu, Oct 10, 2019 at 03:41:15PM +0200, Neil Armstrong wrote:
> 
> [snip]
> 
>>>> You'll have to tell us if the closed libMali handling AFBC would accept
>>>> ARGB8888 as format to render with AFBC enabled, if not you're right
>>>> I'll discard XRGB8888/ARGB8888 for AFBC buffers completely.
>>>>
>>>> But it the libMali chooses tt generate an ARGB8888 buffer whatever
>>>> ARGB8888/XRGB8888/ABGR888/XBGR888 is asked, then no I'll keep it that way.
>>>>
>>>
>>> Yeah, I'll try and get clarity on this. It's not at all clear to me
>>> either. When you say "accept ARGB8888 as format to render with AFBC
>>> enabled", which API are you referring to, just so I can be clear? Do
>>> you have an example of some code you're using to render AFBC with the
>>> GPU blob?
>>
>> Let's take kmscube using EGL and GBM.
>>
>> The buffer is allocated using gbm_surface_create_with_modifiers(),
>> but the gbm implementation is vendor specified.
>>
>> Then the surface is passed to eglCreateWindowSurface().
>> Then the format is matched using eglGetConfigAttrib() with the
>> returned configs.
>>
>> Here support on the gbm and EGL implementation.
>>
> 
> Is this a use-case that works on your platform today?

Amlogic gave ma a libMali for miniGBM with AFBC enabled, but I haven't
been able to enable AFBC yet.

> 
> I went and asked around. An Arm gbm implementation supporting AFBC
> will reject AFBC allocations for orders other than (DRM-convention)
> BGR.

I trust you on this point, thanks for asking around.

Neil

> 
> Thanks,
> -Brian
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
