Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 025BA12D829
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 12:04:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:Mime-Version:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U9hqDGfuSJW/MFAwNQfvFf0Vf68tqI3ovsgLhFFQTvM=; b=E+kpt/VAxcSIC3
	N3BRiP1COIbu3uhOByZYCwQiPr0+c9Y1pddzqT4OfrtPVIrqcsbybaK/dKlp6LzZKG+hhQnyY4xTG
	OFsLOPVvaWb+OVLXROk3f9+Oc7KARziQTBFgnYlIuPefwhi8ubhJHa81lPimCgiyWgLWlfpFU2Te9
	exrA8U5fXAI9K3swzHXsBVXAXIA9xBhkAe4fdScvg7qWqBBUjCEU6C47KWljddG6XJ6Sj6gT8pFMf
	3YtgvcdSTtQ27u6MgPhMi9ZRMeJCY3mGIy3dsVabXfVUlYWs9K1g/MMfHbO5DQTOqIy+bHh3Vke0B
	MB4z7qawSCoa3UunAjIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imFJe-0006Zq-Nq; Tue, 31 Dec 2019 11:03:58 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imFJT-0006Z6-Nj
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 11:03:49 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191231110343euoutp0155f6f17e99b214e37fe7a31a2060be45~lb9laEmwl1166911669euoutp01q
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Dec 2019 11:03:43 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191231110343euoutp0155f6f17e99b214e37fe7a31a2060be45~lb9laEmwl1166911669euoutp01q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1577790223;
 bh=7+Bzmj/1YS4mP/XOTfqoL6jacDPrLgYgX5Dda/QTWHw=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=BVropltxRsZN3ZbwTq+m3PNfg0dIYlPSJKB2mWulBCfR5C2+31+pbpZcTq/vKj3MH
 yyXGRJ8hg4eZu+RrnSSX5eW7z3Uqdpl6eX5udG+hq0kNfHPCK2unMMI+RqKtZiwfNb
 cb7f0NlVodvQSDaXsjB/Dpxf1w8Mw5wjHtjME3hE=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191231110343eucas1p126de462c8e6ced3397b47d8ddbaa09a7~lb9lI1MqD2384623846eucas1p1i;
 Tue, 31 Dec 2019 11:03:43 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 59.DF.61286.F0B2B0E5; Tue, 31
 Dec 2019 11:03:43 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191231110343eucas1p2211c47c3442b4397e051836cc39e11a1~lb9ky991Q3033530335eucas1p2v;
 Tue, 31 Dec 2019 11:03:43 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191231110343eusmtrp10fc8459914b75e6b325bb7c10db35ecc~lb9kyPA_02466224662eusmtrp1Y;
 Tue, 31 Dec 2019 11:03:43 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-d3-5e0b2b0f11d3
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 91.38.08375.E0B2B0E5; Tue, 31
 Dec 2019 11:03:42 +0000 (GMT)
Received: from AMDC3555 (unknown [106.120.51.67]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20191231110342eusmtip1b4cd2129514c914c87bc8fd50997103a~lb9j-nB6N1319413194eusmtip13;
 Tue, 31 Dec 2019 11:03:42 +0000 (GMT)
Message-ID: <e364f979ad6b07a53f19fd25883e4d39e28c37be.camel@samsung.com>
Subject: Re: [RFC PATCH v3 4/7] arm: dts: exynos: Add interconnect bindings
 for Exynos4412
From: Artur =?UTF-8?Q?=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 31 Dec 2019 12:03:41 +0100
In-Reply-To: <CAJKOXPezRMb0OnpcRWrRheKbBjyzqNXG3TDX-MQkjAm2sTSr1w@mail.gmail.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHe3cuO66mp2ntyYXVpA9qm0kKB4q06HKiPiQUQZi26mCRW7HT
 KoNoFYmXMknDNTXTaol5yZPaWpcPQzQqXVcNNhsVXYym5Swrs9o8k/r2f//P83v+zwMvhSke
 EtHULsM+zmjQ5ahJGd7e+cOliUiYmrmwpULJtFiaCaZv5D3BVHf0EMyzr0MkU35HIJkz3hKc
 cbmuSZm6/i8EI7zpJZinjkqS8Z/qQIzFdVfCNHb0Sxn30TqSsZQOkGkRrFBfQLKe3tsk6y3q
 krDXLx1hWwbtEra4tR6xfiFmvXSzbMkOLmfXfs6YuHSrbKfl1Fm0t0xzcMT7ATejothCFEYB
 nQxCTZskqBV0HYJ3no2FSBbQIwg+d55A4sOPoEZwSyeJqqHzhEhcQTDgiRGb3iFwNjRiwYKc
 ZuGKuwIP6kg6A6zfvRMwSadCt/vbRFwUHQd946NEEMboVzjc6B+bKOD0fOh+JMJhdDq4i/Nw
 MXkB+O4XBzQVCJgO4/bIoI3Rc+B4WwUWnAO0TwovBipD/Svges8vTNSR8LGrNXTBbHhQejLU
 w8Pbm15ChM0IBFtHCFgMnp6fZDAMC2za7EgU7WXQNlokCdpAh8ML33Rxh3A4016OibYc8vMU
 olSD41y4CAIcu9obms3C40sFRAmaZ/13i/W/W6z/Ui8grB4pOROvz+b4JAN3QMvr9LzJkK3d
 vkcvoMAfe/C7a9iOvj7Z5kQ0hdTT5PlTZJkKQrefz9U7EVCYOkqenBGWqZDv0OUe4ox7soym
 HI53IhWFq5XyRbUDWxR0tm4ft5vj9nLGyaqECos2o4vVSVWJw4P6mQlc2qfiWkLbvUZj86ui
 +j1HNK0J5xsMQw2XRwujVx+tYh3tbtk9p9retI7QLlsVIR3esjLlNWFJtfhOq2rHmojnt8yb
 Kmek5M8ZvE2V2ZbH3jW/LHiu+rK2e4Yt3VVSMFcbrryzYciflRtvWjDrcHxa5+uMuD9qnN+p
 S4rHjLzuL9TdYeVfAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrGIsWRmVeSWpSXmKPExsVy+t/xu7p82txxBt2HbCw2zljPanH9y3NW
 i/lHzrFaXPn6ns1i+t5NbBaT7k9gsTh/fgO7xYq7H1ktNj2+xmpxedccNovPvUcYLWac38dk
 sfbIXXaL240r2CxmTH7J5sDvsWlVJ5vHnWt72Dzudx9n8ti8pN5j47sdTB59W1YxenzeJBfA
 HqVnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9nk5Kak1mWWqRvl6CXMaN3
 KmPBFN2KL/dfsDQwdit3MXJySAiYSMx9P4+1i5GLQ0hgKaPEqQe3WSESEhIf19+AsoUl/lzr
 YoMoesIo8XnRdUaQBK+Ah8Ty27NZQGxhgRiJWT/us4PYbAL2Emdvf2MCsUUENCWu//0OtoFZ
 4BGLxNvOy2ANLAKqEmcvQDRzCgRK3O5rY4HYMJ9FYs/My2CrmYG6W7f/Zoc4Q0fi7ak+oCIO
 oM2CEn93CEOUyEs0b53NPIFRcBaSjlkIVbOQVC1gZF7FKJJaWpybnltsqFecmFtcmpeul5yf
 u4kRGKfbjv3cvIPx0sbgQ4wCHIxKPLwPmLjihFgTy4orcw8xSnAwK4nwmsRwxgnxpiRWVqUW
 5ccXleakFh9iNAX6ZyKzlGhyPjCF5JXEG5oamltYGpobmxubWSiJ83YIHIwREkhPLEnNTk0t
 SC2C6WPi4JRqYNSwfhPJ8lCg7dQ2l3upE3uNfosUL2Tq1bu+MYa78q4506X7XaEXLYrUolee
 3yvzxPke16YSx+IzTwIlp78QePxWZN3eomM9gu+2Ct3UDlR/m/43YOLNtGkh6y6ILpx9+0zh
 h7feh1lmVR0uFjN9KqCbHaGsm9Cjda/71yrO4Ox/bQFvbosHxSuxFGckGmoxFxUnAgDEb1vn
 6QIAAA==
X-CMS-MailID: 20191231110343eucas1p2211c47c3442b4397e051836cc39e11a1
X-Msg-Generator: CA
X-RootMTR: 20191220120144eucas1p119ececf161a6d45a6a194e432bbbd1f9
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191220120144eucas1p119ececf161a6d45a6a194e432bbbd1f9
References: <20191220115653.6487-1-a.swigon@samsung.com>
 <CGME20191220120144eucas1p119ececf161a6d45a6a194e432bbbd1f9@eucas1p1.samsung.com>
 <20191220115653.6487-5-a.swigon@samsung.com> <20191230154405.GC4918@pi3>
 <2922135223b01126277ef92a53e6b294bc17bb5c.camel@samsung.com>
 <20191231092254.GA6939@pi3>
 <99427c18b1fcca3bc21e69609500abdbbef59167.camel@samsung.com>
 <20191231100234.GA7024@pi3>
 <29ed54c7700e35fb95fff4f4f5580eba24ffbb35.camel@samsung.com>
 <CAJKOXPezRMb0OnpcRWrRheKbBjyzqNXG3TDX-MQkjAm2sTSr1w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_030347_979020_8198F966 
X-CRM114-Status: GOOD (  37.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-pm@vger.kernel.org,
 =?UTF-8?Q?Bart=C5=82omiej_?= =?UTF-8?Q?=C5=BBo=C5=82nierkiewicz?=
 <b.zolnierkie@samsung.com>, Seung Woo Kim <sw0312.kim@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, Inki Dae <inki.dae@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, myungjoo.ham@samsung.com,
 leonard.crestez@nxp.com, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDE5LTEyLTMxIGF0IDExOjM4ICswMTAwLCBLcnp5c3p0b2YgS296bG93c2tpIHdy
b3RlOgo+IE9uIFR1ZSwgMzEgRGVjIDIwMTkgYXQgMTE6MjMsIEFydHVyIMWad2lnb8WEIDxhLnN3
aWdvbkBzYW1zdW5nLmNvbT4gd3JvdGU6Cj4gPiA+IAo+ID4gPiBUaGUgb3JkZXIgb2YgcGF0Y2hl
cyBzaG91bGQgcmVmbGVjdCBmaXJzdCBvZiBhbGwgcmVhbCBkZXBlbmRlbmN5Lgo+ID4gPiBXaGV0
aGVyIGl0IGNvbXBpbGVzLCB3b3JrcyBhdCBhbGwgYW5kIGRvZXMgbm90IGJyZWFrIGFueXRoaW5n
LiAgTG9naWNhbAo+ID4gPiBkZXBlbmRlbmN5IG9mICJ3aGVuIHRoZSBmZWF0dXJlIHdpbGwgc3Rh
cnQgd29ya2luZyIgaXMKPiA+ID4gaXJyZWxldmFudCB0byBEVFMgYmVjYXVzZSBEVFMgZ29lcyBp
biBzZXBhcmF0ZSB3YXkgYW5kIGRyaXZlciBpcwo+ID4gPiBpbmRlcGVuZGVudCBvZiBpdC4KPiA+
IAo+ID4gVGhlIG9yZGVyIG9mIHBhdGNoZXMgZG9lcyBpbmRlZWQgcmVmbGVjdCByZWFsIGRlcGVu
ZGVuY3kuIEkgY2FuIGFsc28gcmVvcmRlcgo+ID4gdGhlbSAocHJlc2VydmluZyB0aGUgZGVwZW5k
ZW5jaWVzKSBzbyB0aGF0IERUUyBwYXRjaGVzIGdvIGZpcnN0IGluIHRoZSBzZXJpZXMKPiA+IGlm
IHRoaXMgaXMgdGhlIG1vcmUgcHJlZmVycmVkIHdheS4KPiAKPiBJdCBsb29rcyB3cm9uZyB0aGVu
LiBEcml2ZXIgc2hvdWxkIG5vdCBkZXBlbmQgb24gRFRTLiBJIGNhbm5vdCBmaW5kCj4gdGhlIHBh
dGNoIGNoYW5naW5nIGJpbmRpbmdzIChzaG91bGQgYmUgZmlyc3QgaW4gcGF0Y2hzZXQpIHdoaWNo
IGNvdWxkCj4gYWxzbyBwb2ludCB0byB0aGlzIHByb2JsZW0uCj4gCj4gSXQgc2VlbXMgeW91IGFk
ZGVkIHJlcXVpcmVtZW50IGZvciBpbnRlcmNvbm5lY3QgcHJvcGVydGllcyB3aGlsZSBpdAo+IHNo
b3VsZCBiZSByYXRoZXIgb3B0aW9uYWwuCgpObywgdGhlcmUgaXMgbm8gcmVxdWlyZW1lbnQgZm9y
IGludGVyY29ubmVjdCBwcm9wZXJ0aWVzIChvdGhlciB0aGFuIHRoYXQgaXQKc2ltcGx5IGRvZXMg
bm90IG1ha2UgYW55IHNlbnNlIHRvIHVzZSB0aGUgaW50ZXJjb25uZWN0IGRyaXZlciBjb2RlIGFu
ZCBub3QgdGhlCkRUUyBwcm9wZXJ0aWVzIGZvciBpdCBpbiB0aGUgbG9uZyBydW4pLgoKSW4gY2Fz
ZSBvZiB0aGUgZXh5bm9zLWJ1cyBkcml2ZXIgKGNvZGU6IHBhdGNoIDA1LCBEVFM6IHBhdGNoIDA0
KSBpZiB0aGUgRFRTCnByb3BlcnRpZXMgKCdleHlub3MsaW50ZXJjb25uZWN0LXBhcmVudC1ub2Rl
JykgYXJlIG1pc3NpbmcsIHRoZSBuZXcgY29kZSBoYW5kbGVzCml0IGdyYWNlZnVsbHkgcmV0dXJu
aW5nIE5VTEwgZnJvbSBleHlub3NfYnVzX2ljY19nZXRfcGFyZW50KCkgKGl0IGlzIG5vdCBhbgpl
cnJvciBjb25kaXRpb24pLgoKSW4gY2FzZSBvZiB0aGUgZXh5bm9zLW1peGVyIGRyaXZlciAoY29k
ZTogcGF0Y2ggMDcsIERUUzogcGF0Y2ggMDYpIGlmIHRoZSBEVFMKcHJvcGVydHkgKCdpbnRlcmNv
bm5lY3RzJykgaXMgbWlzc2luZywgb2ZfaWNjX2dldCgpIHJldHVybnMgTlVMTCBhbmQgdGhlIGNv
ZGUgZG9lcwpub3QgdHJ5IHRvIHNldCBhbnkgY29udHJhaW50cyBmb3IgYSBOVUxMIHBhdGguIFNh
bWUgdGhpbmcgaGFwcGVucyBpZgpDT05GSUdfSU5URVJDT05ORUNUIGlzICduJy4KClRoZSBvbmx5
IGNhc2Ugd2hlbiBzb21ldGhpbmcgYnJlYWtzIGlzIHdoZW4geW91IHRyeSB0byB1c2UgdGhlIGlu
dGVyY29ubmVjdApjb25zdW1lciAoaW1wbGVtZW50ZWQgaW4gcGF0Y2hlcyAwNiAmIDA3KSB3aGVu
IHRoZXJlIGlzIG5vIGludGVyY29ubmVjdCBwcm92aWRlcgoocGF0Y2hlcyAwNCAmIDA1KSwgaW4g
d2hpY2ggY2FzZSBvZl9pY2NfZ2V0KCkgcmV0dXJucyBhbiBlcnJvciAoc2luY2UgaXQgY2Fubm90
CmZpbmQgYSBwYXRoKS4gRnJvbSB3aGF0IEkgdW5kZXJzdGFuZCwgaXQgcHJvYmFibHkgbWFrZXMg
c2Vuc2UgdG8gbWVyZ2UgYW55CmludGVyY29ubmVjdCBjb25zdW1lcnMgb25lIGN5Y2xlIGxhdGVy
IHRoYW4gdGhlIHByb3ZpZGVyLgoKPiA+ID4gPiBJIHN0aWxsIHRoaW5rIHRoZSBvcmRlciBvZiB0
aGVzZSBwYXRjaGVzIGlzIHRoZSBtb3N0IGxvZ2ljYWwgb25lIGZvciBzb21lb25lCj4gPiA+ID4g
cmVhZGluZyB0aGlzIFJGQyBhcyBhIHdob2xlLgo+ID4gPiAKPiA+ID4gSSBhbSBzb3JyeSBidXQg
aXQgYnJpbmdzIG9ubHkgY29uZnVzaW9uLiBEVFMgaXMgb3J0aG9nb25hbCBvZiB0aGUKPiA+ID4g
ZHJpdmVyIGNvZGUuIFlvdSBjb3VsZCBldmVuIHBvc3QgdGhlIHBhdGNoc2V0IHdpdGhvdXQgRFRT
IChhbHRob3VnaCB0aGVuCj4gPiA+IGl0IHdvdWxkIHJhaXNlIHF1ZXN0aW9ucyB3aGVyZSBpcyB0
aGUgdXNlciBvZiBpdCwgYnV0IHN0aWxsLCB5b3UKPiA+ID4gY291bGQpLgo+ID4gPiAKPiA+ID4g
RnVydGhlciwgRFRTIGRlc2NyaWJlcyBhbHNvIGhhcmR3YXJlIHNvIHlvdSBjb3VsZCBzZW5kIGNl
cnRhaW4gRFRTCj4gPiA+IHBhdGNoZXMgd2l0aG91dCBkcml2ZXIgaW1wbGVtZW50YXRpb24gdG8g
ZGVzY3JpYmUgdGhlIGhhcmR3YXJlLgo+ID4gPiAKPiA+ID4gRHJpdmVyIGNvZGUgYW5kIERUUyBh
cmUga2luZCBvZiBkaWZmZXJlbnQgd29ybGRzIHNvIG1peGluZyB0aGVtIHVwIGZvcgo+ID4gPiBs
b2dpY2FsIHJldmlldyBkb2VzIG5vdCByZWFsbHkgbWFrZSBhbnkgc2Vuc2UuCj4gPiA+IAo+ID4g
PiBOb3QgbWVudGlvbmluZyBpdCBpcyBkaWZmZXJlbnQgdGhhbiBtb3N0IG9mIG90aGVyIHBhdGNo
ZXMgb24gbWFpbGluZwo+ID4gPiBsaXN0cy4KPiA+ID4gCj4gPiA+IEJUVywgaXQgaXMgdGhlIHNh
bWUgYXMgYmluZGluZ3Mgd2hpY2ggc2hvdWxkIChhbG1vc3QpIGFsd2F5cyBnbyBmaXJzdCBhcwo+
ID4gPiBzZXBhcmF0ZSBwYXRjaGVzLgo+ID4gCj4gPiBUaGFua3MgZm9yIGVsYWJvcmF0aW5nIG9u
IHRoaXMsIEkgYXBwcmVjaWF0ZSBpdC4KPiA+IFJlZ2FyZGluZyB5b3VyIG9yaWdpbmFsIGNvbmNl
cm4sIHBhdGNoZXMgMDQgJiAwNiBhcmUgc2VwYXJhdGUgZm9yIHNldmVyYWwKPiA+IHJlYXNvbnMs
IG9uZSBvZiB3aGljaCBpcyB0aGF0IHRoZXkgYXJlIHJlbGF0ZWQgdG8gdHdvIGRpZmZlcmVudCBk
cml2ZXJzCj4gPiAoZXh5bm9zLWJ1cyB2cy4gZXh5bm9zLW1peGVyKS4KPiAKPiBJdCdzIG9rYXkg
dGhlbiAoZm9yIHRoZW0gdG8gYmUgc3BsaXQpLgo+IAo+ID4gCj4gPiA+ID4gCj4gPiA+ID4gPiBJ
biBjZXJ0YWluIGNhc2VzIGRlcGVuZGVuY3kgb24gRFRTIGNoYW5nZXMgaXMgb2s6Cj4gPiA+ID4g
PiAxLiBDbGVhbmluZyB1cCBkZXByZWNhdGVkIHByb3BlcnRpZXMsCj4gPiA+ID4gPiAyLiBJZ25v
cmluZyB0aGUgYmFja3dhcmQgY29tcGF0aWJpbGl0eSBmb3IgZS5nLiBuZXcgcGxhdGZvcm1zLgo+
ID4gPiA+ID4gCj4gPiA+ID4gPiBOb25lIG9mIHRoZXNlIGFyZSBhcHBsaWNhYmxlIGhlcmUuCj4g
PiA+ID4gPiAKPiA+ID4gPiA+IFlvdSBuZWVkIHRvIHJld29yayBpdCwgcHV0IERUUyBjaGFuZ2Vz
IGF0IHRoZSBlbmQuIFRoaXMgY2xlYXJseSBzaG93cwo+ID4gPiA+ID4gdGhhdCB0aGVyZSBpcyBu
byB3cm9uZyBkZXBlbmRlbmN5Lgo+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+
IEFkanVzdCB0aGUgdGl0bGUgdG8gbWF0Y2ggdGhlIGNvbnRlbnRzIC0geW91IGFyZSBub3QgYWRk
aW5nIGJpbmRpbmdzIGJ1dAo+ID4gPiA+ID4gPiA+IHByb3BlcnRpZXMgdG8gYnVzIG5vZGVzLiBB
bHNvIHRoZSBwcmVmaXggaXMgQVJNOiAobG9vayBhdCByZWNlbnQKPiA+ID4gPiA+ID4gPiBjb21t
aXRzKS4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IE9LLgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+
ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2V4
eW5vczQ0MTItb2Ryb2lkLWNvbW1vbi5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQx
Mi1vZHJvaWQtY29tbW9uLmR0c2kKPiA+ID4gPiA+ID4gPiA+IGluZGV4IDRjZTNkNzdhNjcwNC4u
ZDlkNzBlYWNmY2FmIDEwMDY0NAo+ID4gPiA+ID4gPiA+ID4gLS0tIGEvYXJjaC9hcm0vYm9vdC9k
dHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kKPiA+ID4gPiA+ID4gPiA+ICsrKyBiL2Fy
Y2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTItb2Ryb2lkLWNvbW1vbi5kdHNpCj4gPiA+ID4gPiA+
ID4gPiBAQCAtOTAsNiArOTAsNyBAQAo+ID4gPiA+ID4gPiA+ID4gICZidXNfZG1jIHsKPiA+ID4g
PiA+ID4gPiA+ICAgICBleHlub3MscHBtdS1kZXZpY2UgPSA8JnBwbXVfZG1jMF8zPiwgPCZwcG11
X2RtYzFfMz47Cj4gPiA+ID4gPiA+ID4gPiAgICAgdmRkLXN1cHBseSA9IDwmYnVjazFfcmVnPjsK
PiA+ID4gPiA+ID4gPiA+ICsgICAjaW50ZXJjb25uZWN0LWNlbGxzID0gPDA+Owo+ID4gPiA+ID4g
PiA+IAo+ID4gPiA+ID4gPiA+IFRoaXMgZG9lcyBub3QgbG9vayBsaWtlIHByb3BlcnR5IG9mIE9k
cm9pZCBidXQgRXh5bm9zNDQxMiBvciBFeHlub3M0Lgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4g
U3RyYW5nZWx5IGVub3VnaCwgdGhpcyBmaWxlIGlzIHdoZXJlIHRoZSAnZXh5bm9zLHBhcmVudC1i
dXMnIChha2EuICdkZXZmcmVxJykKPiA+ID4gPiA+ID4gcHJvcGVydGllcyBhcmUgbG9jYXRlZCAo
YW5kIGV2ZXJ5dGhpbmcgaW4gdGhpcyBSRkMgY29uY2VybnMgZGV2ZnJlcSkuCj4gPiA+ID4gPiAK
PiA+ID4gPiA+IEkgY2Fubm90IGZpbmQgZXh5bm9zLHBhcmVudC1idXMgaW4gZXh5bm9zNDQxMi1v
ZHJvaWQtY29tbW9uLmR0c2kuIENhbgo+ID4gPiA+ID4geW91IGVsYWJvcmF0ZT8KPiA+ID4gPiAK
PiA+ID4gPiBDdXJyZW50bHkgYSBuYW1lIGNoYW5nZSBpcyBiZWluZyBtYWRlOiAnZGV2ZnJlcScg
LT4gJ2V4eW5vcyxwYXJlbnQtYnVzJwo+ID4gPiA+IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5v
cmcvcGF0Y2gvMTEzMDQ1NDkvCj4gPiA+ID4gKGEgZGVwZW5kZW5jeSBvZiB0aGlzIFJGQzsgYWxz
byBhdmFpbGFibGUgaW4gZGV2ZnJlcS10ZXN0aW5nIGJyYW5jaCkKPiA+ID4gCj4gPiA+IEkgc2Vl
LiBUaGF0IHByb3BlcnR5IGFsc28gZG9lcyBub3QgbG9vayBsaWtlIGJvYXJkIChPZHJvaWQpIHNw
ZWNpZmljIHNvCj4gPiA+IGl0IHNob3VsZCBiZSBtb3ZlZCB0byBFeHlub3M0NDEyIERUU0kuCj4g
PiAKPiA+IE1ha2VzIHNlbnNlIHRvIG1lLiBKdXN0IGZyb20gbG9va2luZyBhdCB0aGUgcGF0Y2gg
SSByZWZlcmVuY2VkIGFib3ZlLCB0aGVyZSBpcwo+ID4gYSBzaWduaWZpY2FudCBsZXZlbCBvZiBj
b2RlIGR1cGxpY2F0aW9uIGJldHdlZW4KPiA+ICogYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQx
Mi1pdG9wLXNjcC1jb3JlLmR0c2kKPiA+ICogYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1t
aWRhcy5kdHNpCj4gPiAqIGFyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTItb2Ryb2lkLWNvbW1v
bi5kdHNpCj4gPiB3aXRoIHJlbGF0aW9uIHRvIHRoZSBkZXZmcmVxKi9leHlub3MsKiBwcm9wZXJ0
aWVzLgo+IAo+IElmIHlvdSBoYXZlIGluIG1pbmQgYWxsIHRoZSBub2RlcyB3aXRoICJzdGF0dXM9
b2theSIsIGl0J3MgZmluZSB0bwo+IGR1cGxpY2F0ZSB0aGVtLgpPSy4KClJlZ2FyZHMsCi0tIApB
cnR1ciDFmndpZ2/FhApTYW1zdW5nIFImRCBJbnN0aXR1dGUgUG9sYW5kClNhbXN1bmcgRWxlY3Ry
b25pY3MKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
