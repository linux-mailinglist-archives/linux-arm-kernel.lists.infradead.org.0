Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF5C1244DF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 11:42:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:Mime-Version:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aeqx4C9iSaWyVEcyL4bbrgcqRbE/dVA0tO2j98uGjnc=; b=qSTKBNwx/geoS2
	1v9V4fq12X/8yK6ZAEPYlZCWHcrHsF/aqJ7BV1amfZP/cv3zTVFLsCdqMN+CPHSy8nhviVv4B3MWa
	af+DXbUpGdNcRou4u2yyuF+XojSkaYhucMJOo1NaLqyvRhnkw9UMQFwIW0Bplc0jhlpkCkxuTRgVN
	W1yebimi7Haa81ZV43WXZlZE2mHDWOUut1f8uusH2KX3pSeX7k5RujDfIZJA/y8xuh0KO6eXT1J6k
	bmE2HVItxibLD+9jQe9cTd6me2HPirNflgoHWkO8UVGHvPk6UhLSPvM8YF60xH4sRsUkWlaSPrCms
	uVP1JyIiD/D6weDxoxFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWmP-0004k8-55; Wed, 18 Dec 2019 10:42:09 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWmF-0004jP-IU
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 10:42:01 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191218104157euoutp029681fb08fd63f9dda6014c0450a2c07e~hcR3JY1jn2274822748euoutp02u
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 10:41:57 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191218104157euoutp029681fb08fd63f9dda6014c0450a2c07e~hcR3JY1jn2274822748euoutp02u
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576665717;
 bh=Sxav5XdUuDNJs7Nh+FfUteZxECChMUkMQvjWcB/cqHs=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=CtAT4jvVcJ7/Y4kliXgiQnt6LIQS/eDQJi94vlwvmb1nHvliXw25KtuvhB++xp6TH
 z+o3T9pA8U2j0mx+sM7VwnHjrn7gDKk/v0+iw8NJnlEBVN2xOq98fXxqylEBXkY576
 gk9+YWqX6z8xFbTnuAFkG30QT0FQYbGlMq/4vRBo=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191218104157eucas1p277d37f84989ba383582145d3251b377b~hcR2487XC2587625876eucas1p2l;
 Wed, 18 Dec 2019 10:41:57 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 6C.C8.60679.4720AFD5; Wed, 18
 Dec 2019 10:41:56 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191218104156eucas1p263ec61eeadbfcde28c2a1943bd056cc2~hcR2RfokS2651926519eucas1p2B;
 Wed, 18 Dec 2019 10:41:56 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191218104156eusmtrp24d855852c19e6a2c772002de7ca53893~hcR2Ql8Q50735107351eusmtrp2J;
 Wed, 18 Dec 2019 10:41:56 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-ab-5dfa027459d7
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 53.5F.08375.4720AFD5; Wed, 18
 Dec 2019 10:41:56 +0000 (GMT)
Received: from AMDC3555 (unknown [106.120.51.67]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20191218104155eusmtip11ec6b8e60f79079b8e0777fe9af237bb~hcR1noTQ62671826718eusmtip1T;
 Wed, 18 Dec 2019 10:41:55 +0000 (GMT)
Message-ID: <803d0920cf24eb9b4c87bb1d5e894cc3c9c88e72.camel@samsung.com>
Subject: Re: [RFC PATCH v2 08/11] arm: dts: exynos: Add parents and
 #interconnect-cells to Exynos4412
From: Artur =?UTF-8?Q?=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: Chanwoo Choi <chanwoo@kernel.org>
Date: Wed, 18 Dec 2019 11:41:55 +0100
In-Reply-To: <CAGTfZH1=gk1jm4wmX+xMZfkrPR_UDumaDEfmddrpbig4VnN8FQ@mail.gmail.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01SaUhUYRTte9s8p548R8mLhtFImm1jJfSiRYt+vPBPRRIIZmM91HKpeWoZ
 kSuihqbTDycLjai0sVwmFTVtmdShtAYZHQszCbHSNB03MFxyfBP279xzz7nnXrg0rugiPejo
 uARBE6eOUVJyor59zrwjAfsT5m/7uY+r0VWRXOGnboLrnf5BcqWtH0mue2ac4opaDBSnHSgg
 OLO5WsaV99tIzjBoJTlL0z2Km8prRZzO/BLjnrX2y7i+tHKK090epoJY3qDPofgv1maKH7hp
 wvjnD1P4mt8NGJ9fq0f8lMHruCxUfuC8EBOdJGhUh87Kox5pB7FLaUFXv1lLsFRUuS0XOdHA
 BkCn0YJykZxWsOUI3mXUkFIxjWBqaByTiikEL8tsxD9LfWapw1KGoL2tmpCK7wh0aVZkVzEs
 DxU9oyvYlY2E3pxJzI4pNhA+9M2uYDd2M1RPtq/k4WwhCeX1i8sGmiaWG5aW9XaNE3sCDG/e
 YlLydhh7n0/YJQzrAgsNrnYaZzdCRt1dXJLMyMBS6C3ho/D6lkkmYVcYMdU68AZYaix1jBRh
 qHFgZQVgUxEYHrc6Bu2Ht6Yu0p6Fs35Q1aSS6MOQ9bRIZqeBdYZPYy7SCs6grS/CJZqB7CyF
 BJXQdMdZMgKkV1gds3mYyenECtCm4tVTiv87pXg19T7C9chdSBRjIwVxd5xwZaeojhUT4yJ3
 nouPNaDlR+tYNE03oKb5CCNiaaRcx/ivmQtTkOokMTnWiIDGlW5MX/YyxZxXJ18TNPHhmsQY
 QTQiT5pQujN7HgyHKdhIdYJwURAuCZp/XYx28khFwZ3aAOfs7Ccm98ALQsdkpv/riYnwR3Vz
 TDx6VeJu9Wm2+aavqbjenaE/ol+7cCoorznUJ3x2S1txoidWd/mzuWTpa8+2+YQzqsqTvDzT
 +ONcnapZGDzWorOpXliCvTxa9o6OhEQ8qNXy35NTQoqGfU+HLI7MMd5+xK/ogzc065WEGKXe
 tRXXiOq/6KutBWQDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrFIsWRmVeSWpSXmKPExsVy+t/xu7olTL9iDe5/FbbYOGM9q8XEG1dY
 LK5/ec5qMf/IOVaLK1/fs1lM37uJzWLS/QksFufPb2C3WHH3I6vFpsfXWC0u75rDZvG59wij
 xYzz+5gs1h65y25xu3EFm8WMyS/ZHAQ8Nq3qZPO4c20Pm8f97uNMHpuX1HtsfLeDyaNvyypG
 j8+b5ALYo/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOtjEyV9O1sUlJzMstSi/Tt
 EvQylk56zFTQ6FDx8No8pgbGddpdjJwcEgImEtta5jN2MXJxCAksZZQ4/gHEAUlISHxcf4MV
 whaW+HOtiw2i6AmjxKW+sywgCV4BD4nVV9+ANQgLpEtc7/zEBGKzCdhLnL39DcwWEVCV2PDp
 GCtIM7PARFaJw/sfAU3i4GABSlzeKwZSwykQKLHp4GEmiAUbmSW6Xm1kBkkwC2hKtG7/zQ5x
 hY7E21N9LCC9vAKCEn93CEOUyEs0b53NPIFRcBaSjlkIVbOQVC1gZF7FKJJaWpybnltsqFec
 mFtcmpeul5yfu4kRGK/bjv3cvIPx0sbgQ4wCHIxKPLwGDD9jhVgTy4orcw8xSnAwK4nw3u4A
 CvGmJFZWpRblxxeV5qQWH2I0BXpnIrOUaHI+MJXklcQbmhqaW1gamhubG5tZKInzdggcjBES
 SE8sSc1OTS1ILYLpY+LglGpg1NOrkA4wOzzpvECl9eFWnnamc60Vp6OCrY9ZTLO58CLg/unM
 T2qT/4s6pdccSrtaHWen0XpT4KiOZ0509FmFVt65bWc9/l/4t8lJ6eiVZb3f8qac3dj97CSH
 QdXiTVvZzTtWr3msKb3jZvOpZqkGlUfL8tUTNZPbl/WLBF+4Vv/II6g8Km+hEktxRqKhFnNR
 cSIAJXEZIu0CAAA=
X-CMS-MailID: 20191218104156eucas1p263ec61eeadbfcde28c2a1943bd056cc2
X-Msg-Generator: CA
X-RootMTR: 20190919142329eucas1p299762f99dd55a5d625633ceec84219f9
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190919142329eucas1p299762f99dd55a5d625633ceec84219f9
References: <20190919142236.4071-1-a.swigon@samsung.com>
 <CGME20190919142329eucas1p299762f99dd55a5d625633ceec84219f9@eucas1p2.samsung.com>
 <20190919142236.4071-9-a.swigon@samsung.com>
 <693e250d-9656-df67-9685-188020b43542@samsung.com>
 <eecc5d38-f6ab-b1ea-1a08-0afb2dcddbef@samsung.com>
 <2008dca684ccb1dd740e6e6b88e56727d0d1c435.camel@samsung.com>
 <CAGTfZH1=gk1jm4wmX+xMZfkrPR_UDumaDEfmddrpbig4VnN8FQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_024159_945988_CCC138AD 
X-CRM114-Status: GOOD (  32.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, inki.dae@samsung.com,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, georgi.djakov@linaro.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyMDE5LTEyLTE4IGF0IDE5OjI5ICswOTAwLCBDaGFud29vIENob2kgd3JvdGU6Cj4g
SGkKPiAKPiAyMDE564WEIDEy7JuUIDE47J28ICjsiJgpIOyYpO2bhCA3OjE4LCBBcnR1ciDFmndp
Z2/FhCA8YS5zd2lnb25Ac2Ftc3VuZy5jb20+64uY7J20IOyekeyEsToKPiA+IAo+ID4gSGksCj4g
PiAKPiA+IE9uIE1vbiwgMjAxOS0xMi0xNiBhdCAxMTo1OSArMDkwMCwgQ2hhbndvbyBDaG9pIHdy
b3RlOgo+ID4gPiBIaSwKPiA+ID4gCj4gPiA+IE9uIDEyLzE2LzE5IDk6NTEgQU0sIENoYW53b28g
Q2hvaSB3cm90ZToKPiA+ID4gPiBPbiA5LzE5LzE5IDExOjIyIFBNLCBBcnR1ciDFmndpZ2/FhCB3
cm90ZToKPiA+ID4gPiA+IEZyb206IEFydHVyIMWad2lnb8WEIDxhLnN3aWdvbkBwYXJ0bmVyLnNh
bXN1bmcuY29tPgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBUaGlzIHBhdGNoIGFkZHMgdHdvIGZpZWxk
cyB0byB0aGUgRXh5bm9zNDQxMiBEVFM6Cj4gPiA+ID4gPiAgIC0gcGFyZW50OiB0byBkZWNsYXJl
IGNvbm5lY3Rpb25zIGJldHdlZW4gbm9kZXMgdGhhdCBhcmUgbm90IGluIGEKPiA+ID4gPiA+ICAg
ICBwYXJlbnQtY2hpbGQgcmVsYXRpb24gaW4gZGV2ZnJlcTsKPiA+ID4gPiA+ICAgLSAjaW50ZXJj
b25uZWN0LWNlbGxzOiByZXF1aXJlZCBieSB0aGUgaW50ZXJjb25uZWN0IGZyYW1ld29yay4KPiA+
ID4gPiA+IAo+ID4gPiA+ID4gUGxlYXNlIG5vdGUgdGhhdCAjaW50ZXJjb25uZWN0LWNlbGxzIGlz
IGFsd2F5cyB6ZXJvIGFuZCBub2RlIElEcyBhcmUgbm90Cj4gPiA+ID4gPiBoYXJkY29kZWQgYW55
d2hlcmUuIFRoZSBhYm92ZS1tZW50aW9uZWQgcGFyZW50LWNoaWxkIHJlbGF0aW9uIGluIGRldmZy
ZXEKPiA+ID4gPiA+IG1lYW5zIHRoYXQgdGhlcmUgaXMgYSBzaGFyZWQgcG93ZXIgbGluZSAoJ2Rl
dmZyZXEnIHByb3BlcnR5KS4gVGhlICdwYXJlbnQnCj4gPiA+ID4gPiBwcm9wZXJ0eSBvbmx5IHNp
Z25pZmllcyBhbiBpbnRlcmNvbm5lY3QgY29ubmVjdGlvbi4KPiA+ID4gPiA+IAo+ID4gPiA+ID4g
U2lnbmVkLW9mZi1ieTogQXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHBhcnRuZXIuc2Ftc3VuZy5j
b20+Cj4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ICBhcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEy
LW9kcm9pZC1jb21tb24uZHRzaSB8IDEgKwo+ID4gPiA+ID4gIGFyY2gvYXJtL2Jvb3QvZHRzL2V4
eW5vczQ0MTIuZHRzaSAgICAgICAgICAgICAgIHwgOSArKysrKysrKysKPiA+ID4gPiA+ICAyIGZp
bGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKPiA+ID4gPiA+IAo+ID4gPiA+ID4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTItb2Ryb2lkLWNvbW1vbi5kdHNpIGIv
YXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kKPiA+ID4gPiA+
IGluZGV4IGVhNTVmMzc3ZDE3Yy4uYmRkNjFhZTg2MTAzIDEwMDY0NAo+ID4gPiA+ID4gLS0tIGEv
YXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kKPiA+ID4gPiA+
ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTItb2Ryb2lkLWNvbW1vbi5kdHNpCj4g
PiA+ID4gPiBAQCAtMTA2LDYgKzEwNiw3IEBACj4gPiA+ID4gPiAgJmJ1c19sZWZ0YnVzIHsKPiA+
ID4gPiA+ICAgZGV2ZnJlcS1ldmVudHMgPSA8JnBwbXVfbGVmdGJ1c18zPiwgPCZwcG11X3JpZ2h0
YnVzXzM+Owo+ID4gPiA+ID4gICB2ZGQtc3VwcGx5ID0gPCZidWNrM19yZWc+Owo+ID4gPiA+ID4g
KyBwYXJlbnQgPSA8JmJ1c19kbWM+Owo+ID4gPiA+IAo+ID4gPiA+IEFzIEkgbWVudGlvbmVkIG9u
IG90aGVyIHJlcGx5LAo+ID4gPiA+IEknbSBub3Qgc3VyZSB0byB1c2UgdGhlIHNwZWNpZmljICdw
YXJlbnQnIHByb3BlcnR5IHRvIG1ha2UKPiA+ID4gPiB0aGUgY29ubmVjdGlvbiBiZXR3ZWVuIGJ1
c2VzLiBJZiBwb3NzaWJsZSwgeW91IGJldHRlciB0bwo+ID4gPiA+IHVzZSB0aGUgc3RhbmRhcmQg
d2F5IGxpa2UgT0YgZ3JhcGguIEV4Y2VwdCBmb3IgbWFraW5nCj4gPiA+ID4gdGhlIGNvbm5lY3Rp
b24gYmV0d2VlbiBidXNlcyBieSAncGFyZW50JyBwcm9wZXJ0eSwKPiA+ID4gPiBsb29rcyBnb29k
IHRvIG1lLgo+ID4gPiAKPiA+ID4gSSB0cmllZCB0byB0aGluayBpdCBjb250aW51b3VzbHkuIEkg
d2l0aGRyYXcgdGhlIG15IG9waW5pb24KPiA+ID4gdXNpbmcgT0YgZ3JhcGguIElmIHlvdSBtYWtl
IHRoZSBwcm9wZXJ0eSBuYW1lIGxpa2UgdGhlIGZvbGxvd2luZwo+ID4gPiBleGFtcGxlLCBpdCBp
cyBwb3NzaWJsZSBmb3IgZXh5bm9zLgo+ID4gPiAtIGV4eW5vcyxpbnRlcmNvbm5lY3QtcGFyZW50
LW5vZGUgPSA8JmJ1c19kbWM+OyBvciBvdGhlciBwcm9wZXIgbmFtZS4KPiA+ID4gCj4gPiA+IFJl
Z2FyZGxlc3Mgb2YgZXhpc3RpbmcgJ2RldmZyZXEnIHByb3BlcnR5LCBJIHRoaW5rIHlvdSBiZXR0
ZXIgdG8KPiA+ID4gbWFrZSB0aGUgY29ubmVjdGlvbiBiZXR3ZWVuIGJ1c2VzIGZvciBvbmx5IGlu
dGVyY29ubmVjdCBhcyBmb2xsb3dpbmcKPiA+ID4gZXhhbXBsZTogVGhpcyBtYWtlIGl0IHBvc3Np
YmxlIHVzZXIgY2FuIGRyYXcgdGhlIGNvcnJlY3QgdHJlZSBieSB0cmFja2luZwo+ID4gPiB0aGUg
J2V4eW5vcyxpbnRlcmNvbm5lY3QtcGFyZW50LW5vZGUnIHZhbHVlLgo+ID4gCj4gPiBPSywgZm9y
IHYzIEkgd2lsbCBhZGQgJ2V4eW5vcyxpbnRlcmNvbm5lY3QtcGFyZW50LW5vZGUnIHRvIGJ1c19k
bWMsCj4gPiBidXNfbGVmdGJ1cyBhbmQgYnVzX2Rpc3BsYXkgYXMgeW91IHN1Z2dlc3RlZCBiZWxv
dyBhbmQgY2hhbmdlIHRoZSBjb2RlCj4gPiBzbyB0aGF0IHRoZSAnZGV2ZnJlcScgKG9yIHRoZSB1
cGNvbWluZyAnZXh5bm9zLHBhcmVudC1idXMnKSBwcm9wZXJ0eSBpcwo+ID4gbm90IHRha2VuIGlu
dG8gYWNjb3VudC4KPiAKPiBJJ2QgbGlrZSB5b3UgdG8gbWFrZSB0aGUgdjMgYmFzZWQgb24gbXkg
cGF0Y2hlc1sxXQo+IFsxXSAgaHR0cHM6Ly9wcm90ZWN0Mi5maXJlZXllLmNvbS91cmw/az0zZmJk
NjJhNC02Mjc2ZTU5YS0zZmJjZTllYi0wY2M0N2EzMTMwOWEtNTMyOTE1MWI5OGZjMjY1MyZ1PWh0
dHBzOi8vbGttbC5vcmcvbGttbC8yMDE5LzEyLzE3LzIxCj4gLSBbUEFUQ0ggMC85XSBQTSAvIGRl
dmZyZXE6IFJlbW92ZSBkZXByZWNhdGVkICdkZXZmcmVxJyBhbmQKPiAnZGV2ZnJlcS1ldmVudHMn
IHByb3BlcnRpZXMKPiAKPiBJIHVwbG9hZGVkIHRoZSBwYXRjaGVzIHRvIGRldmZyZXEtdGVzdGlu
ZyBicmFuY2hbMl0KPiBbMl0gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tl
cm5lbC9naXQvY2hhbndvby9saW51eC5naXQvbG9nLz9oPWRldmZyZXEtdGVzdGluZwoKT0suCgo+
IAo+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLW9k
cm9pZC1jb21tb24uZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTItb2Ryb2lkLWNv
bW1vbi5kdHNpCj4gPiA+IGluZGV4IGVhNTVmMzc3ZDE3Yy4uNTNmODdmNDZlMTYxIDEwMDY0NAo+
ID4gPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLW9kcm9pZC1jb21tb24uZHRz
aQo+ID4gPiArKysgYi9hcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLW9kcm9pZC1jb21tb24u
ZHRzaQo+ID4gPiBAQCAtOTAsNiArOTAsNyBAQAo+ID4gPiAgJmJ1c19kbWMgewo+ID4gPiAgICAg
ICAgIGRldmZyZXEtZXZlbnRzID0gPCZwcG11X2RtYzBfMz4sIDwmcHBtdV9kbWMxXzM+Owo+ID4g
PiAgICAgICAgIHZkZC1zdXBwbHkgPSA8JmJ1Y2sxX3JlZz47Cj4gPiA+ICsgICAgICAgI2ludGVy
Y29ubmVjdC1jZWxscyA9IDwwPjsKPiA+ID4gICAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gPiA+
ICB9Owo+ID4gPiAKPiA+ID4gQEAgLTEwNiw2ICsxMDcsOCBAQAo+ID4gPiAgJmJ1c19sZWZ0YnVz
IHsKPiA+ID4gICAgICAgICBkZXZmcmVxLWV2ZW50cyA9IDwmcHBtdV9sZWZ0YnVzXzM+LCA8JnBw
bXVfcmlnaHRidXNfMz47Cj4gPiA+ICAgICAgICAgdmRkLXN1cHBseSA9IDwmYnVjazNfcmVnPjsK
PiA+ID4gKyAgICAgICBleHlub3MsaW50ZXJjb25uZWN0LXBhcmVudC1ub2RlID0gPCZidXNfZG1j
PjsKPiA+ID4gKyAgICAgICAjaW50ZXJjb25uZWN0LWNlbGxzID0gPDA+Owo+ID4gPiAgICAgICAg
IHN0YXR1cyA9ICJva2F5IjsKPiA+ID4gIH07Cj4gPiA+IAo+ID4gPiBAQCAtMTE2LDYgKzExOSw4
IEBACj4gPiA+IAo+ID4gPiAgJmJ1c19kaXNwbGF5IHsKPiA+ID4gICAgICAgICBkZXZmcmVxID0g
PCZidXNfbGVmdGJ1cz47Cj4gPiA+ICsgICAgICAgZXh5bm9zLGludGVyY29ubmVjdC1wYXJlbnQt
bm9kZSA9IDwmYnVzX2xlZnRidXM+Owo+ID4gPiArICAgICAgICNpbnRlcmNvbm5lY3QtY2VsbHMg
PSA8MD47Cj4gPiA+ICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gPiAgfTsKPiA+ID4gCj4g
PiA+IAo+ID4gPiA+IAo+ID4gPiA+IAo+ID4gPiA+ID4gICBzdGF0dXMgPSAib2theSI7Cj4gPiA+
ID4gPiAgfTsKPiA+ID4gPiA+IAo+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3Qv
ZHRzL2V4eW5vczQ0MTIuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTIuZHRzaQo+
ID4gPiA+ID4gaW5kZXggZDIwZGIyZGZlOGUyLi5hNzBhNjcxYWNhY2QgMTAwNjQ0Cj4gPiA+ID4g
PiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLmR0c2kKPiA+ID4gPiA+ICsrKyBi
L2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTIuZHRzaQo+ID4gPiA+ID4gQEAgLTM5MCw2ICsz
OTAsNyBAQAo+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbG9jayBDTEtf
RElWX0RNQz47Cj4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJidXMi
Owo+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmYnVz
X2RtY19vcHBfdGFibGU+Owo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgI2ludGVyY29ubmVj
dC1jZWxscyA9IDwwPjsKPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNh
YmxlZCI7Cj4gPiA+ID4gPiAgICAgICAgICAgfTsKPiA+ID4gPiA+IAo+ID4gPiA+ID4gQEAgLTM5
OCw2ICszOTksNyBAQAo+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbG9j
ayBDTEtfRElWX0FDUD47Cj4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9
ICJidXMiOwo+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgb3BlcmF0aW5nLXBvaW50cy12MiA9
IDwmYnVzX2FjcF9vcHBfdGFibGU+Owo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgI2ludGVy
Y29ubmVjdC1jZWxscyA9IDwwPjsKPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9
ICJkaXNhYmxlZCI7Cj4gPiA+ID4gPiAgICAgICAgICAgfTsKPiA+ID4gPiA+IAo+ID4gPiA+ID4g
QEAgLTQwNiw2ICs0MDgsNyBAQAo+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgY2xvY2tzID0g
PCZjbG9jayBDTEtfRElWX0MyQz47Cj4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICBjbG9jay1u
YW1lcyA9ICJidXMiOwo+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgb3BlcmF0aW5nLXBvaW50
cy12MiA9IDwmYnVzX2RtY19vcHBfdGFibGU+Owo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAg
I2ludGVyY29ubmVjdC1jZWxscyA9IDwwPjsKPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgIHN0
YXR1cyA9ICJkaXNhYmxlZCI7Cj4gPiA+ID4gPiAgICAgICAgICAgfTsKPiA+ID4gPiA+IAo+ID4g
PiA+ID4gQEAgLTQ1OSw2ICs0NjIsNyBAQAo+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgY2xv
Y2tzID0gPCZjbG9jayBDTEtfRElWX0dETD47Cj4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICBj
bG9jay1uYW1lcyA9ICJidXMiOwo+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgb3BlcmF0aW5n
LXBvaW50cy12MiA9IDwmYnVzX2xlZnRidXNfb3BwX3RhYmxlPjsKPiA+ID4gPiA+ICsgICAgICAg
ICAgICAgICAgICNpbnRlcmNvbm5lY3QtY2VsbHMgPSA8MD47Cj4gPiA+ID4gPiAgICAgICAgICAg
ICAgICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ID4gPiA+ID4gICAgICAgICAgIH07Cj4gPiA+
ID4gPiAKPiA+ID4gPiA+IEBAIC00NjcsNiArNDcxLDcgQEAKPiA+ID4gPiA+ICAgICAgICAgICAg
ICAgICAgIGNsb2NrcyA9IDwmY2xvY2sgQ0xLX0RJVl9HRFI+Owo+ID4gPiA+ID4gICAgICAgICAg
ICAgICAgICAgY2xvY2stbmFtZXMgPSAiYnVzIjsKPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAg
IG9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmJ1c19sZWZ0YnVzX29wcF90YWJsZT47Cj4gPiA+ID4g
PiArICAgICAgICAgICAgICAgICAjaW50ZXJjb25uZWN0LWNlbGxzID0gPDA+Owo+ID4gPiA+ID4g
ICAgICAgICAgICAgICAgICAgc3RhdHVzID0gImRpc2FibGVkIjsKPiA+ID4gPiA+ICAgICAgICAg
ICB9Owo+ID4gPiA+ID4gCj4gPiA+ID4gPiBAQCAtNDc1LDYgKzQ4MCw3IEBACj4gPiA+ID4gPiAg
ICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNsb2NrIENMS19BQ0xLMTYwPjsKPiA+ID4gPiA+
ICAgICAgICAgICAgICAgICAgIGNsb2NrLW5hbWVzID0gImJ1cyI7Cj4gPiA+ID4gPiAgICAgICAg
ICAgICAgICAgICBvcGVyYXRpbmctcG9pbnRzLXYyID0gPCZidXNfZGlzcGxheV9vcHBfdGFibGU+
Owo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgI2ludGVyY29ubmVjdC1jZWxscyA9IDwwPjsK
PiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gPiA+ID4g
PiAgICAgICAgICAgfTsKPiA+ID4gPiA+IAo+ID4gPiA+ID4gQEAgLTQ4Myw2ICs0ODksNyBAQAo+
ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbG9jayBDTEtfQUNMSzEzMz47
Cj4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJidXMiOwo+ID4gPiA+
ID4gICAgICAgICAgICAgICAgICAgb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmYnVzX2ZzeXNfb3Bw
X3RhYmxlPjsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICNpbnRlcmNvbm5lY3QtY2VsbHMg
PSA8MD47Cj4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+
ID4gPiA+ID4gICAgICAgICAgIH07Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IEBAIC00OTEsNiArNDk4
LDcgQEAKPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmY2xvY2sgQ0xLX0FD
TEsxMDA+Owo+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAiYnVzIjsK
PiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgIG9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmJ1c19w
ZXJpX29wcF90YWJsZT47Cj4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAjaW50ZXJjb25uZWN0
LWNlbGxzID0gPDA+Owo+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgc3RhdHVzID0gImRpc2Fi
bGVkIjsKPiA+ID4gPiA+ICAgICAgICAgICB9Owo+ID4gPiA+ID4gCj4gPiA+ID4gPiBAQCAtNDk5
LDYgKzUwNyw3IEBACj4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNsb2Nr
IENMS19TQ0xLX01GQz47Cj4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9
ICJidXMiOwo+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgb3BlcmF0aW5nLXBvaW50cy12MiA9
IDwmYnVzX2xlZnRidXNfb3BwX3RhYmxlPjsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICNp
bnRlcmNvbm5lY3QtY2VsbHMgPSA8MD47Cj4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICBzdGF0
dXMgPSAiZGlzYWJsZWQiOwo+ID4gPiA+ID4gICAgICAgICAgIH07Cj4gPiA+ID4gPiAKPiA+ID4g
PiA+IAoKLS0gCkFydHVyIMWad2lnb8WEClNhbXN1bmcgUiZEIEluc3RpdHV0ZSBQb2xhbmQKU2Ft
c3VuZyBFbGVjdHJvbmljcwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
