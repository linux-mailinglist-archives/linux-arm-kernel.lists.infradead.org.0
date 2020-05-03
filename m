Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC38B1C2DFB
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 18:42:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5FB9f3lYI1SGTuiNipDl68aPqM+44z/g9gCTPtcb5Cw=; b=TfA1HBSUu63zVH
	AGIK2LiFx/k80P3Smo73OUQi2XvX3dkyqrpeBaEYmOQW2LOEpavAUfBUecGV4qk4C2w3WTAYp46vz
	WevE6AHD8VesbaE1z4XbUKP/mYxQkESK/YGpfz6iTPjpbOJj3kabJ8kVxTbmAGXpxPCJjgS7JNgZH
	PGs/GmZFR4qdqJ2myR+WE9U8gOIjII+oFYM/mD5gHT3SrjkAGsJL9xs0iYIOnroZcYzCQH/5+giGK
	Ksefupbld9GGuMWEZIRm1FlfKPFme6XV4YyLewqeMf7OdNT6Ko86Pre0HhdJueEAzcLT0nuurYHE8
	gaAQM4f3n8lVKslucdXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVHgh-0004Ix-C7; Sun, 03 May 2020 16:41:55 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVHga-0004Ib-CB
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 16:41:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1588524106;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=Xkyqq9TOzPnc6C4wkQvzAdvBRk4RdbrpDKkEHV4hxwk=;
 b=Mm8Zirxk4fKy1KmO0SQg9ymjDkjdiVTSPOLU7dcDVjw4LWuAE+aqJi3tRFqHEhMhYl
 mCgLEWeiDkHXr2VGn8JoEtZlTPIEbzHOCcoBc3LPG0v6rcffJdgmixaXIs1Pke9HVyNk
 h8VH1fD2QC7/7nNFX/icWCctgqN6dQkDwBPc4SPd81WLWZGv8BMQqq1SXyyd8uXW3KcY
 u4obr7WixZfb4c8zRPCGLy4u2b9GclTxP3KVCpJhmUBkvVSLY3vPO9Dh2iX3GRiQXlVE
 OK+I6VQWhvWV9oOzJhSIviLsoc64uUWYPQOMkKgb5sjPuWTRPAh/P0U5yNNYhuGXuZvd
 Ko7A==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBp5hRw/qOxWRk4dCynvDBS725e6UR5TA1LRUI0mSOzQLIBphoBM195"
X-RZG-CLASS-ID: mo00
Received: from [IPv6:2001:16b8:262f:cd00:140b:147e:e46a:645d]
 by smtp.strato.de (RZmta 46.6.2 AUTH) with ESMTPSA id R0acebw43Gfag60
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Sun, 3 May 2020 18:41:36 +0200 (CEST)
Subject: Re: [PATCH v7 01/12] dt-bindings: add img,
 pvrsgx.yaml for Imagination GPUs
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <8EER9Q.C206SXNSICP7@crapouillou.net>
Date: Sun, 3 May 2020 18:41:42 +0200
Message-Id: <08B861A8-D4C2-48A6-9B05-B8CA43312834@goldelico.com>
References: <cover.1587760454.git.hns@goldelico.com>
 <3a451e360fed84bc40287678b4d6be13821cfbc0.1587760454.git.hns@goldelico.com>
 <NMCE9Q.LWG45P20NBVJ@crapouillou.net>
 <28138EC0-0FA5-4F97-B528-3442BF087C7A@goldelico.com>
 <TEAR9Q.6HI5DFRO5U0I3@crapouillou.net>
 <3D8B59D6-83E3-4FE6-9C99-E2E5616A8139@goldelico.com>
 <8EER9Q.C206SXNSICP7@crapouillou.net>
To: Paul Cercueil <paul@crapouillou.net>, Paul Burton <paulburton@kernel.org>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_094148_997881_A3E168D0 
X-CRM114-Status: GOOD (  37.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5302:0:0:6 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 linux-mips@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Tony Lindgren <tony@atomide.com>,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 =?iso-8859-1?Q?Beno=EEt_Cousson?= <bcousson@baylibre.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-omap <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>,
 OpenPVRSGX Linux Driver Group <openpvrsgx-devgroup@letux.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Daniel Vetter <daniel@ffwll.ch>,
 kernel@pyra-handheld.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Paul and Paul,

> Am 03.05.2020 um 16:18 schrieb Paul Cercueil <paul@crapouillou.net>:
> =

> =

> =

> Le dim. 3 mai 2020 =E0 15:31, H. Nikolaus Schaller <hns@goldelico.com> a =
=E9crit :
>> Hi Paul,
>>> Am 03.05.2020 um 14:52 schrieb Paul Cercueil <paul@crapouillou.net>:
>>>>> It's possible to forbid the presence of the 'clocks' property on some=
 implementations, and require it on others.
>>>> To be precise we have to specify the exact number of clocks (between 0=
 and 4) for every architecture.
>>>> This also contradicts my dream to get rid of the architecture specific=
 components in the long run. My dream (because I can't tell how it can be d=
one) is that we can one day develop something which just needs compatible =
=3D img,530 or imp,540 or img,544. Then we can't make the number clocks dep=
end on the implementation any more.
>>> As we said before, the number of clocks is a property of the GPU and *n=
ot* its integration into the SoC.
>> Well, it is a not very well documented property of the GPU. We have no d=
ata sheet of the standalone GPU. Only several SoC data sheets which give so=
me indications.
> =

> Maybe we can nicely ask them?

There is some (old) answer here:

https://github.com/MIPS/CI20_linux/blob/ci20-v3.18/arch/mips/boot/dts/jz478=
0.dtsi#L63

> I expect Paul Burton to have some contacts at ImgTec. Asking for a doc wo=
uld be too much, but maybe they can help a bit with the DT bindings.

Good idea! It is definitively worth to try. Therefore I have moved him from=
 CC: to To:

> =

>> It appears as if some sgx5xx versions have 3 clocks and some have 4. So =
you are right, the number of clocks depends on the sgx5xx version and that =
could be made dependent in the bindings (if necessary).
>>> So you would *not* have a number of clocks between 0 and 4. You get eit=
her 0, or 4, depending on whether or not you have a wrapper.
>> I think this is contradicting your previous sentence. If the number of c=
locks is a property of the GPU and not the integration it must also not dep=
end on whether there is a wrapper. I.e. it must be a constant for any type =
of integration.
> =

> Well, I expected all SGX versions to have 4 clocks.
> =

> If some SGX versions have 3 clocks, and others have 4 clocks, it's still =
OK as long as the number of clocks is enforced, so that all implementations=
 of a given SGX core will have to use the same number of clocks.

> =

>> The really correct variant would be to always make the SoC integration (=
wrapper) a separate subsystem (because it is never part of the SGX core but=
 some interface bus) and clock provider and connect it explicitly to the cl=
ock inputs.
> =

> About the wrapper... I don't really know how it's done there. But you cou=
ld very well pass all clocks unconditionally to the SGX node, even if it's =
inside a wrapper.
> The wrapper itself probably needs only one clock, the one that allows it =
to access its registers.
> =

>> To be clear: I am not at all against describing the clocks. I just doubt=
 that the time we invest into discussing on this level of detail and adding=
 conditional clock requirements is worth the result. IMHO the bindings and =
.dts do not become better by describing them in more detail than just "opti=
onal". It just takes our time from contributing to other subsystems.
> =

> You have a new SoC with a SGX, and you only need to enable one clock to g=
et it to work. So you create a devicetree node which receives only one cloc=
k.
> =

> Turns out, that the bootloader was enabling the other 3 clocks,

Does it? I haven't seen such boot loaders. Usually they bring up only the c=
ore and e.g. mmc to be able to boot.

> and since the last release, it doesn't anymore. You're left with having t=
o support a broken devicetree.

> =

> That's the kind of problem that can be easily avoided by enforcing the nu=
mber of clocks that have to be provided.
>>>>> See how it's done for instance on Documentation/devicetree/bindings/s=
erial/samsung_uart.yaml.
>>>> Yes I know the design pattern, but I wonder if such a move makes the w=
hole thing even less maintainable.
>>>> Assume we have finished DTS for some SoC. Then these DTS have been tes=
ted on real hardware and are working. Clocks are there where needed and mis=
sing where not. We may now forbid or not forbid them for some implementatio=
ns in the bindings.yaml but the result of dtbs_check won't change! Because =
they are tested and working and the bindings.yaml has been adapted to the r=
esult. So we have just duplicated something for no practical benefit.
>>>> Next, assume there is coming support for more and more new SoC. Then, =
developers not only have to figure out which clocks they need in the DTS bu=
t they also have to add a patch to the implementation specific part of the =
bindings.yaml to clearly define exactly the same what they already have wri=
tten into their .dts (the clocks are either there for the of_node or they a=
re not). So again the rules are for no benefit, since a new SoC is introduc=
ed exactly once. And tested if it works. And if it is there, it will stay a=
s it is. It is just work for maintainers to review that patch as well.
>>> If you add support for a new SoC, you'd still need to modify the bindin=
g to add the compatible string. So the argument of "more work" is moot.
>> Agreed, I forgot this aspect. Nevertheless, it is easier to review a new=
 compatible string than a new clock number rule (question: how do you pract=
ically review this? By looking if it does match the DTS?).
>> We have to add the compatible string as long as we need to have the SoC =
name in the compatible string (which as said is my dream to get rid of in f=
ar future). If we could get rid of it, there won't be a change any more. By=
 just taking "img,sgx544" into a new SoC. The change would be moved into So=
C specific wrappers. In such an ideal world, we would explicitly describe t=
he wrappers as separate DT nodes. Even if they have no explicit driver (e.g=
. by some simple-pm-bus).
> =

> What's wrong with having the SoC name in the compatible string?

I'd say it should be avoided if possible. But you give a good hint and a li=
ttle research shows some examples having the SoC name in the compatible str=
ing: musb, dwc2, dwc3.

> =

> You cannot use just a "img,sgx544" compatible string, as then you would a=
ssume that the same SGX version in (e.g.) an Ingenic or a Omap SoC is the e=
xact same. This may actually be true.

Yes. That is the assumption and I have not seen any hints for the opposite =
in the pvrsrvkm sources. They only differentiate the SoC integration (clock=
s, reset) but not in the SGX operation (memory mapping, communication with =
firmware) itself. So the differences could easily be factored out into a wr=
apper driver.

> But the moment you discover even a tiny thing that needs to be handled di=
fferently, you wouldn't have the possibility to do so.

You would still have the possibility. An SGX driver can instead of differen=
tiating by its own compatible string table look for the wrapper or SoC comp=
atible string to find out where the sgx is integrated to. It is just simple=
r to do if we have the combined soc+sgx versions. And at the moment we even=
 compile separate kernel modules from the same source.

> =

>>                   PRCM,bus,
>> Processor <<---->> Wrapper <<----->> SGX
>> ti,...             ti,sysc           img,sgx530
>> img,...            simple-bus        img,sgx540
>> samsung,...        ...               img,sgx544
>> other,             other,gpu-wrapper img,...
>> But this IMHO correct proposal was already rejected.
>> So at the moment we are circling around several proposals because none c=
an fulfill all requirements.
>> Therefore my attempt to solve the gordian knot is to make clocks general=
ly optional. This keeps the bindings simple but not generally wrong. And si=
nce the DTS are not only tested against bindings.yaml but on real hardware,=
 the omission to enforce a specific number of clocks doesn't harm anyone. A=
s said it is impossible to get the SGX running without defining the correct=
 clocks (whether they are enforced by bindings.yaml or not).
> =

> That's what I tried to explain above. You'd be able to get the SGX to wor=
k without a single clock in devicetree. That doesn't mean it should be allo=
wed.
> =

> Cheers,
> -Paul

BR and thanks,
Nikolaus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
