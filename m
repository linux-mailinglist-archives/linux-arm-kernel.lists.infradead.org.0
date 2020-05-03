Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 077641C2CFB
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 16:18:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LJPeZT+mW8yZpVUg2u4BbyMhhDvmEV2Up7vmXHXOf80=; b=iqqYA2b/g8k40EF8XxOgKpZTq
	Uy52C9HzsnGJ7A9sZ1UwdOfEsHpd8h/DUMMDk+Cqjf+VBksGtlHMf7WbJm7yCyWLBNH9YN8h70zAu
	pYFY2K3zzLlAoH01BWHMPepeH1hVi+wqvnDor5kfc/lu7FNPtFlna7qXznAbNJvCHhrboC+tFSUR/
	a5Nv47kPsj2kprD32TDOPeXL+DLCpuhwS4smTLt8JNLaIfnN/NFFpVqDe3+znKPU+NJGySh27J4ep
	cYNcNRvx+Lh//mbr2DLhYzTvq532EeyC+T9YF4ASXkwWsAXFyaE3RtnlxYn8QKaRGIPbr+r4/xnij
	ySCPoFLeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVFS5-0004Qk-5y; Sun, 03 May 2020 14:18:41 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVFRx-0004P5-R0
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 14:18:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1588515503; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vYs6wssFrETsp+qNNeSVPy/cndj0TdQNmxHWM359UFk=;
 b=Lr0jnkGAF04IuHztE3Vp3y/0o/vkczf8c9TJAZ28yBffO0sSmhtzfMKHriQll2mRqDs/xN
 NxcOAyO7VIz0bPGThARTJMimaMOcDyAsoeqrsNCyCQ75L2aQPud1w6ym8anwTY/5plN3Ri
 pkBpVwx4gSou1l8VxpNLyx4JtfpQYI4=
Date: Sun, 03 May 2020 16:18:08 +0200
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH v7 01/12] dt-bindings: add img, pvrsgx.yaml for Imagination
 GPUs
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Message-Id: <8EER9Q.C206SXNSICP7@crapouillou.net>
In-Reply-To: <3D8B59D6-83E3-4FE6-9C99-E2E5616A8139@goldelico.com>
References: <cover.1587760454.git.hns@goldelico.com>
 <3a451e360fed84bc40287678b4d6be13821cfbc0.1587760454.git.hns@goldelico.com>
 <NMCE9Q.LWG45P20NBVJ@crapouillou.net>
 <28138EC0-0FA5-4F97-B528-3442BF087C7A@goldelico.com>
 <TEAR9Q.6HI5DFRO5U0I3@crapouillou.net>
 <3D8B59D6-83E3-4FE6-9C99-E2E5616A8139@goldelico.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_071834_255043_0B213FD8 
X-CRM114-Status: GOOD (  32.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 James Hogan <jhogan@kernel.org>, Jonathan Bakker <xc-racer2@live.ca>,
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, letux-kernel@openphoenux.org,
 Paul Burton <paulburton@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, devicetree@vger.kernel.org,
 =?iso-8859-1?q?Beno=EEt?= Cousson <bcousson@baylibre.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Daniel Vetter <daniel@ffwll.ch>, kernel@pyra-handheld.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



Le dim. 3 mai 2020 =E0 15:31, H. Nikolaus Schaller <hns@goldelico.com> a =

=E9crit :
> Hi Paul,
> =

>>  Am 03.05.2020 um 14:52 schrieb Paul Cercueil <paul@crapouillou.net>:
>> =

>>>>  It's possible to forbid the presence of the 'clocks' property on =

>>>> some implementations, and require it on others.
>>>  To be precise we have to specify the exact number of clocks =

>>> (between 0 and 4) for every architecture.
>>>  This also contradicts my dream to get rid of the architecture =

>>> specific components in the long run. My dream (because I can't tell =

>>> how it can be done) is that we can one day develop something which =

>>> just needs compatible =3D img,530 or imp,540 or img,544. Then we =

>>> can't make the number clocks depend on the implementation any more.
>> =

>>  As we said before, the number of clocks is a property of the GPU =

>> and *not* its integration into the SoC.
> =

> Well, it is a not very well documented property of the GPU. We have =

> no data sheet of the standalone GPU. Only several SoC data sheets =

> which give some indications.

Maybe we can nicely ask them?

I expect Paul Burton to have some contacts at ImgTec. Asking for a doc =

would be too much, but maybe they can help a bit with the DT bindings.

> It appears as if some sgx5xx versions have 3 clocks and some have 4. =

> So you are right, the number of clocks depends on the sgx5xx version =

> and that could be made dependent in the bindings (if necessary).
> =

>> =

>>  So you would *not* have a number of clocks between 0 and 4. You get =

>> either 0, or 4, depending on whether or not you have a wrapper.
> =

> I think this is contradicting your previous sentence. If the number =

> of clocks is a property of the GPU and not the integration it must =

> also not depend on whether there is a wrapper. I.e. it must be a =

> constant for any type of integration.

Well, I expected all SGX versions to have 4 clocks.

If some SGX versions have 3 clocks, and others have 4 clocks, it's =

still OK as long as the number of clocks is enforced, so that all =

implementations of a given SGX core will have to use the same number of =

clocks.

> The really correct variant would be to always make the SoC =

> integration (wrapper) a separate subsystem (because it is never part =

> of the SGX core but some interface bus) and clock provider and =

> connect it explicitly to the clock inputs.

About the wrapper... I don't really know how it's done there. But you =

could very well pass all clocks unconditionally to the SGX node, even =

if it's inside a wrapper.
The wrapper itself probably needs only one clock, the one that allows =

it to access its registers.

> To be clear: I am not at all against describing the clocks. I just =

> doubt that the time we invest into discussing on this level of detail =

> and adding conditional clock requirements is worth the result. IMHO =

> the bindings and .dts do not become better by describing them in more =

> detail than just "optional". It just takes our time from contributing =

> to other subsystems.
> =


You have a new SoC with a SGX, and you only need to enable one clock to =

get it to work. So you create a devicetree node which receives only one =

clock.

Turns out, that the bootloader was enabling the other 3 clocks, and =

since the last release, it doesn't anymore. You're left with having to =

support a broken devicetree.

That's the kind of problem that can be easily avoided by enforcing the =

number of clocks that have to be provided.
>> =

>> =

>>>>  See how it's done for instance on =

>>>> Documentation/devicetree/bindings/serial/samsung_uart.yaml.
>>>  Yes I know the design pattern, but I wonder if such a move makes =

>>> the whole thing even less maintainable.
>>>  Assume we have finished DTS for some SoC. Then these DTS have been =

>>> tested on real hardware and are working. Clocks are there where =

>>> needed and missing where not. We may now forbid or not forbid them =

>>> for some implementations in the bindings.yaml but the result of =

>>> dtbs_check won't change! Because they are tested and working and =

>>> the bindings.yaml has been adapted to the result. So we have just =

>>> duplicated something for no practical benefit.
>>>  Next, assume there is coming support for more and more new SoC. =

>>> Then, developers not only have to figure out which clocks they need =

>>> in the DTS but they also have to add a patch to the implementation =

>>> specific part of the bindings.yaml to clearly define exactly the =

>>> same what they already have written into their .dts (the clocks are =

>>> either there for the of_node or they are not). So again the rules =

>>> are for no benefit, since a new SoC is introduced exactly once. And =

>>> tested if it works. And if it is there, it will stay as it is. It =

>>> is just work for maintainers to review that patch as well.
>> =

>>  If you add support for a new SoC, you'd still need to modify the =

>> binding to add the compatible string. So the argument of "more work" =

>> is moot.
> =

> Agreed, I forgot this aspect. Nevertheless, it is easier to review a =

> new compatible string than a new clock number rule (question: how do =

> you practically review this? By looking if it does match the DTS?).
> =

> We have to add the compatible string as long as we need to have the =

> SoC name in the compatible string (which as said is my dream to get =

> rid of in far future). If we could get rid of it, there won't be a =

> change any more. By just taking "img,sgx544" into a new SoC. The =

> change would be moved into SoC specific wrappers. In such an ideal =

> world, we would explicitly describe the wrappers as separate DT =

> nodes. Even if they have no explicit driver (e.g. by some =

> simple-pm-bus).

What's wrong with having the SoC name in the compatible string?

You cannot use just a "img,sgx544" compatible string, as then you would =

assume that the same SGX version in (e.g.) an Ingenic or a Omap SoC is =

the exact same. This may actually be true. But the moment you discover =

even a tiny thing that needs to be handled differently, you wouldn't =

have the possibility to do so.

>                    PRCM,bus,
> Processor <<---->> Wrapper <<----->> SGX
> ti,...             ti,sysc           img,sgx530
> img,...            simple-bus        img,sgx540
> samsung,...        ...               img,sgx544
> other,             other,gpu-wrapper img,...
> =

> But this IMHO correct proposal was already rejected.
> =

> So at the moment we are circling around several proposals because =

> none can fulfill all requirements.
> =

> Therefore my attempt to solve the gordian knot is to make clocks =

> generally optional. This keeps the bindings simple but not generally =

> wrong. And since the DTS are not only tested against bindings.yaml =

> but on real hardware, the omission to enforce a specific number of =

> clocks doesn't harm anyone. As said it is impossible to get the SGX =

> running without defining the correct clocks (whether they are =

> enforced by bindings.yaml or not).

That's what I tried to explain above. You'd be able to get the SGX to =

work without a single clock in devicetree. That doesn't mean it should =

be allowed.

Cheers,
-Paul



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
