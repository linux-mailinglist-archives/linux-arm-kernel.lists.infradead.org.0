Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7A7113515
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 19:36:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pri2SE1Tk8f7MrnceWB50JJGLt0/yIjW8gL/V1exL1A=; b=lD3IFb6Nzco61vrCA8wtmYhUX
	rRWv/bTxRIhnM8Eryk5BJLwI5sKDgQvvzQwqtcWaL43bAFXyxVxV7szo0OjhSg49PzW2WbZIpI9Sw
	a4MDZY3Ht2q0LYLs35iB1ZjSL3mGh6YlinSiCncAUQVRr/8apgYQv57Q72BixOu7aDQWbzgQxG28O
	JkHthdwiyFNAMZvW2Pj29pumOVnuHxZSH7EHGwcVw7RTfKVWD8bkMOuXHig3Ym99euNp/WBTwf4mw
	fU443AKLiiDVsTLR4UGjkmz5Zq9FUfLSJzTRC+/jZS6+vzlg2v2f360TRqc5Bu3j6Lho00d25Ssot
	I26SGhIXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icZW6-0003KZ-7v; Wed, 04 Dec 2019 18:36:50 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icZVy-0003Jt-RK
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 18:36:44 +0000
Received: by mail-wm1-x344.google.com with SMTP id u8so868856wmu.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 10:36:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=wK9NstZxWCZ4fUNQKTAEIPBZ++U8z5OdNqnEeiQMgbs=;
 b=TBoXeX0LWp6vtluo0nZrXJ+HWtp6RtDGftL1htkZ25cbrFAgcczcvS6SGQxLQ/S9DF
 U6C+bJHCD9Nw5DYneQ5qat7aDKfmutIcMCWejKtLDLpb1WQGzCauCHqoCOTKbO7g7Seu
 LC6j8E+J3jdAHjZ2AfyyQ7Cb+CO2t6UECM2cw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wK9NstZxWCZ4fUNQKTAEIPBZ++U8z5OdNqnEeiQMgbs=;
 b=DCDLxnl58TXafntP9RuroS8I+4UOfqLunfs4undbgL2Y+nQROewD4763bqc/WYgVeZ
 eqnst3acA82yRr/ecRdBf2TMS7C39BwQ5B2CQ5dl2pWKqMSg++NnpNUz3gvIIywtUkmW
 fBcCPmC5bUWxK/nXrdTAtYzq08XsKhR77xmTrUcZba9VItOA7hvaLYH2t2u4IsBiL6jn
 FKz950UGQvDWASYK3JnJ73gLJnydVjuRolTHUAYze7Ussp8luP16bI33DKm2yiacC03B
 B6SKQM3y5l/sWuGaHlFOo2kCQdElsmr27DHuflGGZrB8udPlt/lH3OlLUt6nD3QXL3Wx
 0ZxA==
X-Gm-Message-State: APjAAAVVZZo4pV7qax+6diOJ3XtoCWgEK95zq3iUXZHK1SUVHWOBI7D5
 FxFs5LbeKfxe20h6RX1XjkDB7Q==
X-Google-Smtp-Source: APXvYqz+06y7g6bDkQSJIocMFzOIfNFtedSXUAM0Vi8Dq5sgC91y+7beIJR+jMAFvOyXeJK38vDwgg==
X-Received: by 2002:a1c:7f4e:: with SMTP id a75mr1044364wmd.128.1575484598710; 
 Wed, 04 Dec 2019 10:36:38 -0800 (PST)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id n1sm9145299wrw.52.2019.12.04.10.36.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Dec 2019 10:36:37 -0800 (PST)
Subject: Re: [PATCH v3 2/6] PCI: iproc: Add INTx support with better modeling
To: Andrew Murray <andrew.murray@arm.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>
References: <1575349026-8743-1-git-send-email-srinath.mannam@broadcom.com>
 <1575349026-8743-3-git-send-email-srinath.mannam@broadcom.com>
 <20191203155514.GE18399@e119886-lin.cambridge.arm.com>
 <CAHp75Vf7d=Gw24MTq2q3BKspkLEDDM24GVK4Zh_4zfZEzVuZjw@mail.gmail.com>
 <40fffa66-4b06-a851-84c2-4de36d5c6777@broadcom.com>
 <CAHp75VfyKAg4OhzUa4swGXOGTvJ5fVO8mhGSG=5HAUP__M-URQ@mail.gmail.com>
 <20191204160729.GJ18399@e119886-lin.cambridge.arm.com>
From: Ray Jui <ray.jui@broadcom.com>
Message-ID: <d07d22bc-5ec2-8a0f-22af-6eb89cd68e55@broadcom.com>
Date: Wed, 4 Dec 2019 10:36:31 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191204160729.GJ18399@e119886-lin.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_103642_887349_45C5C8FA 
X-CRM114-Status: GOOD (  21.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 devicetree <devicetree@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Ray Jui <rjui@broadcom.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Srinath Mannam <srinath.mannam@broadcom.com>, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/4/19 8:07 AM, Andrew Murray wrote:
> On Wed, Dec 04, 2019 at 10:29:51AM +0200, Andy Shevchenko wrote:
>> On Wed, Dec 4, 2019 at 12:09 AM Ray Jui <ray.jui@broadcom.com> wrote:
>>> On 12/3/19 11:27 AM, Andy Shevchenko wrote:
>>>> On Tue, Dec 3, 2019 at 5:55 PM Andrew Murray <andrew.murray@arm.com> wrote:
>>>>> On Tue, Dec 03, 2019 at 10:27:02AM +0530, Srinath Mannam wrote:
>>>>
>>>>>> +     /* go through INTx A, B, C, D until all interrupts are handled */
>>>>>> +     do {
>>>>>> +             status = iproc_pcie_read_reg(pcie, IPROC_PCIE_INTX_CSR);
>>>>>
>>>>> By performing this read once and outside of the do/while loop you may improve
>>>>> performance. I wonder how probable it is to get another INTx whilst handling
>>>>> one?
>>>>
>>>> May I ask how it can be improved?
>>>> One read will be needed any way, and so does this code.
>>>>
>>>
>>> I guess the current code will cause the IPROC_PCIE_INTX_CSR register to
>>> be read TWICE, if it's ever set to start with.
>>>
>>> But then if we do it outside of the while loop, if we ever receive an
>>> interrupt while servicing one, the interrupt will still need to be
>>> serviced, and in this case, it will cause additional context switch
>>> overhead by going out and back in the interrupt context.
> 
> Yes it's a trade off - if you dropped the do/while loop and thus had a single
> read you'd reduce the overhead on interrupt handling in every case except
> where another INTx is received whilst in this function. But as you point out
> each time that does happen you'll pay the penalty of a context switch.
>

Exactly, it's a tradeoff between: 1) saving one register read (which is 
likely in the 10th of nanosecond range) in all INTx handling; and 2) 
saving context switches (which is likely in 10th of microsecond range) 
in cases when we have multiple INTx when servicing it.

The current implementation takes 2), which I thought it makes sense.

> I don't have any knowledge of this platform so I have no idea if such a change
> would be good/bad or material. However I thought I'd point it out. Looking at
> the other controller drivers, some handle in a loop and some don't.
> 
> 
>>>
>>> My take is that it's probably more ideal to leave this portion of code
>>> as it is.
>>
>> Can't we simple drop a do-while completely and leave only
>> for_each_set_bit() loop?
>>

Like both Andrew and I pointed out. There's a tradeoff here. Could you 
please help to justify why you favor 1) than 2)?

> 
> I'm happy either way.
> 
> Thanks,
> 
> Andrew Murray
> 
>>>
>>>>>> +             for_each_set_bit(bit, &status, PCI_NUM_INTX) {
>>>>>> +                     virq = irq_find_mapping(pcie->irq_domain, bit);
>>>>>> +                     if (virq)
>>>>>> +                             generic_handle_irq(virq);
>>>>>> +                     else
>>>>>> +                             dev_err(dev, "unexpected INTx%u\n", bit);
>>>>>> +             }
>>>>>> +     } while ((status & SYS_RC_INTX_MASK) != 0);
>>>>
>>
>>
>>
>> -- 
>> With Best Regards,
>> Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
