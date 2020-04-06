Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3216F19EFE2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 06:28:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qpdG5nwoUDLToQ8fYtdGhamd72cHB7baGkadLWbXBMk=; b=TdHpMcUKV5+90r
	NIZcIH3M3SXleDx/pom+TLi+KWPL+AJakh1IMlNmFgmUscbSpUDLnZnfdBZO9KUp13QuAxF5OxyG8
	RcbZmFcSN9vQngQkjEE4o0sC0hoTdxiJlObmRZOIDqwFeM0dci98vq8kFRWNPVs7J7DkjUNydAIGw
	846mVxy8iE55PnHYAj7+W6XQLfS+FkG9bspWGo1id6My7VTTODTvkU8IgnL3hPKRZyRx2LO5S4pWt
	vz8fAL+Dp9gVP0oOlc53s2Xr0QDFHyVQtgeTki6+03gWntfWyG6UDjSUjIAbQJ8c0ZwSF4WgNikMV
	YaNPPK1p0N2ipms90Png==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLJMV-0001qY-OZ; Mon, 06 Apr 2020 04:27:51 +0000
Received: from mout02.posteo.de ([185.67.36.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLJMN-0001pJ-PJ
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 04:27:45 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout02.posteo.de (Postfix) with ESMTPS id D90272400E6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  6 Apr 2020 06:27:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
 t=1586147248; bh=70a++uSvv2qdkM5jAGcOFLiP/g5Cl2dfP85Qllm6F34=;
 h=Date:From:To:Cc:Subject:From;
 b=LbLvNjhi3xa1Lq6FHwGuFlF+LtRjLpz8qvazm9egz43PlEOPZm8zBTJwEC0KkzUIj
 4VA1tUV8+tQyF8vy4FQhHM4zJ0iBTjtZw+RP9n0QIQlSvffSAdfPRA8O2Y9MLwTKg/
 +e/gnwNCTMV31AhblSAH2Q+HP8nj8M9l4zxEn5nAUz5aRe3F9Fo9X607HxyKloWtyK
 oU2zWEx92rZBQcRrY3Jzu2lYzJCBOQyTx+O48uzLyLSuMzWu0/kMqiSsZdEYZyAcn4
 dVWtaOo5CpVEkZTgs2HiKs4Q2g/uiTOBkrf2KN0VjJwGenKKJScEHn3pSAM4OTCX3n
 tc4j0n6Lhkhlg==
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 48wcvN4HXhz9rxN;
 Mon,  6 Apr 2020 06:27:12 +0200 (CEST)
Date: Mon, 6 Apr 2020 00:27:09 -0400
From: Kevyn-Alexandre =?utf-8?B?UGFyw6k=?= <kapare@posteo.net>
To: Alex Belits <abelits@marvell.com>
Subject: Re: [PATCH v2 10/12] task_isolation: ringbuffer: don't interrupt
 CPUs running isolated tasks on buffer resize
Message-ID: <20200406042709.e4isjrvrrwsusjc4@x1>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
 <5add46d3bfbdac3fb42dcef6b6e4ea0e39abe11f.camel@marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5add46d3bfbdac3fb42dcef6b6e4ea0e39abe11f.camel@marvell.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_212744_110753_5A3B3948 
X-CRM114-Status: GOOD (  23.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.67.36.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Prasun Kapoor <pkapoor@marvell.com>,
 "frederic@kernel.org" <frederic@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "will@kernel.org" <will@kernel.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 08, 2020 at 03:55:24AM +0000, Alex Belits wrote:
> From: Yuri Norov <ynorov@marvell.com>
> =

> CPUs running isolated tasks are in userspace, so they don't have to
> perform ring buffer updates immediately. If ring_buffer_resize()
> schedules the update on those CPUs, isolation is broken. To prevent
> that, updates for CPUs running isolated tasks are performed locally,
> like for offline CPUs.
> =

> A race condition between this update and isolation breaking is avoided
> at the cost of disabling per_cpu buffer writing for the time of update
> when it coincides with isolation breaking.
> =

> Signed-off-by: Yuri Norov <ynorov@marvell.com>
> [abelits@marvell.com: updated to prevent race with isolation breaking]
> Signed-off-by: Alex Belits <abelits@marvell.com>
> ---
>  kernel/trace/ring_buffer.c | 62 ++++++++++++++++++++++++++++++++++----
>  1 file changed, 56 insertions(+), 6 deletions(-)
> =

> diff --git a/kernel/trace/ring_buffer.c b/kernel/trace/ring_buffer.c
> index 61f0e92ace99..593effe40183 100644
> --- a/kernel/trace/ring_buffer.c
> +++ b/kernel/trace/ring_buffer.c
> @@ -21,6 +21,7 @@
>  #include <linux/delay.h>
>  #include <linux/slab.h>
>  #include <linux/init.h>
> +#include <linux/isolation.h>
>  #include <linux/hash.h>
>  #include <linux/list.h>
>  #include <linux/cpu.h>
> @@ -1701,6 +1702,37 @@ static void update_pages_handler(struct work_struc=
t *work)
>  	complete(&cpu_buffer->update_done);
>  }
>  =

> +static bool update_if_isolated(struct ring_buffer_per_cpu *cpu_buffer,
> +			       int cpu)
> +{
> +	bool rv =3D false;
> +
> +	if (task_isolation_on_cpu(cpu)) {
> +		/*
> +		 * CPU is running isolated task. Since it may lose
> +		 * isolation and re-enter kernel simultaneously with
> +		 * this update, disable recording until it's done.
> +		 */
> +		atomic_inc(&cpu_buffer->record_disabled);
> +		/* Make sure, update is done, and isolation state is current */
> +		smp_mb();
> +		if (task_isolation_on_cpu(cpu)) {
> +			/*
> +			 * If CPU is still running isolated task, we
> +			 * can be sure that breaking isolation will
> +			 * happen while recording is disabled, and CPU
> +			 * will not touch this buffer until the update
> +			 * is done.
> +			 */
> +			rb_update_pages(cpu_buffer);
> +			cpu_buffer->nr_pages_to_update =3D 0;
> +			rv =3D true;
> +		}
> +		atomic_dec(&cpu_buffer->record_disabled);
> +	}
> +	return rv;
> +}
> +
>  /**
>   * ring_buffer_resize - resize the ring buffer
>   * @buffer: the buffer to resize.
> @@ -1784,13 +1816,22 @@ int ring_buffer_resize(struct trace_buffer *buffe=
r, unsigned long size,
>  			if (!cpu_buffer->nr_pages_to_update)
>  				continue;
>  =

> -			/* Can't run something on an offline CPU. */
> +			/*
> +			 * Can't run something on an offline CPU.
> +			 *
> +			 * CPUs running isolated tasks don't have to
> +			 * update ring buffers until they exit
> +			 * isolation because they are in
> +			 * userspace. Use the procedure that prevents
> +			 * race condition with isolation breaking.
> +			 */
>  			if (!cpu_online(cpu)) {
>  				rb_update_pages(cpu_buffer);
>  				cpu_buffer->nr_pages_to_update =3D 0;
>  			} else {
> -				schedule_work_on(cpu,
> -						&cpu_buffer->update_pages_work);
> +				if (!update_if_isolated(cpu_buffer, cpu))
> +					schedule_work_on(cpu,
> +					&cpu_buffer->update_pages_work);
>  			}
>  		}
>  =

> @@ -1829,13 +1870,22 @@ int ring_buffer_resize(struct trace_buffer *buffe=
r, unsigned long size,
>  =

>  		get_online_cpus();
>  =

> -		/* Can't run something on an offline CPU. */
> +		/*
> +		 * Can't run something on an offline CPU.
> +		 *
> +		 * CPUs running isolated tasks don't have to update
> +		 * ring buffers until they exit isolation because they
> +		 * are in userspace. Use the procedure that prevents
> +		 * race condition with isolation breaking.
> +		 */
>  		if (!cpu_online(cpu_id))
>  			rb_update_pages(cpu_buffer);
>  		else {
> -			schedule_work_on(cpu_id,
> +			if (!update_if_isolated(cpu_buffer, cpu_id))
> +				schedule_work_on(cpu_id,
>  					 &cpu_buffer->update_pages_work);
> -			wait_for_completion(&cpu_buffer->update_done);
> +				wait_for_completion(&cpu_buffer->update_done);
> +			}
>  		}
>  =

>  		cpu_buffer->nr_pages_to_update =3D 0;

gcc output:

kernel/trace/ring_buffer.c: In function 'ring_buffer_resize':
kernel/trace/ring_buffer.c:1884:4: warning: this 'if' clause does not guard=
... [-Wmisleading-indentation]
    if (!update_if_isolated(cpu_buffer, cpu_id))
    ^~
kernel/trace/ring_buffer.c:1887:5: note: ...this statement, but the latter =
is misleadingly indented as if it were guarded by the 'if'
     wait_for_completion(&cpu_buffer->update_done);
     ^~~~~~~~~~~~~~~~~~~
kernel/trace/ring_buffer.c:1858:4: error: label 'out' used but not defined
    goto out;
    ^~~~
kernel/trace/ring_buffer.c:1868:4: error: label 'out_err' used but not defi=
ned
    goto out_err;
    ^~~~

My fix:

diff --git a/kernel/trace/ring_buffer.c b/kernel/trace/ring_buffer.c
index 593effe40183..8b458400ac31 100644
--- a/kernel/trace/ring_buffer.c
+++ b/kernel/trace/ring_buffer.c
@@ -1881,9 +1881,8 @@ int ring_buffer_resize(struct trace_buffer *buffer, u=
nsigned long size,
                if (!cpu_online(cpu_id))
                        rb_update_pages(cpu_buffer);
                else {
-                       if (!update_if_isolated(cpu_buffer, cpu_id))
-                               schedule_work_on(cpu_id,
-                                        &cpu_buffer->update_pages_work);
+                       if (!update_if_isolated(cpu_buffer, cpu_id)) {
+                               schedule_work_on(cpu_id, &cpu_buffer->updat=
e_pages_work);
                                wait_for_completion(&cpu_buffer->update_don=
e);
                        }
                }


thx,

-- Kevyn-Alexandre Par=E9 =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
