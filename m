Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80698164866
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 16:23:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=06/L/AN4HaJtuJZf9CrJyxTdGPVpc3omLoSOqWPd4ho=; b=cQdBXYvVhX9lHB
	ZaQMm7LcFLBl74YwvYbIoMn0YclAWZGbeooM5FYfQ9smv8BlWNTyaWHmC8ssnPWyTGdhdaS1D7vnC
	CM0oQEn/EkxyfOWTfBcG+f7/E3QOzVXvkINw7+ujI+KQwD6jCXMoP6jF0u4Hk9TX1s5pLChYOkRWk
	8pkChW9K2rFVZmcpOEQNtaeR+8lojhbYMSvMlhO8WtM/okgjPh/z8eBjc/R0l9NA0IntpO+Ai7pab
	vZf0WjlLk1SoMQ/nyHVokmIc8B6z3freDWxQvMeiedgXipd7d4wwdWMQQWJwPRt9+0lAMHQ6/pzYg
	DrNl2bpH1DxKPQzJgZMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4RBj-0005go-G8; Wed, 19 Feb 2020 15:22:59 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4RBa-0005gE-I6
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 15:22:51 +0000
Received: by mail-qt1-x844.google.com with SMTP id l21so440816qtr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 07:22:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=80jC7mm6ENiYivWinnfWz8y04hWlzmZYkrE9zSqrG+g=;
 b=DNI7RRbs5np4aFKQEb6jIAiEOoY7sWKOK93w1Sa4c1mugsDJiElW3eqCjVvLa0cHUV
 De/RV3sic7P42bJet/IyjMIMwlC+ydJQdKltUak7qDZobDXMRzvrW7YA7N5YGdJgXHdt
 0DDC/abGiuXnMzFf7zInMzDcwxP9eoI/VIrwR4ma7PinkvAEKmKcG7UKD1z/vjhpZKFZ
 tCxPyXG8Vhvb8tGXqQ0Fs7+7VPO3Y65RA9WPEwSfrHD6873zO+bYKjkBy1vJsxtERZLR
 ZlPb6Ld+a/dUCiP/VoN6FWPXc62WrQPrfv3H7uCTrWn3+uPSMZMFHI6iNZwTkYTHkPjp
 7Wzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=80jC7mm6ENiYivWinnfWz8y04hWlzmZYkrE9zSqrG+g=;
 b=OtiY1sqjvTHDyJ3ORJ4tSYns5140s7EnZxkf8EM+7oVww/k8jK74lNJCrEKoKv4PcI
 WPwdhbs8iyK1M1Rbz6HmMBVea5JQMeDwVHlFBaDI6P/EFAJvc4cbS2ebRnKUIqCqcKVk
 UrhN9CiXrPYcCIcUpvYpZ3PtjiD1fHmbOZ0LirPaeXgiskH7kcGk07hRijJzRAnEqSwN
 biiNE390drEgdha8uWTEfCp9BJGcRidAQ1BjCvyVcxr6sKTBKWvVCexJsTHotswx6AcE
 OBmHOqRDLk0z7HgXjvJIPm0S4PyydxwmoiaDjCpeTeBOwHQq7fS1WW2uTlcuBpwTeg34
 kkDA==
X-Gm-Message-State: APjAAAU0iGRjyOHc6NUSyD90kjQpgP7opPh1PoS7lQNi8cJ+WcbYJXGE
 taxn7zJBR/HcDcACohdnS48=
X-Google-Smtp-Source: APXvYqzJerrYieyaEgKN4U+5zDpmfDyEMO+0UFQrbwNA0AMkEXxmu5rGwbbWkMRpuHmGmXG1EjKbyA==
X-Received: by 2002:ac8:1415:: with SMTP id k21mr22848245qtj.300.1582125769278; 
 Wed, 19 Feb 2020 07:22:49 -0800 (PST)
Received: from localhost ([2620:10d:c091:500::2:e7ce])
 by smtp.gmail.com with ESMTPSA id z21sm1139339qka.122.2020.02.19.07.22.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 07:22:48 -0800 (PST)
Date: Wed, 19 Feb 2020 10:22:48 -0500
From: Tejun Heo <tj@kernel.org>
To: Petr Mladek <pmladek@suse.com>
Subject: Re: [PATCH] kthread: Mark timer used by delayed kthread works as IRQ
 safe
Message-ID: <20200219152248.GC698990@mtj.thefacebook.com>
References: <20200217120709.1974-1-pmladek@suse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200217120709.1974-1-pmladek@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_072250_598643_199DAD9B 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [htejun[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Grygorii Strashko <grygorii.strashko@ti.com>,
 linux-rt-users@vger.kernel.org, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>, linux-kernel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 01:07:09PM +0100, Petr Mladek wrote:
> The timer used by delayed kthread works are IRQ safe because the used
> kthread_delayed_work_timer_fn() is IRQ safe.
> 
> It is properly marked when initialized by KTHREAD_DELAYED_WORK_INIT().
> But TIMER_IRQSAFE flag is missing when initialized by
> kthread_init_delayed_work().
> 
> The missing flag might trigger invalid warning from del_timer_sync()
> when kthread_mod_delayed_work() is called with interrupts disabled.
> 
> Reported-by: Grygorii Strashko <grygorii.strashko@ti.com>
> Signed-off-by: Petr Mladek <pmladek@suse.com>
> Tested-by: Grygorii Strashko <grygorii.strashko@ti.com>

Acked-by: Tejun Heo <tj@kernel.org>

Thanks.

-- 
tejun

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
