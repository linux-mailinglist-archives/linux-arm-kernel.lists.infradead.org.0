Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2BFFDC4B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 12:32:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MfjXRiTcE644rE/JWOcPVQTAxmXdDoD/0Ok+SCEm2Eg=; b=i2neg+bjGLR6ZT
	Wl5Ii/HNA/vpnSzme0BxBDrt57sRt9nNkwwo02unmQ+ZkgOqPzDnFx/iU4J48Wqi6Ih9tSwkwO4tw
	Sci7luSY94Z0hj5w7zRoFIMXa9zyhgsRpqUIcAIyMqftT862hYd8F7l2Yzh4ps/iXBJzTfPR3SMvS
	IKNIHpAiNPMElT6CTdQesiN9x02xuZgeMSCqtsFY9pPOFhRTVMHlcAvesVWUxgaheKkTgUdlxviUr
	xs8odO8PilEQHYXLldMr6ClxO142f2yxk2H1JjFJRFPo5v6FfBwYr1aZ5k5hfPjkCzvdB1eIHneo5
	cfoA+ZvI7QqXL0/mYxQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVZps-0004tF-9r; Fri, 15 Nov 2019 11:32:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVZpj-0004se-6M
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 11:32:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 77B1831B;
 Fri, 15 Nov 2019 03:32:09 -0800 (PST)
Received: from [10.1.196.63] (e123195-lin.cambridge.arm.com [10.1.196.63])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 816033F6C4;
 Fri, 15 Nov 2019 03:32:08 -0800 (PST)
Subject: Re: [kvm-unit-tests PATCH 07/17] arm: gic: Extend check_acked() to
 allow silent call
To: Andrew Jones <drjones@redhat.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
 <20191108144240.204202-8-andre.przywara@arm.com>
 <25598849-b195-3411-8092-b0656bcfb762@arm.com>
 <20191114123224.2b5jr73qqtgtc7na@kamzik.brq.redhat.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <7aca029b-c2f7-aef9-9fac-b79f5ff5658b@arm.com>
Date: Fri, 15 Nov 2019 11:32:07 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191114123224.2b5jr73qqtgtc7na@kamzik.brq.redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_033211_323272_7C0D05E6 
X-CRM114-Status: GOOD (  20.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kvm@vger.kernel.org, Andre Przywara <andre.przywara@arm.com>,
 Marc Zyngier <maz@kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 11/14/19 12:32 PM, Andrew Jones wrote:
> On Tue, Nov 12, 2019 at 03:23:04PM +0000, Alexandru Elisei wrote:
>> check_acked is starting to become hard to read.
> Agreed. check_acked() could probably have some of its subtests factored
> out to improve its readability.
>
>> The function itself is rather inconsistent, as it mixes regular
>> printf's with report_info's.
> Sounds good
>
>> The return value is also never used:
>>
>> $ awk '/check_acked\(/ && !/const/' arm/gic.c
>> =A0=A0=A0 check_acked("IPI: self", &mask);
>> =A0=A0=A0 check_acked("IPI: directed", &mask);
>> =A0=A0=A0 check_acked("IPI: broadcast", &mask);
> That's good, since it's a void function :-)

Sorry, got confused, this patch changes it to return a value, and that valu=
e is
ignored in the existing functions (the ones I listed above), which would ma=
ke the
usage of check_acked very inconsistent.

>> What I'm thinking is that we can rewrite check_acked to return true/fals=
e (or
>> 0/1), meaning success or failure, remove the testname parameter, replace=
 the
>> printfs to report_info, and have the caller do a report based on the val=
ue
>> returned by check_acked.
>>
>> Rough version, compile tested only, I'm sure it can be improved:
>>
>> diff --git a/arm/gic.c b/arm/gic.c
>> index adb6aa464513..5453f2fd3d5f 100644
>> --- a/arm/gic.c
>> +++ b/arm/gic.c
>> @@ -60,11 +60,11 @@ static void stats_reset(void)
>> =A0=A0=A0=A0=A0=A0=A0 smp_wmb();
>> =A0}
>> =A0
>> -static void check_acked(const char *testname, cpumask_t *mask)
>> +static bool check_acked(cpumask_t *mask)
> We have several check_* functions in arm/gic.c, and they're all void
> functions. Changing this one to a bool would be inconsistent, but
> maybe that consistency isn't that important, or maybe they should all
> be bool?

I think they should stay void, because they compute statistics, or print a =
warning
if we got a spurious interrupt (check_spurious). I'm not really sure what t=
o do
about check_acked at the moment, I'll think about it some more.

>> =A0{
>> =A0=A0=A0=A0=A0=A0=A0 int missing =3D 0, extra =3D 0, unexpected =3D 0;
>> =A0=A0=A0=A0=A0=A0=A0 int nr_pass, cpu, i;
>> -=A0=A0=A0=A0=A0=A0 bool bad =3D false;
>> +=A0=A0=A0=A0=A0=A0 bool success =3D true;
>> =A0
>> =A0=A0=A0=A0=A0=A0=A0 /* Wait up to 5s for all interrupts to be delivere=
d */
>> =A0=A0=A0=A0=A0=A0=A0 for (i =3D 0; i < 50; ++i) {
>> @@ -76,22 +76,21 @@ static void check_acked(const char *testname, cpumas=
k_t *mask)
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 acked[cpu] =3D=3D 1 : acked[cpu] =3D=3D 0;
>> =A0
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if=
 (bad_sender[cpu] !=3D -1) {
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 printf("cpu%d received IPI from wrong sender %d\n",
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 report_info("cpu%d received IPI from wrong sender
>> %d\n",
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 cpu, bad_sender[cpu]);
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 bad =3D true;
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 success =3D false;
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
>> =A0
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if=
 (bad_irq[cpu] !=3D -1) {
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 printf("cpu%d received wrong irq %d\n",
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 report_info("cpu%d received wrong irq %d\n",
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 cpu, bad_irq[cpu]);
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 bad =3D true;
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 success =3D false;
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (nr_pass =3D=3D nr_cpus=
) {
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 repo=
rt("%s", !bad, testname);
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if=
 (i)
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 report_info("took more than %d ms", i * 100);
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 retu=
rn;
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 retu=
rn success;
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
>> =A0=A0=A0=A0=A0=A0=A0 }
>> =A0
>> @@ -107,9 +106,9 @@ static void check_acked(const char *testname, cpumas=
k_t *mask)
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
>> =A0=A0=A0=A0=A0=A0=A0 }
>> =A0
>> -=A0=A0=A0=A0=A0=A0 report("%s", false, testname);
>> =A0=A0=A0=A0=A0=A0=A0 report_info("Timed-out (5s). ACKS: missing=3D%d ex=
tra=3D%d unexpected=3D%d",
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 missing, extra=
, unexpected);
>> +=A0=A0=A0=A0=A0=A0 return false;
>> =A0}
>> =A0
>> =A0static void check_spurious(void)
>> @@ -183,13 +182,11 @@ static void ipi_test_self(void)
>> =A0{
>> =A0=A0=A0=A0=A0=A0=A0 cpumask_t mask;
>> =A0
>> -=A0=A0=A0=A0=A0=A0 report_prefix_push("self");
>> =A0=A0=A0=A0=A0=A0=A0 stats_reset();
>> =A0=A0=A0=A0=A0=A0=A0 cpumask_clear(&mask);
>> =A0=A0=A0=A0=A0=A0=A0 cpumask_set_cpu(smp_processor_id(), &mask);
>> =A0=A0=A0=A0=A0=A0=A0 gic->ipi.send_self();
>> -=A0=A0=A0=A0=A0=A0 check_acked("IPI: self", &mask);
>> -=A0=A0=A0=A0=A0=A0 report_prefix_pop();
>> +=A0=A0=A0=A0=A0=A0 report("self", check_acked(&mask));
>> =A0}
>> =A0
>> =A0static void ipi_test_smp(void)
>> @@ -203,7 +200,7 @@ static void ipi_test_smp(void)
>> =A0=A0=A0=A0=A0=A0=A0 for (i =3D smp_processor_id() & 1; i < nr_cpus; i =
+=3D 2)
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 cpumask_clear_cpu(i, &mask=
);
>> =A0=A0=A0=A0=A0=A0=A0 gic_ipi_send_mask(IPI_IRQ, &mask);
>> -=A0=A0=A0=A0=A0=A0 check_acked("IPI: directed", &mask);
>> +=A0=A0=A0=A0=A0=A0 report("directed", check_acked(&mask));
>> =A0=A0=A0=A0=A0=A0=A0 report_prefix_pop();
> Shouldn't we also drop the "target-list" prefix push/pop?
>
>> =A0
>> =A0=A0=A0=A0=A0=A0=A0 report_prefix_push("broadcast");
>> @@ -211,7 +208,7 @@ static void ipi_test_smp(void)
>> =A0=A0=A0=A0=A0=A0=A0 cpumask_copy(&mask, &cpu_present_mask);
>> =A0=A0=A0=A0=A0=A0=A0 cpumask_clear_cpu(smp_processor_id(), &mask);
>> =A0=A0=A0=A0=A0=A0=A0 gic->ipi.send_broadcast();
>> -=A0=A0=A0=A0=A0=A0 check_acked("IPI: broadcast", &mask);
>> +=A0=A0=A0=A0=A0=A0 report("broadcast", check_acked(&mask));
>> =A0=A0=A0=A0=A0=A0=A0 report_prefix_pop();
>> =A0}
> Shouldn't we also drop the "broadcast" prefix push/pop?

My suggestion was a quick hack to give an idea of how it might look, it can
definitely be improved :)

Thanks,
Alex
>> =A0
>> I've removed "IPI" from the report string because the prefixed was alrea=
dy pushed
>> in main.
>>
>> Andrew, what do you think? Are we missing something obvious? Do you have=
 a better
>> idea?
> I'm happy to see cleanups and haven't had a chance to look too closely at
> the gic tests in a while so I have no better ideas :-)
>
> Thanks,
> drew
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
