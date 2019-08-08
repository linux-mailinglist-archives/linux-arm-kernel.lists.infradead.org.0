Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C382862ED
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 15:19:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:Mime-Version:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rBfYDCs475dokIWYm3wD6Hn+49Ea299o8HFYBXVXSkg=; b=LKuDUGtZISyBP3
	vaVEMT/hI5jgDWftucNtVJ23r0h4y9oxFeaJJMbzwT6WxwvlB1EcHLids5mQIIfXg6C/KeOtw9ELf
	PczsJpINfL9mSiMnOgqnJpG8Mxd3zUuTPKZtKZQxDkh1pRtJWHazr0c8rOCw9iA4mbfoFTjoZBUE4
	V4ppkzty8B1olEkcPx43ycCtTeIKVi6R4nT3xV9MyAOaW72CkoheLcbocarfxubcKlTvRSEC/2MRl
	86XywUcT4INxGlzlTjDCY6nCSosl4WTlE35RAsg30J7Fyf398Tr23K85YsbrUQ+Xy26rDrGzZFkcj
	67JZ8tdDjCFg2oScgV2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hviKW-0005Jo-Pn; Thu, 08 Aug 2019 13:19:44 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hviKH-0005Ia-L5
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 13:19:31 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190808131927euoutp028b50c7439f35ae26cdb3ee588a3aee55~49Rshr7vP0347603476euoutp02i
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  8 Aug 2019 13:19:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190808131927euoutp028b50c7439f35ae26cdb3ee588a3aee55~49Rshr7vP0347603476euoutp02i
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565270367;
 bh=ookusFW9IgM6u0l6dG3jFEGxecF9mJq8IKEqSZsXe3U=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=H3u6q2EgP214ncKYGJdX+T/HXd0sIC82mr+MytSy9JvkNarnKoHTK5j/9b5crL4L+
 MBBfrz6zd/+eyiEor7wQZY2pKhS3rnwWytohGo8DUGPFId6RuzMWr3ZSne+uTMtcib
 ykFa/zxcxZsMntMWswhZRY7cdWHjTvPbUyVt/c0Q=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190808131926eucas1p27760b9e4918c7ec639731837f737eb78~49RsDnfW82304523045eucas1p2W;
 Thu,  8 Aug 2019 13:19:26 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id EA.32.04309.E512C4D5; Thu,  8
 Aug 2019 14:19:26 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190808131925eucas1p18cbdebea41d0501bf9f9edb3bb0baf97~49Rq4M_Vg2619826198eucas1p1V;
 Thu,  8 Aug 2019 13:19:25 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190808131925eusmtrp2e2247ca1de6d1cc68f838d639791aa13~49RqqA2ig0955809558eusmtrp2b;
 Thu,  8 Aug 2019 13:19:25 +0000 (GMT)
X-AuditID: cbfec7f4-afbff700000010d5-8f-5d4c215ea915
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id E6.50.04166.D512C4D5; Thu,  8
 Aug 2019 14:19:25 +0100 (BST)
Received: from AMDC3555 (unknown [106.120.51.67]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20190808131924eusmtip1fdcb55f900a56f9267b3b1725f38cee1~49RqA_1gx0713907139eusmtip1h;
 Thu,  8 Aug 2019 13:19:24 +0000 (GMT)
Message-ID: <7f4eeef81c2688c2cb18b7aae71d457197c6d018.camel@partner.samsung.com>
Subject: Re: [RFC PATCH 09/11] devfreq: exynos-bus: Add interconnect
 functionality to exynos-bus
From: Artur =?UTF-8?Q?=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, Georgi Djakov
 <georgi.djakov@linaro.org>
Date: Thu, 08 Aug 2019 15:19:23 +0200
In-Reply-To: <VI1PR04MB5055BED59960B4F4147479AEEED50@VI1PR04MB5055.eurprd04.prod.outlook.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrBKsWRmVeSWpSXmKPExsWy7djP87pxij6xBt9+yFtc//Kc1WL+kXOs
 Fle+vmezmL53E5vFpPsTWCzOn9/AbrHi7kdWi02Pr7FaXN41h83ic+8RRosZ5/cxWaw9cpfd
 4nbjCjaLGZNfsjnweWxa1cnmcefaHjaP+93HmTw2L6n32PhuB5NH35ZVjB6fN8kFsEdx2aSk
 5mSWpRbp2yVwZRy4k1DQwFMx588KxgbGDZxdjJwcEgImEhumb2LqYuTiEBJYwSjxfdl7Ngjn
 C6PE1d67LBDOZ0aJHW0LmGFaDl58DlW1nFHi/rFnUM4zRonXi3+AVfEKBEic+TybFcQWFkiS
 WPDoIpjNJuAu8e/5FTBbRCBSYs/uy2ArmAXOskqcm7gOrJlFQFXi7/WpYEWcArESr1pOQa3W
 kXh7qg+ogQNogaDE3x3CIGFmAXmJ5q2zmUHmSAjcY5foXzeHDaLeReLUksuMELawxKvjW9gh
 bBmJ/zvnM0HYxRJPd95nhWhuYJTYtOwI1DJricPHQa7mANqgKbF+lz5E2FHibd9RZpCwhACf
 xI23ghA38ElM2jYdKswr0dEmBGFqSSz4HQ3RKCHRtPoa1GwPiZZHz9knMCrOQvhlFpJfZiFs
 XcDIvIpRPLW0ODc9tdgoL7Vcrzgxt7g0L10vOT93EyMwfZ3+d/zLDsZdf5IOMQpwMCrx8Bac
 8I4VYk0sK67MPcQowcGsJMJ7r8wzVog3JbGyKrUoP76oNCe1+BCjNAeLkjhvNcODaCGB9MSS
 1OzU1ILUIpgsEwenVAPjlsUv5W8YHehlufcrWd/s2JrQZP8cK0E54ekzbjG6SctMNN6b1eCc
 d3cL+0leJp5XDRZybv0+e7jZZhiu3rej9+Rh2bg51rs8DioKOt033+FVbZtz1fB3pur2XUtS
 bN3WyT4PvfL6WuB6SfbrciGH72heaZQIjvr6wWf3dhXRMtvjajtsinWVWIozEg21mIuKEwHm
 2kMrWwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrPIsWRmVeSWpSXmKPExsVy+t/xu7qxij6xBgduClpc//Kc1WL+kXOs
 Fle+vmezmL53E5vFpPsTWCzOn9/AbrHi7kdWi02Pr7FaXN41h83ic+8RRosZ5/cxWaw9cpfd
 4nbjCjaLGZNfsjnweWxa1cnmcefaHjaP+93HmTw2L6n32PhuB5NH35ZVjB6fN8kFsEfp2RTl
 l5akKmTkF5fYKkUbWhjpGVpa6BmZWOoZGpvHWhmZKunb2aSk5mSWpRbp2yXoZRy4k1DQwFMx
 588KxgbGDZxdjJwcEgImEgcvPmcDsYUEljJKfGhyh4hLSHxcf4MVwhaW+HOtC6iGC6jmCaPE
 mdXHGEESvAIBEmc+zwYrEhZIkljw6CKYzSbgLvHv+RUwW0QgSuL5jT4mkGZmgXOsEpe3bgdL
 sAioSvy9PhXM5hSIlXjVcooZYsMSJomDmxexgCSYBTQlWrf/Zoc4Q0fi7ak+oDgH0GZBib87
 hCFK5CWat85mnsAoOAtJxyyEqllIqhYwMq9iFEktLc5Nzy021CtOzC0uzUvXS87P3cQIjMxt
 x35u3sF4aWPwIUYBDkYlHt6CE96xQqyJZcWVuYcYJTiYlUR475V5xgrxpiRWVqUW5ccXleak
 Fh9iNAX6ZyKzlGhyPjBp5JXEG5oamltYGpobmxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi
 4JRqYJQzXVucOq3T69q1HQ7ObwtuPE67Wn2nc2tl4qTHty4q/O9iPTQ1xO3pXYeOKwG6QnwB
 GY5szhKrX/ut/ycxuf2e+w1PdV4mzaj9R3v+Xz9sdO97nIuI2YlWgav2lz1eCZrOS7tW2h93
 +r1P7nvbqZV6e0IyrE7fW/CpXGBWpcdeP03e2yurCpRYijMSDbWYi4oTAeiNT3XiAgAA
X-CMS-MailID: 20190808131925eucas1p18cbdebea41d0501bf9f9edb3bb0baf97
X-Msg-Generator: CA
X-RootMTR: 20190723122028eucas1p2eb75f35b810e71d6c590370aaff0997b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190723122028eucas1p2eb75f35b810e71d6c590370aaff0997b
References: <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <CGME20190723122028eucas1p2eb75f35b810e71d6c590370aaff0997b@eucas1p2.samsung.com>
 <20190723122016.30279-10-a.swigon@partner.samsung.com>
 <VI1PR04MB5055BED59960B4F4147479AEEED50@VI1PR04MB5055.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_061929_829399_D5FFEE5E 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "sw0312.kim@samsung.com" <sw0312.kim@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "inki.dae@samsung.com" <inki.dae@samsung.com>,
 "cw00.choi@samsung.com" <cw00.choi@samsung.com>,
 "myungjoo.ham@samsung.com" <myungjoo.ham@samsung.com>,
 "krzk@kernel.org" <krzk@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpUaGFuayB5b3UgZm9yIHlvdXIgY29tbWVudHMuCgpPbiBUdWUsIDIwMTktMDgtMDYgYXQg
MTM6NDEgKzAwMDAsIExlb25hcmQgQ3Jlc3RleiB3cm90ZToKPiBPbiAyMy4wNy4yMDE5IDE1OjIx
LCBBcnR1ciDFmndpZ2/FhCB3cm90ZToKPiAKPiA+ICtzdGF0aWMgaW50IGV4eW5vc19idXNfaWNj
X2FnZ3JlZ2F0ZShzdHJ1Y3QgaWNjX25vZGUgKm5vZGUsIHUzMiBhdmdfYncsCj4gPiArCQkJCSAg
ICB1MzIgcGVha19idywgdTMyICphZ2dfYXZnLCB1MzIgKmFnZ19wZWFrKQo+ID4gK3sKPiA+ICsJ
KmFnZ19wZWFrID0gKmFnZ19hdmcgPSBwZWFrX2J3Owo+ID4gKwo+ID4gKwlyZXR1cm4gMDsKPiA+
ICt9Cj4gCj4gVGhlIG9ubHkgY3VycmVudCBwcm92aWRlciBhZ2dyZWdhdGVzICJhdmciIHdpdGgg
InN1bSIgYW5kICJwZWFrIiB3aXRoIAo+ICJtYXgiLCBhbnkgcGFydGljdWxhciByZWFzb24gdG8g
ZG8gc29tZXRoaW5nIGRpZmZlcmVudD8gVGhpcyBmdW5jdGlvbiAKPiBkb2Vzbid0IGV2ZW4gcmVh
bGx5IGRvIGFnZ3JlZ2F0aW9uLCBpZiB0aGVyZSBpcyBhIHNlY29uZCByZXF1ZXN0IGZvciAiMCIg
Cj4gdGhlbiB0aGUgZmlyc3QgcmVxdWVzdCBpcyBsb3N0LgoKWWVzLCB5b3UncmUgcmlnaHQuIEkg
YWRvcHRlZCBhbiBvdmVyc2ltcGxpZmllZCBzb2x1dGlvbiBmb3IgdGhlIHB1cnBvc2Ugb2YgdGhp
cwpSRkMgKHBsZWFzZSBiZWFyIGluIG1pbmQgdGhhdCBjdXJyZW50bHkgb25seSBvbmUgaWNjX3Bh
dGggaXMgdXNlZCwgc28gdGhlcmUgaXMKbm8gYWdncmVnYXRpb24gYW55d2F5KS4KCj4gSSBkaWRu
J3QgZmluZCBhbnkgZG9jcyBidXQgbXkgaW50ZXJwcmV0YXRpb24gb2YgYXZnL3BlYWsgaXMgdGhh
dCAiYXZnIiAKPiBpcyBmb3IgY29uc3RhbnQgdHJhZmZpYyBsaWtlIGEgZGlzcGxheSBvciBWUFUg
cHVzaGluZyBwaXhlbHMgYW5kICJwZWFrIiAKPiBpcyBmb3IgdmFyaWFibGUgdHJhZmZpYyBsaWtl
IG5ldHdvcmtpbmcuIEkgYXNzdW1lIGRldmljZXMgd2hpY2ggbWFrZSAKPiAicGVhayIgcmVxdWVz
dHMgYXJlIGFnZ3JlZ2F0ZWQgd2l0aCBtYXggYmVjYXVzZSB0aGV5J3JlIG5vdCBleHBlY3RlZCB0
byAKPiBhbGwgbWF4LW91dCB0b2dldGhlci4KClRoYXQncyBjb3JyZWN0IChhY2NvcmRpbmcgdG8g
bXkgdW5kZXJzdGFuZGluZykuCgo+IEluIFBBVENIIDExIHlvdSdyZSBtYWtpbmcgYSBiYW5kd2lk
dGggcmVxdWVzdCBiYXNlZCBvbiByZXNvbHV0aW9uLCB0aGF0IAo+IHRyYWZmaWMgaXMgY29uc3Rh
bnQgYW5kIGd1YXJhbnRlZWQgdG8gaGFwcGVuZCB3aGlsZSB0aGUgZGlzcGxheSBpcyBvbiBzbyAK
PiBpdCB3b3VsZCBtYWtlIHNlbnNlIHRvIHJlcXVlc3QgaXQgYXMgYW4gImF2ZyIgYW5kIGFnZ3Jl
Z2F0ZSBpdCB3aXRoICJzdW0iLgo+IAo+IC0tCj4gUmVnYXJkcywKPiBMZW9uYXJkCj4gCi0tIApB
cnR1ciDFmndpZ2/FhApTYW1zdW5nIFImRCBJbnN0aXR1dGUgUG9sYW5kClNhbXN1bmcgRWxlY3Ry
b25pY3MKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
