Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43453F456E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 12:10:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3golwuDLerB0OPKCUBGC/I22PH62xJHlB83YV5YSkmE=; b=TI3/bQxPCdojvd
	EG84CPwdNuKcBLtqGPXtlwXFEuTNgdKVA8REilP6iues+fvZj4ooZOU762G2v6NVIyd5dXFSCHJhJ
	tUhyIKUGzKWX2exwOwzLIUSw+tsYIt+pOFX1bI15vPADxX6cdfJk1NUiN6bcASDYk+Qf74bosFhpi
	2kFmNKUXeOwD8kWMcPw4zwMG8TygYPfFyOU1GeC5ArF6IBroET1Gawk5Bh06JqAuzoUoUhxpiVwF6
	AiBMJqH8QRGg1KNL7zJC5vxQ/8F9GCkRRQntS7siPXa6n4D3rOV713pMBTlsYDhJLqlvVlkvCU5Ql
	VKCNf41wJ956e9CtSxTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT29j-0003Ju-8j; Fri, 08 Nov 2019 11:10:19 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT29T-0002oe-A7
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 11:10:05 +0000
Received: by mail-wr1-x441.google.com with SMTP id a15so6538896wrf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 03:10:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=rUxh3vvwbZXzco325awc1KArm39f6mGwBPXY04coXF0=;
 b=NttfrdjiyBRmEK/c68Q9ORoq0LjyS9dQetAJmr/e2bJfmCuMwPZITZsARjWWKqyglD
 ziONDNHl8/n9KGlRZYBhVfPR7BLx1QsrZFCQE7W/PmvBJefa77vFU7IIdaMcZ5nbdyNC
 EzAnBTveWi3yoYUMSWQobzuzjgDWmn3gO750sFglp84qYhnPZ+3HOhKCtllW4yYcSAQ5
 imiilQZEXJAOPM3S7O32sWhulSvNtG+MfzejMwEbert2soo9CkI30z+Aer1PTB8X+cjf
 v8eEpXN5F8eh/8z6Vf1W5KhsMQmXahUMsYi2dsKg1+v8CjF312DXuidSOlvveLU6W6K7
 KpoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rUxh3vvwbZXzco325awc1KArm39f6mGwBPXY04coXF0=;
 b=UcCLPTEDdMQUPl7pFAo+KuS7n8lvLnVsoufNgSX/RTbK+43xt2bUT1yK4ghOyp3fMs
 GNo3Ujp8g/Zq3gRVho01OyMR7Zmb972qUv9twDnW4oA7ArIo2rPHD5ypTqexFQLtaaj7
 dT87rrn3g2Zb6H+T13KnGU0bKYmEj1V1JYrt5QPsJQZcKmH/23J2a7URuEalPi77VUa3
 +6uURTw69aN6mh+nO8tskyuTv1uths4CuccAvQpPe9f2pPnGFSOj2L6JjYNMQD3Pkpe4
 16lu71TnGXJVnccqgjKScVFiXC0v2VqRYkg+/yw8/umEmC28gNoRFlKOqnjsMMOOOJOY
 JuOw==
X-Gm-Message-State: APjAAAUsPjtZbtEHuD0AXpDDO9uBds+ethjmI/zQn21/dvRahsYmoVJX
 NbmeRlAHqvNojEAx/VGzVOkG7Rdzz4zygw==
X-Google-Smtp-Source: APXvYqy/FKh+QZ1oUxzXbC2agwYXqjQCXnZiNSUvhj29pnp99dCgr+ywRtnGy75nJWz3iPnTaOG58w==
X-Received: by 2002:adf:f192:: with SMTP id h18mr8283597wro.148.1573211400989; 
 Fri, 08 Nov 2019 03:10:00 -0800 (PST)
Received: from [192.168.8.102] (212.red-213-99-162.dynamicip.rima-tde.net.
 [213.99.162.212])
 by smtp.gmail.com with ESMTPSA id j10sm51846wrx.30.2019.11.08.03.09.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 08 Nov 2019 03:10:00 -0800 (PST)
Subject: Re: [PATCH v4 1/1] arm64: Implement archrandom.h for ARMv8.5-RNG
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
References: <20191106141954.30657-1-rth@twiddle.net>
 <20191106141954.30657-2-rth@twiddle.net>
 <CAKv+Gu8pb5pBFBg0wGoORmaS6yzmoX7L45LLnhuZhqw4JX7d+w@mail.gmail.com>
From: Richard Henderson <richard.henderson@linaro.org>
Openpgp: preference=signencrypt
Message-ID: <23ce309b-1561-ed95-7ce7-463a991bd19b@linaro.org>
Date: Fri, 8 Nov 2019 12:09:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu8pb5pBFBg0wGoORmaS6yzmoX7L45LLnhuZhqw4JX7d+w@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_031003_519843_22AE11A3 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/6/19 10:30 PM, Ard Biesheuvel wrote:
> On Wed, 6 Nov 2019 at 15:20, Richard Henderson
> <richard.henderson@linaro.org> wrote:
>> +static inline bool has_random(void)
>> +{
>> +       /*
>> +        * We "have" RNG if either
>> +        * (1) every cpu in the system has RNG, or
>> +        * (2) in a non-preemptable context, current cpu has RNG.
>> +        * Case 1 is the expected case when RNG is deployed, but
>> +        * case 2 is present as a backup in case some big/little
>> +        * system only has RNG on big cpus, we can still add entropy
>> +        * from the interrupt handler of the big cpus.
> 
> I don't understand the reference to the interrupt handler here.

To add_interrupt_randomness(), invoked by handle_irq_event_percpu().
Better if I reword the above to include the function name?

> It is
> worth mentioning though that this arrangement permits
> rand_initialize() to use the instructions regardless of whether they
> are implemented only by the boot CPU or by all of them.

Yes, I'll include that.


r~

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
