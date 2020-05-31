Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D791E94B7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 02:14:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hf2P0rArx4huBvmQ/UvdJvUsjIVEmfRj1MHHU7ufFrs=; b=t50y1gMBM1ZRxq
	YZskJHoCYPi/sQs8DI3OFgYXfPClObDPePUgKq63YlqerB4HmXc9V+7660sWNd+DmNTXhULVnFasA
	ipVh14eiChvGRhYjr08/3ViauKuIFyAM9CmgVLvI+prVdbZL8DzHOdOxy13banwV7zFKM80bep5xE
	1v0K9Zt8AAO3y3/8p+WyV12SbVuIB6cXiAsoWQ+nLRiGHOyL/0jqKV/YTusyBMCWnbYGZ18yiSPZr
	VOttTiikhDI/T5UhHhi/4+MOHqes6A7RyQy7AYqMGZ+dVZAmiQbAt50rPy8SaudpQv0tHiu1noZHg
	GejFFN6NUGp3gG0V8d7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfBcU-0004F2-EF; Sun, 31 May 2020 00:14:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfBcH-0004EX-3o
 for linux-arm-kernel@lists.infradead.org; Sun, 31 May 2020 00:14:18 +0000
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 62E372074B
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 31 May 2020 00:14:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590884056;
 bh=4n7xLjDfmWJy7cEzQOlVj3OGl5xGSGF7KDFQyddTsFk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=rVIWM9zdmkW/djHLs4fi/TvKDLvxI169DCHYP6+1kQLYCcid0Pqs6nf93HNfTTzzg
 nslHxKYR7ciL2ZJW4sZ08vw9sPi1CANrCOkK1XHu3TEDaoq/XbYGy1bU59LpDYd5t5
 HIulCBdZuAPlLwgHI6YDjpigvZb91ziiN+cY8m00=
Received: by mail-lf1-f45.google.com with SMTP id c21so1865393lfb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 30 May 2020 17:14:16 -0700 (PDT)
X-Gm-Message-State: AOAM532qHOUZ478c1uuz+n9aaU4Ctp7Ett+nYKWtzx7J0/Ql5A+19MSm
 wljwatJ0SbyPP3+pAh/sagLOfadSIOU4O8r+n+o=
X-Google-Smtp-Source: ABdhPJwJsr06uJnzfnjvjQX/rYRN9Ngp7XOU3puMFisFW3c+wxvlfArxpab0i3PmK4xjzDVioqwCsCQX9QsbhnIXjE0=
X-Received: by 2002:a19:550e:: with SMTP id n14mr7963650lfe.81.1590884054566; 
 Sat, 30 May 2020 17:14:14 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20200529163223eucas1p2f663280abb499b4114b2f2930b43a4e5@eucas1p2.samsung.com>
 <20200529163200.18031-1-s.nawrocki@samsung.com>
 <20200529163200.18031-3-s.nawrocki@samsung.com>
In-Reply-To: <20200529163200.18031-3-s.nawrocki@samsung.com>
From: Chanwoo Choi <chanwoo@kernel.org>
Date: Sun, 31 May 2020 09:13:38 +0900
X-Gmail-Original-Message-ID: <CAGTfZH3zvgOtME0U2hKjtqO49e0-Nw6MRxhw+z6Mfio-=FUwcQ@mail.gmail.com>
Message-ID: <CAGTfZH3zvgOtME0U2hKjtqO49e0-Nw6MRxhw+z6Mfio-=FUwcQ@mail.gmail.com>
Subject: Re: [RFC PATCH v5 2/6] interconnect: Add generic interconnect driver
 for Exynos SoCs
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_171417_204796_89DC7ECE 
X-CRM114-Status: GOOD (  32.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, inki.dae@samsung.com,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3lsd2VzdGVyLAoKT24gU2F0LCBNYXkgMzAsIDIwMjAgYXQgMTozNCBBTSBTeWx3ZXN0ZXIg
TmF3cm9ja2kKPHMubmF3cm9ja2lAc2Ftc3VuZy5jb20+IHdyb3RlOgo+Cj4gVGhpcyBwYXRjaCBh
ZGRzIGEgZ2VuZXJpYyBpbnRlcmNvbm5lY3QgZHJpdmVyIGZvciBFeHlub3MgU29DcyBpbiBvcmRl
cgo+IHRvIHByb3ZpZGUgaW50ZXJjb25uZWN0IGZ1bmN0aW9uYWxpdHkgZm9yIGVhY2ggInNhbXN1
bmcsZXh5bm9zLWJ1cyIKPiBjb21wYXRpYmxlIGRldmljZS4KPgo+IFRoZSBTb0MgdG9wb2xvZ3kg
aXMgYSBncmFwaCAob3IgbW9yZSBzcGVjaWZpY2FsbHksIGEgdHJlZSkgYW5kIGl0cwo+IGVkZ2Vz
IGFyZSBzcGVjaWZpZWQgdXNpbmcgdGhlICdzYW1zdW5nLGludGVyY29ubmVjdC1wYXJlbnQnIGlu
IHRoZQo+IERULiBEdWUgdG8gdW5zcGVjaWZpZWQgcmVsYXRpdmUgcHJvYmluZyBvcmRlciwgLUVQ
Uk9CRV9ERUZFUiBtYXkgYmUKPiBwcm9wYWdhdGVkIHRvIGVuc3VyZSB0aGF0IHRoZSBwYXJlbnQg
aXMgcHJvYmVkIGJlZm9yZSBpdHMgY2hpbGRyZW4uCj4KPiBFYWNoIGJ1cyBpcyBub3cgYW4gaW50
ZXJjb25uZWN0IHByb3ZpZGVyIGFuZCBhbiBpbnRlcmNvbm5lY3Qgbm9kZSBhcwo+IHdlbGwgKGNm
LiBEb2N1bWVudGF0aW9uL2ludGVyY29ubmVjdC9pbnRlcmNvbm5lY3QucnN0KSwgaS5lLiBldmVy
eSBidXMKPiByZWdpc3RlcnMgaXRzZWxmIGFzIGEgbm9kZS4gTm9kZSBJRHMgYXJlIG5vdCBoYXJk
Y29kZWQgYnV0IHJhdGhlcgo+IGFzc2lnbmVkIGR5bmFtaWNhbGx5IGF0IHJ1bnRpbWUuIFRoaXMg
YXBwcm9hY2ggYWxsb3dzIGZvciB1c2luZyB0aGlzCj4gZHJpdmVyIHdpdGggdmFyaW91cyBFeHlu
b3MgU29Dcy4KPgo+IEZyZXF1ZW5jaWVzIHJlcXVlc3RlZCB2aWEgdGhlIGludGVyY29ubmVjdCBB
UEkgZm9yIGEgZ2l2ZW4gbm9kZSBhcmUKPiBwcm9wYWdhdGVkIHRvIGRldmZyZXEgdXNpbmcgZGV2
X3BtX3Fvc191cGRhdGVfcmVxdWVzdCgpLiBQbGVhc2Ugbm90ZQo+IHRoYXQgaXQgaXMgbm90IGFu
IGVycm9yIHdoZW4gQ09ORklHX0lOVEVSQ09OTkVDVCBpcyAnbicsIGluIHdoaWNoCj4gY2FzZSBh
bGwgaW50ZXJjb25uZWN0IEFQSSBmdW5jdGlvbnMgYXJlIG5vLW9wLgo+Cj4gU2lnbmVkLW9mZi1i
eTogQXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHNhbXN1bmcuY29tPgo+IFNpZ25lZC1vZmYtYnk6
IFN5bHdlc3RlciBOYXdyb2NraSA8cy5uYXdyb2NraUBzYW1zdW5nLmNvbT4KPgo+IENoYW5nZXMg
Zm9yIHY1Ogo+ICAtIGFkanVzdCB0byByZW5hbWVkIGV4eW5vcyxpbnRlcmNvbm5lY3QtcGFyZW50
LW5vZGUgcHJvcGVydHksCj4gIC0gdXNlIGF1dG9tYXRpY2FsbHkgZ2VuZXJhdGVkIHBsYXRmb3Jt
IGRldmljZSBpZCBhcyB0aGUgaW50ZXJjb25lY3QKPiAgICBub2RlIGlkIGluc3RlYWQgb2YgYSBu
b3cgdW5hdmFpbGFibGUgZGV2ZnJlcS0+aWQgZmllbGQsCj4gIC0gYWRkIGljY18gcHJlZml4IHRv
IHNvbWUgdmFyaWFibGVzIHRvIG1ha2UgdGhlIGNvZGUgbW9yZSBzZWxmLWNvbW1lbnRpbmcsCj4g
IC0gdXNlIGljY19ub2Rlc19yZW1vdmUoKSBpbnN0ZWFkIG9mIGljY19ub2RlX2RlbCgpICsgaWNj
X25vZGVfZGVzdHJveSgpLAo+ICAtIGFkanVzdCB0byBleHlub3MsaW50ZXJjb25uZWN0LXBhcmVu
dC1ub2RlIHByb3BlcnR5IHJlbmFtZSB0bwo+ICAgIHNhbXN1bmcsaW50ZXJjb25uZWN0LXBhcmVu
dCwKPiAgLSBjb252ZXJ0ZWQgdG8gYSBzZXBhcmF0ZSBwbGF0Zm9ybSBkcml2ZXIgaW4gZHJpdmVy
cy9pbnRlcmNvbm5lY3QuCj4gLS0tCj4gIGRyaXZlcnMvaW50ZXJjb25uZWN0L0tjb25maWcgICAg
ICAgICB8ICAgMSArCj4gIGRyaXZlcnMvaW50ZXJjb25uZWN0L01ha2VmaWxlICAgICAgICB8ICAg
MSArCj4gIGRyaXZlcnMvaW50ZXJjb25uZWN0L2V4eW5vcy9LY29uZmlnICB8ICAgNiArKwo+ICBk
cml2ZXJzL2ludGVyY29ubmVjdC9leHlub3MvTWFrZWZpbGUgfCAgIDQgKwo+ICBkcml2ZXJzL2lu
dGVyY29ubmVjdC9leHlub3MvZXh5bm9zLmMgfCAxODUgKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysKPiAgNSBmaWxlcyBjaGFuZ2VkLCAxOTcgaW5zZXJ0aW9ucygrKQo+ICBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9pbnRlcmNvbm5lY3QvZXh5bm9zL0tjb25maWcKPiAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvaW50ZXJjb25uZWN0L2V4eW5vcy9NYWtlZmlsZQo+ICBj
cmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9pbnRlcmNvbm5lY3QvZXh5bm9zL2V4eW5vcy5jCj4K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pbnRlcmNvbm5lY3QvS2NvbmZpZyBiL2RyaXZlcnMvaW50
ZXJjb25uZWN0L0tjb25maWcKPiBpbmRleCA1YjcyMDRlLi5lY2E2ZWRhIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvaW50ZXJjb25uZWN0L0tjb25maWcKPiArKysgYi9kcml2ZXJzL2ludGVyY29ubmVj
dC9LY29uZmlnCj4gQEAgLTExLDYgKzExLDcgQEAgbWVudWNvbmZpZyBJTlRFUkNPTk5FQ1QKPgo+
ICBpZiBJTlRFUkNPTk5FQ1QKPgo+ICtzb3VyY2UgImRyaXZlcnMvaW50ZXJjb25uZWN0L2V4eW5v
cy9LY29uZmlnIgo+ICBzb3VyY2UgImRyaXZlcnMvaW50ZXJjb25uZWN0L2lteC9LY29uZmlnIgo+
ICBzb3VyY2UgImRyaXZlcnMvaW50ZXJjb25uZWN0L3Fjb20vS2NvbmZpZyIKPgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2ludGVyY29ubmVjdC9NYWtlZmlsZSBiL2RyaXZlcnMvaW50ZXJjb25uZWN0
L01ha2VmaWxlCj4gaW5kZXggNDgyNWMyOC4uMmJhMWRlNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2ludGVyY29ubmVjdC9NYWtlZmlsZQo+ICsrKyBiL2RyaXZlcnMvaW50ZXJjb25uZWN0L01ha2Vm
aWxlCj4gQEAgLTQsNSArNCw2IEBAIENGTEFHU19jb3JlLm8gICAgICAgICAgICAgICAgICAgICAg
ICAgICA6PSAtSSQoc3JjKQo+ICBpY2MtY29yZS1vYmpzICAgICAgICAgICAgICAgICAgICAgICAg
ICA6PSBjb3JlLm8KPgo+ICBvYmotJChDT05GSUdfSU5URVJDT05ORUNUKSAgICAgICAgICAgICAr
PSBpY2MtY29yZS5vCj4gK29iai0kKENPTkZJR19JTlRFUkNPTk5FQ1RfRVhZTk9TKSAgICAgICs9
IGV4eW5vcy8KPiAgb2JqLSQoQ09ORklHX0lOVEVSQ09OTkVDVF9JTVgpICAgICAgICAgKz0gaW14
Lwo+ICBvYmotJChDT05GSUdfSU5URVJDT05ORUNUX1FDT00pICAgICAgICAgICAgICAgICs9IHFj
b20vCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW50ZXJjb25uZWN0L2V4eW5vcy9LY29uZmlnIGIv
ZHJpdmVycy9pbnRlcmNvbm5lY3QvZXh5bm9zL0tjb25maWcKPiBuZXcgZmlsZSBtb2RlIDEwMDY0
NAo+IGluZGV4IDAwMDAwMDAuLmU1MWU1MmUKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVy
cy9pbnRlcmNvbm5lY3QvZXh5bm9zL0tjb25maWcKPiBAQCAtMCwwICsxLDYgQEAKPiArIyBTUERY
LUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5Cj4gK2NvbmZpZyBJTlRFUkNPTk5FQ1Rf
RVhZTk9TCj4gKyAgICAgICB0cmlzdGF0ZSAiRXh5bm9zIGdlbmVyaWMgaW50ZXJjb25uZWN0IGRy
aXZlciIKPiArICAgICAgIGRlcGVuZHMgb24gQVJDSF9FWFlOT1MgfHwgQ09NUElMRV9URVNUCj4g
KyAgICAgICBoZWxwCj4gKyAgICAgICAgIEdlbmVyaWMgaW50ZXJjb25uZWN0IGRyaXZlciBmb3Ig
RXh5bm9zIFNvQ3MuCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW50ZXJjb25uZWN0L2V4eW5vcy9N
YWtlZmlsZSBiL2RyaXZlcnMvaW50ZXJjb25uZWN0L2V4eW5vcy9NYWtlZmlsZQo+IG5ldyBmaWxl
IG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMC4uZTE5ZDFkZgo+IC0tLSAvZGV2L251bGwKPiAr
KysgYi9kcml2ZXJzL2ludGVyY29ubmVjdC9leHlub3MvTWFrZWZpbGUKPiBAQCAtMCwwICsxLDQg
QEAKPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+ICtleHlub3MtaW50ZXJj
b25uZWN0LW9ianMgICAgICAgICAgICAgICA6PSBleHlub3Mubwo+ICsKPiArb2JqLSQoQ09ORklH
X0lOVEVSQ09OTkVDVF9FWFlOT1MpICAgICAgKz0gZXh5bm9zLWludGVyY29ubmVjdC5vCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvaW50ZXJjb25uZWN0L2V4eW5vcy9leHlub3MuYyBiL2RyaXZlcnMv
aW50ZXJjb25uZWN0L2V4eW5vcy9leHlub3MuYwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5k
ZXggMDAwMDAwMC4uODI3ODE5NAo+IC0tLSAvZGV2L251bGwKPiArKysgYi9kcml2ZXJzL2ludGVy
Y29ubmVjdC9leHlub3MvZXh5bm9zLmMKPiBAQCAtMCwwICsxLDE4NSBAQAo+ICsvLyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5Cj4gKy8qCj4gKyAqIEV4eW5vcyBnZW5lcmlj
IGludGVyY29ubmVjdCBwcm92aWRlciBkcml2ZXIKPiArICoKPiArICogQ29weXJpZ2h0IChjKSAy
MDIwIFNhbXN1bmcgRWxlY3Ryb25pY3MgQ28uLCBMdGQuCj4gKyAqCj4gKyAqIEF1dGhvcnM6IEFy
dHVyIMWad2lnb8WEIDxhLnN3aWdvbkBzYW1zdW5nLmNvbT4KPiArICogICAgICAgICAgU3lsd2Vz
dGVyIE5hd3JvY2tpIDxzLm5hd3JvY2tpQHNhbXN1bmcuY29tPgo+ICsgKi8KPiArI2luY2x1ZGUg
PGxpbnV4L2RldmljZS5oPgo+ICsjaW5jbHVkZSA8bGludXgvaW50ZXJjb25uZWN0LXByb3ZpZGVy
Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KPiArI2luY2x1ZGUgPGxpbnV4L29mLmg+
Cj4gKyNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiArI2luY2x1ZGUgPGxpbnV4
L3BtX3Fvcy5oPgo+ICsKPiArI2RlZmluZSBrYnBzX3RvX2toeih4KSAoKHgpIC8gOCkKPiArCj4g
K3N0cnVjdCBleHlub3NfaWNjX3ByaXYgewo+ICsgICAgICAgc3RydWN0IGRldmljZSAqZGV2Owo+
ICsKPiArICAgICAgIC8qIE9uZSBpbnRlcmNvbm5lY3Qgbm9kZSBwZXIgcHJvdmlkZXIgKi8KPiAr
ICAgICAgIHN0cnVjdCBpY2NfcHJvdmlkZXIgcHJvdmlkZXI7Cj4gKyAgICAgICBzdHJ1Y3QgaWNj
X25vZGUgKm5vZGU7Cj4gKwo+ICsgICAgICAgc3RydWN0IGRldl9wbV9xb3NfcmVxdWVzdCBxb3Nf
cmVxOwo+ICt9Owo+ICsKPiArc3RhdGljIHN0cnVjdCBpY2Nfbm9kZSAqZXh5bm9zX2ljY19nZXRf
cGFyZW50KHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnApCj4gK3sKPiArICAgICAgIHN0cnVjdCBvZl9w
aGFuZGxlX2FyZ3MgYXJnczsKPiArICAgICAgIGludCBudW0sIHJldDsKPiArCj4gKyAgICAgICBu
dW0gPSBvZl9jb3VudF9waGFuZGxlX3dpdGhfYXJncyhucCwgInNhbXN1bmcsaW50ZXJjb25uZWN0
LXBhcmVudCIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICIjaW50
ZXJjb25uZWN0LWNlbGxzIik7Cj4gKyAgICAgICBpZiAobnVtICE9IDEpCj4gKyAgICAgICAgICAg
ICAgIHJldHVybiBOVUxMOyAvKiBwYXJlbnQgbm9kZXMgYXJlIG9wdGlvbmFsICovCj4gKwo+ICsg
ICAgICAgcmV0ID0gb2ZfcGFyc2VfcGhhbmRsZV93aXRoX2FyZ3MobnAsICJzYW1zdW5nLGludGVy
Y29ubmVjdC1wYXJlbnQiLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAiI2ludGVyY29ubmVjdC1jZWxscyIsIDAsICZhcmdzKTsKPiArICAgICAgIGlmIChyZXQgPCAw
KQo+ICsgICAgICAgICAgICAgICByZXR1cm4gRVJSX1BUUihyZXQpOwo+ICsKPiArICAgICAgIG9m
X25vZGVfcHV0KGFyZ3MubnApOwo+ICsKPiArICAgICAgIHJldHVybiBvZl9pY2NfZ2V0X2Zyb21f
cHJvdmlkZXIoJmFyZ3MpOwo+ICt9Cj4gKwo+ICsKPiArc3RhdGljIGludCBleHlub3NfZ2VuZXJp
Y19pY2Nfc2V0KHN0cnVjdCBpY2Nfbm9kZSAqc3JjLCBzdHJ1Y3QgaWNjX25vZGUgKmRzdCkKPiAr
ewo+ICsgICAgICAgc3RydWN0IGV4eW5vc19pY2NfcHJpdiAqc3JjX3ByaXYgPSBzcmMtPmRhdGEs
ICpkc3RfcHJpdiA9IGRzdC0+ZGF0YTsKPiArICAgICAgIHMzMiBzcmNfZnJlcSA9IGticHNfdG9f
a2h6KG1heChzcmMtPmF2Z19idywgc3JjLT5wZWFrX2J3KSk7Cj4gKyAgICAgICBzMzIgZHN0X2Zy
ZXEgPSBrYnBzX3RvX2toeihtYXgoZHN0LT5hdmdfYncsIGRzdC0+cGVha19idykpOwo+ICsgICAg
ICAgaW50IHJldDsKPiArCj4gKyAgICAgICByZXQgPSBkZXZfcG1fcW9zX3VwZGF0ZV9yZXF1ZXN0
KCZzcmNfcHJpdi0+cW9zX3JlcSwgc3JjX2ZyZXEpOwo+ICsgICAgICAgaWYgKHJldCA8IDApIHsK
PiArICAgICAgICAgICAgICAgZGV2X2VycihzcmNfcHJpdi0+ZGV2LCAiZmFpbGVkIHRvIHVwZGF0
ZSBQTSBRb1Mgb2YgJXNcbiIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgc3JjLT5uYW1lKTsK
PiArICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiArICAgICAgIH0KPiArCj4gKyAgICAgICBy
ZXQgPSBkZXZfcG1fcW9zX3VwZGF0ZV9yZXF1ZXN0KCZkc3RfcHJpdi0+cW9zX3JlcSwgZHN0X2Zy
ZXEpOwo+ICsgICAgICAgaWYgKHJldCA8IDApIHsKPiArICAgICAgICAgICAgICAgZGV2X2Vycihk
c3RfcHJpdi0+ZGV2LCAiZmFpbGVkIHRvIHVwZGF0ZSBQTSBRb1Mgb2YgJXNcbiIsCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgZHN0LT5uYW1lKTsKPiArICAgICAgICAgICAgICAgcmV0dXJuIHJl
dDsKPiArICAgICAgIH0KPiArCj4gKyAgICAgICByZXR1cm4gMDsKPiArfQo+ICsKPiArc3RhdGlj
IHN0cnVjdCBpY2Nfbm9kZSAqZXh5bm9zX2dlbmVyaWNfaWNjX3hsYXRlKHN0cnVjdCBvZl9waGFu
ZGxlX2FyZ3MgKnNwZWMsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHZvaWQgKmRhdGEpCj4gK3sKPiArICAgICAgIHN0cnVjdCBleHlub3NfaWNjX3By
aXYgKnByaXYgPSBkYXRhOwo+ICsKPiArICAgICAgIGlmIChzcGVjLT5ucCAhPSBwcml2LT5kZXYt
PnBhcmVudC0+b2Zfbm9kZSkKPiArICAgICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIoLUVJTlZB
TCk7Cj4gKwo+ICsgICAgICAgcmV0dXJuIHByaXYtPm5vZGU7Cj4gK30KPiArCj4gK3N0YXRpYyBp
bnQgZXh5bm9zX2dlbmVyaWNfaWNjX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgZXh5bm9zX2ljY19wcml2ICpwcml2ID0gcGxhdGZvcm1f
Z2V0X2RydmRhdGEocGRldik7Cj4gKyAgICAgICBzdHJ1Y3QgaWNjX25vZGUgKnBhcmVudF9ub2Rl
LCAqbm9kZSA9IHByaXYtPm5vZGU7Cj4gKwo+ICsgICAgICAgcGFyZW50X25vZGUgPSBleHlub3Nf
aWNjX2dldF9wYXJlbnQocHJpdi0+ZGV2LT5wYXJlbnQtPm9mX25vZGUpOwo+ICsgICAgICAgaWYg
KHBhcmVudF9ub2RlICYmICFJU19FUlIocGFyZW50X25vZGUpKQo+ICsgICAgICAgICAgICAgICBp
Y2NfbGlua19kZXN0cm95KG5vZGUsIHBhcmVudF9ub2RlKTsKPiArCj4gKyAgICAgICBpY2Nfbm9k
ZXNfcmVtb3ZlKCZwcml2LT5wcm92aWRlcik7Cj4gKyAgICAgICBpY2NfcHJvdmlkZXJfZGVsKCZw
cml2LT5wcm92aWRlcik7Cj4gKwo+ICsgICAgICAgcmV0dXJuIDA7Cj4gK30KPiArCj4gK3N0YXRp
YyBpbnQgZXh5bm9zX2dlbmVyaWNfaWNjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCj4gK3sKPiArICAgICAgIHN0cnVjdCBkZXZpY2UgKmJ1c19kZXYgPSBwZGV2LT5kZXYucGFy
ZW50Owo+ICsgICAgICAgc3RydWN0IGV4eW5vc19pY2NfcHJpdiAqcHJpdjsKPiArICAgICAgIHN0
cnVjdCBpY2NfcHJvdmlkZXIgKnByb3ZpZGVyOwo+ICsgICAgICAgc3RydWN0IGljY19ub2RlICpp
Y2Nfbm9kZSwgKmljY19wYXJlbnRfbm9kZTsKPiArICAgICAgIGludCByZXQ7Cj4gKwo+ICsgICAg
ICAgcHJpdiA9IGRldm1fa3phbGxvYygmcGRldi0+ZGV2LCBzaXplb2YoKnByaXYpLCBHRlBfS0VS
TkVMKTsKPiArICAgICAgIGlmICghcHJpdikKPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9N
RU07Cj4gKwo+ICsgICAgICAgcHJpdi0+ZGV2ID0gJnBkZXYtPmRldjsKPiArICAgICAgIHBsYXRm
b3JtX3NldF9kcnZkYXRhKHBkZXYsIHByaXYpOwo+ICsKPiArICAgICAgIHByb3ZpZGVyID0gJnBy
aXYtPnByb3ZpZGVyOwo+ICsKPiArICAgICAgIHByb3ZpZGVyLT5zZXQgPSBleHlub3NfZ2VuZXJp
Y19pY2Nfc2V0Owo+ICsgICAgICAgcHJvdmlkZXItPmFnZ3JlZ2F0ZSA9IGljY19zdGRfYWdncmVn
YXRlOwo+ICsgICAgICAgcHJvdmlkZXItPnhsYXRlID0gZXh5bm9zX2dlbmVyaWNfaWNjX3hsYXRl
Owo+ICsgICAgICAgcHJvdmlkZXItPmRldiA9IGJ1c19kZXY7Cj4gKyAgICAgICBwcm92aWRlci0+
aW50ZXJfc2V0ID0gdHJ1ZTsKPiArICAgICAgIHByb3ZpZGVyLT5kYXRhID0gcHJpdjsKPiArCj4g
KyAgICAgICByZXQgPSBpY2NfcHJvdmlkZXJfYWRkKHByb3ZpZGVyKTsKPiArICAgICAgIGlmIChy
ZXQgPCAwKQo+ICsgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ICsKPiArICAgICAgIGljY19u
b2RlID0gaWNjX25vZGVfY3JlYXRlKHBkZXYtPmlkKTsKPiArICAgICAgIGlmIChJU19FUlIoaWNj
X25vZGUpKSB7Cj4gKyAgICAgICAgICAgICAgIHJldCA9IFBUUl9FUlIoaWNjX25vZGUpOwo+ICsg
ICAgICAgICAgICAgICBnb3RvIGVycl9wcm92X2RlbDsKPiArICAgICAgIH0KPiArCj4gKyAgICAg
ICBwcml2LT5ub2RlID0gaWNjX25vZGU7Cj4gKyAgICAgICBpY2Nfbm9kZS0+bmFtZSA9IGJ1c19k
ZXYtPm9mX25vZGUtPm5hbWU7Cj4gKyAgICAgICBpY2Nfbm9kZS0+ZGF0YSA9IHByaXY7Cj4gKyAg
ICAgICBpY2Nfbm9kZV9hZGQoaWNjX25vZGUsIHByb3ZpZGVyKTsKPiArCj4gKyAgICAgICBpY2Nf
cGFyZW50X25vZGUgPSBleHlub3NfaWNjX2dldF9wYXJlbnQoYnVzX2Rldi0+b2Zfbm9kZSk7Cj4g
KyAgICAgICBpZiAoSVNfRVJSKGljY19wYXJlbnRfbm9kZSkpIHsKPiArICAgICAgICAgICAgICAg
cmV0ID0gUFRSX0VSUihpY2NfcGFyZW50X25vZGUpOwo+ICsgICAgICAgICAgICAgICBnb3RvIGVy
cl9ub2RlX2RlbDsKPiArICAgICAgIH0KPiArICAgICAgIGlmIChpY2NfcGFyZW50X25vZGUpIHsK
PiArICAgICAgICAgICAgICAgcmV0ID0gaWNjX2xpbmtfY3JlYXRlKGljY19ub2RlLCBpY2NfcGFy
ZW50X25vZGUtPmlkKTsKPiArICAgICAgICAgICAgICAgaWYgKHJldCA8IDApCj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgZ290byBlcnJfbm9kZV9kZWw7Cj4gKyAgICAgICB9Cj4gKwo+ICsgICAg
ICAgLyoKPiArICAgICAgICAqIFJlZ2lzdGVyIGEgUE0gUW9TIHJlcXVlc3QgZm9yIHRoZSBidXMg
ZGV2aWNlIGZvciB3aGljaCBhbHNvIGRldmZyZXEKPiArICAgICAgICAqIGZ1bmN0aW9uYWxpdHkg
aXMgcmVnaXN0ZXJlZC4KPiArICAgICAgICAqLwo+ICsgICAgICAgcmV0ID0gZGV2X3BtX3Fvc19h
ZGRfcmVxdWVzdChidXNfZGV2LCAmcHJpdi0+cW9zX3JlcSwKPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgREVWX1BNX1FPU19NSU5fRlJFUVVFTkNZLCAwKTsKPiArICAgICAg
IGlmIChyZXQgPCAwKQo+ICsgICAgICAgICAgICAgICBnb3RvIGVycl9saW5rX2Rlc3Ryb3k7Cj4g
Kwo+ICsgICAgICAgcmV0dXJuIDA7Cj4gKwo+ICtlcnJfbGlua19kZXN0cm95Ogo+ICsgICAgICAg
aWYgKGljY19wYXJlbnRfbm9kZSkKPiArICAgICAgICAgICAgICAgaWNjX2xpbmtfZGVzdHJveShp
Y2Nfbm9kZSwgaWNjX3BhcmVudF9ub2RlKTsKPiArZXJyX25vZGVfZGVsOgo+ICsgICAgICAgaWNj
X25vZGVzX3JlbW92ZShwcm92aWRlcik7Cj4gK2Vycl9wcm92X2RlbDoKPiArICAgICAgIGljY19w
cm92aWRlcl9kZWwocHJvdmlkZXIpOwo+ICsKPiArICAgICAgIHJldHVybiByZXQ7Cj4gK30KPiAr
Cj4gK3N0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIGV4eW5vc19nZW5lcmljX2ljY19kcml2
ZXIgPSB7Cj4gKyAgICAgICAuZHJpdmVyID0gewo+ICsgICAgICAgICAgICAgICAubmFtZSA9ICJl
eHlub3MtZ2VuZXJpYy1pY2MiLAo+ICsgICAgICAgfSwKPiArICAgICAgIC5wcm9iZSA9IGV4eW5v
c19nZW5lcmljX2ljY19wcm9iZSwKPiArICAgICAgIC5yZW1vdmUgPSBleHlub3NfZ2VuZXJpY19p
Y2NfcmVtb3ZlLAo+ICt9Owo+ICttb2R1bGVfcGxhdGZvcm1fZHJpdmVyKGV4eW5vc19nZW5lcmlj
X2ljY19kcml2ZXIpOwo+ICsKPiArTU9EVUxFX0RFU0NSSVBUSU9OKCJFeHlub3MgZ2VuZXJpYyBp
bnRlcmNvbm5lY3QgZHJpdmVyIik7Cj4gK01PRFVMRV9BVVRIT1IoIkFydHVyIMWad2lnb8WEIDxh
LnN3aWdvbkBzYW1zdW5nLmNvbT4iKTsKPiArTU9EVUxFX0FVVEhPUigiU3lsd2VzdGVyIE5hd3Jv
Y2tpIDxzLm5hd3JvY2tpQHNhbXN1bmcuY29tPiIpOwo+ICtNT0RVTEVfTElDRU5TRSgiR1BMIHYy
Iik7Cj4gK01PRFVMRV9BTElBUygicGxhdGZvcm06ZXh5bm9zLWdlbmVyaWMtaWNjIik7Cj4gLS0K
PiAyLjcuNAo+CgpSZXZpZXdlZC1ieTogQ2hhbndvbyBDaG9pIDxjdzAwLmNob2lAc2Ftc3VuZy5j
b20+CgpBcyBJIGNvbW1lbnRlZCwgSG93IGFib3V0IGNoYW5naW5nIHRoZSBjb21wYXRpYmxlIG5h
bWUgJ2V4eW5vcy1pY2MnCndpdGhvdXQgJ2dlbmVyaWMnPwpUaGUgJ2V4eW5vcy1pY2MnIGRvZXNu
J3QgaGF2ZSB0aGUgYW55IHNwZWNpZmljIHZlcnNpb24gb2YgRXh5bm9zIFNvQywKaXQgdGhpbmsg
dGhhdCBpdCBhbHJlYWR5IGNvbnRhaW4gdGhlICdnZW5lcmljJyBtZWFuaW5nIGZvciBFeHlub3Mg
U29DLgoKLS0gCkJlc3QgUmVnYXJkcywKQ2hhbndvbyBDaG9pClNhbXN1bmcgRWxlY3Ryb25pY3MK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
