Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B16A1BFB84
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:00:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+CtoYs/eLJuqrzB8DxIssx75i478o5dQ+h7TriFeykQ=; b=YwNRxO3XmID1ec
	dxZ6ikqIejsTwfJB/LwKe7S6vhSMBgmpPXuy3CCvZmqfxHBY6sqFBrqKtKHpRMlY8HEVpEJw+hWzp
	8oAiDJOuPdCFrIGp1ZTyuqcYpHusAqS2vl6FsN21a+4W1YLspM9v31CRDs/96weigGF19wLN2y2xn
	ncrs0GlVUW4yAyAE3PeVuOXuljxBzKZyZSWLC97d0fVUu9sSjm82xZ2Z3R0VoKrTGBOo9tNcj/FF/
	dQnVOY5rDreizkSPSJmuoPOczzQsSc2evFKhYvs0o4PqLINa0dxldaVQC+P1u+7p6dSfKW4P5h1Bh
	lpthUTIlGa68R4vscp0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU9k3-0003Lx-Ui; Thu, 30 Apr 2020 14:00:43 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU9jo-0003Js-HM
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:00:29 +0000
Received: by mail-io1-xd43.google.com with SMTP id k23so1554036ios.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=nz4EYudAGnRAka2sLpxAUHkI/tIzbc4FpKMb2iD2HGI=;
 b=WxsmkjonITcLJ97YhEvjgmBobJxYhdcS0FMYbI0ha9eAYIbOvVa++0B/N61OFuA+vq
 TZYJoOOK1ZCNtDRuUb0+F6GjgICAVNM5rw4vEuVnM80xd3VkxSFGCpu0bX2tf4mdswgH
 D8T/Hct4kccVa1z5uGmKgC3cbV8W5/BGPIlISHzo6yjyI6Yd84kp1sl1eFHyPTD6GGmH
 0Q1F1IZODwzZhcHFUAcQpScBz+tK/gV6IwRa2pAu8aiuKxSgJ9XM9CrOeEgOUpJR6Mg0
 6oYATFOQutPCYugnCrV+5/HZ8KiRd7lgTda3lkj13rjmdcAeGR16UBPZIBdRZZnJts6f
 Vuww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=nz4EYudAGnRAka2sLpxAUHkI/tIzbc4FpKMb2iD2HGI=;
 b=Fac4QjUNDh2CUJ2Pqhs+PjCnIPXZo9ZZMYIkjtNqB1uUT7fBtkc3REvd/ri9iRQ5s1
 xYg/vAPNS12U1Sph6n1oKpLAY49nSV17c9RBYB37MnUddAAlU+Pi+GEHJ0PDw7BOkelV
 tasj2p0n5dYKgJlWOl5typ8p8N7rqWXtpXTvXtdCWSJQYfxAie5tv9a3fXpyEgKhwvBP
 7GoVuuEp3c49aQxgsZrnnK/BiPbswUwNU4ABjKJ6banf2kVWV1QsXi3ePDY41b6DspPJ
 SD+4Lgnvzhfr43BcaDls0DCzDJfwvvq3RmP2XRkLiOMJNLXrTxvZHjChMh0vQ+I6YMjB
 /V1w==
X-Gm-Message-State: AGi0PuYklj5czimkdPnfEByWUncmRzJXIu1k/EsK6Gh2Dop3XEQAR7RZ
 9rvnHZhz9YC8Hn3RVWk9DIWnETl+lwNXLoBwXzjPC2hQnPM=
X-Google-Smtp-Source: APiQypL/hGXbUxNw4AVM3ITxY+bWgZQNGgI8BdvnXtQMrcBmjvMtXdgrG7Lhm8mMQi0TVyWgoYz+zdbaXKGpRu9prEA=
X-Received: by 2002:a6b:b8d6:: with SMTP id i205mr2058871iof.123.1588255225316; 
 Thu, 30 Apr 2020 07:00:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200426104115.22630-1-peron.clem@gmail.com>
 <20200426104115.22630-4-peron.clem@gmail.com>
 <20200428081321.ht3el26yqhsnyfm4@gilmour.lan>
 <CAJiuCcdVs_drs40Q6537BYfz24F7NmC6B8S5-Lt4V4ggs-FXWA@mail.gmail.com>
 <20200429123529.y24dpy63wxq7uvkt@gilmour.lan>
 <CAJiuCcfXqizcq_JuXRCsqEqM2562cr1SGJ0pmy07jcJxAXojOw@mail.gmail.com>
 <20200430084600.samghw4zxb5zdbez@gilmour.lan>
In-Reply-To: <20200430084600.samghw4zxb5zdbez@gilmour.lan>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Thu, 30 Apr 2020 16:00:14 +0200
Message-ID: <CAJiuCcf_LHrJ6QdZgH8HyN6TRiT+GiD+t4UggFCrz-VwVHXV6w@mail.gmail.com>
Subject: Re: [PATCH v3 3/7] ASoC: sun4i-i2s: Add support for H6 I2S
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_070028_596388_D453CC6E 
X-CRM114-Status: GOOD (  23.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Takashi Iwai <tiwai@suse.com>,
 Rob Herring <robh+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Marcus Cooper <codekipper@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gVGh1LCAzMCBBcHIgMjAyMCBhdCAxMDo0NiwgTWF4aW1lIFJpcGFyZCA8
bWF4aW1lQGNlcm5vLnRlY2g+IHdyb3RlOgo+Cj4gSGksCj4KPiBPbiBXZWQsIEFwciAyOSwgMjAy
MCBhdCAwNjozMzowMFBNICswMjAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiBPbiBXZWQs
IDI5IEFwciAyMDIwIGF0IDE0OjM1LCBNYXhpbWUgUmlwYXJkIDxtYXhpbWVAY2Vybm8udGVjaD4g
d3JvdGU6Cj4gPiA+Cj4gPiA+IE9uIFR1ZSwgQXByIDI4LCAyMDIwIGF0IDEwOjU1OjQ3QU0gKzAy
MDAsIENsw6ltZW50IFDDqXJvbiB3cm90ZToKPiA+ID4gPiA+ID4gK3N0YXRpYyBpbnQgc3VuNTBp
X2kyc19zZXRfc29jX2ZtdChjb25zdCBzdHJ1Y3Qgc3VuNGlfaTJzICppMnMsCj4gPiA+ID4gPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgZm10KQo+ID4gPiA+
ID4KPiA+ID4gPiA+IFRoZSBhbGlnbm1lbnQgaXMgb2ZmIGhlcmUKPiA+ID4gPiA+Cj4gPiA+ID4g
PiA+ICt7Cj4gPiA+ID4gPiA+ICsgICAgIHUzMiBtb2RlLCB2YWw7Cj4gPiA+ID4gPiA+ICsgICAg
IHU4IG9mZnNldDsKPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiArICAgICAvKgo+ID4gPiA+ID4g
PiArICAgICAgKiBEQUkgY2xvY2sgcG9sYXJpdHkKPiA+ID4gPiA+ID4gKyAgICAgICoKPiA+ID4g
PiA+ID4gKyAgICAgICogVGhlIHNldHVwIGZvciBMUkNLIGNvbnRyYWRpY3RzIHRoZSBkYXRhc2hl
ZXQsIGJ1dCB1bmRlciBhCj4gPiA+ID4gPiA+ICsgICAgICAqIHNjb3BlIGl0J3MgY2xlYXIgdGhh
dCB0aGUgTFJDSyBwb2xhcml0eSBpcyByZXZlcnNlZAo+ID4gPiA+ID4gPiArICAgICAgKiBjb21w
YXJlZCB0byB0aGUgZXhwZWN0ZWQgcG9sYXJpdHkgb24gdGhlIGJ1cy4KPiA+ID4gPiA+ID4gKyAg
ICAgICovCj4gPiA+ID4gPgo+ID4gPiA+ID4gRGlkIHlvdSBjaGVjayB0aGlzIG9yIGhhcyBpdCBi
ZWVuIGNvcHktcGFzdGVkPwo+ID4gPiA+Cj4gPiA+ID4gY29weS1wYXN0ZWQsIEkgd2lsbCBjaGVj
ayB0aGlzLgo+ID4gPgo+ID4gPiBJdCdzIG5vdCBnb2luZyB0byBiZSBlYXN5IHRvIGRvIHRoaXMg
aWYgeW91IG9ubHkgaGF2ZSBhIGJvYXJkIHdpdGggSERNSS4gSWYgeW91Cj4gPiA+IGNhbid0IHRl
c3QgdGhhdCBlYXNpbHksIGp1c3QgcmVtb3ZlIHRoZSBjb21tZW50IChvciBtYWtlIGl0IGV4cGxp
Y2l0IHRoYXQgeW91Cj4gPiA+IGNvcHkgcGFzdGVkIGl0PyksIG5vIGNvbW1lbnQgaXMgYmV0dGVy
IHRoYW4gYSB3cm9uZyBvbmUuCj4gPgo+ID4gSSBoYXZlIHRhbGtlZCB3aXRoIE1hcmN1cyBDb29w
ZXIgaXQgbWF5IGJlIGFibGUgdG8gdGVzdCB0aGlzIHRoaXMgd2Vlay1lbmQuCj4gPiBBbHNvIHRo
aXMgY2FuIGV4cGxhaW4gd2h5IHdlIG5lZWQgdGhlICIKPiA+IHNpbXBsZS1hdWRpby1jYXJkLGZy
YW1lLWludmVyc2lvbjsiIGluIHRoZSBkZXZpY2UtdHJlZS4KPiA+Cj4gPiBJZiB0aGluayB0aGlz
IGZpeCBoYXMgYmVlbiBpbnRyb2R1Y2VkIGJ5IHlvdSwgY29ycmVjdD8gQ291bGQgeW91IHNheQo+
ID4gb24gd2hpY2ggU29DIGRpZCB5b3Ugc2VlIHRoaXMgaXNzdWU/Cj4KPiBUaGlzIHdhcyBzZWVu
IG9uIGFuIEgzCgpKdXN0IHR3byBtb3JlIHF1ZXN0aW9uczoKLSBEaWQgeW91IG9ic2VydmUgdGhp
cyBpc3N1ZSBvbiBib3RoIFRETSBhbmQgSTJTIG1vZGU/Ci0gT24gd2hpY2ggREFJIG5vZGU/CgpT
aW5jZSByZWNlbnQgY2hhbmdlIGluIHN1bjRpLWkycy5jLCB3ZSBoYWQgdG8gaW50cm9kdWNlIHRo
ZQoic2ltcGxlLWF1ZGlvLWNhcmQsZnJhbWUtaW52ZXJzaW9uIiBpbiBMaWJyZUVsZWMgdHJlZS4K
SDMgYm9hcmRzIGFyZSBxdWl0ZSBjb21tb24gaW4gTGlicmVFbGVjIGNvbW11bml0eSBzbyBJIHRo
aW5rOgogLSBUaGlzIGZpeCBpcyBvbmx5IG5lZWRlZCBpbiBURE0gbW9kZQogLSBPciB0aGlzIGZp
eCBpcyBub3QgcmVxdWlyZWQgZm9yIHRoZSBIRE1JIERBSSBub2RlIChIRE1JIERBSSBpcyBhCmxp
dHRsZSBiaXQgZGlmZmVyZW50IGNvbXBhcmUgdG8gb3RoZXIgREFJIGJ1dCBJIHRoaW5rIHRoZSBm
aXJzdCBndWVzcwppcyBtb3JlIGxpa2VseSkKClJlZ2FyZHMsCkNsZW1lbnQKCj4KPiBNYXhpbWUK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
