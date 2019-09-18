Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD73DB6D45
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 22:09:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e6olgfB5XgnwsHsPZMMARQk1LsNYuKJjXHHCaGvUO0E=; b=m0SD/y3BMUSD50
	m89Nj85AppAeDbpDcRQIYJUm97gf+e9ha6bCfoDg70PitnynEitynFYeQGHLeetQUSZaskaCgrbLx
	2+qfBPVHzKJvgiW3oMrQQ2lfCBxhA67aPluhZzyWwa8SV6ZhpQBRuLHSSynLemZw+EZSXzGiW6A1O
	m29j7wOwlvZkVzNfDqUboNz24wIQmCjKTC8F5+FhAwjmPpTCqmKyPyfgm5lz81+Eu0K3VupQY++xN
	nJzqeaqLWwRRDvQjtu1tLA/etkLMspkSIYVE1P+DMQG4vDdjwquoxKt1ORObDMy5sIOv8QtSeIL0N
	mEPDzwswrWV+l30smueg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAgGf-0008R1-NB; Wed, 18 Sep 2019 20:09:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAgGO-0008QJ-KY; Wed, 18 Sep 2019 20:09:22 +0000
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
 [209.85.160.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D54B9222C8;
 Wed, 18 Sep 2019 20:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568837360;
 bh=fOhSKAKBlBR8tnbKfh/2cRHcfVt6SAbNweeiVuSPlLE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=naILs6J/PIXD2yfKotMj4cQgdvScWP22FZHa/FCfsKKEx0jTiXH6dnZtD3iOtHKKN
 xiu1RVe3DD6KAOHsgxXGPb/8QXchKi9dv2MPlWKuCD+Onyshvlu5pcGfPMaVJof+Tc
 Fmj4zPDgHwkjops+KBwQzEf+veOakQGlnw+PX/kE=
Received: by mail-qt1-f172.google.com with SMTP id m15so1346229qtq.2;
 Wed, 18 Sep 2019 13:09:19 -0700 (PDT)
X-Gm-Message-State: APjAAAV7Mo4rw8R2YRPWiGuLLnho9/bypgjvp5tkMqrKGWUdrTr9vtum
 d8CqZwZtx8YF8/qKzyJwMTv/H4kHYsomVU1J0g==
X-Google-Smtp-Source: APXvYqyI0YWOlINOzwZl5AYOwbRdU1uVlZeni02GnsS/T/U6yuTYOht5gSEnZU8Z0DdyycUyh6iztt8ZwwabQaKl+2Y=
X-Received: by 2002:ac8:75c7:: with SMTP id z7mr6127853qtq.136.1568837358985; 
 Wed, 18 Sep 2019 13:09:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190918063837.8196-1-u.kleine-koenig@pengutronix.de>
 <b00ca30f-2c06-7722-96b2-123d15751cb6@axentia.se>
 <20190918084748.hnjkiq7wc5b35wjh@pengutronix.de>
In-Reply-To: <20190918084748.hnjkiq7wc5b35wjh@pengutronix.de>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 18 Sep 2019 15:09:06 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJuJrOj+D4xkGACC1=zaB5OUkt=SNzCOiOiTVtM9E9z+A@mail.gmail.com>
Message-ID: <CAL_JsqJuJrOj+D4xkGACC1=zaB5OUkt=SNzCOiOiTVtM9E9z+A@mail.gmail.com>
Subject: Re: [PATCH v2] of: restore old handling of cells_name=NULL in
 of_*_phandle_with_args()
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_130920_714712_4A3C8072 
X-CRM114-Status: GOOD (  23.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Geert Uytterhoeven <geert+renesas@glider.be>, Will Deacon <will@kernel.org>,
 Joerg Roedel <joro@8bytes.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Frank Rowand <frowand.list@gmail.com>, Peter Rosin <peda@axentia.se>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBTZXAgMTgsIDIwMTkgYXQgMzo0NyBBTSBVd2UgS2xlaW5lLUvDtm5pZwo8dS5rbGVp
bmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPgo+IEJlZm9yZSBjb21taXQgZTQyZWU2
MTAxN2Y1ICgib2Y6IExldCBvZl9mb3JfZWFjaF9waGFuZGxlIGZhbGxiYWNrIHRvCj4gbm9uLW5l
Z2F0aXZlIGNlbGxfY291bnQiKSB0aGUgaXRlcmF0b3IgZnVuY3Rpb25zIGNhbGxpbmcKPiBvZl9m
b3JfZWFjaF9waGFuZGxlIGFzc3VtZWQgYSBjZWxsIGNvdW50IG9mIDAgaWYgY2VsbHNfbmFtZSB3
YXMgTlVMTC4KPiBUaGlzIGNvcm5lciBjYXNlIHdhcyBtaXNzZWQgd2hlbiBpbXBsZW1lbnRpbmcg
dGhlIGZhbGxiYWNrIGxvZ2ljIGluCj4gZTQyZWU2MTAxN2Y1IGFuZCByZXN1bHRlZCBpbiBhbiBl
bmRsZXNzIGxvb3AuCj4KPiBSZXN0b3JlIHRoZSBvbGQgYmVoYXZpb3VyIG9mIG9mX2NvdW50X3Bo
YW5kbGVfd2l0aF9hcmdzKCkgYW5kCj4gb2ZfcGFyc2VfcGhhbmRsZV93aXRoX2FyZ3MoKSBhbmQg
YWRkIGEgY2hlY2sgdG8KPiBvZl9waGFuZGxlX2l0ZXJhdG9yX2luaXQoKSB0byBwcmV2ZW50IGEg
c2ltaWxhciBmYWlsdXJlIGFzIGEgc2FmZXR5Cj4gcHJlY2F1dGlvbi4gb2ZfcGFyc2VfcGhhbmRs
ZV93aXRoX2FyZ3NfbWFwKCkgZG9lc24ndCBuZWVkIGEgc2ltaWxhciBmaXgKPiBhcyBjZWxsc19u
YW1lIGlzbid0IE5VTEwgdGhlcmUuCj4KPiBBZmZlY3RlZCBkcml2ZXJzIGFyZToKPiAgLSBkcml2
ZXJzL2Jhc2UvcG93ZXIvZG9tYWluLmMKPiAgLSBkcml2ZXJzL2Jhc2UvcG93ZXIvZG9tYWluLmMK
PiAgLSBkcml2ZXJzL2Nsay90aS9jbGstZHJhNy1hdGwuYwo+ICAtIGRyaXZlcnMvaHdtb24vaWJt
cG93ZXJudi5jCj4gIC0gZHJpdmVycy9pMmMvbXV4ZXMvaTJjLWRlbXV4LXBpbmN0cmwuYwo+ICAt
IGRyaXZlcnMvaW9tbXUvbXRrX2lvbW11LmMKPiAgLSBkcml2ZXJzL25ldC9ldGhlcm5ldC9mcmVl
c2NhbGUvZm1hbi9tYWMuYwo+ICAtIGRyaXZlcnMvb3BwL29mLmMKPiAgLSBkcml2ZXJzL3BlcmYv
YXJtX2RzdV9wbXUuYwo+ICAtIGRyaXZlcnMvcmVndWxhdG9yL29mX3JlZ3VsYXRvci5jCj4gIC0g
ZHJpdmVycy9yZW1vdGVwcm9jL2lteF9ycHJvYy5jCj4gIC0gZHJpdmVycy9zb2Mvcm9ja2NoaXAv
cG1fZG9tYWlucy5jCj4gIC0gc291bmQvc29jL2ZzbC9pbXgtYXVkbWl4LmMKPiAgLSBzb3VuZC9z
b2MvZnNsL2lteC1hdWRtaXguYwo+ICAtIHNvdW5kL3NvYy9tZXNvbi9heGctY2FyZC5jCj4gIC0g
c291bmQvc29jL3NhbXN1bmcvdG0yX3dtNTExMC5jCj4gIC0gc291bmQvc29jL3NhbXN1bmcvdG0y
X3dtNTExMC5jCj4KPiBUaGFua3MgdG8gR2VlcnQgVXl0dGVyaG9ldmVuIGZvciByZXBvcnRpbmcg
dGhlIGlzc3VlLCBQZXRlciBSb3NpbiBmb3IKPiBoZWxwaW5nIHBpbnBvaW50IHRoZSBhY3R1YWwg
cHJvYmxlbSBhbmQgdGhlIHRlc3RlcnMgZm9yIGNvbmZpcm1pbmcgdGhpcwo+IGZpeC4KPgo+IEZp
eGVzOiBlNDJlZTYxMDE3ZjUgKCJvZjogTGV0IG9mX2Zvcl9lYWNoX3BoYW5kbGUgZmFsbGJhY2sg
dG8gbm9uLW5lZ2F0aXZlIGNlbGxfY291bnQiKQo+IFRlc3RlZC1ieTogTWFyZWsgU3p5cHJvd3Nr
aSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgo+IFRlc3RlZC1ieTogR2VlcnQgVXl0dGVyaG9l
dmVuIDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KPiBTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5l
LUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgo+IC0tLQo+Cj4gT24gV2Vk
LCBTZXAgMTgsIDIwMTkgYXQgMDg6MDE6MDVBTSArMDAwMCwgUGV0ZXIgUm9zaW4gd3JvdGU6Cj4g
PiBPbiAyMDE5LTA5LTE4IDA4OjM4LCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90ZToKPiA+ID4gIEVY
UE9SVF9TWU1CT0wob2ZfcGFyc2VfcGhhbmRsZV93aXRoX2FyZ3MpOwo+ID4gPgo+ID4gPiBAQCAt
MTc2NSw2ICsxNzc5LDE4IEBAIGludCBvZl9jb3VudF9waGFuZGxlX3dpdGhfYXJncyhjb25zdCBz
dHJ1Y3QgZGV2aWNlX25vZGUgKm5wLCBjb25zdCBjaGFyICpsaXN0X25hCj4gPiA+ICAgICBzdHJ1
Y3Qgb2ZfcGhhbmRsZV9pdGVyYXRvciBpdDsKPiA+ID4gICAgIGludCByYywgY3VyX2luZGV4ID0g
MDsKPiA+ID4KPiA+ID4gKyAgIC8qIElmIGNlbGxzX25hbWUgaXMgTlVMTCB3ZSBhc3N1bWUgYSBj
ZWxsIGNvdW50IG9mIDAgKi8KPiA+ID4gKyAgIGlmIChjZWxsc19uYW1lID09IE5VTEwpIHsKPiA+
Cj4gPiBBIGNvdXBsZSBvZiBuaXRzLgo+ID4KPiA+IEkgZG9uJ3Qga25vdyBpZiB0aGVyZSBhcmUg
b3RoZXIgY29uc2lkZXJhdGlvbnMsIGJ1dCBpbiB0aGUgcHJldmlvdXMgdHdvCj4gPiBodW5rcyB5
b3UgdXNlICFjZWxsc19uYW1lIGluc3RlYWQgb2YgY29tcGFyaW5nIGV4cGxpY2l0bHkgd2l0aCBO
VUxMLgo+ID4gUGVyc29uYWxseSwgSSBmaW5kIHRoZSBzaG9ydGVyIGZvcm0gbW9yZSByZWFkYWJs
ZSwgYW5kIGluIHRoZSBuYW1lIG9mCj4gPiBjb25zaXN0ZW5jeSBibGEgYmxhLi4uCj4KPiBBY2ss
IGNoYW5nZWQgdG8gIWNlbGxzX25hbWUgaGVyZSwgdG9vLgo+Cj4gPgo+ID4gQWxzbywgdGhlIGNv
bW1lbnQgZXhwbGFpbmluZyB0aGlzIE5VTEwtY2hlY2sgZGlkbid0IHJlYWxseSBtYWtlIHNlbnNl
Cj4gPiB0byBtZSB1bnRpbCBJIHJlYWxpemVkIHRoYXQga25vd2luZyB0aGUgY2VsbCBjb3VudCB0
byBiZSB6ZXJvIG1ha2VzCj4gPiBjb3VudGluZyB0cml2aWFsLiBTb21ldGhpbmcgYWxvbmcgdGhv
c2UgbGluZXMgc2hvdWxkIHBlcmhhcHMgYmUgaW4gdGhlCj4gPiBjb21tZW50Pwo+Cj4gWW91J3Jl
IHJpZ2h0LCBJIGV4dGVuZGVkIHRoZSBjb21tZW50IGEgYml0Lgo+Cj4gPiBCdXQgYXMgSSBzYWlk
LCB0aGVzZSBhcmUgbml0cy4gRmVlbCBmcmVlIHRvIGlnbm9yZS4KPgo+IEkgY29uc2lkZXJlZCBy
ZXNlbmRpbmcgYWxyZWFkeSBhbnlob3cgYXMgSSBmYXRmaW5nZXJkIG15IGVtYWlsIGFkZHJlc3Mu
Cj4gdGhpcyBpcyBmaXhlZCBub3csIHRvby4gQWRkaXRpb25hbGx5IEkgZml4ZWQgYSB0eXBvIGlu
IG9uZSBvZiB0aGUKPiBjb21tZW50cy4KPgo+IFRoYW5rcyBmb3IgeW91ciBmZWVkYmFjay4KPgo+
IEJlc3QgcmVnYXJkcwo+IFV3ZQo+Cj4gIGRyaXZlcnMvb2YvYmFzZS5jIHwgMzUgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDMzIGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCgpDYW4gSSBnZXQgYSBwcm9wZXIgcGF0Y2ggcGxlYXNlLgoK
Um9iCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
