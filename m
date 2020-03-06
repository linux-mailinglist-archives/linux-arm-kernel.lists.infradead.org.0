Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3369717C0E1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 15:50:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CerYgGsNHvzox3I0C3+5SB4HOu4mT+QzzaE9+VlQy5Y=; b=s/v0xO/lgR362N
	ftgovRlqfvaiy5IVp5OgaTGTyaOeZH78RqyfLPawbr83maTddfrvBXcXEp6V8g2IMoQ45u8naGqlJ
	28V+Eb9ORBaPElMzTxWWn3JdWUHlpS+5EzxnTuk4Cn+iDr5npSNc271pc1bxL8koZz2VR2u0DslaK
	EXuvVacO/HRpIRGwGIOl60cYff8/bYeDmlDkoVNVWAPrH4jpK/69wPCQFcJcFzXLXQS6P4v3sCPnZ
	WH4tmKvG2lqFU1yIRnI8LxAUwPK1Sxqr8SWuPdRGC/D5gRUb0TyZeyd8mKqUerFDzT26z5ldSRS6K
	e5qRTik2B69t4jwPqQEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAEIz-0007rV-Kc; Fri, 06 Mar 2020 14:50:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAEIr-0007qP-9g
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 14:50:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6E4C41FB;
 Fri,  6 Mar 2020 06:50:16 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 042463F237;
 Fri,  6 Mar 2020 06:50:14 -0800 (PST)
Date: Fri, 6 Mar 2020 14:50:03 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Subject: Re: [PATCH v2 4/4] cpuidle: psci: Allow WFI to be the only state for
 the hierarchical topology
Message-ID: <20200306144951.GA11624@bogus>
References: <20200304122312.GE25004@bogus>
 <CAPDyKFpcN-p6sKqB0ujHAY29qPSg7qpSjYGymPaJ4W8jgCKGcg@mail.gmail.com>
 <20200305162321.GB53631@bogus>
 <CAPDyKFogjPG+mRsfPaxN7RjB7TQL9=qHNzA=K_t0F6M6Q9-TuA@mail.gmail.com>
 <20200306100431.GA16541@bogus>
 <CA+M3ks764moVU2h9iZJuN6B-e4wBUMymBfPnob_zraf50xqezA@mail.gmail.com>
 <20200306120646.GB44221@bogus>
 <CA+M3ks7+P=CjvUE28boANhrR6bhzLzyjBLovzWL_LjwL3UqmzQ@mail.gmail.com>
 <20200306134119.GB47929@bogus>
 <CA+M3ks5XBFcJqQozA=k6nU2XawRYT_qKnLW9t_GdkoRGNEd1yA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+M3ks5XBFcJqQozA=k6nU2XawRYT_qKnLW9t_GdkoRGNEd1yA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_065017_383375_6F81B93B 
X-CRM114-Status: GOOD (  20.95  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 06, 2020 at 03:44:33PM +0100, Benjamin Gaignard wrote:
> Le ven. 6 mars 2020 =E0 15:23, Sudeep Holla <sudeep.holla@arm.com> a =E9c=
rit :
> >
> > On Fri, Mar 06, 2020 at 01:32:59PM +0100, Benjamin Gaignard wrote:
> > > Le ven. 6 mars 2020 =E0 13:06, Sudeep Holla <sudeep.holla@arm.com> a =
=E9crit :
> > > >
> >
> > [...]
> >
> > > > Sure, please create a deeper CPU state than WFI and enter so that t=
he CPU
> > > > state is saved and restored correctly. What is the problem doing th=
at ?
> > >
> > > This state stop the clocks for all the hardware blocks and not only t=
he CPUs
> > > so we can't go on it while devices aren't suspended.
> > > I may have missed something but I don't believe that I could add this=
 kind of
> > > conditions in a cpu idle state, right ?
> > > In this state I need to be able to enable the wake up sources because
> > > it is the only
> > > for hardware block used as broadcast timer to wake up the system.
> > >
> >
> > We have discussed this in past in the thread I mentioned and may be
> > others too. It sounds like a broken hardware, sorry if I am wrong.
> > But this $subject patch is a hack to solve that and I am NACK-ing this
> > now. Please fix it adding another CPU level idle state, we are not
> > supporting without that and there is absolutely no need to.
>
> A CPU idle state only take care of CPU activities, right ? but before goi=
ng in
> the targeting state I need to be sure that the other hardware blocks
> are suspended.
> Is it possible to describe that in an idle state ?
> What sound broken ? is it because we need to setup the wake up sources ?
>

You said: " In DT I have one system power domain where the hardware blocks
(i2c,uart; spi, etc..) are attached + a power per CPU". Now since the CPU
stays in WFI always in this platform, it means it is always ON and you
can't vote to power down the magic "system power domain".

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
