Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 363052FCA6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 15:51:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tJEYWNqR672TgTIdjBa6zeo3ivkY8r9kKEBssNYrmzA=; b=ZC0egRDuXzQBO0
	/FzQocesyUQWPkPAldbD8d2IlmmId9Obvd+Gi4sZe6553CdY7qDIgvqCsW77wXay49yhC4mOmUmVH
	vg6zBokfkmBkFROOULdrhbU6P9sIjXopXZAC+LdikmBY7Wuxv7l6rLpLy0vNbNjbNPb1hQzZPrSNw
	0SSM6NJ3NmRVuPHZOKTCF2F60z9WqRckDXDiUcUlIhJ8VeYC1UQ0+/GObRD406CEseNoMakvUU8tg
	q43PH7bEPXFgxq72ZoBmf9w0NYA8t27x9PUR4GEFegH5nWYgfcwpU2am5Eb0Uzxvyqk9sI+WG0N1V
	Y4XiKNF2n1+iuf6VrjTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWLSe-0007Gh-DB; Thu, 30 May 2019 13:51:16 +0000
Received: from mail-wm1-f50.google.com ([209.85.128.50])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWLSW-0007GH-QS
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 13:51:10 +0000
Received: by mail-wm1-f50.google.com with SMTP id f204so34295wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 06:51:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=VJdacDVHBRo3cqkBw/isPcHDnC2ea++G9bD0r1ee6oo=;
 b=mmqIZfli3XqCkoEE7hL2Gp5tLSX7l9nTCzQPnEAJhrcOINclGLpU9R5bYFuzgoo0+7
 H18wZbrt1pQhBqwlBUITDRUWu+lxVZrIJMPkc4g47X9H/Cbpd1oVHemLDs9Z3i56GR60
 KHjaMQWrNwSsf/E0KuNN7l49HBd8xXWEgrJWS1IOr5t6EP/93GuXPVrn79DXWL5+CXiJ
 vMLye2kk09VEWcu7J8SzdkN2Te9BrGqRbFvFHXY1brSxBDi6/fqwZ3CFFUwVbT5fnO/N
 KPYwOQx+H2hCrQKwvRQECtpsxgK+cwEWvN3xpNQWjbNoP1g3TpN0sE4JMN/MefM8xqcs
 Qppg==
X-Gm-Message-State: APjAAAXu2baEZVbxuFK1G5Ty96hyM5p5Uk304pRxEhblXmAML8fTflke
 aBJsCQiZgH8pNdWQPWoxmNWVlQ==
X-Google-Smtp-Source: APXvYqwclqccELRhv/Sc7m1LCuXJUri8+5XDjrijQ5Xip1CQhdaXGUvUnmQqjXffUiL+V6d2OnkrVg==
X-Received: by 2002:a1c:f50a:: with SMTP id t10mr2421566wmh.86.1559224267185; 
 Thu, 30 May 2019 06:51:07 -0700 (PDT)
Received: from vitty.brq.redhat.com (nat-pool-brq-t.redhat.com.
 [213.175.37.10])
 by smtp.gmail.com with ESMTPSA id f2sm3815143wrq.48.2019.05.30.06.51.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 30 May 2019 06:51:06 -0700 (PDT)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: Michael Kelley <mikelley@microsoft.com>
Subject: RE: [PATCH v3 2/2] Drivers: hv: Move Hyper-V clocksource code to new
 clocksource driver
In-Reply-To: <BYAPR21MB122115920E78B7897FDC7BE9D7180@BYAPR21MB1221.namprd21.prod.outlook.com>
References: <1558969089-13204-1-git-send-email-mikelley@microsoft.com>
 <1558969089-13204-3-git-send-email-mikelley@microsoft.com>
 <87r28gl1d1.fsf@vitty.brq.redhat.com>
 <BYAPR21MB122115920E78B7897FDC7BE9D7180@BYAPR21MB1221.namprd21.prod.outlook.com>
Date: Thu, 30 May 2019 15:51:05 +0200
Message-ID: <87imtskq46.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_065108_865070_42E296C8 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.50 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "marc.zyngier@arm.com" <marc.zyngier@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "olaf@aepfle.de" <olaf@aepfle.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "apw@canonical.com" <apw@canonical.com>,
 Sunil Muthuswamy <sunilmut@microsoft.com>, KY Srinivasan <kys@microsoft.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Michael Kelley <mikelley@microsoft.com> writes:

> From: Vitaly Kuznetsov <vkuznets@redhat.com> Sent: Thursday, May 30, 2019 2:48 AM
>> > +		/*
>> > +		 * sched_clock_register is needed on ARM64 but
>> > +		 * is a no-op on x86
>> > +		 */
>> > +		sched_clock_register(read_hv_sched_clock_msr,
>> > +						64, HV_CLOCK_HZ);
>> 
>> I'm not sure about ARM, but MSR-based clocksource would be a really bad
>> choice for sched clock on x86, this will slow things down
>> significantly. Luckily, as you're validly stating above,
>> sched_clock_register() is a no-op on x86 as we don't define
>> CONFIG_GENERIC_SCHED_CLOCK.
>> 
>> Can we actually *not* do sched_clock_register() in case
>> TSC page is unavailable (and revert to counting jiffies or whatever)?
>> 
>
> We can't skip the sched_clock_register() on ARM64 because it
> does define CONFIG_GENERIC_SCHED_CLOCK.  However, Hyper-V
> should always provide REFERENCE_TSC_AVAILALBE on ARM64,
> so we should never end up in the MSR-based code on ARM64.
> Arguably that means the call to sched_clock_register() could be
> removed since it's a no-op on x86.  But I'd like to keep it for symmetry
> and in case there's a testing/debugging situation on ARM64 where
> we want to clear REFERENCE_TSC_AVAILABLE and go down the
> MSR-based code path.

Ok, so it is just a fall-back and not going to be actively used. Thanks!

-- 
Vitaly

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
