Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BF612CFE3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 13:08:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3DdNqZp10uQ4wIawAsOIeakRETQyyML3mqF4GVBY4i4=; b=SU8RVJOdbms354
	i4WtySlK0S+XiJvdGHxxYE4FccmNv2FmMof2fQstxFGYqwovlaDzKx1tS3MV3TIxxFlbLiIu7cKqG
	oNE6skL95sU/FQ4jUIgCEtEtUgpL6zPE9q2DedN/kNWl5y6J2rT8xIqOjHM7kT7NNG5zCnAEwaZfm
	tRMvLdoMMi/TVC4bshp9fNjXF70Dp1zxn97RpuIG/DsddyVAiyPHxtu1EQkZ948tHiMPMQwSIL7Re
	TN0D4GsSsvKvqXdhEPHwRHwoJfiehP1q3JE3hVJ3AM01JOLI7tGt6dOCMnqiNk9bKWukBDiv/+W+d
	3Pew82wurHhIahdvZbtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iltqL-00007N-L0; Mon, 30 Dec 2019 12:08:17 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iltqA-00006l-Fy
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 12:08:08 +0000
Received: from mail-qv1-f49.google.com ([209.85.219.49]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1M6lxe-1iplSo3r9q-008MKf for <linux-arm-kernel@lists.infradead.org>; Mon,
 30 Dec 2019 13:08:01 +0100
Received: by mail-qv1-f49.google.com with SMTP id l14so12266966qvu.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 04:08:00 -0800 (PST)
X-Gm-Message-State: APjAAAXZn1e2glmu/elBpnGjhMDmwl0LMqLdM36+zUOAVYSOYLzihh2k
 Ate2m6rnC1MT2jrr9fesa8quH8K6MoHLUOCtvrI=
X-Google-Smtp-Source: APXvYqwgYmUQwo+iL/k4m54VB6r1wV0E9Nq8yE/j4nb6YZD4J7kjH+UJKaDQYBMfOQwb9P/Z8xhYwMz7551bLxAPNPc=
X-Received: by 2002:a0c:bd20:: with SMTP id m32mr50936334qvg.197.1577707679673; 
 Mon, 30 Dec 2019 04:07:59 -0800 (PST)
MIME-Version: 1.0
References: <cover.1577111363.git.christophe.leroy@c-s.fr>
 <d0f8dfb26c025d3e3eee1b5f610161ca19b942df.1577111367.git.christophe.leroy@c-s.fr>
In-Reply-To: <d0f8dfb26c025d3e3eee1b5f610161ca19b942df.1577111367.git.christophe.leroy@c-s.fr>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 30 Dec 2019 13:07:43 +0100
X-Gmail-Original-Message-ID: <CAK8P3a36OgFuY72b_i6+0xBNGnaxS1SsRid+HrgQHPZtUJp3LQ@mail.gmail.com>
Message-ID: <CAK8P3a36OgFuY72b_i6+0xBNGnaxS1SsRid+HrgQHPZtUJp3LQ@mail.gmail.com>
Subject: Re: [RFC PATCH v2 05/10] lib: vdso: inline do_hres()
To: Christophe Leroy <christophe.leroy@c-s.fr>
X-Provags-ID: V03:K1:75DX7oU5qNe4y0Nv8eWttl5fLSHRVouoqWgeRp5fG2q0zVXdB4S
 GvEMibwzqpbJw9Ssbj2yIR5/MdSMa0lJseqIO96T59JDaoKmK4OImTljE/Xll4THVA45z4h
 5eXcomZyUcaMBUwNnjUO/gogx7EtqTgHKIuNApfKJLs8DkflkeM+iTsGVlu8y9MnAiJEyY+
 EgS7Zrv302RrZVgLSVX7Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ee8fIVOXKo4=:BLotKt9iKpG9XEIWg3wB1u
 AUn+BSj7sQpvgE3Fu4/1marHHvAvzRrDPiub2DzdrdPP4BSpzFpr9U3lAyl/7MCc8Fa3EING+
 KnnhpA3r2YXQ4TZFy63mZhBiOaIwGxUfUAtabO5IoeDPg9m4/7tUNeFhc1QmVEVhIz6Dj6qyt
 huNhbUDODZniEwEbuIkQdonnc36ElD91g9vMY1AQgxcPDmzyLb2rWUAcHOVFTS2P8yMIGoiqN
 jnGb9Sm/FuCLVjRdyMIS+o7oyLYQhwycNUcPSzlj05vkR21WLjsapcqMHUxIcKhDkdrMdqdN/
 iOKeATcfRIX/M4dhp4B7ZabVkygq2owRmvjb5WKQm/PYTyB4dqiKuu2Eq0lQpdaDjEPGZ6lCl
 FAmhKkDEsBY5a/MtW1hbOHkIl6ZDUNzThNqvw8SnLM/bsMMXIhLF9ZyVxU9pybrN5k8rm5FWD
 UzCXXJ7r88CRysZ0lN+2RvkfqXbTVTWKG+ShUFE1WMEgSc2UbBj0M6dh+GqttSRz0e1N3NHRM
 oKb0YS6YcBL4KlmEpmwejukYvhMOzEHI64K3EmmNv994G5gmRcv3deG6OAhInS5bNg6oB4f+d
 fLaAh+a761O/M1joDzNKmkkdHYIYXYG2tx9czkmcN0le0mMtlGIcxFLo8EXN7sqowzz5okcDg
 IU5yC+TuSLY+qWYIwSAvPhLIpmYKPkOQqAi51B6b3npo77BZPwjvqzO9qbzyXUYPTAk71Lpks
 iTs0wyivQdD5x3g0sdBr2UYceQZavwnVkfaCF5iEc5Luj3DcOAIyr1NkqGM6ZGBW8r0Far6pt
 3zDddqyA7+5IdpeYO7IG60pdrKX+fUzSp9Lj7GlXQu92rebAUaBFHY3zpmUGqbbUUp8ac5c9U
 Pn56Tj8SC71b1iEQdWUw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_040806_830040_743DDF4E 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, Andy Lutomirski <luto@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 23, 2019 at 3:31 PM Christophe Leroy
<christophe.leroy@c-s.fr> wrote:
>
> do_hres() is called from several places, so GCC doesn't inline
> it at first.
>
> do_hres() takes a struct __kernel_timespec * parameter for
> passing the result. In the 32 bits case, this parameter corresponds
> to a local var in the caller. In order to provide a pointer
> to this structure, the caller has to put it in its stack and
> do_hres() has to write the result in the stack. This is suboptimal,
> especially on RISC processor like powerpc.
>
> By making GCC inline the function, the struct __kernel_timespec
> remains a local var using registers, avoiding the need to write and
> read stack.
>
> The improvement is significant on powerpc.
>
> Signed-off-by: Christophe Leroy <christophe.leroy@c-s.fr>

Good idea, I can see how this ends up being an improvement
for most of the callers.

Acked-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
