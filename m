Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A6D111B63
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 23:09:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/gLRYVUTtSAZdQscM/+42QQ5Z1SfurFc1u++qOwr9fM=; b=KGMNrIkmQCjypYqCZaNBRk2eR
	dg0acbq/DIk830oalKr4hy+4FgsupZ6MHVlRjLeGVjwN7nIqKRbgwsJbLXmdVBRJbP1yYtEfS9QLi
	OOWx3Bl9xa5KjwFfIQwb83cvpJ8YmgGHq85sg/lklvDPagkXRF6Af0tp8/ClQZiPeFAan3ZckArl0
	NVeSTARty0MSMRIxXv81AWzofACQid6dF6GHrj55VPILGFNjtuC0qa9WULrMQnEctQfGNT65sToun
	UiGgTl6NWcFwPd0fe3Q6BdiSMp7sdXpFZ1ypnd0GxAoLGnCU7znaKFvYXBtEXZP15D2WcCHUkknRO
	86aiVB0nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icGMY-00027N-EB; Tue, 03 Dec 2019 22:09:42 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icGMR-00026i-3i
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 22:09:36 +0000
Received: by mail-pg1-x541.google.com with SMTP id z124so2257420pgb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 14:09:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=mSBIYOscptZnYWaI4AeOjEh64oDv5ru63qkreKiXvlY=;
 b=geuMiRjARcxU+pIzzuOeH6lx6cneFVRMrKbm5tRMvY3hwxiwCgtP/MLufBqpU4RJ7h
 3UO8ZYfwl1j2qXpO4wsmCZlyRB/63Co3z+e4AVTFnaN3wUIXNoU58uL87/FjdMvz5C9t
 dSKy47buYSGEPK+Do9zawbCYg+AbEQpnBDPBU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mSBIYOscptZnYWaI4AeOjEh64oDv5ru63qkreKiXvlY=;
 b=PPEt2D5wZRT6ikLYbzfX15PFnsklhZ+2tpc+uAchTO12H7E2dAUB2dIR407faX8pws
 NaOXhGNAJ2xJ7uSLOtPRCPdTc6Q2cpRbfctrmQkibWDC8CxDc3HZtqGfuRs/HLQ7twZN
 RNWrL/uIzDpLgvnOSSYJrkJGbvxt/X5RcaNRWdpG4GiLQgZ3Za/7JBRrca2WwDTHlOCi
 FpUxU5TuwYWiE+vf36j5Bj54KK2SWcTPcdhSPa+vdDdb0VzLrBO99Lcy19PQW5fLsRy3
 xfXpOlsdqLDSU/JFEzgc9qold1u9FfUJemI3y09JQlZ/NvRd/lwetnf+xaBwhG7D5Irg
 dhuA==
X-Gm-Message-State: APjAAAUY6vpkqEBKrNMyB3zVgGqAMgEoSxJEi6HvML6sBA6YQJ2sIvxj
 Zj1IN/D71prW0FvPeLtjiZIrPg==
X-Google-Smtp-Source: APXvYqylfTPPGwnkmI3aoo7y5yzJGuEDLuZJ1o057PLvAd+XFAn29jSN6QkIzubcCN2MEgWSyp95Dg==
X-Received: by 2002:a63:6704:: with SMTP id b4mr8002284pgc.424.1575410973842; 
 Tue, 03 Dec 2019 14:09:33 -0800 (PST)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id k12sm4471207pgm.65.2019.12.03.14.09.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 03 Dec 2019 14:09:33 -0800 (PST)
Subject: Re: [PATCH v3 2/6] PCI: iproc: Add INTx support with better modeling
To: Andy Shevchenko <andy.shevchenko@gmail.com>,
 Andrew Murray <andrew.murray@arm.com>
References: <1575349026-8743-1-git-send-email-srinath.mannam@broadcom.com>
 <1575349026-8743-3-git-send-email-srinath.mannam@broadcom.com>
 <20191203155514.GE18399@e119886-lin.cambridge.arm.com>
 <CAHp75Vf7d=Gw24MTq2q3BKspkLEDDM24GVK4Zh_4zfZEzVuZjw@mail.gmail.com>
From: Ray Jui <ray.jui@broadcom.com>
Message-ID: <40fffa66-4b06-a851-84c2-4de36d5c6777@broadcom.com>
Date: Tue, 3 Dec 2019 14:09:22 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <CAHp75Vf7d=Gw24MTq2q3BKspkLEDDM24GVK4Zh_4zfZEzVuZjw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_140935_150749_5F86C1C6 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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



On 12/3/19 11:27 AM, Andy Shevchenko wrote:
> On Tue, Dec 3, 2019 at 5:55 PM Andrew Murray <andrew.murray@arm.com> wrote:
>> On Tue, Dec 03, 2019 at 10:27:02AM +0530, Srinath Mannam wrote:
> 
>>> +     /* go through INTx A, B, C, D until all interrupts are handled */
>>> +     do {
>>> +             status = iproc_pcie_read_reg(pcie, IPROC_PCIE_INTX_CSR);
>>
>> By performing this read once and outside of the do/while loop you may improve
>> performance. I wonder how probable it is to get another INTx whilst handling
>> one?
> 
> May I ask how it can be improved?
> One read will be needed any way, and so does this code.
> 

I guess the current code will cause the IPROC_PCIE_INTX_CSR register to 
be read TWICE, if it's ever set to start with.

But then if we do it outside of the while loop, if we ever receive an 
interrupt while servicing one, the interrupt will still need to be 
serviced, and in this case, it will cause additional context switch 
overhead by going out and back in the interrupt context.

My take is that it's probably more ideal to leave this portion of code 
as it is.

>>> +             for_each_set_bit(bit, &status, PCI_NUM_INTX) {
>>> +                     virq = irq_find_mapping(pcie->irq_domain, bit);
>>> +                     if (virq)
>>> +                             generic_handle_irq(virq);
>>> +                     else
>>> +                             dev_err(dev, "unexpected INTx%u\n", bit);
>>> +             }
>>> +     } while ((status & SYS_RC_INTX_MASK) != 0);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
