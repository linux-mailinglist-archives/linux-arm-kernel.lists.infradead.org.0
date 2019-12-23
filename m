Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC63D1295EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 13:18:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=x7MSAJjh4bZVRWbmjtmqXjZRFCjedbEsZGQKc58h+9s=; b=GK6297h+B+SUL1xXxEsSiQESm
	aAv0UIyB8+m2lj1GpqkGQq9YzU0SOOPYgR0WdGgdQpG33BZPI16z42syANMKEb7oZZM0bRnCHr9MF
	Y/WNSFEHT7Pu2OzyS5FPSE2brOdxGt0JKDrAsT5kAhZokYTO3gbhT+Xv6ot/MVKk3lzMUzX+7V8fv
	DliwXI4OsOsdlzG55SSYGeuxw5w7uX39+jTleuphih6axsJTHBvMgmQfd3xdTwRUxhSGiiyEzlcxN
	LTzLsbpfQWBNDng8/6O5ZrF46SMUaSaH8rztGNtUY4MIUvZflgigEZvFiCkZB1w6XYo4jj+bfXNSU
	/BtnX9brg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijMfQ-0005bG-HJ; Mon, 23 Dec 2019 12:18:32 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijMfC-0005a6-97
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 12:18:19 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ijMf8-0003iS-Ut; Mon, 23 Dec 2019 13:18:14 +0100
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v2 15/18] perf: =?UTF-8?Q?arm=5Fspe=3A=20Handle=20gues?=
 =?UTF-8?Q?t/host=20exclusion=20flags?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Mon, 23 Dec 2019 12:18:14 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191223121002.GB42593@e119886-lin.cambridge.arm.com>
References: <20191220143025.33853-1-andrew.murray@arm.com>
 <20191220143025.33853-16-andrew.murray@arm.com>
 <865zi8imr7.wl-maz@kernel.org>
 <20191223121002.GB42593@e119886-lin.cambridge.arm.com>
Message-ID: <0c806e4f5bb465f5b3fb54d167293706@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: andrew.murray@arm.com, marc.zyngier@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, sudeep.holla@arm.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_041818_463555_0D4D9167 
X-CRM114-Status: GOOD (  17.68  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: kvm@vger.kernel.org, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-23 12:10, Andrew Murray wrote:
> On Sun, Dec 22, 2019 at 12:10:52PM +0000, Marc Zyngier wrote:
>> On Fri, 20 Dec 2019 14:30:22 +0000,
>> Andrew Murray <andrew.murray@arm.com> wrote:
>> >
>> > A side effect of supporting the SPE in guests is that we prevent 
>> the
>> > host from collecting data whilst inside a guest thus creating a 
>> black-out
>> > window. This occurs because instead of emulating the SPE, we share 
>> it
>> > with our guests.
>> >
>> > Let's accurately describe our capabilities by using the perf 
>> exclude
>> > flags to prevent !exclude_guest and exclude_host flags from being 
>> used.
>> >
>> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
>> > ---
>> >  drivers/perf/arm_spe_pmu.c | 3 +++
>> >  1 file changed, 3 insertions(+)
>> >
>> > diff --git a/drivers/perf/arm_spe_pmu.c 
>> b/drivers/perf/arm_spe_pmu.c
>> > index 2d24af4cfcab..3703dbf459de 100644
>> > --- a/drivers/perf/arm_spe_pmu.c
>> > +++ b/drivers/perf/arm_spe_pmu.c
>> > @@ -679,6 +679,9 @@ static int arm_spe_pmu_event_init(struct 
>> perf_event *event)
>> >  	if (attr->exclude_idle)
>> >  		return -EOPNOTSUPP;
>> >
>> > +	if (!attr->exclude_guest || attr->exclude_host)
>> > +		return -EOPNOTSUPP;
>> > +
>>
>> I have the opposite approach. If the host decides to profile the
>> guest, why should that be denied? If there is a black hole, it 
>> should
>> take place in the guest. Today, the host does expect this to work, 
>> and
>> there is no way that we unconditionally allow it to regress.
>
> That seems reasonable.
>
> Upon entering the guest we'd have to detect if the host is using SPE, 
> and if
> so choose not to restore the guest registers. Instead we'd have to 
> trap them
> and let the guest read/write emulated values until the host has 
> finished with
> SPE - at which time we could restore the guest SPE registers to 
> hardware.
>
> Does that approach make sense?

Yes, this would be much better. All of this can be found out at 
vcpu_load()
time, and once you've moved most of the SPE sysreg handling there, it 
will
just follow the normal scheduling flow.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
