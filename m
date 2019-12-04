Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C97112C91
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 14:29:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=foso+nf2NKANqmO2K2ze6KZrh+9P4RtAje4mB936A+c=; b=q10xZZHwJIJbOe
	qtQyErAmcanjTtJa4ci8fXru4pHuYLEGApTDpY3ZpkgMC4w7DzbIO0PfS2fSzIUwYNYKLKg94Hvl/
	KV+COY1+rpW859Oo0vPUWuhjDtCH5XfB+Hb6/UMa4JMoU+VKw+oPNHqXM5KYy+ukUec3y2lqB9rIH
	KAHN7OLF8x2d6N+4e7wH7wBb5xfiOdsDLgZ7e4waA4k+7hlXjP2hhBglghKqvPx5dKJ0zAP8IxlSu
	UB7htf/0lL9J6rHE2WKLHl1VUn5B3fMeV8kDQRY635WH0xhHsr7+EO8HvenGfIEtm6puqnMYmXhCJ
	8CGihFNcL4ZDIZZA9YJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icUi4-000764-N9; Wed, 04 Dec 2019 13:28:52 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icUhx-00075l-Io
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 13:28:47 +0000
Received: by mail-wm1-x342.google.com with SMTP id u8so7947222wmu.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 05:28:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=forissier-org.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=I13vU8la4gLFnqIn36S7jSKVDpHw/83gEMSGkWX2a2I=;
 b=kDU+ZHJK/ikvPF/sl8YSfSXxjRH4gJ3/+9DCdH6T8aAXXjjPOjdS+BOOF40u1H/OGR
 Xoh/l2vP2G6rbWW8JPljroqVeB+Nfc0+Y2m9L+5caYlwBlzi7IGe6BTD/KqW+HPHi5lR
 XcptmV/nf4+Q2hJqlexbBqZMvC9NFiovGnrqIPCYkM69ZzTyrLeEYO/uQOf07AtJCW3+
 TkI0NeWuTJDNcNQwJCsvLTxIBjcg+8mmIVMEqBcfWNsx9tedUZmPrlnQJAjct7CUonsv
 Oy+0jJJgGl01+Hcn+gt7+jsjl0qpAy/iRo/VRs1PG/qWqpqhK4Xw8aTj7DpV+13GwG/c
 IqZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=I13vU8la4gLFnqIn36S7jSKVDpHw/83gEMSGkWX2a2I=;
 b=F5DkjN9mBtkGM00suhAOz3nWYE7OawTKeHRz/uvN2vZC3yY6TU1N5B9ObYSAttfrEa
 zaIgRgeW/WOhfBOeCvTjJKoosf5j+4w59tne7ITlaLXKBXn5pexGTOyx65XzBFBlrueC
 SSc1rJwgl+x+bDXwuXqP3hq0I4YM/Rtnr7pG3gxmoJ/T2dav57pwWdGRYvoBES1rX772
 3+e8uRASl7xrxO3OP7abTwCNCSOQ+pvk79VYawbHF5pHbX84w+iwain498f+izCu1F5S
 +5NdYZjGEx++ef/Y/1oGF/Vpq0gg7/+2un7czvc2/I269ZKaS0XBOj6uKJjd1yJiaTah
 Pxww==
X-Gm-Message-State: APjAAAWRZhr55PgDgRObglb86HVt2lFdbGyfQA5IT9gWArTeAS0ZZdfB
 4pz8OizJzVYSJGJUasiJxf4+M4yd2NEAIcG2
X-Google-Smtp-Source: APXvYqzBy5masMJDRtLR90KHkrzmixfjnAZjBcyg4o8GYJzNKGQTgCjdhFkFQe27ZThfr0zTGj/oiQ==
X-Received: by 2002:a7b:cf0e:: with SMTP id l14mr37683840wmg.23.1575466123567; 
 Wed, 04 Dec 2019 05:28:43 -0800 (PST)
Received: from [192.168.1.7] ([5.50.11.226])
 by smtp.gmail.com with ESMTPSA id k127sm6982725wmk.31.2019.12.04.05.28.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Dec 2019 05:28:43 -0800 (PST)
Subject: Re: Kernel v5.2+ on HiKey960?
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Marc Zyngier <maz@misterjones.org>
References: <f58c2c0e-ec82-6675-84e6-ad63fd93c8ff@forissier.org>
 <5e71ae8ec1ecb64544d131686f5405bb@www.loen.fr>
 <7d9e4b41-6906-d5e0-261d-94d3f47b941f@arm.com>
From: Jerome Forissier <jerome@forissier.org>
Message-ID: <c0e4ed1e-298f-7faa-bda9-d92288d3f4e3@forissier.org>
Date: Wed, 4 Dec 2019 14:28:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <7d9e4b41-6906-d5e0-261d-94d3f47b941f@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_052845_677847_83A1B2C0 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vincenzo,

On 12/4/19 1:49 PM, Vincenzo Frascino wrote:
> Hi Jerome,
> 
> On 12/3/19 5:47 PM, Marc Zyngier wrote:
>> Hi Jerome,
>>
>> Adding Vincenzo (who was the last one to mess with the VDSO).
> 
> @Marc
> 
> Thanks for this, my filters completely missed Jerome's request, I might have a
> look and tighten them ;)
> 
> [...]
> 
> @Jerome
> 
> Could you please provide your .config? 

.config for v5.4 [1], corresponds to boot log [2].

[1] https://pastebin.com/pWSYAshs
[2] https://pastebin.com/sQTMQ8wu


> Another question are you bringing it over
> or regenerating it for each version of the kernel your are testing?

I am regenerating it each time from arch/arm64/configs/defconfig and a
couple of local config fragments, using scripts/kconfig/merge_config.sh.

Thanks,
-- 
Jerome

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
