Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A877610426C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 18:48:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dC5xbvcNka7cnDLrUuQH/8X/unO3HBNQthbLqhfu6l0=; b=M26w3dpz8QJGjW
	uVR54A/zTVYkuLrcnqPazKqaPRDbSj+aYEsHfBBjGn4g6q1gECUItpQpZvkQDv++kqlANYurL66iD
	GZjx1m95V7xppEtVM/zv9UqVuwG57xoR/o/a5s/4W23zEIJpzx9T82vtfZC6eaoTaFYvwUx49Ydey
	8uJanwX4uKERnHa9if9Hf3W6rLyH3Vq1WKd00vv4F2CiKSdQtg+x6bd5xicciaKROKnBL7VwL9ZnK
	+p2Sec3Wj2UtBS3XHOANJGYz6Wqor20SeGP7z0V+0Lo2OBj65k4j6eOEX6NV1koIHUh7WDhgG6QPN
	fbYePK7N03luPdapJuow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXU5u-0000aN-RJ; Wed, 20 Nov 2019 17:48:46 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXU5m-0000Zw-0R
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 17:48:39 +0000
Received: by mail-qk1-x743.google.com with SMTP id h15so510208qka.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 09:48:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KoHTfA7XptfGu4SwPazgjZL/vb+ZBVYpQAv7fDZhFZE=;
 b=E7K7T8Cg8bqaVIeqyEwOyHmAI0PO0vOaWFsQaswS9ymyypUpn8U+gHJbMBBFYzX7sz
 rmZC2lIa/hZ+y0ByGzlP3aaCk9ze7uUtSRe8cN11N5FtDdXBQ0VmPLBnesyR62jAr8J/
 ZcKCBspdIgs5rqbv64+ZMp7DFodNImQCwh77Rgd+YO38/95dQooTyDVF6tnBbAFUOZKa
 +6JWxui5+sYirixiau3ekR0JMvW67FB3MTB9m0Q8tDcLLfUZ10NBi0v/1moET0Aca1R5
 aHhlWTIx38kcbr5t4uLdI6wF3XRubO2ZKtbDlMEN162qIkfcSIp7D683SZRWg+kr+PxV
 opHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KoHTfA7XptfGu4SwPazgjZL/vb+ZBVYpQAv7fDZhFZE=;
 b=P8Sg2nDhxr55tknRV9E2GlAnuG1T3/pw+P3Ne9l3w+zj4N99tyCG66so4M4DEuMv41
 n9LZoBJ9PU72zOlK6Pl5pHfK8A26nuNtFPNKJDF6mvjbTsQ8DP2Ifc541NaX/HIFO8xF
 bRfJOV5JSoc791Hn0OhcjMfHWGeJJzPywcHYV5HVy4MGbdgBOt1GE7WM69RDIx4Fy1EF
 HqcOa0I/a0eda6IDnoZ9aFRbnR67MDXOJA1o7xL0XbBQnf/yctDZq0l3hdZQPnZrygHS
 3iU2FMd6qFK3UBDlr8j4Yn46R+EdqcU+LkJaX8t1afBVlb+S7B/NoWZi0AZFdXtf3IJ5
 IKtg==
X-Gm-Message-State: APjAAAVJBTWUzxFoVwiljEgaJJ4QKjikrDlbiqMMCz8gV3nyt8l1f6kj
 le6gtNQgmXEMx8mvUssxInK0kHFsQNy2pKd6aBs=
X-Google-Smtp-Source: APXvYqxQnAXjZ2FScZGzWGnCJL7TazXr3Vzv/qUHY4BD+oXlsMcT/evGhoQIlSPO9me05dI/q9a+Wue/evB/Qy6wSDs=
X-Received: by 2002:a37:4549:: with SMTP id s70mr3535919qka.259.1574272115953; 
 Wed, 20 Nov 2019 09:48:35 -0800 (PST)
MIME-Version: 1.0
References: <CAPaFbat4MM0=iVB-VazTK9=2qRebAgEN4euYCTESRo3yfx75Kw@mail.gmail.com>
 <20191119233633.GG25745@shell.armlinux.org.uk>
 <CAPaFbatG+ePwjCnBva1tfmzmvpHZv9xW3nM4gj2DTpFn=D+9Vg@mail.gmail.com>
 <2cd3e872-57d5-5cbb-78d7-98da6447dc59@arm.com>
 <392e74d78b48e04040cedfc26ed8ce81@www.loen.fr>
 <CAPaFbavWjCJKjUN6nA8Gc4urAMzLt-YVB4ED5DVarenrvMgnvQ@mail.gmail.com>
 <20191120171427.GT25745@shell.armlinux.org.uk>
In-Reply-To: <20191120171427.GT25745@shell.armlinux.org.uk>
From: Leonid Movshovich <event.riga@gmail.com>
Date: Wed, 20 Nov 2019 17:48:24 +0000
Message-ID: <CAPaFbavnHvZj5voW=ttHC4Em7qS=Zn4sUMY0RfPShNSaB+QDNw@mail.gmail.com>
Subject: Re: [PATCH] irq-gic: select all CPU's selected in interrupt affinity
 settings
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_094838_052850_9C415E3C 
X-CRM114-Status: GOOD (  20.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (event.riga[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Marc Zyngier <maz@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 20 Nov 2019 at 17:14, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Wed, Nov 20, 2019 at 03:28:31PM +0000, Leonid Movshovich wrote:
> > On Wed, 20 Nov 2019 at 15:04, Marc Zyngier <maz@kernel.org> wrote:
> > >
> > > On 2019-11-20 01:15, Robin Murphy wrote:
> > > > On 2019-11-20 12:24 am, Leonid Movshovich wrote:
> > > >> On Tue, 19 Nov 2019 at 23:36, Russell King - ARM Linux admin
> > > >> <linux@armlinux.org.uk> wrote:
> > > >>>
> > > >>> On Tue, Nov 19, 2019 at 11:12:26PM +0000, event wrote:
> > > >>>> So far only a CPU selected with top affinity bit was selected.
> > > >>>> This
> > > >>>> resulted in all interrupts
> > > >>>> being processed by CPU0 by default despite "FF" default affinity
> > > >>>> setting for all interrupts
> > > >>>
> > > >>> Have you checked whether this causes _ALL_ CPUs in the mask to be
> > > >>> delivered a single interrupt, thereby causing _ALL_ CPUs to be
> > > >>> slowed down and hit the same locks at the same time.
> > > >>>
> > > >> Yes, I've checked this. No, interrupt is delivered to only one CPU.
> > > >> Also ARM GIC architecture specification specifically states in
> > > >> chapter
> > > >> 3.1.1 that hardware interrupts are delivered to a single CPU in
> > > >> multiprocessor system ("1-N model").
> > > >
> > > > But see also section 3.2.3 - just because only one CPU actually runs
> > > > the given ISR doesn't necessarily guarantee that the others *weren't*
> > > > interrupted. I'd also hesitate to make any assumptions that all GIC
> > > > implementations behave exactly the same way.
> > >
> > > What happens is that *all* CPUs are being sent the interrupt, and there
> > > is some logic in the GIC that ensures that only one sees it (the first
> > > one to read the IAR register). All the other see a spurious (1023)
> > > interrupt, and have wasted some precious cycles in doing so.
> >
> > Cycles are only precious when system is under high load. Under high
> > load, to achieve fair spread of interrupts between CPUs one would need
> > a userspace app (irqbalance) to sit there and constantly rebalance
> > smp_affinity based on /proc/interrupts. Hard to believe such an
> > approach wastes less cycles.
>
> So you have no idea how irqbalance works...

Here is the one from github
(https://github.com/Irqbalance/irqbalance/blob/master/irqbalance.c#L257)
gboolean scan(gpointer data __attribute__((unused)))
{
   ....
   clear_work_stats();
   parse_proc_interrupts(); <----
   ....
    // few more parse_proc_interrupts here
   ....
    calculate_placement();
    activate_mappings();  <---- finally this guy sets irq affinities
through procfs
    ....
}
And here is main loop setup:
    main_loop = g_main_loop_new(NULL, FALSE);
    last_interval = sleep_interval;
    g_timeout_add_seconds(sleep_interval, scan, NULL);
    g_main_loop_run(main_loop);

So unless your irqbalance is significantly different from the one from
github, that's exactly what he does: every sleep interval seconds it
parses /proc/interrupts and changes affinities to make sure his target
multiparameter balance is maintained

>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
