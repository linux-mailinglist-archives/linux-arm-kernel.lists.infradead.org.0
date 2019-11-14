Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2065FFC664
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 13:34:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0p1SBRD3qfaSNIc3aKLj4OtLsh9817lzY/o7XcHEv7w=; b=XpVWKZXNbKQkgO
	Cx0UtZzn6NrEcHjKkwEmToU30zi94HOI67ec5ZZuLzQvLvSESBwa2Zv7XmCl9pu9n9Yi6kV9vu+jR
	uDKGB9NDAQYgsdpbdYBlVGVite0yBMJSnb7qud3A3nNsgEC3cbUdXA7m/4ONG1tK7I+emJrRyObQS
	faLLg8f6z/8/9Ks/kTQGlUGy/ubMTBU4TdR/N/SEeNHUVtKvh0VaHqFDcYlUo5jx92ElpTF+WvFYd
	KcLqu9+fbvgrkquP8Kz2n8nYvHfOqh9/ZuLB02ddcRR1jX/lvppiQ5BYMi4Gi2O82aW3hbjqlEC9s
	qEN+8gam3JBF3wg4fj+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVEKS-00038I-UM; Thu, 14 Nov 2019 12:34:28 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVEKI-00037j-CQ
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 12:34:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573734856;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4bFwAknYoXAgoIVT6IR8TxKpQxjPgCeYexMYT/nB6jM=;
 b=bvYjf2QBhkHt2DFZOMfuXtm8BRsXPglhxHsONT0k838ZfKjJD7IBplf8pwXZ8wJsMcj6J3
 wbnryHCJDNw3SUu7cL3mxvKdaIylWI8hj7w86knk5tveXVvcEx2RVD2rSSvnhUb4Use1GG
 /HyFkh+po2FO8TKnW8lBRMjrhKcVCrQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-42-VPBqvAjWPvCmj8cUfEVnBg-1; Thu, 14 Nov 2019 07:32:30 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BB417A41FD;
 Thu, 14 Nov 2019 12:32:28 +0000 (UTC)
Received: from kamzik.brq.redhat.com (unknown [10.43.2.160])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 319776B8CB;
 Thu, 14 Nov 2019 12:32:27 +0000 (UTC)
Date: Thu, 14 Nov 2019 13:32:24 +0100
From: Andrew Jones <drjones@redhat.com>
To: Alexandru Elisei <alexandru.elisei@arm.com>
Subject: Re: [kvm-unit-tests PATCH 07/17] arm: gic: Extend check_acked() to
 allow silent call
Message-ID: <20191114123224.2b5jr73qqtgtc7na@kamzik.brq.redhat.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
 <20191108144240.204202-8-andre.przywara@arm.com>
 <25598849-b195-3411-8092-b0656bcfb762@arm.com>
MIME-Version: 1.0
In-Reply-To: <25598849-b195-3411-8092-b0656bcfb762@arm.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: VPBqvAjWPvCmj8cUfEVnBg-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_043418_495176_505DC13C 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kvm@vger.kernel.org, Andre Przywara <andre.przywara@arm.com>,
 Marc Zyngier <maz@kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 03:23:04PM +0000, Alexandru Elisei wrote:
> check_acked is starting to become hard to read.

Agreed. check_acked() could probably have some of its subtests factored
out to improve its readability.

> The function itself is rather inconsistent, as it mixes regular
> printf's with report_info's.

Sounds good

> The return value is also never used:
> =

> $ awk '/check_acked\(/ && !/const/' arm/gic.c
> =A0=A0=A0 check_acked("IPI: self", &mask);
> =A0=A0=A0 check_acked("IPI: directed", &mask);
> =A0=A0=A0 check_acked("IPI: broadcast", &mask);

That's good, since it's a void function :-)

> =

> What I'm thinking is that we can rewrite check_acked to return true/false=
 (or
> 0/1), meaning success or failure, remove the testname parameter, replace =
the
> printfs to report_info, and have the caller do a report based on the value
> returned by check_acked.
> =

> Rough version, compile tested only, I'm sure it can be improved:
> =

> diff --git a/arm/gic.c b/arm/gic.c
> index adb6aa464513..5453f2fd3d5f 100644
> --- a/arm/gic.c
> +++ b/arm/gic.c
> @@ -60,11 +60,11 @@ static void stats_reset(void)
> =A0=A0=A0=A0=A0=A0=A0 smp_wmb();
> =A0}
> =A0
> -static void check_acked(const char *testname, cpumask_t *mask)
> +static bool check_acked(cpumask_t *mask)

We have several check_* functions in arm/gic.c, and they're all void
functions. Changing this one to a bool would be inconsistent, but
maybe that consistency isn't that important, or maybe they should all
be bool?

> =A0{
> =A0=A0=A0=A0=A0=A0=A0 int missing =3D 0, extra =3D 0, unexpected =3D 0;
> =A0=A0=A0=A0=A0=A0=A0 int nr_pass, cpu, i;
> -=A0=A0=A0=A0=A0=A0 bool bad =3D false;
> +=A0=A0=A0=A0=A0=A0 bool success =3D true;
> =A0
> =A0=A0=A0=A0=A0=A0=A0 /* Wait up to 5s for all interrupts to be delivered=
 */
> =A0=A0=A0=A0=A0=A0=A0 for (i =3D 0; i < 50; ++i) {
> @@ -76,22 +76,21 @@ static void check_acked(const char *testname, cpumask=
_t *mask)
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 acked[cpu] =3D=3D 1 : acked[cpu] =3D=3D 0;
> =A0
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if =
(bad_sender[cpu] !=3D -1) {
> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 printf("cpu%d received IPI from wrong sender %d\n",
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 report_info("cpu%d received IPI from wrong sender
> %d\n",
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 cpu, bad_sender[cpu]);
> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 bad =3D true;
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 success =3D false;
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
> =A0
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if =
(bad_irq[cpu] !=3D -1) {
> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 printf("cpu%d received wrong irq %d\n",
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 report_info("cpu%d received wrong irq %d\n",
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 cpu, bad_irq[cpu]);
> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 bad =3D true;
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 success =3D false;
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (nr_pass =3D=3D nr_cpus)=
 {
> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 repor=
t("%s", !bad, testname);
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if =
(i)
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 report_info("took more than %d ms", i * 100);
> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 retur=
n;
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 retur=
n success;
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
> =A0=A0=A0=A0=A0=A0=A0 }
> =A0
> @@ -107,9 +106,9 @@ static void check_acked(const char *testname, cpumask=
_t *mask)
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
> =A0=A0=A0=A0=A0=A0=A0 }
> =A0
> -=A0=A0=A0=A0=A0=A0 report("%s", false, testname);
> =A0=A0=A0=A0=A0=A0=A0 report_info("Timed-out (5s). ACKS: missing=3D%d ext=
ra=3D%d unexpected=3D%d",
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 missing, extra,=
 unexpected);
> +=A0=A0=A0=A0=A0=A0 return false;
> =A0}
> =A0
> =A0static void check_spurious(void)
> @@ -183,13 +182,11 @@ static void ipi_test_self(void)
> =A0{
> =A0=A0=A0=A0=A0=A0=A0 cpumask_t mask;
> =A0
> -=A0=A0=A0=A0=A0=A0 report_prefix_push("self");
> =A0=A0=A0=A0=A0=A0=A0 stats_reset();
> =A0=A0=A0=A0=A0=A0=A0 cpumask_clear(&mask);
> =A0=A0=A0=A0=A0=A0=A0 cpumask_set_cpu(smp_processor_id(), &mask);
> =A0=A0=A0=A0=A0=A0=A0 gic->ipi.send_self();
> -=A0=A0=A0=A0=A0=A0 check_acked("IPI: self", &mask);
> -=A0=A0=A0=A0=A0=A0 report_prefix_pop();
> +=A0=A0=A0=A0=A0=A0 report("self", check_acked(&mask));
> =A0}
> =A0
> =A0static void ipi_test_smp(void)
> @@ -203,7 +200,7 @@ static void ipi_test_smp(void)
> =A0=A0=A0=A0=A0=A0=A0 for (i =3D smp_processor_id() & 1; i < nr_cpus; i +=
=3D 2)
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 cpumask_clear_cpu(i, &mask);
> =A0=A0=A0=A0=A0=A0=A0 gic_ipi_send_mask(IPI_IRQ, &mask);
> -=A0=A0=A0=A0=A0=A0 check_acked("IPI: directed", &mask);
> +=A0=A0=A0=A0=A0=A0 report("directed", check_acked(&mask));
> =A0=A0=A0=A0=A0=A0=A0 report_prefix_pop();

Shouldn't we also drop the "target-list" prefix push/pop?

> =A0
> =A0=A0=A0=A0=A0=A0=A0 report_prefix_push("broadcast");
> @@ -211,7 +208,7 @@ static void ipi_test_smp(void)
> =A0=A0=A0=A0=A0=A0=A0 cpumask_copy(&mask, &cpu_present_mask);
> =A0=A0=A0=A0=A0=A0=A0 cpumask_clear_cpu(smp_processor_id(), &mask);
> =A0=A0=A0=A0=A0=A0=A0 gic->ipi.send_broadcast();
> -=A0=A0=A0=A0=A0=A0 check_acked("IPI: broadcast", &mask);
> +=A0=A0=A0=A0=A0=A0 report("broadcast", check_acked(&mask));
> =A0=A0=A0=A0=A0=A0=A0 report_prefix_pop();
> =A0}

Shouldn't we also drop the "broadcast" prefix push/pop?

> =A0
> I've removed "IPI" from the report string because the prefixed was alread=
y pushed
> in main.
> =

> Andrew, what do you think? Are we missing something obvious? Do you have =
a better
> idea?

I'm happy to see cleanups and haven't had a chance to look too closely at
the gic tests in a while so I have no better ideas :-)

Thanks,
drew


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
