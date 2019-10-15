Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA18D6CAC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 02:56:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4X1YWA5c5V2nnQiP8R2NcZgDF/LPvPCCJuEykOGH12Y=; b=swMC4TNf+4jcRkHVW0kG1bq1R
	MrrygA3OeqtqFphWWT34R46uCzGHELTVg16BXvFv5Ek3JknV9W6OOH3zkMpA3FChF2biDsi6IfHpb
	veCMRiiP24PSlItlMvv/YCSzXvdyVLgolFbb771sh2txiU2r7euuR8ocPw59VjGx5swGNJZrt0icd
	UwhsnbVdQ32+83423eaf/8oTCwJEeIn5qPMgIzixHJckWIssp+7WPTJ5sx7sK/81M2jCv/MIUyTbR
	uDdJ/jn42JVj8gEteLMUAf7ScJDkAyxiYolhsaiLRdEMZMxQiFMIif7HtPtYUhqvBpzvg1KUZClB8
	pV0sZoL7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKB85-0007ia-HN; Tue, 15 Oct 2019 00:56:01 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKB7w-0007iG-Mt
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 00:55:54 +0000
Received: by mail-pg1-x542.google.com with SMTP id i32so11028576pgl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 17:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=hdLPogD5u7uZVqUM8RUNptDm33wtlaALD67hmYOXeY0=;
 b=kQ2H3q2fN69G3LFycqBMXGvvTik3LFkR3j6odAfTZxGB4mJezLnZBHLSZT1wYggyY6
 nvl7o+aEptyyzxNKT+Lf/iy61IrxdD/vE9UG2RGTHvqBsFwLgNzt97JsxZ0XlSNEg1Qk
 BNp9yLHZbHBAZr1Su/FQZ46YBVdhkN/Dsf11ah+oafGhiBpmc5aSpOzt+Vp+/96rDDFw
 NdGyYY6EedlkJgVWvhKna3ZHEVmDXeCBGERjvH9jwZ45jbCN8uVZ8sXbZVZmbPu1cl8i
 JJOe6GuSdDpBXqAwCUmLl49e5GMoM5PA5mtnXGzpw5WgaySYeK0qa+Bk1MT+4peKC1IV
 aHXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hdLPogD5u7uZVqUM8RUNptDm33wtlaALD67hmYOXeY0=;
 b=FMzoovkWm/m0yKcKFlDlX2S3ag8S5a4pwajhv04Wsq14UUVOGy9Ox8G67nbT8z6V0C
 ZXbA43RsjjO2QVIKLLs9aRgqUO8LPzrx3x/p6/OECIZhFA4CfabNyT+yy7oVsYKvcbWo
 WfAPw7becNP+idzgxfsVEMisbu4vnnuMwvqPeu63WD3E+gx7Xdl7uqFKjlm3ZcR0Rzpf
 xPA7TGRoeFKrsqNcMcyJFCUa6+0CjzqTkaDUekyxubsUj26v+NCzPbtfWDAPPkaJ/Jsy
 ozYdlouv2j5zff0SX+53peeFKdaXbouXGvZGezAfVDIXbXzPspqYYGITA4dfdNcXnN41
 Zc1Q==
X-Gm-Message-State: APjAAAVq3MZbaLFOkvAlA4UdzIrhjlITIq/M6RKwjHosR33IR5Te2F5i
 5aZlYECfsQWmMVpRRXIQFDRVHnWE
X-Google-Smtp-Source: APXvYqwFUXWlA6JYG8B1Iuf1W2D/Zw+JP6I2RSD3TmxyWo1OZD1weYgjtQgKPscV5I5gT7m2RwMH0Q==
X-Received: by 2002:a63:1053:: with SMTP id 19mr34687925pgq.229.1571100951685; 
 Mon, 14 Oct 2019 17:55:51 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 196sm32362390pfz.99.2019.10.14.17.55.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 14 Oct 2019 17:55:49 -0700 (PDT)
Subject: Re: [GIT PULL] ARM/arm64: arm_pm_restart removal
To: Stefan Agner <stefan@agner.ch>, Thierry Reding <thierry.reding@gmail.com>
References: <20191002131228.4085560-1-thierry.reding@gmail.com>
 <20191002160151.GS25745@shell.armlinux.org.uk>
 <CAOesGMg6aJ1Y+0fXkXCbOzCzxzZifx2m8YoPN=Y2pD==HPp2=Q@mail.gmail.com>
 <d48d1c03-2740-6ce0-7028-873d3c4ab31b@roeck-us.net>
 <5bf4d9e5b2fa67533c190567498a5b0b@agner.ch>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <2264d37c-c584-7272-8343-2f592eaeb565@roeck-us.net>
Date: Mon, 14 Oct 2019 17:55:48 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <5bf4d9e5b2fa67533c190567498a5b0b@agner.ch>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_175552_779365_1860502B 
X-CRM114-Status: GOOD (  21.55  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Olof Johansson <olof@lixom.net>, ARM-SoC Maintainers <arm@kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/14/19 5:18 AM, Stefan Agner wrote:
> On 2019-10-03 15:15, Guenter Roeck wrote:
>> On 10/2/19 11:46 AM, Olof Johansson wrote:
>>> It looks like it's an old patchset that you were cc:d on at the time,
>>> but I can't blame anyone for missing context here.
>>>
>>> Thierry, a reference to the thread would have been useful:
>>> https://lore.kernel.org/linux-arm-kernel/20170130110512.6943-1-thierry.reding@gmail.com/
>>>
>>> Given that the code is 2.5 years old, posting it again for awareness
>>> seems appropriate, even if it was acked by a few stakeholders
>>> originally.
>>>
>>
>> Thierry,
>>
>> would you mind doing that ?
>>
>> To give some background: I had completely forgotten about this, until I recently
>> hit a problem with restart that was difficult to debug since it was
>> hard to figure
>> out which reset sequence was actually executed. I thought about re-posting the
>> series, but then we (ie those who cared enough to be involved in above
>> referenced
>> exchange) decided to use this approach. Now I still wonder what it will take
>> to get the series applied.
>>
>> At least posting the series as pull request did generate some attention.
>> I count that as an improvement.
> 
> By chance I just sent a patch which moves to restart handler for PSCI
> this weekend [1]. So this patch set is very much appreciated.
> 

I would suggest to not rely on this series. This is the third time this
has been tried. Each time the series was either ignored, or there were
unspecified objections along the line of "we need review this further".
I may be pessimistic, but at this point I don't think the series will
ever be applied. With that in mind, it might be better to either apply
your patch for PSCI, or the matching patch from this series.

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
