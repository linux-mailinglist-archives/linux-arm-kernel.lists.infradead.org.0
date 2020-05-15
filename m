Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 710DC1D46EB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 09:19:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/3BQxxRM8tyDrnozmBiah9/cUG+IrbyHunUrVvhIpTE=; b=D1Cown9xoZecTH
	ebDRjs1olB0sDoBdp0VpUHhKyyywXJfB2U8tnbSYJaSJQplZhOR8WtOb2/xetfaFelR7US7A43nmH
	4XKp2kBLsH4GstrU8oFoGy5onMdQsT9KyuyGr9wkDwweejptRgiZ43Cf0aPWvDhyrvP4cq/CY+LLD
	4T+9IZUGjL5FiFuMSKAiuB5DcorzY/JCYRjEKwnoCvodz5AAx2rEzGfJU1wI3G/wTIteZyG5ZYuhL
	AtR+qhcIr2oUoZR2iN9rAnvMoAS86c7xP8wRXKOmm6mVPjruGjf8g2tSNnkLJIP5riEZFrdXnza+H
	diF1XWwDUOPckyvJc5OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZUcf-0005nV-JA; Fri, 15 May 2020 07:19:09 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZUcS-0005l8-De
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 07:19:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1589527125;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=/LlQLnJSjr1dPjlAnAK+u/lQG0tGroGOnAwr3HRIIDg=;
 b=pBwuM+bS37tPnPiPgRTjgQOlB2/DddwgW7AqPDMVE2Zm5t8pbJMf97G+hfKZhEN8PU
 fp1FGEl9qPoT4l/uzeX1xE65PTbMgfJuJUWjOD6t3ZAqmDya5skiO8r2qoqWc3df6pfr
 2qRTJFVr/YLFFxhJpcKXB8DNs0eTdFdJmaX8gH3KX/SUeymTIS96bcduZhTmg5zItfDV
 pBnDIN7UF4euSqIwdMBvqsb4przbXAEvUlELlJGYhfAPT+LEEtuBgSw8/hCLiSI/ZaCU
 pI9gY4u8XUGMywE2twViG6QH1rqMSR2dKewolcZEgxRl+D3VCMA+VfjeX9bTlQIPS5rl
 R56A==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj7wpz8NMGH/vtwDOvBTU="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 46.6.2 DYNA|AUTH)
 with ESMTPSA id R0acebw4F7IYYRg
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Fri, 15 May 2020 09:18:34 +0200 (CEST)
Subject: Re: [PATCH v7 01/12] dt-bindings: add img,
 pvrsgx.yaml for Imagination GPUs
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <08B861A8-D4C2-48A6-9B05-B8CA43312834@goldelico.com>
Date: Fri, 15 May 2020 09:18:33 +0200
Message-Id: <D1D14684-2532-46A4-ADA0-2F88F4D2228E@goldelico.com>
References: <cover.1587760454.git.hns@goldelico.com>
 <3a451e360fed84bc40287678b4d6be13821cfbc0.1587760454.git.hns@goldelico.com>
 <NMCE9Q.LWG45P20NBVJ@crapouillou.net>
 <28138EC0-0FA5-4F97-B528-3442BF087C7A@goldelico.com>
 <TEAR9Q.6HI5DFRO5U0I3@crapouillou.net>
 <3D8B59D6-83E3-4FE6-9C99-E2E5616A8139@goldelico.com>
 <8EER9Q.C206SXNSICP7@crapouillou.net>
 <08B861A8-D4C2-48A6-9B05-B8CA43312834@goldelico.com>
To: Paul Cercueil <paul@crapouillou.net>, Paul Burton <paulburton@kernel.org>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_001857_053468_41ED2FAE 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5302:0:0:11 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hi Paul & Paul,

> Am 03.05.2020 um 18:41 schrieb H. Nikolaus Schaller <hns@goldelico.com>:
> =

> Hi Paul and Paul,
> =

>> Am 03.05.2020 um 16:18 schrieb Paul Cercueil <paul@crapouillou.net>:
>> =

>> =

>> =

>> Le dim. 3 mai 2020 =E0 15:31, H. Nikolaus Schaller <hns@goldelico.com> a=
 =E9crit :
>>> Hi Paul,
>>>> Am 03.05.2020 um 14:52 schrieb Paul Cercueil <paul@crapouillou.net>:
>>>>>> It's possible to forbid the presence of the 'clocks' property on som=
e implementations, and require it on others.
>>>>> To be precise we have to specify the exact number of clocks (between =
0 and 4) for every architecture.
>>>>> This also contradicts my dream to get rid of the architecture specifi=
c components in the long run. My dream (because I can't tell how it can be =
done) is that we can one day develop something which just needs compatible =
=3D img,530 or imp,540 or img,544. Then we can't make the number clocks dep=
end on the implementation any more.
>>>> As we said before, the number of clocks is a property of the GPU and *=
not* its integration into the SoC.
>>> Well, it is a not very well documented property of the GPU. We have no =
data sheet of the standalone GPU. Only several SoC data sheets which give s=
ome indications.
>> =

>> Maybe we can nicely ask them?
> =

> There is some (old) answer here:
> =

> https://github.com/MIPS/CI20_linux/blob/ci20-v3.18/arch/mips/boot/dts/jz4=
780.dtsi#L63
> =

>> I expect Paul Burton to have some contacts at ImgTec. Asking for a doc w=
ould be too much, but maybe they can help a bit with the DT bindings.
> =

> Good idea! It is definitively worth to try. Therefore I have moved him fr=
om CC: to To:

Do we already have an idea if we can get into contact and get help from Img=
Tec for this topic or if we have to live with what we have?

BR and thanks,
Nikolaus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
