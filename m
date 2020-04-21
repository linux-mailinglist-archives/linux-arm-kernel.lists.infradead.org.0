Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F791B1D1B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 05:52:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C3oldZ5C4sONucJ8yi7zSIMKwKmz44OkLxBC98aPKVE=; b=NLqhazuV19P1J1
	dljT9EamG5TdEecgCyJ+DbX41dwaRrcldN0egGbnyZprO8hu4QGGGJ9vuuaE6I9raQp3IXRCngGqN
	YvtHporFySWYmh0SJRGai3HgD+GNr0ecUxSUNzncKkIRiCZiEowJ0OSsk9bcBnTmDCPGwqK+OIBof
	sYk3krlztJ7Wv7T24IJI7t8+FO176KP2jg+gkOEapFFJWIfK7gH7gmatAWG5T+r258U+tLk7LPjB7
	ylVKog7B7ZQir5UaAG+g359Dx5CNXY5MZJnGgEj2rTuCNq3FaE6eslvGElN9U1m40t1GnJW1BLnjB
	PzFgaOWOMQ3Q9MlqQqhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQjwv-00034o-2B; Tue, 21 Apr 2020 03:51:53 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQjwh-00033r-Nq
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 03:51:41 +0000
Received: by mail-ej1-x644.google.com with SMTP id nv1so9857233ejb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 20:51:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=JwKKrpGN9bGHa6yzCTNYdUWBtPrU+5dunfBlkrEsoq4=;
 b=Ha4YDa8RzqgRBLGgtET6TgiypxyCOMB5mu9I0dWakEjcbxf/LpAIjOPGfdIa/h1++8
 /ha2eDCyFV8iuytiCG/YQUY6Uh58skPrPrpIIzs4N5tiqKLchkQyqYduLxtw02EQyMH8
 vFGBg/K/4iK1gSuLTLIgWAG8x5u9PnhJdpx0hefmVdeDh33hsWoFsmZCygkNBUdOPp/C
 ouJ1P1AumF2PJfkQGB1fMWPnAv+/KSRp8QaMP4Nq4KHj+0a7mW+rKLJb4T4SBEnmPBO2
 9K3K0HuLQ0BomjyLGaCjxx2bxLFlwqiYP/obPg/xJY+Z8wW6MbUPkPHzi1CILlhFtiHK
 IF2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=JwKKrpGN9bGHa6yzCTNYdUWBtPrU+5dunfBlkrEsoq4=;
 b=l3m7iqbmwiVmyiiM/xllXt2K4CulrseXA044ZC6d2MoNgkq7l1A3mcgE0mxU29Iw8X
 BhW5rC2FgYYY274dIbiIHeIAN0fVrmqRWDSQcGb6f2NnXm5mfE8jjhW8nX4+OzCbdPlO
 78O0bUeburNdLiC++pcGIbosNPmji68+QtqZXVYXzxN8RLFQ/eF+32JXIWh+C1GblE1j
 Q+CbJFbxx3KeS7VfIrUnNpFwe6s9pj5LomhhCfj/FEUaMzTZJLqFTMeE8yit+peI4x+5
 2HLlwfWQn3+ghKUDroXeT0FxNaWFXyRm3PBympn46ulIdsWnlTQWH796+5lRk8GfT77d
 oGrA==
X-Gm-Message-State: AGi0PuZVvy09HgyyvRH1WXBOOWEbyNO/nFE+RBlWlY0QByO8VGJzVV5y
 bYrDyfbpst2TqA3iGpXE4BsdU4Gw3WBPT/GOQA80Dw==
X-Google-Smtp-Source: APiQypKq0NoVkoQsH8O11s3ikua5Aa3+HM1uQAPkbhDvRn6bgnoFYLGtCALPQwjmt8CmqzkRqsccMyNMiBh5FBtH7fE=
X-Received: by 2002:a17:906:680b:: with SMTP id
 k11mr19265015ejr.46.1587441091301; 
 Mon, 20 Apr 2020 20:51:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200408010232.48432-1-samuel@sholland.org>
 <244922ec-ed3a-eca7-6640-49de7ad9c605@sholland.org>
 <20200420151010.GL125838@aptenodytes> <5590139.lOV4Wx5bFT@jernej-laptop>
In-Reply-To: <5590139.lOV4Wx5bFT@jernej-laptop>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Tue, 21 Apr 2020 00:51:19 -0300
Message-ID: <CAAEAJfCjUY3JeZ1dmVwkQaumoCbv8OR0FTP9Prdg=RS=gh_NUg@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH] media: cedrus: Implement runtime PM
To: jernej.skrabec@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_205139_774973_48A7F17A 
X-CRM114-Status: GOOD (  25.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Samuel Holland <samuel@sholland.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-sunxi@googlegroups.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmVybmVqLCBQYXVsOgoKT24gTW9uLCAyMCBBcHIgMjAyMCBhdCAxMzo0MSwgSmVybmVqIMWg
a3JhYmVjIDxqZXJuZWouc2tyYWJlY0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gRG5lIHBvbmVkZWxq
ZWssIDIwLiBhcHJpbCAyMDIwIG9iIDE3OjEwOjEwIENFU1QgamUgUGF1bCBLb2NpYWxrb3dza2kK
PiBuYXBpc2FsKGEpOgo+ID4gSGksCj4gPgo+ID4gT24gU3VuIDE5IEFwciAyMCwgMTU6MjgsIFNh
bXVlbCBIb2xsYW5kIHdyb3RlOgo+ID4gPiBPbiA0LzgvMjAgMTE6MDEgQU0sIEplcm5laiDFoGty
YWJlYyB3cm90ZToKPiA+ID4gPiBIaSBTYW11ZWwhCj4gPiA+ID4KPiA+ID4gPiBEbmUgc3JlZGEs
IDA4LiBhcHJpbCAyMDIwIG9iIDAzOjAyOjMyIENFU1QgamUgU2FtdWVsIEhvbGxhbmQgbmFwaXNh
bChhKToKPiA+ID4gPj4gVGhpcyBhbGxvd3MgdGhlIFZFIGNsb2NrcyBhbmQgUExMX1ZFIHRvIGJl
IGRpc2FibGVkIG1vc3Qgb2YgdGhlIHRpbWUuCj4gPiA+ID4+Cj4gPiA+ID4+IFNpbmNlIHRoZSBk
ZXZpY2UgaXMgc3RhdGVsZXNzLCBlYWNoIGZyYW1lIGdldHMgYSBzZXBhcmF0ZSBydW50aW1lIFBN
Cj4gPiA+ID4+IHJlZmVyZW5jZS4gRW5hYmxlIGF1dG9zdXNwZW5kIHNvIHRoZSBQTSBjYWxsYmFj
a3MgYXJlIG5vdCBydW4gYmVmb3JlCj4gPiA+ID4+IGFuZAo+ID4gPiA+PiBhZnRlciBldmVyeSBm
cmFtZS4KPiA+ID4gPj4KPiA+ID4gPj4gU2lnbmVkLW9mZi1ieTogU2FtdWVsIEhvbGxhbmQgPHNh
bXVlbEBzaG9sbGFuZC5vcmc+Cj4gPiA+ID4+IC0tLQo+ID4gPiA+Pgo+ID4gPiA+PiBJIHRlc3Rl
ZCB0aGlzIHdpdGggdjRsMi1yZXF1ZXN0LXRlc3QuIEkgZG9uJ3QgaGF2ZSB0aGUgc2V0dXAgdG8g
ZG8KPiA+ID4gPj4gYW55dGhpbmcgbW9yZSBjb21wbGljYXRlZCBhdCB0aGUgbW9tZW50Lgo+ID4g
PiA+Pgo+ID4gPiA+PiAtLS0KPiA+ID4gPj4KPiA+ID4gPj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRp
YS9zdW54aS9jZWRydXMvY2VkcnVzLmMgICB8ICAgNyArKwo+ID4gPiA+PiAgLi4uL3N0YWdpbmcv
bWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19ody5jICAgIHwgMTE1ICsrKysrKysrKysrKy0tLS0t
LQo+ID4gPiA+PiAgLi4uL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19ody5oICAg
IHwgICAzICsKPiA+ID4gPj4gIDMgZmlsZXMgY2hhbmdlZCwgODggaW5zZXJ0aW9ucygrKSwgMzcg
ZGVsZXRpb25zKC0pCj4gPiA+Cj4gPiA+IFtzbmlwXQo+ID4gPgo+ID4gPiA+IFJlc2V0IGFib3Zl
IGNhdXNlcyBwcm9ibGVtLiBXaGVuIGZvcm1hdCBpcyBzZXQgaW4gY2VkcnVzX3NfZm10X3ZpZF9j
YXAoKQo+ID4gPiA+IGEKPiA+ID4gPiBmdW5jdGlvbiBpcyBjYWxsZWQsIHdoaWNoIHNldHMgZmV3
IHJlZ2lzdGVycyBpbiBIVy4gT2YgY291cnNlLCB0aGVyZSBpcwo+ID4gPiA+IG5vCj4gPiA+ID4g
Z3VhcmFudGVlIHRoYXQgc29tZW9uZSB3aWxsIHN0YXJ0IGRlY29kaW5nIGltbWVkaWF0ZWx5IGFm
dGVyIGNhcHR1cmUKPiA+ID4gPiBmb3JtYXQgaXMgc2V0LiBTbywgaWYgdGhlIGRyaXZlciBwdXRz
IFZQVSB0byBzbGVlcCBpbiB0aGUgbWVhbiB0aW1lLAo+ID4gPiA+IHJlc2V0IHdpbGwgY2xlYXIg
dGhvc2UgcmVnaXN0ZXJzIGFuZCBkZWNvZGVkIHZpZGVvIHdpbGwgYmUgaW4gZGlmZmVyZW50Cj4g
PiA+ID4gZm9ybWF0IHRoYW4gZXhwZWN0ZWQuIEl0IGNvdWxkIGJlIGV2ZW4gYXJndWVkIHRoYXQg
cmVnaXN0ZXJzIHNob3VsZCBub3QKPiA+ID4gPiBiZSBzZXQgaW4gdGhhdCBmdW5jdGlvbiBhbmQg
dGhhdCB0aGlzIGlzIGRlc2lnbiBpc3N1ZSBvciBidWcgaW4gZHJpdmVyLgo+ID4gPgo+ID4gPiBZ
b3UncmUgcmlnaHQuIEkgZGlkbid0IHNlZSB0aGF0IGNlZHJ1c19kc3RfZm9ybWF0X3NldCgpIHdh
cyBjYWxsZWQgb3V0c2lkZQo+ID4gPiBjZWRydXNfZW5naW5lX2VuYWJsZS9kaXNhYmxlKCkuCj4g
Pgo+ID4gVGhpcyBtaWdodCBpbmRlZWQgYmUgYW4gaXNzdWUgd2l0aCBtdWx0aXBsZSBkZWNvZGlu
ZyBjb250ZXh0cyBpbiBwYXJhbGxlbCwKPiA+IHdpdGggcG90ZW50aWFsbHkgZGlmZmVyZW50IGZv
cm1hdHMuIEZvciB0aGF0IHJlYXNvbiwgaXQgbG9va3MgbGlrZSB0aGUKPiA+IHJpZ2h0IHRoaW5n
IHRvIGRvIHdvdWxkIGJlIHRvIHNldCB0aGUgZm9ybWF0IGF0IGVhY2ggZGVjb2RpbmcgcnVuIGJh
c2VkIG9uCj4gPiB0aGUgZm9ybWF0IHNldCBpbiB0aGUgY29udGV4dCBieSBzX2ZtdC4KPgo+IFNv
IHlvdSBhcmUgc3VnZ2VzdGluZyB0aGF0IGNlZHJ1c19kc3RfZm9ybWF0X3NldCgpIHNob3VsZCBi
ZSBtb3ZlZCB0bwo+IGNlZHJ1c19kZXZpY2VfcnVuKCksIHJpZ2h0PyBUaGlzIHdheSBhbGwgcmVn
aXN0ZXJzIGFyZSBzZXQgYXQgZWFjaCBydW4sIHdoaWNoCj4gaXMgdGhlbiB0cnVseSBzdGF0ZWxl
c3MuCj4KCkJUVywgdGhpcyBpcyBob3cgdGhlIEhhbnRybyBhbmQgUm9ja2NoaXAncyBSa3ZkZWMK
ZHJpdmVycyBhcmUgaW1wbGVtZW50ZWQuIE9uZSBvZiB0aGUgbWFpbiByZWFzb25zIGlzCnRvIGhh
dmUgc2ltdWx0YW5lb3VzIGRlY29kaW5nIHN1cHBvcnQuCgpUaGFua3MsCkV6ZXF1aWVsCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
