Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8ABB7912
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 14:13:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1mX070xEH+9wbSRH2coJAse0mURuHb004p34b9ndPe8=; b=L0EMWoyLNx84WA
	NxyA4SL7NCAUINubQQUjTy7pH92FlwcYtRR1f5uRxSD+e+PEHZlZK/jxssDSetUBSY4yZyuTXoVzq
	GQ6iQONRc79zHbVfRcWq8NNL98x7PCZAW7LLejb+R4M53syiRWFhumQGqo7YChl8eOBlVHK219PB5
	NybT0050iQEGbRJeF+3geOGhq3fJBBw2DF3ajBJ84nOqjxMQkgE2BUdnYCMg26MGU3IGB3hoNciFT
	cCtJt7jIwk0GE/+VnHj7NyXcK75zKAFakhOjPxU8FZYhRHCfkHyBPY+DSlwI7XhUrVyiktB8qVdyv
	iexjaF7XqRqNWALjNp0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAvJc-0004mJ-3U; Thu, 19 Sep 2019 12:13:40 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAvJK-0004l7-EB
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 12:13:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1568895200;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:openpgp;
 bh=8upZbcqH4fXkVaLOW2dy/iZBybRVQ5oETpjiRcdE6KE=;
 b=Uoos2eUmdiKzuQlXofjnhJ3p1Nwl4lVhuWcraNySJQ9Fpnp7iV8TrTcjMxZgrhJ8FW/iQg
 qmCr1g3ZwdqZfsKwbbFuIGoPYSZ73Vw1mUsR0mc+m+79Y9uqU76+/hg6BlyRPz+qY1gC8Z
 IFTWZqCdNGHCbFXvTreHZvd6SyWyY9o=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-358-5mPcEttBMsmy7S3YU79m9Q-1; Thu, 19 Sep 2019 08:13:18 -0400
Received: by mail-wm1-f71.google.com with SMTP id r21so1490857wme.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 05:13:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8upZbcqH4fXkVaLOW2dy/iZBybRVQ5oETpjiRcdE6KE=;
 b=AABX/wvunHmXtWFK6qX82+GRjQaJsukpCxsSuq5715sPqgU6r8yltdCdVeFcoFUUTg
 8D7pEkPcD/Mc7OlOGTjac9w1shzAjJYt0msgRzCpVCx0Zu7CXDYnnAaw2mVE+oyKo7b9
 NhwasO0O63Gi0S24lfh+NJLKQlfU8THInJIFW5JB3X9yf5OPBx6u19kbkn/wk/kueh2e
 A0QAIgfmfxnweMvwlWs51flUP1SzqKRKs7DaP+Q7dxVvA/YQ3+ncDmVRqVreCuXqk74B
 tr+I4B5JMmjywwvoJTK4QqTvE+IV/j9Iqn9l5PqxK1JllPET3IRdFeqBhLxgKR/Oy0Cr
 6TcQ==
X-Gm-Message-State: APjAAAX+9LSps0LVQZw3RgJPFvt1x2mqAAjyOEBxWEjZki01+rQBjXfn
 9I9qKupiENR5ur5hnSm4+oT2sF4WH2BEr+97w/S91o7a4RG7R+S2/trR2OsSuU/BC++DmdIN4zC
 kGg0maCDgUUgaWsc1PS+PzSu/9pj9ojmAWD4=
X-Received: by 2002:a5d:6088:: with SMTP id w8mr6995252wrt.31.1568895197144;
 Thu, 19 Sep 2019 05:13:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyoqc728vUxzk+PlHiWZtsz6cgGkTTAs+KWHYRvgq+doGCowWOVSB7hkXrBEQJmElppYJsNwA==
X-Received: by 2002:a5d:6088:: with SMTP id w8mr6995221wrt.31.1568895196846;
 Thu, 19 Sep 2019 05:13:16 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:c46c:2acb:d8d2:21d8?
 ([2001:b07:6468:f312:c46c:2acb:d8d2:21d8])
 by smtp.gmail.com with ESMTPSA id x6sm7878924wmf.38.2019.09.19.05.13.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Sep 2019 05:13:16 -0700 (PDT)
Subject: Re: [RFC PATCH v3 4/6] psci: Add hvc call service for ptp_kvm.
To: Marc Zyngier <maz@kernel.org>,
 "Jianyong Wu (Arm Technology China)" <Jianyong.Wu@arm.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 Mark Rutland <Mark.Rutland@arm.com>, Will Deacon <Will.Deacon@arm.com>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>
References: <20190918080716.64242-1-jianyong.wu@arm.com>
 <20190918080716.64242-5-jianyong.wu@arm.com>
 <83ed7fac-277f-a31e-af37-8ec134f39d26@redhat.com>
 <HE1PR0801MB1676F57B317AE85E3B934B32F48E0@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <629538ea-13fb-e666-8df6-8ad23f114755@redhat.com>
 <HE1PR0801MB167639E2F025998058A77F86F4890@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <ef6ab8bd-41ad-88f8-9cfd-dc749ca65310@redhat.com>
 <a1b554b8-4417-5305-3419-fe71a8c50842@kernel.org>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <56a5b885-62c8-c4ef-e2f8-e945c0eb700e@redhat.com>
Date: Thu, 19 Sep 2019 14:13:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <a1b554b8-4417-5305-3419-fe71a8c50842@kernel.org>
Content-Language: en-US
X-MC-Unique: 5mPcEttBMsmy7S3YU79m9Q-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_051322_551164_FC5EDD13 
X-CRM114-Status: GOOD (  13.89  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "Justin He \(Arm Technology China\)" <Justin.He@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Steve Capper <Steve.Capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19/09/19 13:39, Marc Zyngier wrote:
>> I don't think it's ugly but more important, using tk->tkr_mono.clock is
>> incorrect.  See how the x86 code hardcodes &kvm_clock, it's the same for
>> ARM.
> Not really. The guest kernel is free to use any clocksource it wishes.

Understood, in fact it's the same on x86.

However, for PTP to work, the cycles value returned by the clocksource
must match the one returned by the hypercall.  So for ARM
get_device_system_crosststamp must receive the arch timer clocksource,
so that it will return -ENODEV if the active clocksource is anything else.

Paolo

> In some cases, it is actually desirable (like these broken systems that
> cannot use an in-kernel irqchip...). Maybe it is that on x86 the guest
> only uses the kvm_clock, but that's a much harder sell on ARM. The fact
> that ptp_kvm assumes that the clocksource is fixed doesn't seem correct
> in that case.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
