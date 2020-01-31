Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C0514F339
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 21:33:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7FkBJi+BSHkAQT299A/ovbr/oNSb8Igo1SmoEZ1MvyY=; b=QU/O0kQlM9I9Bw
	Y/lwdZyKlT4G2QwNogiVzkk+4/wMzSp7l13y/lW0igWSxEqDe3Vr48S2oSirrzurwE0HT+jBPe1RA
	mjTO2WoTzvwXyLuEuJb/HkU0pBI52B3ea3+tYONb/MVtGDbXCOeV2djmKt6cYrCmF3ncyaei7+QJH
	F3KJBjNW6rOy1AuP1sXbNskqt1UM4SexAXTeeZp5+jVmrRO1+yWlDukacWO2bjOuepldq6EzT5H7z
	pCVm5OlG4Ixauc5iPz2D33/Fg/Rtj1aC1WfDI9BYJR3jH0lc3K/dqDGuoVpzj9vCf/1/6OWshjaBn
	RrE72fxGqz6qK8Lkr/0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixcyw-0001an-UZ; Fri, 31 Jan 2020 20:33:38 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixcyo-0001a0-CN
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 20:33:33 +0000
Received: by mail-ed1-f66.google.com with SMTP id p23so9182024edr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 12:33:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vm34AiZw5tCki8C0c1qoxvq76BQ0W8VtlZxc0vtOTH0=;
 b=PQFhus3m+0cWYFam3LqHYjjGnkCodxFdoVFIi/OZMV1LJhYm/ksxaJ9xAgWSjQJynt
 LtarmEItsa62YYq1y9O1e5FZUbxqMKqE9AfWMCRIugH8vkbFScyP195zY4/X4IbbThg+
 NCYVUueYSvA67J7g8Kj5EDzAMb2VJaxECQiE2zPhNAEc11n4zo0o5OK603ARmaXtZpnG
 GycciEkeFS4EMprY5rBcdrVZRz1DCYfApQcS3tSLytkkOC+YLIK515UxILPy8DdhEvRv
 +ZNGlnYOiok6qF1FcUildd9r5lGHz6iRK5crmicTnkuVaTXgIaW+9DJ/ZCkihthp2mgJ
 6XJQ==
X-Gm-Message-State: APjAAAXDF7dVo4qO1ITVXkL2t1QM8BNAb6x+LIwGADwiAkU1VxOUh5YZ
 W+Juc7m9ZpQql+0dr3Yqsrw=
X-Google-Smtp-Source: APXvYqzv6M4GBZtTnnXC472c44tOGVPioARY22z+lobm6CZoDXuGFlo7P3GwK8JnhnshAtlVrV+7Uw==
X-Received: by 2002:a17:907:104e:: with SMTP id
 oy14mr10544242ejb.82.1580502808030; 
 Fri, 31 Jan 2020 12:33:28 -0800 (PST)
Received: from kozik-lap ([194.230.155.229])
 by smtp.googlemail.com with ESMTPSA id g9sm651960ejd.66.2020.01.31.12.33.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 31 Jan 2020 12:33:27 -0800 (PST)
Date: Fri, 31 Jan 2020 21:33:24 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH 1/3] ARM: exynos_defconfig: Enable SCHED_MC
Message-ID: <20200131203324.GA27510@kozik-lap>
References: <20200127215453.15144-1-lukasz.luba@arm.com>
 <20200127215453.15144-2-lukasz.luba@arm.com>
 <CAJKOXPedRc3ag6DDUAXSbHk8JcAZbug5HSss9wb8YyLkP7MLaw@mail.gmail.com>
 <ae021317-8fda-2bb2-2080-1304fda1420c@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ae021317-8fda-2bb2-2080-1304fda1420c@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_123330_421748_306760C7 
X-CRM114-Status: GOOD (  23.73  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-pm@vger.kernel.org,
 =?utf-8?Q?Bart=C5=82omiej_=C5=BBo=C5=82nierkiewicz?=
 <b.zolnierkie@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 robh+dt@kernel.org, Chanwoo Choi <cw00.choi@samsung.com>,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 dietmar.eggemann@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 31, 2020 at 03:59:30PM +0000, Lukasz Luba wrote:
> Hi Krzysztof,
> 
> Thank you for your review, please see my comments below.
> 
> On 1/31/20 12:47 PM, Krzysztof Kozlowski wrote:
> > On Mon, 27 Jan 2020 at 22:55, <lukasz.luba@arm.com> wrote:
> > > 
> > > From: Lukasz Luba <lukasz.luba@arm.com>
> > > 
> > > Since the 'capacities-dmips-mhz' are present in the CPU nodes, make use of
> > > this knowledge in smarter decisions during scheduling.
> > > 
> > > The values in 'capacities-dmips-mhz' are normilized, this means that i.e.
> > > when CPU0's capacities-dmips-mhz=100 and CPU1's 'capacities-dmips-mhz'=50,
> > > cpu0 is twice fast as CPU1, at the same frequency. The proper hirarchy
> > > in sched_domain topology could exploit the SoC architecture advantages
> > > like big.LITTLE.
> > 
> > I do not quite get how this is related to rationale behind changing defconfig...
> 
> It is not strictly about EAS, it is useful in general for big.LITTLE
> platform with clusters.
> 
> > 
> > > Enabling the SCHED_MC will create two levels in
> > > sched_domain hierarchy, which might be observed in:
> > 
> > This is looks more convincing... but still what is the need? To work with EAS?
> 
> It is not only for EAS, but in general for the scheduler (load balance,
> task's wake-up path, etc). The scheduler algorithms iterate CPUs in the
> sched groups. To make better decisions, the information about MC domain
> is needed. More about the scheduler domains and i.e. load_balance()
> you can find here:
> 
> https://www.kernel.org/doc/html/latest/scheduler/sched-domains.html

Ahhh, I see, it's independent of later patches. Somehow I had impression
it is a prerequisite...

> 
> > 
> > > grep . /proc/sys/kernel/sched_domain/cpu*/domain*/{name,flags}
> > > /proc/sys/kernel/sched_domain/cpu0/domain0/name:MC
> > > /proc/sys/kernel/sched_domain/cpu0/domain1/name:DIE
> > > ...
> > > /proc/sys/kernel/sched_domain/cpu0/domain0/flags:575
> > > /proc/sys/kernel/sched_domain/cpu0/domain1/flags:4223
> > 
> > Not related to defconfig change and not visible after this commit.
> 
> Without this patch there is only one domain: 'domain0' -> 'DIE'
> cat /proc/sys/kernel/sched_domain/cpu0/domain0/name
> DIE
> 
> When you apply this patch you will get two: 'domain0, 'domain1'
> grep . /proc/sys/kernel/sched_domain/cpu0/domain?/name
> 
> /proc/sys/kernel/sched_domain/cpu0/domain0/name:MC
> /proc/sys/kernel/sched_domain/cpu0/domain1/name:DIE
> 
> I can remove it this information, but it is the most important
> to spot this difference out.
> 
> This is also the main reason I haven't merge the patch 1 + 3.

Indeed. I thought that these will pop up at the end of the patchset, my
bad.

I do not see big benefits of adding these outputs as proofs of working
SCHED_MC because they are kind of obvious. It is not a measurement but
report of current system state. However they don't harm neither, so I am
fine with it.

However please us in commit msg also the name of turned on option, next
or instead of SCHED_MC.  The options might be sometimes cryptic or too
vague and the name actually easily expresses what you want enable.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
