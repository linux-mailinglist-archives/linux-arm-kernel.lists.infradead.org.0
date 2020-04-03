Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E440E19D6B5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 14:30:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dQ1yrfoiGx7oBGiSA1txK5C87C+ESwR5ThBtDlF8Xc4=; b=pSOHptQaCC9iAv
	fNc9D2S62U/GEapoDAwKfxPO1mSiOK+M/YsWqRnXEWiDOeKbGdo2aJsUwTxiG1NU8rz353IBYGuTz
	02nP5FQRJK5d+kpbArhnXZUFu6wC5Har8LZ0pkLlROsPTJLu6cGnhsWBLP9/FhCWVt3AczqxrNfqf
	yeUBhxYXcMkomPQbbUSa99zYwrArqgnK0aWknU2Ko7amImzm/0QWVHHtzZR0cIigDNXVnM+hAAM4+
	kHqo2NV/m6fwqc7enTFPOcC6zAPQ8zsbf7DZUBHniVKtjY3e/OwQXzuESQ3c4eF4ZL3e9iaKcJnJ0
	Cb5TF45KABif2K1L03hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKLT3-0004Xu-Ih; Fri, 03 Apr 2020 12:30:37 +0000
Received: from mailgate1.rohmeurope.com ([87.129.152.131])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKLSw-0004Wg-3F; Fri, 03 Apr 2020 12:30:31 +0000
X-AuditID: c0a8fbf4-489ff70000004419-99-5e872c61fb7a
Received: from smtp.reu.rohmeu.com (will-cas001.reu.rohmeu.com
 [192.168.251.177])
 by mailgate1.rohmeurope.com (Symantec Messaging Gateway) with SMTP id
 8C.2A.17433.16C278E5; Fri,  3 Apr 2020 14:30:25 +0200 (CEST)
Received: from WILL-MAIL001.REu.RohmEu.com ([fe80::2915:304f:d22c:c6ba]) by
 WILL-CAS001.REu.RohmEu.com ([fe80::d57e:33d0:7a5d:f0a6%16]) with mapi id
 14.03.0487.000; Fri, 3 Apr 2020 14:30:19 +0200
From: "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>
To: "broonie@kernel.org" <broonie@kernel.org>
Subject: Re: [PATCH v8 00/10] Support ROHM BD99954 charger IC
Thread-Topic: [PATCH v8 00/10] Support ROHM BD99954 charger IC
Thread-Index: AQHWCZNurrjQpdjIqkyw5OgYXk7rkqhnCsKAgAAPNACAAANNgIAADU2AgAAICwA=
Date: Fri, 3 Apr 2020 12:30:17 +0000
Message-ID: <c149a7b377e4e4a26fffa8c9413f3854223985e9.camel@fi.rohmeurope.com>
References: <cover.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
 <50797a6ac6cda4647f9a396dab0ad08017e3138b.camel@fi.rohmeurope.com>
 <20200403110210.GO1922688@smile.fi.intel.com>
 <8007dadb0b3a13934f2a950204506a156cb2e65e.camel@fi.rohmeurope.com>
 <20200403120135.GE4286@sirena.org.uk>
In-Reply-To: <20200403120135.GE4286@sirena.org.uk>
Accept-Language: en-US, de-DE
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [62.78.225.252]
Content-ID: <82A187CAF94B584E96AF6945D48F4198@de.rohmeurope.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02TXUwUVxTHc2dmZwZ0m2FZ5JaqkU2TVlqk0q8TtUajbQYfTBt8qG2EDjKy
 RFjIflDQByl0kYUoYEHWZQGDbFxxLbI8KIJg6VoQW9atiEBoGkQrKwoG+dDaQme6KjzNmfM/
 v/O7D/eypGqCiWBTdUZRrxPSNHQwdcX5vClaePdwwnuPhzaAY9JBQu/ocwpsvzooODpVR8KR
 vEoCPPYZEpqsjQqYyu0jYbq6h4LrHRMU+AZ+IKFi5C4NfWY3glpPrwLyTzXSYHfmwMKdcQWc
 KDwEreMNBHi95xmY7SskoPyf0wS4R/sVUNbxGwM3L9lpuJnvQ1BVX0LBkyMeBFZvOwF+z1ME
 jts+AvK+fx/sjm4pnOxQQPV0BQmPhislvdVLgvmyhwGfc5qA661GuGz2kdDsliY6+nZAy3A3
 Cc86vcSWaN5V40L87Mwxip8cMDN8jesgf/7OWQXvnIrhh4YP8S22Pxj+pNvENzuj+IJnWfyY
 y83w7gYLzQ/3t9H8RG+vRF374nP81bJNSYIxKz41RRez+Ztl2rYaH5FZGJJ9/+jvRC66wRWh
 IBZzH+D2n6dREQpmVVw/wmcKuhSBny6EHw6WSgnL0twmXDTIyICai8YVf5+i5RmSy1Nj87l2
 Sg5CuU/wRPNxMjC0GZsfP6FlVs3txJVN8XKb4t7ET51/IrlWSu2mYwVMwNVA4NrZ3P8FQVws
 HrM4aLlG3CpsyZ0g5JrkwrH7rzlF4NQcrm/zkoE6DPtH51/0I/GFuR8p2Utya3HjpZgAugW3
 /Fv7Yk0kLi8eYQJnCMHXTtylStEK2xKDbZG2LaFtS2jbEvokUjQgnC6kpqUIRnH9Or1oWqfP
 0KZLn70Z6W4UuL/TF9FCZ1wnIljUiV5nCU2Y8kLk4QTVa0kZyTlawaBN1JvSREMnwiypUSu3
 Ws0JKmWykHNA1Ge8jN5gKU248q2Rsj0qTnbtF8VMUf8yXcmyGqy8GCUtDdGLKWL2vtQ042JM
 sEHy8uAItUHUJYt6wWTUJsr3I9EgXRA5Wi55296WcKUhU0iXugG0B73Dlvqr60jWU+2oI1WU
 LkMnRoQr98kmTh7VmnSvRA9QOIs0ocoVcrpcesSv9jyQFISkuJWdLyuMwmIUkYuuHghbqEoq
 029nrrZ+3FhevPv40MBU3Maf0i11jzirELLGuKfkw63jnw66YONHX3f3rLZv66rXjs3f2maf
 mQ+9t6rqbNaXXCW95v656OK52B07i+OrflltJTeEx52x7C3pTth/m76xK1bzmf/hbv/2lQd7
 g6pLbZi98u1aS7Dlu3tVrRrKoBXWR5F6g/AfrFA3pIEEAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_053030_292963_7FFAA1AD 
X-CRM114-Status: GOOD (  19.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 "andrei.stefanescu@microchip.com" <andrei.stefanescu@microchip.com>,
 "heiko@sntech.de" <heiko@sntech.de>, "rafael@kernel.org" <rafael@kernel.org>,
 "tony@atomide.com" <tony@atomide.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "brendanhiggins@google.com" <brendanhiggins@google.com>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "kholk11@gmail.com" <kholk11@gmail.com>,
 "hsin-hsiung.wang@mediatek.com" <hsin-hsiung.wang@mediatek.com>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "axel.lin@ingics.com" <axel.lin@ingics.com>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 "b.zolnierkie@samsung.com" <b.zolnierkie@samsung.com>,
 "krzk@kernel.org" <krzk@kernel.org>,
 "m.reichl@fivetechno.de" <m.reichl@fivetechno.de>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "wens@csie.org" <wens@csie.org>, "andreas@kemnade.info" <andreas@kemnade.info>,
 "agross@kernel.org" <agross@kernel.org>, "Laine,
 Markus" <Markus.Laine@fi.rohmeurope.com>,
 "Adam.Thomson.Opensource@diasemi.com" <Adam.Thomson.Opensource@diasemi.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "ckeepax@opensource.cirrus.com" <ckeepax@opensource.cirrus.com>,
 "linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "rf@opensource.cirrus.com" <rf@opensource.cirrus.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "sre@kernel.org" <sre@kernel.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "support.opensource@diasemi.com" <support.opensource@diasemi.com>,
 "baolin.wang@linaro.org" <baolin.wang@linaro.org>, "Mutanen, 
 Mikko" <Mikko.Mutanen@fi.rohmeurope.com>,
 "patches@opensource.cirrus.com" <patches@opensource.cirrus.com>,
 "rdunlap@infradead.org" <rdunlap@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sbkim73@samsung.com" <sbkim73@samsung.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "mazziesaccount@gmail.com" <mazziesaccount@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Fri, 2020-04-03 at 13:01 +0100, Mark Brown wrote:
> On Fri, Apr 03, 2020 at 11:13:54AM +0000, Vaittinen, Matti wrote:
> > On Fri, 2020-04-03 at 14:02 +0300, 
> > andriy.shevchenko@linux.intel.com
> > > From my point of view, you need to wait till rc1 is out and
> > > rebase
> > > the series.
> > > The cross-subsystem changes can be handled by maintainers in a
> > > form
> > > of
> > > immutable branches / tags. On your side you may recommend them
> > > how to
> > > proceed,
> > > but the final decision is by them.
> > Thanks Andy. I re-read what I wrote and I see it can be interpreted
> > as
> > if I was trying to tell how things should be done. That was my
> > intention. My intention was to point out that my patches will break
> > regulator tree builds if new drivers are added.
> > > From my point of view, you need to wait till rc1 is out and
> > > rebase
> > > the series.
> > Does this mean that there is no new regulator drivers expected to
> > be
> > added after rc1 is out? If this is the case, the rebasing this
> > series
> > on top of rc1 should work as then I get all new drivers (for a
> > release)
> 
> During the merge window no new anything except bug fixes is expected
> to
> be applied.  Like Andy says we'll share a branch for any
> dependencies,
> nobody in particular seems to apply code for lib so I guess I'll take
> that patch and the regulator one and share it but not until after the
> merge window.

Thanks for taking it Mark. So I should rebase and resend when v5.7-rc1
is tagged as Andy suggested? 

--Matti

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
