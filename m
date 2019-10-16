Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 329A4D895E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 09:25:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G0bbxBZKGdg741zkUloDl1LLbstZLxQcby7hQ6qxums=; b=bknaj8tO1Qqb65
	QwFUCsk3KiP6Y5JcMkD0VnKg/I/oRugSF5eqPJv/nuCQVeoKbs/1TOwHAcGS6seLdMwzNI2RuJ2MW
	j9WAfob0GSekY+mrDEjg9ewv+X3XECZiZvNBh5OPRQHseGo3oo+xLkhTgnQbsU7ZzAUQaZm7KrR3n
	Zwx6NrU8j9ZhCYHaIRrA6RTc+BDcu01pYkBr4Ov8gFf5cUcN3rqLSWAT5L0OcC7W7l75JtxPasBd9
	F7M1PrqRR4G3L40ndFbPGId6UFa1wWO+KPvxlvlYY8ok4plMsyzoSbtvttKUi/QUJIrEoX3+rdN7y
	82pzdVAyRR+qEh7ds6Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKdgP-0008Sn-Pq; Wed, 16 Oct 2019 07:25:21 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKdgA-0008Om-Fk
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 07:25:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571210704;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=S5d0V9S8ommJVGUrWAIephbxJ0dHyW1i5xgUqQkwiWw=;
 b=izrUhR1m9GQmr/R4nFLnw1JlaOYJZD0AYbmiLSOd6Bx70oxacKuavN2XZ+dkBfQt15YmZU
 0eOZX8LqBs6PfPNl1ZjtLW5dIE2PMLEZtCaHXjwHfEX0SgXm/20aoFygycI4I0uoqczrZH
 ZkPDPGwhEoK2P1ExnBOGoUAwGQx1NLg=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-216-nwCCFoAAOZuEfFeVARYkUw-1; Wed, 16 Oct 2019 03:25:00 -0400
Received: by mail-wm1-f69.google.com with SMTP id r187so1964449wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 00:25:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7pVDKMRb0iY8vtAwjOLtISUgtFuBYzCTEpSdAuatOfE=;
 b=jCDdDBPoDPCRzOYz6yDMaKsyHPNb1BCdYHJSdtN7O/h8NY5EHPp3FT6dPApusTTHgk
 olAvVWDfdY3RyA6lIzmz3vB83nSELpVKpQ3i8GTFd8cmp4Is/wDVJ00caJ/VzQzK5dp0
 z3iPbcr5bvbuIS05xfyLjNNTWoSjkC1uI9ybzTz357zXsGZw1NxmoomYdJ1MTo6+eD39
 gVYtKP6rQwK/ZR06Yyk71pRMdtgiyt08NSCDYESWVsS3WmSkfufkk23yYeUSpNV/uYlv
 YRnhDAc53aQmNqc894dFSLYvspHbcK7PWAOP8flieGQL/7s6u30EJR3FlAar3rO7Mori
 o+Fw==
X-Gm-Message-State: APjAAAUY/m8mON7u+slQUjh7ChIX4Rk5tTI3jEu29gkAJ2rCHXITWj6Y
 9mQQA793mgzryIAU8m8tNXu6GQPBUAZhzClXdVMMbn6FG8QsBFM4tlSYeUGCQ7ESF1cjTRvONVI
 nXL2DqARmgmDRaZ78V2AKYg+0dRNtk9aMGyE=
X-Received: by 2002:a1c:2d4d:: with SMTP id t74mr1925337wmt.108.1571210699166; 
 Wed, 16 Oct 2019 00:24:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw5Hnm/FlYZhsbogxc96HRPT50pfLfmeGENB2+vf8pJDNEMgxSNXlDgdpTAAP/g6kRKVCeDyw==
X-Received: by 2002:a1c:2d4d:: with SMTP id t74mr1925322wmt.108.1571210698895; 
 Wed, 16 Oct 2019 00:24:58 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:ddc7:c53c:581a:7f3e?
 ([2001:b07:6468:f312:ddc7:c53c:581a:7f3e])
 by smtp.gmail.com with ESMTPSA id f20sm1474636wmb.6.2019.10.16.00.24.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 16 Oct 2019 00:24:58 -0700 (PDT)
Subject: Re: [PATCH v5 4/6] psci: Add hvc call service for ptp_kvm.
To: Jianyong Wu <jianyong.wu@arm.com>, netdev@vger.kernel.org,
 yangbo.lu@nxp.com, john.stultz@linaro.org, tglx@linutronix.de,
 sean.j.christopherson@intel.com, maz@kernel.org, richardcochran@gmail.com,
 Mark.Rutland@arm.com, will@kernel.org, suzuki.poulose@arm.com
References: <20191015104822.13890-1-jianyong.wu@arm.com>
 <20191015104822.13890-5-jianyong.wu@arm.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <9641fbff-cfcd-4854-e0c9-0b97d44193ee@redhat.com>
Date: Wed, 16 Oct 2019 09:24:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191015104822.13890-5-jianyong.wu@arm.com>
Content-Language: en-US
X-MC-Unique: nwCCFoAAOZuEfFeVARYkUw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_002506_604982_E6C3D6A2 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: justin.he@arm.com, kvm@vger.kernel.org, Steve.Capper@arm.com,
 linux-kernel@vger.kernel.org, Kaly.Xin@arm.com, nd@arm.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/10/19 12:48, Jianyong Wu wrote:
> diff --git a/drivers/clocksource/arm_arch_timer.c b/drivers/clocksource/arm_arch_timer.c
> index 07e57a49d1e8..3597f1f27b10 100644
> --- a/drivers/clocksource/arm_arch_timer.c
> +++ b/drivers/clocksource/arm_arch_timer.c
> @@ -1634,3 +1634,8 @@ static int __init arch_timer_acpi_init(struct acpi_table_header *table)
>  }
>  TIMER_ACPI_DECLARE(arch_timer, ACPI_SIG_GTDT, arch_timer_acpi_init);
>  #endif
> +
> +bool is_arm_arch_counter(void *cs)
> +{
> +	return (struct clocksource *)cs == &clocksource_counter;
> +}

As Thomas pointed out, any reason to have a void * here?

However, since he didn't like modifying the struct, here is an
alternative idea:

1) add a "struct clocksource*" argument to ktime_get_snapshot

2) return -ENODEV if the argument is not NULL and is not the current
clocksource

3) move the implementation of the hypercall to
drivers/clocksource/arm_arch_timer.c, so that it can call
ktime_get_snapshot(&systime_snapshot, &clocksource_counter);

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
