Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A67B1C96E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 18:53:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/JYDqvYnfXDerk47a2w6k1yBC3LClEIe67UhMTLbzhA=; b=ZO5cwoVChwalvB
	evGqvIi5cmYRU5ZFpOSWb6BFIW37oF1G+UNKb/zGshNHO0ffsqbOyU3I6rVtHBORrEkHegzADVlZB
	1rCHsTDvJyl/XrrQs3X0L2QAxWZjlT3kKmp3Nyfa2rdJjqk9KjeUYJzCvIWYT/LTlzPVLzqHluL3Z
	ttti/gbYQzfSePiMXtdvkCCbUItKwHTVlw0M7Shk9T6Mju1Tqr1JspmhAfuKh5xmw5YgiTx3fcpuB
	C4VKI7lFq1wDowjxmL3vvQpbfKbVeihPtGwKP194tf1DwuuCQj8+/QQnM2eC55lGcZenTNSZjHbY0
	rRM0+UUsfMAMK7Bj0nnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWjm2-00065n-O3; Thu, 07 May 2020 16:53:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWjlv-000656-3p; Thu, 07 May 2020 16:53:20 +0000
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BA13720870;
 Thu,  7 May 2020 16:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588870398;
 bh=NujDvlsKX4AJIFdjy/ZhQD238Qri2e97mGwjx7CIqAE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JlpUvKEn0HsL1QzZ6h0GinpcwY43KR9GznAQ+FL4QesMiCkMJw93GU5TwBvOCIFlz
 oDiB+OAbY87TeFnWWySAZIX6SU7tU2T9wJTNWj2i7/rl5S7c6osUw7TFtna6K9D1mG
 wfTQmnKlhMMMYAIGnBkzPrnxLqDRRPiR4meHNTtg=
Date: Thu, 7 May 2020 09:53:15 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: Re: [PATCH 05/11] net: core: provide devm_register_netdev()
Message-ID: <20200507095315.1154a1a6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <CAMpxmJWckQdKvUGFDAJ1WMtD9WoGWmGe3kyKYhcfRT2nOB93xw@mail.gmail.com>
References: <20200505140231.16600-1-brgl@bgdev.pl>
 <20200505140231.16600-6-brgl@bgdev.pl>
 <20200505103105.1c8b0ce3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAMRc=Mf0ipaeLKhHCZaq2YeZKzi=QBAse7bEz2hHxXN5OL=ptg@mail.gmail.com>
 <20200506101236.25a13609@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAMpxmJWckQdKvUGFDAJ1WMtD9WoGWmGe3kyKYhcfRT2nOB93xw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_095319_198362_C3F81168 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 netdev <netdev@vger.kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Sean Wang <sean.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCA3IE1heSAyMDIwIDExOjI1OjAxICswMjAwIEJhcnRvc3ogR29sYXN6ZXdza2kgd3Jv
dGU6Cj4gxZtyLiwgNiBtYWogMjAyMCBvIDE5OjEyIEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5l
bC5vcmc+IG5hcGlzYcWCKGEpOgo+ID4KPiA+IE9uIFdlZCwgNiBNYXkgMjAyMCAwODozOTo0NyAr
MDIwMCBCYXJ0b3N6IEdvbGFzemV3c2tpIHdyb3RlOiAgCj4gPiA+IHd0LiwgNSBtYWogMjAyMCBv
IDE5OjMxIEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+IG5hcGlzYcWCKGEpOiAgCj4g
PiA+ID4KPiA+ID4gPiBPbiBUdWUsICA1IE1heSAyMDIwIDE2OjAyOjI1ICswMjAwIEJhcnRvc3og
R29sYXN6ZXdza2kgd3JvdGU6ICAKPiA+ID4gPiA+IEZyb206IEJhcnRvc3ogR29sYXN6ZXdza2kg
PGJnb2xhc3pld3NraUBiYXlsaWJyZS5jb20+Cj4gPiA+ID4gPgo+ID4gPiA+ID4gUHJvdmlkZSBk
ZXZtX3JlZ2lzdGVyX25ldGRldigpIC0gYSBkZXZpY2UgcmVzb3VyY2UgbWFuYWdlZCB2YXJpYW50
Cj4gPiA+ID4gPiBvZiByZWdpc3Rlcl9uZXRkZXYoKS4gVGhpcyBuZXcgaGVscGVyIHdpbGwgb25s
eSB3b3JrIGZvciBuZXRfZGV2aWNlCj4gPiA+ID4gPiBzdHJ1Y3RzIHRoYXQgaGF2ZSBhIHBhcmVu
dCBkZXZpY2UgYXNzaWduZWQgYW5kIGFyZSBkZXZyZXMgbWFuYWdlZCB0b28uCj4gPiA+ID4gPgo+
ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQmFydG9zeiBHb2xhc3pld3NraSA8YmdvbGFzemV3c2tp
QGJheWxpYnJlLmNvbT4gIAo+ID4gPiA+ICAKPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9uZXQvY29y
ZS9kZXYuYyBiL25ldC9jb3JlL2Rldi5jCj4gPiA+ID4gPiBpbmRleCA1MjIyODgxNzdiYmQuLjk5
ZGI1MzdjOTQ2OCAxMDA2NDQKPiA+ID4gPiA+IC0tLSBhL25ldC9jb3JlL2Rldi5jCj4gPiA+ID4g
PiArKysgYi9uZXQvY29yZS9kZXYuYwo+ID4gPiA+ID4gQEAgLTk1MTksNiArOTUxOSw1NCBAQCBp
bnQgcmVnaXN0ZXJfbmV0ZGV2KHN0cnVjdCBuZXRfZGV2aWNlICpkZXYpCj4gPiA+ID4gPiAgfQo+
ID4gPiA+ID4gIEVYUE9SVF9TWU1CT0wocmVnaXN0ZXJfbmV0ZGV2KTsKPiA+ID4gPiA+Cj4gPiA+
ID4gPiArc3RydWN0IG5ldGRldmljZV9kZXZyZXMgewo+ID4gPiA+ID4gKyAgICAgc3RydWN0IG5l
dF9kZXZpY2UgKm5kZXY7Cj4gPiA+ID4gPiArfTsgIAo+ID4gPiA+Cj4gPiA+ID4gSXMgdGhlcmUg
cmVhbGx5IGEgbmVlZCB0byBkZWZpbmUgYSBzdHJ1Y3R1cmUgaWYgd2Ugb25seSBuZWVkIGEgcG9p
bnRlcj8KPiA+ID4gPiAgCj4gPiA+Cj4gPiA+IFRoZXJlIGlzIG5vIG5lZWQgZm9yIHRoYXQsIGJ1
dCBpdCByZWFsbHkgaXMgbW9yZSByZWFkYWJsZSB0aGlzIHdheS4KPiA+ID4gQWxzbzogdXNpbmcg
YSBwb2ludGVyIGRpcmVjdGx5IGRvZXNuJ3Qgc2F2ZSB1cyBhbnkgbWVtb3J5IG5vciBjb2RlCj4g
PiA+IGhlcmUuICAKPiA+Cj4gPiBJIGRvbid0IGNhcmUgZWl0aGVyIHdheSBidXQgZGV2bV9hbGxv
Y19ldGhlcmRldl9tcXMoKSBhbmQgY28uIGFyZSB1c2luZwo+ID4gdGhlIGRvdWJsZSBwb2ludGVy
IGRpcmVjdGx5LiBQbGVhc2UgbWFrZSB0aGluZ3MgY29uc2lzdGVudC4gRWl0aGVyIGRvCj4gPiB0
aGUgc2FtZSwgb3IgZGVmaW5lIHRoZSBzdHJ1Y3R1cmUgaW4gc29tZSBoZWFkZXIgYW5kIGNvbnZl
cnQgb3RoZXIKPiA+IGhlbHBlcnMgdG8gYWxzbyBtYWtlIHVzZSBvZiBpdC4gIAo+IAo+IEluIG9y
ZGVyIHRvIHVzZSBkZXZyZXNfZmluZCgpIHRvIGNoZWNrIGlmIHN0cnVjdCBuZXRfZGV2aWNlIGlz
IG1hbmFnZWQKPiBpbiBkZXZtX3JlZ2lzdGVyX25ldGRldigpIEkgbmVlZCB0byBrbm93IHRoZSBh
ZGRyZXNzIG9mIHRoZSByZWxlYXNlCj4gZnVuY3Rpb24gdXNlZCBieSBkZXZtX2FsbG9jX2V0aGVy
ZGV2X21xcygpLiBEbyB5b3UgbWluZCBpZiBJIG1vdmUgYWxsCj4gbmV0d29ya2luZyBkZXZyZXMg
cm91dGluZXMgKGN1cnJlbnRseSBvbmx5IGRldm1fYWxsb2NfZXRoZXJkZXZfbXFzKCkpCj4gaW50
byBhIHNlcGFyYXRlIC5jIGZpbGUgKGUuZy4gdW5kZXIgbmV0L2RldnJlcy5jKT8KClRvIGltcGxl
bWVudCBFZHdpbidzIHN1Z2dlc3Rpb24/IE1ha2VzIHNlbnNlLCBidXQgSSdtIG5vIGV4cGVydCwg
bGV0J3MKYWxzbyBDQyBIZWluZXIgc2luY2UgaGUgd2FzIGFza2luZyBhYm91dCBpdCBsYXN0IHRp
bWUuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
