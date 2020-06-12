Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5001F7BDB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 18:57:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u3smLkeO4dbbIxmCXh/ze6uaCC9TZjhf34Xta3XvHSQ=; b=a2vVpKpZgS+Nl/
	ZfnQwFsguarVkyhuIUcVgJjQE+m3uptnOFpBUtyfwm9oY6OQgNF8rhJVZ07lt5s0KQV4taBnWN7Nm
	9hd/xiUx28ywHNnUCMhcYxxgYOwKhWJo4F3AQmLn3BBL+aI5VPnuuO68cwQZBb5c0iEbkvfnqlPq6
	4fGh2EytBPUX++NlInE+S7PPiOrs25a+lAsQSc9f/SuL4L2SdncpDHz+GafmmCP02IUHI1GWbfh/T
	pcF0OEiDU1tktPNfDiqfAQCI2DVEnfGbqEgWYLBCjeSoLs/KuVgTejwKKkCU2ateXZ/i/rwhUC5V/
	4u4CpSKWKkQMDbJxnBbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjmzl-0000yJ-71; Fri, 12 Jun 2020 16:57:33 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjmza-0000xq-Ij
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 16:57:24 +0000
Received: by mail-wr1-x444.google.com with SMTP id q11so10446296wrp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 09:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=hdftdNmWNoYmI9KOCEdF8TYF1SQt9boCMGPOgmJ5aMc=;
 b=dX91GOcMpW17ERW/nwCFP38SsYVXilVSIcTeNTtYN2smr2Rcg4eXcMZvw1rl62ZyBc
 rTFpJX1DqOFgImEcxpGnYl+l+ssxPce1MlL3+MAyPh3qGz2hxrSW+XYBIf/idOhlp1SS
 VAv992HGJjQOtLagc1cesdCgFGhNue5vvBsPVlu3N9TjW3Gvtfn1/MtAW39ZZYNSHJCc
 J02akL1SvACXIS0D2bTdYVe+HdY+Z/0W2CkCSmCbfPqyfPafKf5R+YKgGOYZ4t2f9vNB
 FsLda7913vY5QR0YdtdnaPeaoMSf3ao7GZ8zXVeqIOE69heJeBx7NlDWVfFWzMzjTxfb
 wZnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hdftdNmWNoYmI9KOCEdF8TYF1SQt9boCMGPOgmJ5aMc=;
 b=Byc2TkeKzUggSpNrRG1O8en2J4nSeFkyIY39UzYr0Wd8jwzqOlZYkrAPlNYuR+dqnL
 gK5TTTUnvvH8YFMhik4/k1ZTH/puLMGAqLckkO5D1LXAxdGbR+4yLQTTgtw0LYHYYL1w
 gpENQQhQfk42AJUE76dqH9h4ArVjtsKt2fxbiqvNusU4Co3+5JHnc5OH/wmn3+yMFrez
 /UdSLL+x9OxKoCnt2xLy4nNnnjwpEIBDWK04GnD2y9UsoXf8Fuz0KoepT+7w5SHVuY0Y
 byzz7blb7hPuqYXTcb+oEnVMbcDPqXhGxCfPl9h5W44xGE/a7aKV+7cF916xBe44onQa
 qLug==
X-Gm-Message-State: AOAM533ng1Do9rSVqmM7o8dQ4J3ecznyij22tKMfFE7gHMlDffUefZPs
 1mLUpFv/0DbkfONNP8l8328=
X-Google-Smtp-Source: ABdhPJyNmXM4qc3epdwtYo7bfs1VS3PSIkiDLC+pYnmFfKcklyuurpjoWjZQBuTaqU080fJh/c4sqQ==
X-Received: by 2002:adf:c391:: with SMTP id p17mr15094247wrf.243.1591981040526; 
 Fri, 12 Jun 2020 09:57:20 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 b201sm9481064wmb.36.2020.06.12.09.57.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Jun 2020 09:57:19 -0700 (PDT)
Subject: Re: [PATCH 00/11] arm/arm64: Turning IPIs into normal interrupts
To: Marc Zyngier <maz@kernel.org>
References: <20200519161755.209565-1-maz@kernel.org>
 <d1ac7873-0f02-dbe0-dd3c-4fd14a87cf03@gmail.com>
 <20200612104918.3829bb26@why>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <0acfca3f-38fb-774c-aaab-53bc8cdbd13b@gmail.com>
Date: Fri, 12 Jun 2020 09:57:16 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200612104918.3829bb26@why>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_095722_671058_126CA129 
X-CRM114-Status: GOOD (  21.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sumit Garg <sumit.garg@linaro.org>, Russell King <linux@arm.linux.org.uk>,
 Jason Cooper <jason@lakedaemon.net>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/12/2020 2:49 AM, Marc Zyngier wrote:
> Hi Florian,
> 
> On Tue, 19 May 2020 10:50:46 -0700
> Florian Fainelli <f.fainelli@gmail.com> wrote:
> 
>> On 5/19/2020 9:17 AM, Marc Zyngier wrote:
>>> For as long as SMP ARM has existed, IPIs have been handled as
>>> something special. The arch code and the interrupt controller exchange
>>> a couple of hooks (one to generate an IPI, another to handle it).
>>>
>>> Although this is perfectly manageable, it prevents the use of features
>>> that we could use if IPIs were Linux IRQs (such as pseudo-NMIs). It
>>> also means that each interrupt controller driver has to follow an
>>> architecture-specific interface instead of just implementing the base
>>> irqchip functionnalities. The arch code also duplicates a number of
>>> things that the core irq code already does (such as calling
>>> set_irq_regs(), irq_enter()...).
>>>
>>> This series tries to remedy this on arm/arm64 by offering a new
>>> registration interface where the irqchip gives the arch code a range
>>> of interrupts to use for IPIs. The arch code requests these as normal
>>> interrupts.
>>>
>>> The bulk of the work is at the interrupt controller level, where all 3
>>> irqchips used on arm64 get converted.
>>>
>>> Finally, the arm64 code drops the legacy registration interface. The
>>> same thing could be done on 32bit as well once the two remaining
>>> irqchips using that interface get converted.
>>>
>>> There is probably more that could be done: statistics are still
>>> architecture-private code, for example, and no attempt is made to
>>> solve that (apart from hidding the IRQs from /proc/interrupt).
>>>
>>> This has been tested on a bunch of 32 and 64bit guests.  
>>
>> Does this patch series change your position on this patch series
>>
>> https://lore.kernel.org/linux-arm-kernel/20191023000547.7831-3-f.fainelli@gmail.com/T/
>>
>> or is this still a no-no?
> 
> I don't think this series changes anything. There is no easy way to
> reserve SGIs in a way that would work for all combination of OS and FW,
> and the prospect of sending SGIs between S and NS has already been
> dubious (yes, the GIC architecture allows it, but it has been written
> by people who have never designed any large piece of SW).

That is fair enough, we have transitioned since then to using SPIs and
that appears to work nicely for what we want to do without requiring
your patch series.

In premise it is still possible for someone to specify 0x561 as the
first interrupt cell specifier  in the Device Tree in order to specify a
SGI interrupt and this will happily be parsed as a valid interrupt.

It would most likely fail some time later while trying to set the
interrupt type though. I do not think you can do better than this, as
there is no way for you to know the caller of gic_irq_domain_translate()
and reject them.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
