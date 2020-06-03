Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6911ED419
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 18:19:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3avJXMCD7OjCue0mtOdaMOoDA9k0xF0NsgW9+VTKYsc=; b=eOPvH9wM9Jbf0/
	08KrjaNZJlKqjQi9bc5QSVOJjwa4qiR0OdfZ4T+VfRrWEgLAh98JNi6dzw1Rm2+YNe+USCYVP77M5
	iafXKJZRa8JemL+j7HlaVPbfNj+HgxfPPU5YOfeomqXeK7AGW2UeIQ6ud0/UR+KTGwaRCkVxpMdsS
	0hFGJO0d5F4t2lroXBTNo6HFG9rm9rCXdhsCZTpEcOejwubjim0JBrQcMiegMk0LaJ+g4QXxffhg6
	KebzeZSH642jpaylE+iTBzWyAUDFgZ8gaL9IMUWFXlAc1y0wBDX8spPeFKjaFK3Axm8QElNa7mAi8
	Ad/eIDKA94ZeYAiOJD1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgW70-0002D5-Il; Wed, 03 Jun 2020 16:19:30 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgW6t-0002CM-LK
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 16:19:24 +0000
Received: by mail-io1-f65.google.com with SMTP id d5so2889776ios.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 09:19:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=rC5bE9KFvxDnJlcIiTlWdbXRmbn0P+2nI1r3gG1LMao=;
 b=r4LGAPpOZHciPQrzkdL+P+j9rtMIUvJC9ffCUuufPKM09mtxzbeq/E52OLsFV+KRPe
 Ez88yXJ43kHrjaqfr1wkjlEx2yV2AXd+H6X8XpS7957behgfrvZ7WbT9Aomy9Eieqa0+
 Xw5IMhLViYUzIZ2mCOa5PbU8TyCkC3e2Nun/BfvJF2/dKmWdA71BcrZKtN4+SkDJ9GQZ
 +qIpLhvWyiZv0Q8dOLoWYB2OHu4OZKTX7q7cZX5Dimjr7Fj7yzeEfpdwBImqMaXGc4KK
 ZckwB66X5R9XoU6TeGBm7HrVUOOTd07B2TpXSDpxH5m19uoQaYzpXuvFtrFeId1B8o/a
 vWRw==
X-Gm-Message-State: AOAM531ssLGga2GnM2htIWLYeVykxBC+/x2NcHvS3VntGPpiFR5TIaaE
 OueakQGVrEVAgcD7BURbvw==
X-Google-Smtp-Source: ABdhPJxDBsDsagU3oxTW3qm0z17Idaq7Nb0AnTWkfF+zJ7waFaMp+/uD70MJ/TrnJ77YA1pde9s1WA==
X-Received: by 2002:a5d:8613:: with SMTP id f19mr438310iol.173.1591201162738; 
 Wed, 03 Jun 2020 09:19:22 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id i78sm1248407ile.87.2020.06.03.09.19.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 09:19:22 -0700 (PDT)
Received: (nullmailer pid 1478226 invoked by uid 1000);
 Wed, 03 Jun 2020 16:19:19 -0000
Date: Wed, 3 Jun 2020 10:19:19 -0600
From: Rob Herring <robh@kernel.org>
To: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Subject: Re: [PATCH v4 1/7] perf: arm64: Add test to check userspace access
 to hardware counters.
Message-ID: <20200603161919.GA1364927@bogus>
References: <20190822144220.27860-1-raphael.gault@arm.com>
 <20190822144220.27860-2-raphael.gault@arm.com>
 <20190827191755.00007a57@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190827191755.00007a57@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_091923_692549_139DCC8D 
X-CRM114-Status: GOOD (  19.67  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, raph.gault+kdev@gmail.com, peterz@infradead.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 acme@kernel.org, Raphael Gault <raphael.gault@arm.com>, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 07:17:55PM +0800, Jonathan Cameron wrote:
> On Thu, 22 Aug 2019 15:42:14 +0100
> Raphael Gault <raphael.gault@arm.com> wrote:
> 
> > This test relies on the fact that the PMU registers are accessible
> > from userspace. It then uses the perf_event_mmap_page to retrieve
> > the counter index and access the underlying register.
> > 
> > This test uses sched_setaffinity(2) in order to run on all CPU and thus
> > check the behaviour of the PMU of all cpus in a big.LITTLE environment.
> > 
> > Signed-off-by: Raphael Gault <raphael.gault@arm.com>
> 
> Hi Raphael,
> 
> I just tested this on 1620 and it works fairly nicely with one exception...

I'm working on reviving this series.

> The test will run and generate garbage numbers if the rest of the
> series isn't yet applied to the kernel.  Is there anything we can do
> to prevent that?

I've added a check that user access is enabled which should prevent 
that. It also validates pmc_width is set which was missing in this 
series.

> It's a slightly silly complaint, but this also take a while compared to all 
> the other tests if you have lots of cores, so maybe a slightly shorter
> test?

I'm not sure what the value of running on every core was supposed to be. 
If we want to check big.LITTLE, then the test should detect that and 
pass if user access is disabled on all cores. If we're not on 
big.LITTLE, then I don't see the point in this test running on every 
core.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
