Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B0E1ECE29
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 13:21:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QuIEfeMVSpgsxbyiFFy4RZUIvyFSPpNKDrJI3U2u0B8=; b=qdkdA3ktZMHyQP
	aBL7pDUs+/DoxmKLdSKTFDkD3Qnsb9hpdJNdgcxCu0GdQZQATSB/KdcAqyKelGStrr8xvKB+aK5Vk
	l9GyDaYcPJPUeYjfJXaN6XOSjyFZVUtSBrS3FDfjWqw/X8j0HCVh5KD2dS0kgTEP8a+95abkmSIih
	uzF/18n4oSEECzTFhq6h7kszQFkFkbGyPE26Sg+yah6/MqmWsXSbLePJ+YbIzsGP6ExBBo6RuqFci
	NIqcT8+gIYqBSonUBhkvNiznqC8fZ8t5KOUuluyYyf3h97EcCbiqfl3pNAlCTKcNhnvLSsNrQN0p1
	r00LXD+ooaoiI0vZfFfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgRSm-0006z2-0B; Wed, 03 Jun 2020 11:21:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgRSd-0006yX-Kr
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 11:21:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6916531B;
 Wed,  3 Jun 2020 04:21:29 -0700 (PDT)
Received: from [192.168.2.22] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 43F343F305;
 Wed,  3 Jun 2020 04:21:28 -0700 (PDT)
Subject: Re: [PATCH v3 04/20] arm64: dts: arm: vexpress: Move fixed devices
 out of bus node
To: Rob Herring <robh@kernel.org>
References: <20200513103016.130417-1-andre.przywara@arm.com>
 <20200513103016.130417-5-andre.przywara@arm.com>
 <20200528024810.GA232303@roeck-us.net>
 <48afb8bb-a22a-54df-7751-55b7b84c3c88@arm.com>
 <22687572-becf-7b4e-9759-cfba44677a1d@arm.com>
 <CAL_JsqLgNDd-+rrYD=Y0Hm=NaV7f0NbBFb9uhhYhzM6LjxnXZg@mail.gmail.com>
From: =?UTF-8?Q?Andr=c3=a9_Przywara?= <andre.przywara@arm.com>
Autocrypt: addr=andre.przywara@arm.com; prefer-encrypt=mutual; keydata=
 xsFNBFNPCKMBEAC+6GVcuP9ri8r+gg2fHZDedOmFRZPtcrMMF2Cx6KrTUT0YEISsqPoJTKld
 tPfEG0KnRL9CWvftyHseWTnU2Gi7hKNwhRkC0oBL5Er2hhNpoi8x4VcsxQ6bHG5/dA7ctvL6
 kYvKAZw4X2Y3GTbAZIOLf+leNPiF9175S8pvqMPi0qu67RWZD5H/uT/TfLpvmmOlRzNiXMBm
 kGvewkBpL3R2clHquv7pB6KLoY3uvjFhZfEedqSqTwBVu/JVZZO7tvYCJPfyY5JG9+BjPmr+
 REe2gS6w/4DJ4D8oMWKoY3r6ZpHx3YS2hWZFUYiCYovPxfj5+bOr78sg3JleEd0OB0yYtzTT
 esiNlQpCo0oOevwHR+jUiaZevM4xCyt23L2G+euzdRsUZcK/M6qYf41Dy6Afqa+PxgMEiDto
 ITEH3Dv+zfzwdeqCuNU0VOGrQZs/vrKOUmU/QDlYL7G8OIg5Ekheq4N+Ay+3EYCROXkstQnf
 YYxRn5F1oeVeqoh1LgGH7YN9H9LeIajwBD8OgiZDVsmb67DdF6EQtklH0ycBcVodG1zTCfqM
 AavYMfhldNMBg4vaLh0cJ/3ZXZNIyDlV372GmxSJJiidxDm7E1PkgdfCnHk+pD8YeITmSNyb
 7qeU08Hqqh4ui8SSeUp7+yie9zBhJB5vVBJoO5D0MikZAODIDwARAQABzS1BbmRyZSBQcnp5
 d2FyYSAoQVJNKSA8YW5kcmUucHJ6eXdhcmFAYXJtLmNvbT7CwXsEEwECACUCGwMGCwkIBwMC
 BhUIAgkKCwQWAgMBAh4BAheABQJTWSV8AhkBAAoJEAL1yD+ydue63REP/1tPqTo/f6StS00g
 NTUpjgVqxgsPWYWwSLkgkaUZn2z9Edv86BLpqTY8OBQZ19EUwfNehcnvR+Olw+7wxNnatyxo
 D2FG0paTia1SjxaJ8Nx3e85jy6l7N2AQrTCFCtFN9lp8Pc0LVBpSbjmP+Peh5Mi7gtCBNkpz
 KShEaJE25a/+rnIrIXzJHrsbC2GwcssAF3bd03iU41J1gMTalB6HCtQUwgqSsbG8MsR/IwHW
 XruOnVp0GQRJwlw07e9T3PKTLj3LWsAPe0LHm5W1Q+euoCLsZfYwr7phQ19HAxSCu8hzp43u
 zSw0+sEQsO+9wz2nGDgQCGepCcJR1lygVn2zwRTQKbq7Hjs+IWZ0gN2nDajScuR1RsxTE4WR
 lj0+Ne6VrAmPiW6QqRhliDO+e82riI75ywSWrJb9TQw0+UkIQ2DlNr0u0TwCUTcQNN6aKnru
 ouVt3qoRlcD5MuRhLH+ttAcmNITMg7GQ6RQajWrSKuKFrt6iuDbjgO2cnaTrLbNBBKPTG4oF
 D6kX8Zea0KvVBagBsaC1CDTDQQMxYBPDBSlqYCb/b2x7KHTvTAHUBSsBRL6MKz8wwruDodTM
 4E4ToV9URl4aE/msBZ4GLTtEmUHBh4/AYwk6ACYByYKyx5r3PDG0iHnJ8bV0OeyQ9ujfgBBP
 B2t4oASNnIOeGEEcQ2rjzsFNBFNPCKMBEACm7Xqafb1Dp1nDl06aw/3O9ixWsGMv1Uhfd2B6
 it6wh1HDCn9HpekgouR2HLMvdd3Y//GG89irEasjzENZPsK82PS0bvkxxIHRFm0pikF4ljIb
 6tca2sxFr/H7CCtWYZjZzPgnOPtnagN0qVVyEM7L5f7KjGb1/o5EDkVR2SVSSjrlmNdTL2Rd
 zaPqrBoxuR/y/n856deWqS1ZssOpqwKhxT1IVlF6S47CjFJ3+fiHNjkljLfxzDyQXwXCNoZn
 BKcW9PvAMf6W1DGASoXtsMg4HHzZ5fW+vnjzvWiC4pXrcP7Ivfxx5pB+nGiOfOY+/VSUlW/9
 GdzPlOIc1bGyKc6tGREH5lErmeoJZ5k7E9cMJx+xzuDItvnZbf6RuH5fg3QsljQy8jLlr4S6
 8YwxlObySJ5K+suPRzZOG2+kq77RJVqAgZXp3Zdvdaov4a5J3H8pxzjj0yZ2JZlndM4X7Msr
 P5tfxy1WvV4Km6QeFAsjcF5gM+wWl+mf2qrlp3dRwniG1vkLsnQugQ4oNUrx0ahwOSm9p6kM
 CIiTITo+W7O9KEE9XCb4vV0ejmLlgdDV8ASVUekeTJkmRIBnz0fa4pa1vbtZoi6/LlIdAEEt
 PY6p3hgkLLtr2GRodOW/Y3vPRd9+rJHq/tLIfwc58ZhQKmRcgrhtlnuTGTmyUqGSiMNfpwAR
 AQABwsFfBBgBAgAJBQJTTwijAhsMAAoJEAL1yD+ydue64BgP/33QKczgAvSdj9XTC14wZCGE
 U8ygZwkkyNf021iNMj+o0dpLU48PIhHIMTXlM2aiiZlPWgKVlDRjlYuc9EZqGgbOOuR/pNYA
 JX9vaqszyE34JzXBL9DBKUuAui8z8GcxRcz49/xtzzP0kH3OQbBIqZWuMRxKEpRptRT0wzBL
 O31ygf4FRxs68jvPCuZjTGKELIo656/Hmk17cmjoBAJK7JHfqdGkDXk5tneeHCkB411p9WJU
 vMO2EqsHjobjuFm89hI0pSxlUoiTL0Nuk9Edemjw70W4anGNyaQtBq+qu1RdjUPBvoJec7y/
 EXJtoGxq9Y+tmm22xwApSiIOyMwUi9A1iLjQLmngLeUdsHyrEWTbEYHd2sAM2sqKoZRyBDSv
 ejRvZD6zwkY/9nRqXt02H1quVOP42xlkwOQU6gxm93o/bxd7S5tEA359Sli5gZRaucpNQkwd
 KLQdCvFdksD270r4jU/rwR2R/Ubi+txfy0dk2wGBjl1xpSf0Lbl/KMR5TQntELfLR4etizLq
 Xpd2byn96Ivi8C8u9zJruXTueHH8vt7gJ1oax3yKRGU5o2eipCRiKZ0s/T7fvkdq+8beg9ku
 fDO4SAgJMIl6H5awliCY2zQvLHysS/Wb8QuB09hmhLZ4AifdHyF1J5qeePEhgTA+BaUbiUZf
 i4aIXCH3Wv6K
Organization: ARM Ltd.
Message-ID: <1d111f40-1702-7ea0-825f-ab08d77353e9@arm.com>
Date: Wed, 3 Jun 2020 12:20:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <CAL_JsqLgNDd-+rrYD=Y0Hm=NaV7f0NbBFb9uhhYhzM6LjxnXZg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_042132_265559_279722C3 
X-CRM114-Status: GOOD (  25.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDIvMDYvMjAyMCAwMDoxMiwgUm9iIEhlcnJpbmcgd3JvdGU6CgpIaSwKCj4gT24gTW9uLCBK
dW4gMSwgMjAyMCBhdCA0OjE1IEFNIEFuZHLDqSBQcnp5d2FyYSA8YW5kcmUucHJ6eXdhcmFAYXJt
LmNvbT4gd3JvdGU6Cj4+Cj4+IE9uIDI4LzA1LzIwMjAgMTQ6MzAsIEFuZHLDqSBQcnp5d2FyYSB3
cm90ZToKPj4KPj4gSGksCj4+Cj4+PiBPbiAyOC8wNS8yMDIwIDAzOjQ4LCBHdWVudGVyIFJvZWNr
IHdyb3RlOgo+Pj4KPj4+IEhpIEd1ZW50ZXIsCj4+Pgo+Pj4+IE9uIFdlZCwgTWF5IDEzLCAyMDIw
IGF0IDExOjMwOjAwQU0gKzAxMDAsIEFuZHJlIFByenl3YXJhIHdyb3RlOgo+Pj4+PiBUaGUgZGV2
aWNldHJlZSBjb21waWxlciBjb21wbGFpbnMgd2hlbiBEVCBub2RlcyB3aXRob3V0IGEgcmVnIHBy
b3BlcnR5Cj4+Pj4+IGxpdmUgaW5zaWRlIGEgKHNpbXBsZSkgYnVzIG5vZGU6Cj4+Pj4+IFdhcm5p
bmcgKHNpbXBsZV9idXNfcmVnKTogTm9kZSAvYnVzQDgwMDAwMDAvbW90aGVyYm9hcmQtYnVzL3Jl
ZmNsazMya2h6Cj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgbWlzc2luZyBvciBlbXB0
eSByZWcvcmFuZ2VzIHByb3BlcnR5Cj4+Pj4+Cj4+Pj4+IE1vdmUgdGhlIGZpeGVkIGNsb2Nrcywg
dGhlIGZpeGVkIHJlZ3VsYXRvciwgdGhlIGxlZHMgYW5kIHRoZSBjb25maWcgYnVzCj4+Pj4+IHN1
YnRyZWUgdG8gdGhlIHJvb3Qgbm9kZSwgc2luY2UgdGhleSBkbyBub3QgZGVwZW5kIG9uIGFueSBi
dXNzZXMuCj4+Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEFuZHJlIFByenl3YXJhIDxhbmRyZS5w
cnp5d2FyYUBhcm0uY29tPgo+Pj4+Cj4+Pj4gVGhpcyBwYXRjaCByZXN1bHRzIGluIHRyYWNlYmFj
a3Mgd2hlbiBib290aW5nIHRoZSB2ZXhwcmVzcy1hMTUgbWFjaGluZQo+Pj4+IHdpdGggdmV4cHJl
c3MtdjJwLWNhMTUtdGMxIGRldmljZXRyZWUgZmlsZSBpbiBxZW11LiBSZXZlcnRpbmcgaXQgYXMg
d2VsbAo+Pj4+IGFzIHRoZSBzdWJzZXF1ZW50IHBhdGNoZXMgYWZmZWN0aW5nIHRoZSBzYW1lIGZp
bGUgKHRvIGF2b2lkIHJldmVydAo+Pj4+IGNvbmZsaWN0cykgZml4ZXMgdGhlIHByb2JsZW0uCj4+
Pgo+Pj4gTWFueSB0aGFua3MgZm9yIHRoZSBoZWFkcyB1cCEgSSB3YXMgYWJsZSB0byByZXByb2R1
Y2UgaXQgaGVyZS4gT24gdGhlCj4+PiBmaXJzdCBnbGFuY2UgaXQgbG9va3MgbGlrZSB0aGUgVUFS
VCBpcyBwcm9iZWQgYmVmb3JlIHRoZSBjbG9ja3Mgbm93LAo+Pj4gYmVjYXVzZSB0aGUgdHJhdmVy
c2FsIG9mIHRoZSBjaGFuZ2VkIERUIGxlYWRzIHRvIGEgZGlmZmVyZW50IHByb2JlCj4+PiBvcmRl
ci4gSSB3aWxsIGxvb2sgaW50byBob3cgdG8gZml4IHRoaXMuCj4+Cj4+IFR1cm5lZCBvdXQgdG8g
YmUgYSBiaXQgbW9yZSBjb21wbGljYXRlZDoKPj4gVGhlIGFybSx2ZXhwcmVzcyxjb25maWctYnVz
IGRyaXZlciB3YWxrcyB1cCB0aGUgZGV2aWNlIHRyZWUgdG8gZmluZCBhCj4+IGFybSx2ZXhwcmVz
cyxzaXRlIHByb3BlcnR5IFsxXS4gV2l0aCB0aGlzIHBhdGNoIHRoZSBmaXJzdCBwYXJlbnQgbm9k
ZQo+PiB3aXRoIHRoYXQgcHJvcGVydHkgaXQgZmluZHMgaXMgbm93IHRoZSByb290IG5vZGUsIHdp
dGggdGhlIHdyb25nIHNpdGUgSUQKPj4gKDB4ZiBpbnN0ZWFkIG9mIDB4MCkuIFNvIGl0IHF1ZXJp
ZXMgdGhlIHdyb25nIGNsb2NrcyAodGhvc2UgSURzIGFyZQo+PiBhY3R1YWxseSByZXNlcnZlZCB0
aGVyZSksIGFuZCBRRU1VIHJlcG9ydHMgYmFjayAiMCIsIGNvbnNlcXVlbnRseSBbMl0uCj4+IEZp
bmRpbmcgYSBjbG9jayBmcmVxdWVuY3kgaW4gdGhlIHJhbmdlIG9mIFswLCAwXSB3b24ndCBnZXQg
dmVyeSBmYXIuCj4+Cj4+IFBvc3NpYmxlIHNvbHV0aW9ucyBhcmU6Cj4+IDEpIEp1c3Qga2VlcCB0
aGUgbWNjIGFuZCBpdHMgY2hpbGRyZW4gYXQgd2hlcmUgaXQgaXMgaW4gbWFpbmxpbmUgcmlnaHQK
Pj4gbm93LCBzbyAqcGFydGx5KiByZXZlcnRpbmcgdGhpcyBwYXRjaC4gVGhpcyBoYXMgdGhlIHBy
b2JsZW0gb2Ygc3RpbGwKPj4gcHJvZHVjaW5nIGEgZHRjIHdhcm5pbmcsIHNvIGtpbmQgb2YgZGVm
ZWF0cyB0aGUgcHVycG9zZSBvZiB0aGlzIHBhdGNoLgo+Pgo+PiAyKSBBZGQgYSAiYXJtLHZleHBy
ZXNzLHNpdGUgPSA8MD47IiBsaW5lIHRvIHRoZSAibWNjIiBub2RlIGl0c2VsZi4KPj4gV29ya3Ms
IGJ1dCBsb29rcyBzb21ld2hhdCBkb2RneSwgYXMgdGhlIG1jYyBub2RlIHNob3VsZCByZWFsbHkg
YmUgYQo+PiBjaGlsZCBvZiB0aGUgbW90aGVyYm9hcmQgbm9kZSwgYW5kIHdlIHNob3VsZCBub3Qg
aGFjayBhcm91bmQgdGhpcy4KPj4KPj4gMykgRGlnIGRlZXBlciBhbmQgZml4IHRoZSBEVCBpbiBh
IHdheSB0aGF0IG1ha2VzIGR0YyBoYXBweS4gTWlnaHQKPj4gaW52b2x2ZSAoZHVtbXk/KSByYW5n
ZXMgb3IgcmVnIHByb3BlcnRpZXMuIE15IGd1dCBmZWVsaW5nIGlzIHRoYXQKPj4gYXJtLHZleHBy
ZXNzLXN5c3JlZyxmdW5jIHNob3VsZCByZWFsbHkgaGF2ZSBiZWVuICJyZWciIGluIHRoZSBmaXJz
dAo+PiBwbGFjZSwgYnV0IHRoYXQncyB0b28gbGF0ZSB0byBjaGFuZ2Ugbm93LCBhbnl3YXkuCj4+
Cj4+IEkgd2lsbCBwb3N0IDIpIGFzIGEgZml4IGlmIDMpIHR1cm5zIG91dCB0byBiZSBub3QgZmVh
c2libGUuCj4gCj4gSSB3b3VsZCBqdXN0IGRvIDEpLgo+IAo+IFRvIHNvbWUgZXh0ZW50LCB0aGUg
d2FybmluZ3MgYXJlIGZvciBhdm9pZGluZyBwb29yIGRlc2lnbiBvbiBuZXcKPiBiaW5kaW5ncy4g
V2UgbmVlZCBhIHdheSB0byBkaXN0aW5ndWlzaCBiZXR3ZWVuIGV4aXN0aW5nIGJvYXJkcyBhbmQg
bmV3Cj4gb25lcy4gTWF5YmUgZHRzIG5lZWRzIHRvIGxlYXJuIHNvbWUgd2FybmluZyBkaXNhYmxl
IGFubm90YXRpb25zIG9yIHdlCj4gbmVlZCBwZXIgdGFyZ2V0IHdhcm5pbmcgc2V0dGluZ3MgKERU
Q19GTEFHU19mb28uZHRiID8pLiBPciBtYXliZSB0aGlzCj4gY2hlY2sgaXMganVzdCB0b28gc3Ry
aWN0LgoKU28gSSB3YXMgYWx3YXlzIHdvbmRlcmluZyBhYm91dCB0aGlzIGNoZWNrLCBhY3R1YWxs
eS4gQSBzaW1wbGUtYnVzCmRlc2NyaWJlcyBhIGJ1cyB3aGljaCBpcyBtYXBwZWQgaW50byB0aGUg
Q1BVIGFkZHJlc3Mgc3BhY2UgKGluIGNvbnRyYXN0CnRvIHNheSBhbiBJMkMgYnVzLCBmb3IgaW5z
dGFuY2UpLiBTbyBjaGlsZHJlbiBvZiB0aGlzIGJ1cyBub2RlIHR5cGljYWxseQpoYXZlIGEgcmVn
IHByb3BlcnR5LgoKTm93IGFsc28gdGhvc2Ugc2ltcGxlLWJ1cyBub2RlcyBzZWVtIHRvIGJlIHVz
ZWQgdG8gbG9naWNhbGx5IGdyb3VwCmhhcmR3YXJlIGluIGEgRFQgKHNlZSB0aGlzICJtb3RoZXJi
b2FyZCIgbm9kZSBoZXJlKS4gKklmKiB3ZSBnbyB3aXRoCnRoaXMsIHdlIHNob3VsZCBhbHNvIGFs
bG93IG90aGVyIHN1Ym5vZGVzLCBmb3IgaW5zdGFuY2UgZml4ZWQtY2xvY2tzOgphZnRlciBhbGwg
dGhlcmUgaXMgcHJvYmFibHkgYW4gYWN0dWFsIGZpeGVkIGNyeXN0YWwgb3NjaWxsYXRvciBvbiB0
aGUKbW90aGVyYm9hcmQsIHNvIGl0IHdvdWxkIGFsc28gYmVsb25nIGluIHRoZXJlLgpJIHNlZSB0
aGF0IChhYil1c2luZyBzaW1wbGUtYnVzIGZvciAqanVzdCogZ3JvdXBpbmcgbm9kZXMgaXMgcHJv
YmFibHkKbm90IGEgZ29vZCBkZXNpZ24sIGJ1dCBJIGRvbid0IHNlZSB3aHkgKmV2ZXJ5KiBjaGls
ZCBtdXN0IGJlIG1hcHBlZCBpbnRvCnRoZSBhZGRyZXNzIHNwYWNlLgoKTWF5YmUgZHRjJ3Mgc2lt
cGxlLWJ1cyBjaGVjayBzaG91bGQgaW5kZWVkIGJlIHJlbGF4ZWQsIHRvIGp1c3QgcmVxdWlyZQoq
YXQgbGVhc3Qgb25lKiBjaGlsZCB3aXRoIGEgcmVnIG9yIHJhbmdlcyBwcm9wZXJ0eSwgYnV0IGFs
c28gYWxsb3cgb3RoZXIKbm9kZXM/CgpDaGVlcnMsCkFuZHJlCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
