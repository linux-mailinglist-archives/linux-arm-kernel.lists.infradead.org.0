Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C09D2009
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 07:32:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fLq3xyrRZ4Ab/Pz96eI4myfHxOi25SxwHgLwCqAs7j4=; b=S7qwZ1bZRBbTV5
	qSLSRZMn53WIKb1kgXlKJ24F76wEIrTgbUS48yFazxqqPXZJ938gEgBFtYgpfCHrelxBTeOgTFRAi
	LJoAJSlm7vB0TGWnfuCXgTheoxv/e1nGBgCA8SjGGyDqv+e+jCyPTJnoU4lqeQST7dAR8amhaFsZW
	djx6H1AS18ifP2e5LeE082krGX3TrikwXvzjXLCQ7r9QAQXzdKp6P0lNkcLnKIht3ZTdHQdEnIQr/
	o1Ncz37xPiauhnyUEVUzQA2yLxZE78DtdS5DH++HxgTBlRAyzPaofyjRu84ggy+bmniUfv03z9mEd
	TCRLbEzWCb45IaD37I0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIR3T-0006Dt-Ll; Thu, 10 Oct 2019 05:32:03 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIR3L-0006D0-Ii
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 05:31:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XeuI5MFAYgl9UB+btYOjqdBCVNCwwywBGKPVGC8hSLM=; b=Iirjc6UetbEOoDwIi/1ND3/1pc
 f2Unf42Nl35GLD7oTlmfwvvci1/NxbR6QxE6kSz6nNXsVxE6c/tS1PZe+wwPwYTbxKAZqcoOiJitP
 kWTPW23fWQmeiG1xoozjRkOxJnB0o8VQOHwe+qIdZ6YrTvi6RmeQZ7TfETPokmaZP568=;
Received: from ip-109-41-65-123.web.vodafone.de ([109.41.65.123]
 helo=localhost)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1iIR33-0002Aa-Vm; Thu, 10 Oct 2019 07:31:38 +0200
Received: from localhost ([::1]) by localhost with esmtp (Exim 4.89)
 (envelope-from <andreas@kemnade.info>)
 id 1iIR31-0004zE-5i; Thu, 10 Oct 2019 07:31:35 +0200
Date: Thu, 10 Oct 2019 07:31:29 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: Jonathan =?ISO-8859-1?Q?Neusch=E4fer?= <j.neuschaefer@gmx.net>
Subject: Re: [PATCH v2 2/3] ARM: dts: add Netronix E60K02 board common file
Message-ID: <20191010073129.607f7b6f@kemnade.info>
In-Reply-To: <20191006223848.GE19803@latitude>
References: <20190930194332.12246-1-andreas@kemnade.info>
 <20190930194332.12246-3-andreas@kemnade.info>
 <20191006223848.GE19803@latitude>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; i686-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_223155_770424_B6A5AEAE 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, marex@denx.de, devicetree@vger.kernel.org,
 andrew.smirnov@gmail.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 angus@akkea.ca, linux-kernel@vger.kernel.org,
 Marco Felsch <m.felsch@pengutronix.de>, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, manivannan.sadhasivam@linaro.org,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jonathan,

On Mon, 7 Oct 2019 00:38:48 +0200
Jonathan Neusch=E4fer <j.neuschaefer@gmx.net> wrote:

> Thanks for CCing me on this patchset. Nice to see more e-book reader
> related work!
> =

btw. seems that we have a common target, since our ebook readers both
have a tps65185. It seems to be a good idea to comment things on the
i2c busses without proper bindings. That might help to find allies.

I will send a v3 with correct memory, better name for GLED
and the above-mentioned comments.

Regards,
Andreas

> A few comments and questions below.
> =

> On Mon, Sep 30, 2019 at 09:43:31PM +0200, Andreas Kemnade wrote:
> > The Netronix board E60K02 can be found some several Ebook-Readers,
> > at least the Kobo Clara HD and the Tolino Shine 3. The board
> > is equipped with different SoCs requiring different pinmuxes.  =

> =

> Do I understand it correctly that i.MX6SL and i.MX6SLL are pin-
> compatible so we can use the same pin numbers and GPIO handles in the
> DT?
> =

> > +	leds {
> > +		compatible =3D "gpio-leds";
> > +		pinctrl-names =3D "default";
> > +		pinctrl-0 =3D <&pinctrl_led>;
> > +
> > +		GLED {  =

> =

> What does "GLED" mean? It's not obvious to me.
> What user-visible purpose does this LED have, or where is it on the
> board?
> =

> > +			gpios =3D <&gpio5 7 GPIO_ACTIVE_LOW>;
> > +			linux,default-trigger =3D "timer";
> > +		};
> > +	};
> > +
> > +	memory {
> > +		reg =3D <0x80000000 0x80000000>;  =

> =

> 2 GiB of memory?
> =

> > +			/* Core3_3V3 */  =

> =

> What are these labels (Core3_3V3, Core4_1V2, etc.)?
> =

> > +			dcdc2_reg: DCDC2 {
> > +				regulator-name =3D "DCDC2";
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +				regulator-state-mem {
> > +					regulator-on-in-suspend;
> > +					regulator-suspend-max-microvolt =3D <3300000>;
> > +					regulator-suspend-min-microvolt =3D <3300000>;
> > +				};
> > +			};  =

> =

> =

> Thanks,
> Jonathan Neusch=E4fer

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
