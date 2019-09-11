Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B35EAB0231
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 18:55:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yjA9M61dsRUrs1BipaU670BuGwltQt7xkwHq0+DvL9k=; b=bP6gM1JmWl+wLs
	icc6YYxyAoIj0RNbUyLPysOZcfabAjf/WV8fVXQt+ltW1G1V3wmCJak7oLU99EYOR/gWHNfQg3eys
	75DBZR/eWg5JNiMk6f6oTsfP4KLCKK8VrsOF5P53KOegDq+Jb3ZrPKQoxekOLeKF2ezgQmoQIU/Vr
	ga9iEgNuZY6vSXEQaJTbNmOhpfNMSU2uJ0k/IckE8lGQRL3qR4WB/Xr7iNVVpM8MZ675ghTZM11wD
	rMCemvVHeHWx3T4/fJDXM18S5mbtbFtrLag5qNTHhyf2Pay6wLcBV7MfWfuRK9sZ486F1OW8Mbhle
	Y1uo8Rs/TqbkteRkqNrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i85uD-0004xs-Tz; Wed, 11 Sep 2019 16:55:46 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i85tp-0004xJ-Gq
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 16:55:23 +0000
Received: by mail-io1-xd42.google.com with SMTP id k13so32248276ioj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 09:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=x17kcwTzLlp3AfSaKdZGwJQ4xIT8JG2uuYs3ld3gBdQ=;
 b=Or3of+ZM/yv75Ya1r+oOFZduWrVp1tGDuHRoCdr6HUO6H1JxbI1Y312hqPrDR2oHYy
 Kcv65TaVSQnM4k6Qp/25n9MvyICvzQcmj0TWnWhjwlkGScxgxlKpPWkAx4uRnlmK9MmP
 0PkahmtEzEWmSDw6BPjKAKdOaL9/W7AgPVnDElH/kDjUHRCQzq9yIu8DXKw0L4SuZgMV
 VVlP9upAsFnT79nxa7qO7mN5r13x4v7wyl+K0+BnSTykGhRLVTdq00w+aSWxC+/rjYK1
 K4B4Ox8b3NW13YdFCweUiKqMcDIwnGYm7Zb3fYQgUiUWyWkuI8MgFBvIXXq+qbxZd4ok
 CWPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=x17kcwTzLlp3AfSaKdZGwJQ4xIT8JG2uuYs3ld3gBdQ=;
 b=BU6nIye0l3gTnTLTEa/oPanSXACVgzgyQEZwEwX/zVd7Nq77A8U+g9QAzwahVW6J5s
 rLdpGXTKdxy639tFiKizCZv0Po4/V31oHpztY6s4XGeWxRncENsaeDSRVufdc+NXuLzG
 ndMejVSqcgpiKVwXYXHyb97QryZ3GEXo2eMoWBwrg83f8av3Ntf/wVNcdDUf/G+2D2wb
 JA7uvCMlY8s7asPeIFKRdq1/Z4VO5e6ACLXSggQTM6KRlpzMv2VmPhyST0m7WAd9fk7X
 qcFLu5Qv70djZlTyTtt0pA0goikyftXHA41iQVs2sWxsn3a+DEyaMacqGnm5m3/FyWbD
 7+Zg==
X-Gm-Message-State: APjAAAWWbUYSODkHN2TJwWvp4DI0uMUrB+MtL04KEnQw0mLEFD/nOUlf
 qq2/dSGxhGQzrlHNGjBrHw31t1jYaThYylyTy8I=
X-Google-Smtp-Source: APXvYqwpx89BGLysU2GSOowdBNkAvpvNXZaPuDIzD466qjSq4YPYqpsgCVd+LCc0T0bwN/jNMczZiKyEr5liu4d2ehg=
X-Received: by 2002:a6b:1646:: with SMTP id 67mr147961iow.11.1568220920591;
 Wed, 11 Sep 2019 09:55:20 -0700 (PDT)
MIME-Version: 1.0
References: <1567004515-3567-1-git-send-email-peng.fan@nxp.com>
 <1567004515-3567-2-git-send-email-peng.fan@nxp.com>
 <20190909164208.6605054e@donnerap.cambridge.arm.com>
 <CABb+yY2rppSOgqMy+R294d94xwi5UPR55Eo-WB8KA6m11nG3iQ@mail.gmail.com>
 <20190911160308.30878cc3@donnerap.cambridge.arm.com>
In-Reply-To: <20190911160308.30878cc3@donnerap.cambridge.arm.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Wed, 11 Sep 2019 11:55:09 -0500
Message-ID: <CABb+yY1oZxvX+mRNmObAHsGoBfN0F4GO+9PSj06EFaF3DsnstA@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
To: Andre Przywara <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_095521_566060_E182A756 
X-CRM114-Status: GOOD (  27.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jassisinghbrar[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 10:03 AM Andre Przywara <andre.przywara@arm.com> wrote:
>
> On Tue, 10 Sep 2019 21:44:11 -0500
> Jassi Brar <jassisinghbrar@gmail.com> wrote:
>
> Hi,
>
> > On Mon, Sep 9, 2019 at 10:42 AM Andre Przywara <andre.przywara@arm.com> wrote:
> > >
> > > On Wed, 28 Aug 2019 03:02:58 +0000
> > > Peng Fan <peng.fan@nxp.com> wrote:
> > >
> [ ... ]
> > >
> > > > +
> > > > +  arm,func-ids:
> > > > +    description: |
> > > > +      An array of 32-bit values specifying the function IDs used by each
> > > > +      mailbox channel. Those function IDs follow the ARM SMC calling
> > > > +      convention standard [1].
> > > > +
> > > > +      There is one identifier per channel and the number of supported
> > > > +      channels is determined by the length of this array.
> > >
> > > I think this makes it obvious that arm,num-chans is not needed.
> > >
> > > Also this somewhat contradicts the driver implementation, which allows the array to be shorter, marking this as UINT_MAX and later on using the first data item as a function identifier. This is somewhat surprising and not documented (unless I missed something).
> > >
> > > So I would suggest:
> > > - We drop the transports property, and always put the client provided data in the registers, according to the SMCCC. Document this here.
> > >   A client not needing those could always puts zeros (or garbage) in there, the respective firmware would just ignore the registers.
> > > - We drop "arm,num-chans", as this is just redundant with the length of the func-ids array.
> > > - We don't impose an arbitrary limit on the number of channels. From the firmware point of view this is just different function IDs, from Linux' point of view just the size of the memory used. Both don't need to be limited artificially IMHO.
> > >
> > Sounds like we are in sync.
> >
> > > - We mark arm,func-ids as required, as this needs to be fixed, allocated number.
> > >
> > I still think func-id can be done without. A client can always pass
> > the value as it knows what it expects.
>
> I don't think it's the right abstraction. The mailbox *controller* uses a specific func-id, this has to match the one the firmware expects. So this is a property of the mailbox transport channel (the SMC call), and the *client* should *not* care about it. It just sees the logical channel ID (if we have one), which the controller translates into the func-ID.
>
arg0 is special only to the client/protocol, otherwise it is simply
the first argument for the arm_smccc_smc *instruction* controller.
arg[1,7] are already provided by the client, so it is only neater if
arg0 is also taken from the client.

But as I said, I am still ok if func-id is passed from dt and arg0
from client is ignored because we have one channel per controller
design and we don't have to worry about number of channels there can
be dedicated to specific functions.

> So it should really look like this (assuming only single channel controllers):
> mailbox: smc-mailbox {
>     #mbox-cells = <0>;
>     compatible = "arm,smc-mbox";
>     method = "smc";
>
Do we want to do away with 'method' property and use different
'compatible' properties instead?
 compatible = "arm,smc-mbox";     or    compatible = "arm,hvc-mbox";

>     arm,func-id = <0x820000fe>;
> };
> scmi {
>     compatible = "arm,scmi";
>     mboxes = <&smc_mbox>;
>     mbox-names = "tx"; /* rx is optional */
>     shmem = <&cpu_scp_hpri>;
> };
>
> If you allow the client to provide the function ID (and I am not saying this is a good idea): where would this func ID come from? It would need to be a property of the client DT node, then. So one way would be to use the func ID as the Linux mailbox channel ID:
> mailbox: smc-mailbox {
>     #mbox-cells = <1>;
>     compatible = "arm,smc-mbox";
>     method = "smc";
> };
> scmi {
>     compatible = "arm,scmi";
>     mboxes = <&smc_mbox 0x820000fe>;
>     mbox-names = "tx"; /* rx is optional */
>     shmem = <&cpu_scp_hpri>;
> };
>
> But this doesn't look desirable.
>
> And as I mentioned this before: allowing some mailbox clients to provide the function IDs sound scary, as they could use anything they want, triggering random firmware actions (think PSCI_CPU_OFF).
>
That paranoia is unwarranted. We have to keep faith in kernel-space
code doing the right thing.
Either the illegitimate function request should be rejected by the
firmware or client driver be called buggy.... just as we would call a
block device driver buggy if it messed up the sector numbers in a
write request.

thnx.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
