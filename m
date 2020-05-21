Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 864111DC556
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 04:45:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JjcD+BpQQ+O76Rfy4lX7UNls+b6LbUz8tyOVTebTTn4=; b=gTAoPToxSdsAed
	NWLIR9TMi2nNzgfIAQ1C7d3ou6SujzabdbrPX30NSmFJlWBnmECv5wCuLVFyG/JoCuWHToDIzCfmO
	6886NZdEz/g/LnHEMXUlTLACyzCyHfDmiu1O0jc0Jt5HMaEYZpQTY1f8/2g0bLZg01KnZ+ijz5ejq
	dNG1RQi3+4On7BOYebt5wLW1NyVpJtv9kxyRRnd6cdaaleMXcFRKZNtkM463pxpv9hHTl0hLGI7IV
	Yg4rVVNocv40IrzCizUxe8Nof+zZz/h0wvFsau0/9/w3C4bP5aqAwhK4ASAe5lQNI0pZ4Zfj02Fyg
	rwhdQUX4XYVWraXRNO+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbbDK-0007gJ-AZ; Thu, 21 May 2020 02:45:42 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbbDA-0007fo-TB
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 02:45:34 +0000
Received: by mail-ej1-x642.google.com with SMTP id e2so6988616eje.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 19:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=xOJ53LG8zD7rjN8rxu4xNXRA2mNXITnOD0rXjoMaA5k=;
 b=vS67ayA1z9mud5JdV1ldCbVLYGQv071qUzrGCm9vNkL/qiYTamrN1dMq/xWra8GG7U
 MYH2zKx0kHeaEZCdoKR2OvreK4zzO7dtH2RsdaBtlrmgSs8ewTmk+WdCvbkYhdJ9b9sg
 KD7GJo5EvEc0FhkNEbATvC/cbng9s/c9VbPan9OBAQA0JCCA3+RIgtpMylsRd0nY6/CS
 awvcrp0161AzDj7p/ocZWrcgQJZGwKmonD0w4b45t9KUyp2nVCmmHRffpTZBb1i9qp7y
 JhW57oHJ2Q13hDSyQ1/JgkHZCmx+eK3kGwjlKeGJTLpPPDJ2vM54BU9Ap1HREF0u9SWC
 Ul/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xOJ53LG8zD7rjN8rxu4xNXRA2mNXITnOD0rXjoMaA5k=;
 b=XkKgxlDdv3bTbMKAXWEmZUqmFr05koSr6NBQto3cX50BgD6PJu14+8C3rQvqkFF+96
 R/xtcEBcQGbExIW5ZbQFOMPbxc9TpgRkaBhg553KBk4vdRUrsLWxGIBw8BghYqw0/C26
 9gtejZGwoB4XBL3SWhpCs/GYJcnrjnbJkNkLur/Ufat+1j/VsWKGmCF324See5fWX8M1
 aOs3ngG0xZh34/IahHe2C6W+2kP/F8A5En1FyR9lBMCrMziXgf9kb05RZNNqm7UFPgAG
 EjflSlaLUhuAcC06AfYH9VvCSbRzf704tr6VosMEt/8Mq3rOYIUlw4LwK2YcmIan4pOo
 Vasg==
X-Gm-Message-State: AOAM5336rBd0j7UKMMdgX8ibC2GYOi9ROlTJXeXEmlOgUzxszIQYBZ5t
 Z1BH73RBIW2u/grRw37fzpI=
X-Google-Smtp-Source: ABdhPJy06nrHA0h0cM+wj/67jYrFMykPmMOE4p8imo6Hd0tZy9Vuzj2ZZ0HiQQyLZGoShDZ3GwNVuA==
X-Received: by 2002:a17:906:bce6:: with SMTP id
 op6mr1628937ejb.337.1590029131313; 
 Wed, 20 May 2020 19:45:31 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 u26sm3375221eje.35.2020.05.20.19.45.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 May 2020 19:45:30 -0700 (PDT)
Subject: Re: [PATCH 2/2] ARM: Allow either FLATMEM or SPARSEMEM on the
 multiplatform build
To: Arnd Bergmann <arnd@arndb.de>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20200506235009.25023-3-f.fainelli@gmail.com>
 <20200507072711.GB683243@linux.ibm.com>
 <bc44ed27-7dd7-67b6-93cf-f6f575b59441@gmail.com>
 <a7c86780-d65c-ab7b-ec3c-4029257cee7a@gmail.com>
 <20200518194533.GD1059226@linux.ibm.com>
 <CAK8P3a1hd2uKsncgd=eyY1VHBbB8fPBDCWsyHpHT7q9eJp-URw@mail.gmail.com>
 <20200519144306.GE1059226@linux.ibm.com>
 <20200519150452.GH1551@shell.armlinux.org.uk>
 <20200519152714.GF1059226@linux.ibm.com>
 <CAK8P3a2iZNm310x8g2Zv0TjGJ=Px7hu14i3Ka7GQBZwyKPUesA@mail.gmail.com>
 <20200519165445.GI1551@shell.armlinux.org.uk>
 <CAK8P3a32gDzqLBeBs8CtT9fhRncQNsJ0nrN=2Ws4DAWe3nOCZA@mail.gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <6d7c3b4f-dde2-95a8-8d36-03ba957aa133@gmail.com>
Date: Wed, 20 May 2020 19:45:27 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a32gDzqLBeBs8CtT9fhRncQNsJ0nrN=2Ws4DAWe3nOCZA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_194532_958515_F639C71D 
X-CRM114-Status: GOOD (  19.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Doug Berger <opendmb@gmail.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Cernekee <cernekee@gmail.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Gregory Fong <gregory.0xf0@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/19/2020 1:42 PM, Arnd Bergmann wrote:
> On Tue, May 19, 2020 at 6:54 PM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
>> On Tue, May 19, 2020 at 05:32:52PM +0200, Arnd Bergmann wrote:
>>> On Tue, May 19, 2020 at 5:27 PM Mike Rapoport <rppt@linux.ibm.com> wrote:
>>>> On Tue, May 19, 2020 at 04:04:52PM +0100, Russell King - ARM Linux admin wrote:
>>>>> There are cases where the reason to use sparsemem is not an optional
>>>>> one but is out of necessity - they require the page array to be split
>>>>> up in order to boot successfully.
>>>>>
>>>>> With that in mind, flatmem becomes an "optimisation" over sparsemem.
>>>>
>>>> At the moment, there are three platforms that enable SPARSEMEM: ARCH_EP93XX,
>>>> ARCH_RPC and ARCH_SA1100. All the rest have FLATMEM implcitly selected.
>>>>
>>>> I do not intend to change that, I am only going add an ability to select
>>>> the memory model for ARCH_MULTIPLATFORM.
>>>>
>>>> I'll respin the series on the list before adding the patches to the
>>>> patch system.
>>>
>>> I think we'll make EP93xx part of multiplatform at some point, IIRC
>>> only the missing clock driver is stopping us at the moment, and I already
>>> discussed with Linus Walleij how that can be done.
>>>
>>> My guess is that ep93xx is one platform on which sparsemem is
>>> just an optimization to reduce the initial memory consumption, but
>>> we should verify that when we get there.
>>
>> When you have a platform where the memory is segmented into separate
>> blocks widely spaced, sparsemem is not an optimisation.  For example,
>> If you have four blocks spaced across 1GB, that requires about
>> 256Ki struct page's.  Assuming 32 byte struct page, that requires 8MiB
>> of contiguous memory.
> 
> I checked the datasheet: ep93xx has four chip-selects, each of them
> with their own 256MB memory area. Most boards we support use only
> the last chipselect, but those that have more than one would waste
> up to 2MB per additional memory chip, which is not nice but doesn't
> make it a hard requirement as long as the kernel can fit into the first one.
> 
> However, the chips has a second problem: depending on the
> specific memory configuration, only every other 2/4/8MB within
> that range may actually be used, so the mem_map[] array would
> double its size in practice and (worse) the kernel would likely
> not fit into the first section without sparsemem.
> 
> This means we should indeed treat it as a requirement for ep93xx.

That is already captured with the select ARCH_SPARSEMEM_ENABLE or the
ARCH_EP93XX entry.

Should we just make it possible for multi platform users to override the
memory model in their configuration file and later we just default
ARCH_MULTI_V7 to sparsemem?
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
