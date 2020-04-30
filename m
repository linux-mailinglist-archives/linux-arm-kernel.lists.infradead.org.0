Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CD81BF7F8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 14:13:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M9PnLwBV6yE0ptccjRksPP3dhV0bMu4cyr285yoZkqQ=; b=dvl8wYzdFy7fRd
	qPA0Vuz0m8oysJIm1wKDoYIOSpV+uVwPCsCPgKbRReHTG7Fa1OJrAOQZ11qQxesIXnBUdUHEwnChX
	SIVAVv/5NOxsMB/Fp3ADIE51H96pTwHPEIdlQjebfXZGsk7VHqOOh3sxZlAyikLDhmbR9Un4nrGgn
	vaRv/zD8/lbsafrvQYRXIEsqEUIUQef/PRrTV2YQFRJUklQY8riLpzwz9fChmvjJbSlsHuyI6rbsN
	RQ25e5ksmDR1j30w0HdDtkqZ0LJceaUJNSqqzuJ20l1inCrJBwZq/dzCYjlsVd13zxQdvMVhRBNLf
	9CkWm2wkz+k8J0OfFg9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU84Y-0001Ti-96; Thu, 30 Apr 2020 12:13:46 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU84P-0001SY-D6
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 12:13:38 +0000
Received: by mail-lf1-x143.google.com with SMTP id b20so740326lff.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 05:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yoeiwlW47gmLywsOiQtPAE+BLkFaEXPfv/CcedEMo0A=;
 b=dBJrTKuq/SFqvsQRbkobYYD98E85yyKcrd9m+8aU8XQsZe9qZ4X3mboJ4YAStQGCSe
 P+gw90exxtyuQ+xUnKPv2uPJUukjiRRy9FsMM6ZESi54vVlyqNkiuueBXFXaEA+p2BOx
 kea0VHcA4BCDM5e0RydFHUESpaYzlZtUpyNXaH8uzi90pA9n9qbLgycjFafZayXSQoG6
 SQE9u4XUwAUyNzpljPgQk122jmjjie0LBRRy4kjw5WsQC8saX6p04NfwH1LiqEE9yp6X
 FWfhEMGJZZ9J/ODkOI51KV8YAvWFKqM078K9NHUzJzCTypO0tdZDb7NTW7NsRqKeiTgH
 yzQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yoeiwlW47gmLywsOiQtPAE+BLkFaEXPfv/CcedEMo0A=;
 b=L5Dpb0fUUhvcIA1zooI56d75zQgPSSi39Orztt8ofq6pO6yNjOeWzS1kasRiJQ0O7Y
 BGUeCNsRSCWQW/pCy06N8kdFjwb6a8qbOi23G9H3UoCWnDyuG2+aN5qjqXnAR7TitUM6
 jy9AHqakBNuwcgVgfLK3oo39dNp5KzPw8NjBYoViGQoM0TE6reCgFCaCWZhFVD4jy+8I
 84X9TJc/guCxLUK5SYuApOWE7bbQhawyxsgQQBoQ6+/fS98onnKE7HKi4FHVRN/p8dbn
 b9uQ1iAkqMY3Cjy2D2IAp2AXQP9hxALyici86TiVZoKVKGgDvLUo2mqNEHCpXJ7huvWR
 Qbzw==
X-Gm-Message-State: AGi0PuYazCRicnCGqeMdwa9bAXM3Kxi+wRrBtzNQ1vxufmiFfHCMd1pi
 hv0wcxETGa9fZyUSECD37lPVZaBNDH99oirgM+346g==
X-Google-Smtp-Source: APiQypIIPUadX74iZ/bCIqJG4Vsa3NMnxmkI+UwH+e41amhBTK/XrBg+ktI/Ar3uSdlHbEz4HG6H/aHz5MJH+jCDZWI=
X-Received: by 2002:ac2:4113:: with SMTP id b19mr2009647lfi.40.1588248813839; 
 Thu, 30 Apr 2020 05:13:33 -0700 (PDT)
MIME-Version: 1.0
References: <1587726554-32018-1-git-send-email-sumit.garg@linaro.org>
 <1587726554-32018-3-git-send-email-sumit.garg@linaro.org>
 <20200425112950.3a4815b6@why>
 <6fd3d96181ec53f735ef1b6a79d28da1@kernel.org>
 <CAFA6WYPNNNZeX5zpadayfiZ7P_mHmiREpUd5LZ3Jp+TjGVqoEw@mail.gmail.com>
 <ac57cb4bbb6507ee98f199d68a514503@kernel.org>
 <CAFA6WYMheJxeKVC_YWN9owNJhcWTBsaOCvZXxq=GVj5ROJ0cvg@mail.gmail.com>
 <20200430101322.420e4052@why>
In-Reply-To: <20200430101322.420e4052@why>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Thu, 30 Apr 2020 17:43:21 +0530
Message-ID: <CAFA6WYO+NGLfNkOah4YzXx5XuaDh=QtWHgnMBwwMFY1zRt15GQ@mail.gmail.com>
Subject: Re: [RFC Patch v1 2/4] irqchip/gic-v3: Add support to handle SGI as
 pseudo NMI
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_051337_444728_AC199907 
X-CRM114-Status: GOOD (  28.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Douglas Anderson <dianders@chromium.org>, julien.thierry.kdev@gmail.com,
 Jason Wessel <jason.wessel@windriver.com>,
 kgdb-bugreport@lists.sourceforge.net, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 30 Apr 2020 at 14:43, Marc Zyngier <maz@kernel.org> wrote:
>
> On Thu, 30 Apr 2020 12:50:28 +0530
> Sumit Garg <sumit.garg@linaro.org> wrote:
>
> > Hi Marc,
> >
> > On Wed, 29 Apr 2020 at 13:53, Marc Zyngier <maz@kernel.org> wrote:
>
> [...]
>
> > > What I would like is for the arch code to request these interrupts as
> > > normal interrupts, for which there is one problem to solve: how do you
> > > find out about the Linux IRQ number for a given IPI. Or rather, how
> > > do you get rid of the requirement to have IPI numbers at all and just
> > > say "give me a per-cpu interrupt that I can use as an IPI, and by the
> > > way here's the handler you can call".
> >
> > I think what you are looking for here is something that could be
> > sufficed via enabling "CONFIG_GENERIC_IRQ_IPI" framework for arm64/arm
> > architectures. It's currently used for mips architecture. Looking at
> > its implementation, I think it should be possible to hook up SGIs
> > under new IPI irq_domain for GICv2/v3.
> >
> > So with this framework we should be able to dynamically allocate IPIs
> > and use common APIs such as request_irq()/request_nmi() to tell IPI
> > specific handlers.
> >
> > If this approach looks sane to you then I can start working on a PoC
> > implementation for arm64.
>
> I can't say I'm keen. This IPI framework doesn't really work for the
> GIC:
>
> - it requires a separate irqdomain to be able to guarantee that you
>   allocate the hwirq in the SGI range. What is the point?
> - it creates yet another level of indirection on IPI injection
>
> This framework was created to deal with two cases:
> - systems that can't represent their IPI with a single hwirq spanning
>   all the CPUs
> - "accelerator cores" that don't run Linux
>
> The GIC architecture avoids the first point, and I don't even want to
> think of the second one.
>
> Also, it doesn't solve the initial problem, which is to bootstrap the
> whole thing. The IPI framework relies on an irqdomain to be created the
> first place. This would mean teaching the arch code about the
> intricacies of irqdomains, FW nodes and other terrible things. All
> things which are better hidden in the GIC drivers (not to mention the
> other horror stories that are the RPi-2/3 irqchip and the Huawei GIC
> knock-off).
>
> What I have in mind is to replace the set_smp_cross_call() with
> something that passes the required set of information (interrupt range,
> at the very least). The only thing that I plan to reuse from the IPI
> framework is the chip->ipi_send_mask() callback.
>

Fair enough, I will just pass the allocated interrupt range base
instead of set_smp_cross_call() and use __ipi_send_mask() to invoke a
particular IPI.

And to request an arch specific IPI as NMI, will use
arch_get_ipinr_nmi() and in turn use request_percpu_nmi() to turn that
particular IPI as NMI.

Is there anything that I missed here?

-Sumit

> Thanks,
>
>         M.
> --
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
