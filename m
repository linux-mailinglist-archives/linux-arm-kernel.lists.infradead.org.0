Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24EAB1DE19D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 10:16:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ADDO7WGIgV3oZiDb13msuRMFXtiXrW8OtX0aW7iLzM=; b=kE3IIVk8Ih2NRY
	/lKE/NFKZZ6HXoImCaQ+qdOyl4piBxNBu+AZn7NcwfdVxhW15s3fALU8QtD7UERqSiNcik2drfhfw
	CaB+siJqtlNJ0I31HXNSVdk9wgDEoWncofmgpSNvQpCA7sNLl5boyzbPzpwQk74jguOoa1btdHTNi
	GslgpkBHopz1GdJYDw0pfl5yh6eScnKFGYjrN/skHbAoThHAmOY7lkMnbu3wlMt/FDPt0ViSbnZh4
	AOyWfd24+E7uKyowlXrPXvqIYZIu2KhRy67VWJ0e849pP5L3fMc+RLNQBCGT3+mi3i0FyWpHnOaMh
	ANautrh//XySm7OSbrjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc2r2-0006tI-SC; Fri, 22 May 2020 08:16:32 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc2qr-0006qY-Cn
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 08:16:24 +0000
Received: from mail-qk1-f170.google.com ([209.85.222.170]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MXYAj-1jY2EZ01IV-00Z3Ii for <linux-arm-kernel@lists.infradead.org>; Fri,
 22 May 2020 10:16:16 +0200
Received: by mail-qk1-f170.google.com with SMTP id z80so10000768qka.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 01:16:15 -0700 (PDT)
X-Gm-Message-State: AOAM533CWG5kqRVGB5atYoQ+l/Pmnxlqe7Em5YK6TnfZ8jeGejqHOsZG
 6eNnrF1D6PLKMhKaPLQroMEjxh+KIVbavd8uk2k=
X-Google-Smtp-Source: ABdhPJyQdO+xSt1QK4ut6iik4+5LErexuR6SblIdxrGX0BzwgSfUZPUnET2rcXYkZic73JJgjyF5nTuXtMr2sHBcqQM=
X-Received: by 2002:a37:908:: with SMTP id 8mr481342qkj.3.1590135374930; Fri,
 22 May 2020 01:16:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200507091008.1bd38185@canb.auug.org.au>
 <CACPK8XfOJqj=E4JwQsZWvAsp7cv=bjqj2twZk0=MR+ZJQP1nqQ@mail.gmail.com>
 <CACPK8XcUydETZvJEkWPvLnLXatAg3D-MfA1yeDzE0epc-hisJQ@mail.gmail.com>
 <CAL_JsqJWXH4JMZgRQa9r_aPLW6Muz6BRtf_NmeqJv21Aefji1A@mail.gmail.com>
 <CACPK8Xd4651vtBTbBoGk0G7daunmF2CCOsDZ-ceto7Yu6A5z5g@mail.gmail.com>
 <20200522101638.052bd0a2@canb.auug.org.au>
In-Reply-To: <20200522101638.052bd0a2@canb.auug.org.au>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 22 May 2020 10:15:58 +0200
X-Gmail-Original-Message-ID: <CAK8P3a323rPCDDws+us4UYo7ZO6XvkZ13hBChZ40_DwCxBZj_g@mail.gmail.com>
Message-ID: <CAK8P3a323rPCDDws+us4UYo7ZO6XvkZ13hBChZ40_DwCxBZj_g@mail.gmail.com>
Subject: Re: linux-next: build warning after merge of the aspeed tree
To: Stephen Rothwell <sfr@canb.auug.org.au>
X-Provags-ID: V03:K1:qJS/uv5BAxtnTqkCIThHHIQxvY6jj18mi0dcqQnfA31ik2BCVX9
 cufOciSg6U4jxUN0d9sOj3IvUOylvv8dbAONeQxnFM7jVXu/GoHrA5tjMn1ebbD5Ao9EdKa
 k9NgHiEBCgQmzIR0ujz9czaYGAT9CtXMfq1AGcJWMS1EJdVF4tRpxkMzZhHlYeSFHC+/pEk
 JVPAxtl4kZ9nFp9zzdcug==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:yJ+UDVO0Esk=:F7X+FeHn+dJ+Ef29cN3dQT
 krcdQc7V88RBqoncH7Fzk4DoT+UVICkh7ihSHqhU0M4LgLz6V+BxYdSyn4X2dwyYSy2VEIFQa
 4xgBYqfe7t8SyCLz0cw5uStV+gQv5i8xGdI/SmTcIPkEBTGqhcB9PPLB0xR46Bxt80dcb+ABC
 pJgZTkPb7fe/etcgKOVTdByMpxsjcMqW75YsLCCJIqfRILRAPGYiYgNFKsU3VsUlSSST19SWH
 vcCBQ4HMnTSml+ASLZO0OvrmGdwgc9Hf7SXCx6bdt84Cl9OMTzHeY2eaghWo1JLjdfnrCRt/b
 o0lb4fv3AnyuEuQL5ERaXxMUQuWdKgOGAcUkdzx7bNgG+yHfeEhRu42MoQmYjui15cAeHcuGf
 ZRI/pHETRywW9pxYe2gFf/wMM5iGMjna63R7mQ+oTd9CK9PApqP+YXYiay/4B/qm4AxCZe6wC
 48m0blQSnUYLPc61mEm94c6fsPk9h4P5QAby+3qdyLJU9mZ0GqdDnI1n9juTzzdxOAtzlKpbW
 hRZliOVO39J5gkPTHwjjP2HcZ48PbdawH68Nvh4yRVT/OxkGA2zQ7n5e49QdYeCNrlJkUM5Fs
 ExSOt0b/ZkBAsNWdSpB86y2kia1HbN5W10T5N5iSQRLwT4aykGnDqqRjZJ3Oe5AsC2YiI1GqC
 o/o51IvZufsnApzIxdnt0kcdHz68ysiAQmvxQgDCrYon7VmldTxgMa+wcBwhL+CEEeGL73L19
 o55MZgfWMOl/rKsERh3u76WkUhGep3FDLK/KmoN2aBK7tRcvOZRVaprjWfwiUpcNcLZPrDz47
 PvC0ctTAJm8F9eqp7LrxMBD9GbZqAZKXjwBY6XpnamjRLBSRao=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_011623_317339_829BA4D9 
X-CRM114-Status: GOOD (  19.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.73 listed in wl.mailspike.net]
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
Cc: ARM <linux-arm-kernel@lists.infradead.org>,
 devicetree <devicetree@vger.kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vijay Khemka <vkhemka@fb.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Olof Johansson <olof@lixom.net>,
 Manikandan Elumalai <manikandan.hcl.ers.epl@gmail.com>,
 Devicetree Compiler <devicetree-compiler@vger.kernel.org>,
 David Gibson <david@gibson.dropbear.id.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 2:16 AM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> On Wed, 20 May 2020 07:56:36 +0000 Joel Stanley <joel@jms.id.au> wrote:
> > On Mon, 11 May 2020 at 15:19, Rob Herring <robh+dt@kernel.org> wrote:
> > > On Wed, 6 May 2020 at 23:13, Joel Stanley <joel@jms.id.au> wrote:
> > > > > These are IPMB nodes with the SLAVE_ADDRESS bit set:
> > > > >
> > > > > +&i2c5 {
> > > > > +       //Host3 IPMB bus
> > > > > +       status = "okay";
> > > > > +       multi-master;
> > > > > +       ipmb5@10 {
> > > > > +               compatible = "ipmb-dev";
> > > > > +               reg = <(0x10 | I2C_OWN_SLAVE_ADDRESS)>;
> > > > > +               i2c-protocol;
> > > > > +       };
> > > > >
> > > > > This is a correct entry, so dtc should not warn about it.
> > > >
> > > > I sent a patch for dtc here:
> > > > https://lore.kernel.org/lkml/20200508063904.60162-1-joel@jms.id.au/
> > >
> > > Patches for dtc need to be against upstream dtc. There's already a
> > > similar patch posted for it which I commented on and never saw a
> > > respin.
> >
> > Can I suggest some instructions in scsripts/dtc explaining that you
> > don't take patches in the kernel tree for this code?
> >
> > I've sent the patch so it applies to the dtc tree. It would be good to
> > see that change propagate over to -next as others have reported this
> > warning.
>
> These warnings now appear in the arm-soc tree.

Right, I also saw them earlier.

Joel, have you sent your patch to David Gibson for integration into
upstream dtc?
I don't know who sent the other patch, but as long as one of them
gets merged, I'd hope we can pull that into kernel as well.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
