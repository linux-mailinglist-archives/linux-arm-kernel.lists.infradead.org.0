Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 712F11DA143
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 21:47:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ALihIGeN2qg0ZqAjahXm6rOCk/sUYT/UYyzIyb9lX+o=; b=tLDsJmLMr52QDR
	OnGR7ShVlEX+HO+GU4Q+W5MloxbC7/Pw4mvZ1xvj+X57uyOP9aAEaMx16LuxUeSFGgz8a/1/MQwM4
	hQM5UjaDLSJNGqHH9ZxWeHm+LWXLWDvVBdhDGT+dVTbRkMl3CGLa8cEcVpXJFQl3a/apvmb/e2YgX
	/ackw/2PD4eMlRJqjR/mb7vuU0Gr3DJ05eQ1pqBRc49UWSXd4Ek1JWc8pjUCqlRijzhXX4yVpzqS0
	TWwwbY0+b3lUrhizDw4Fom6HufGtaADwOiCp1x+lOgupQXg6BAAmdx//IBSqLi2Tk1JmklXZ00YFr
	sfvBrKq+CufLG/uQsZjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb8DE-0003wM-M1; Tue, 19 May 2020 19:47:40 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb8D6-0003vf-EJ
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 19:47:33 +0000
Received: by mail-pg1-x543.google.com with SMTP id p21so291773pgm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 12:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ZGuRRRcbTaW8FWPggeFKscV8bVAevR+TD4KidxOAffU=;
 b=SOy40ns36oc3zn7ljfpnUaBI+qiGaKfHLn/p2KvVh6KGCqg988xKzHeav8r4ADi+al
 JMlzcpyMm2iAV0qQjdoFwlstcvzlPkZz7a4Ed62ly991kPw9qR3soQzvxgRHMXy11Mkt
 T5bOiSqk0MEI2lITGszqvjSMp1pDCIvfAIWSMd/2KiQMiZUszZh7AKf51496oMFhqDE8
 el2E+G1EIlVrf1LUymCs1SMnRoV299YkVmgi+QiZS6fTpG46AoJ0ipU0OuY9YEIWHOUM
 z5+t0fv/T0hrhw0bs82HPobojLUycNl7mP/2RPVf0aGmaeCzOEorMevm0S9AxXHdqhCa
 iCRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZGuRRRcbTaW8FWPggeFKscV8bVAevR+TD4KidxOAffU=;
 b=sVpOPxKC84CeAL67ecs3Fr6+rccRFRoFfmbo7Zamh7hVRF4t78a8Qn/yyiVi/gMjAO
 8vnw0HaGHeLq3CER/i1RbQd6JI6AqEEy9veB3AXqvHJCSWfYi+2LrYw4lzHQdPqn8TPn
 K1Vzdot3a/CepBNP9dIA/siegRp6GCf8yziN3S13LfijDibTU0bgIHNHy2AY4YEtVsKk
 N4rb1Wg6syRDJRXOjEDmrMIXm/zDbYBfEPf4VIPMh0dqlLfH+T5PEkmq+3mjRZKwjygL
 02BvsFR9U5IUf45VQ5EJWbTgU+SqyQ6faTioxlCFyNVrJDN+jqopFTTnHqryMcupm9oX
 3MRg==
X-Gm-Message-State: AOAM533vvlzQ9dkMDEIMstQ2SuLFsCCdpbAzGS7OzKD2xvuW0JwfdllX
 Pzb155xxgmc7slcLB67fJmo=
X-Google-Smtp-Source: ABdhPJxGFs2gbJfJf03BO6VSSxo3ZeuxRoEcyfB/gfuOvP36kzgTf0L+EcK96MQIwQyh25HevsllAA==
X-Received: by 2002:a63:3e46:: with SMTP id l67mr761106pga.430.1589917651467; 
 Tue, 19 May 2020 12:47:31 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id e18sm251091pfh.75.2020.05.19.12.47.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 May 2020 12:47:30 -0700 (PDT)
Subject: Re: [PATCH 01/11] genirq: Add fasteoi IPI flow
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20200519161755.209565-1-maz@kernel.org>
 <20200519161755.209565-2-maz@kernel.org>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <b691a46e-7461-89c8-c760-a1ef9769091f@gmail.com>
Date: Tue, 19 May 2020 12:47:24 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200519161755.209565-2-maz@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_124732_481756_D152B468 
X-CRM114-Status: GOOD (  21.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sumit Garg <sumit.garg@linaro.org>, Russell King <linux@arm.linux.org.uk>,
 Jason Cooper <jason@lakedaemon.net>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/19/2020 9:17 AM, Marc Zyngier wrote:
> For irqchips using the fasteoi flow, IPIs are a bit special.
> 
> They need to be EOId early (before calling the handler), as
> funny things may happen in the handler (they do not necessarily
> behave like a normal interrupt), and that the arch code is
> already handling the stats.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  include/linux/irq.h |  1 +
>  kernel/irq/chip.c   | 26 ++++++++++++++++++++++++++
>  2 files changed, 27 insertions(+)
> 
> diff --git a/include/linux/irq.h b/include/linux/irq.h
> index 8d5bc2c237d7..726f94d8b8cc 100644
> --- a/include/linux/irq.h
> +++ b/include/linux/irq.h
> @@ -621,6 +621,7 @@ static inline int irq_set_parent(int irq, int parent_irq)
>   */
>  extern void handle_level_irq(struct irq_desc *desc);
>  extern void handle_fasteoi_irq(struct irq_desc *desc);
> +extern void handle_percpu_devid_fasteoi_ipi(struct irq_desc *desc);
>  extern void handle_edge_irq(struct irq_desc *desc);
>  extern void handle_edge_eoi_irq(struct irq_desc *desc);
>  extern void handle_simple_irq(struct irq_desc *desc);
> diff --git a/kernel/irq/chip.c b/kernel/irq/chip.c
> index 41e7e37a0928..7b0b789cfed4 100644
> --- a/kernel/irq/chip.c
> +++ b/kernel/irq/chip.c
> @@ -955,6 +955,32 @@ void handle_percpu_devid_irq(struct irq_desc *desc)
>  		chip->irq_eoi(&desc->irq_data);
>  }
>  
> +/**
> + * handle_percpu_devid_fasteoi_ipi - Per CPU local IPI handler with per cpu
> + *				     dev ids
> + * @desc:	the interrupt description structure for this irq
> + *
> + * The biggest differences with the IRQ version are that:
> + * - the interrupt is EOIed early, as the IPI could result in a context
> + *   switch, and we need to make sure the IPI can fire again
> + * - Stats are usually handled at the architecture level, so we ignore them
> + *   here
> + */
> +void handle_percpu_devid_fasteoi_ipi(struct irq_desc *desc)
> +{
> +	struct irq_chip *chip = irq_desc_get_chip(desc);
> +	struct irqaction *action = desc->action;
> +	unsigned int irq = irq_desc_get_irq(desc);
> +	irqreturn_t res;

Should not this have a:

	if (!irq_settings_is_no_accounting(desc))
		__kstat_incr_irqs_this_cpu(desc);

here in case you are using that handler with a SGI interrupt which is
not used as an IPI?

> +
> +	if (chip->irq_eoi)
> +		chip->irq_eoi(&desc->irq_data);
> +
> +	trace_irq_handler_entry(irq, action);
> +	res = action->handler(irq, raw_cpu_ptr(action->percpu_dev_id));
> +	trace_irq_handler_exit(irq, action, res);
> +}
> +
>  /**
>   * handle_percpu_devid_fasteoi_nmi - Per CPU local NMI handler with per cpu
>   *				     dev ids
> 

-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
