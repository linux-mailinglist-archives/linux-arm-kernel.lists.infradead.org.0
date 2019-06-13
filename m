Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AACE44049
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:05:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9aII7oaAp5nBQnSf3zR3ob1CcgXYKjS4sOl7soLJJfA=; b=sp/D60hrmsnDXj
	fOXkloXYtHImtYG3IJFR2PrNjvraEKvqTC8JiCOiw9SNz1DgR4RJv/hcpRj4GRvM2raKQC4xRvb5r
	20GEQgc3n2G/wlTpm6tbKh5STcdhGL0AK9n+N0My1FOuyg1g8YmmTo2pJ1dFLaw1iumocEHjpWr21
	tEFd4aM6Ug6hx0lrp8yNKFdCXQb0PD9Gfw6rACXF8syCJUj4oKg4fCCA6380kDsUNBVKEdcBrEgeE
	mRWV4YULO87RwlYf7WxRCVXVg544m8FYGKXMGC/WnrMqP23g6gWwNNRMq0FAQ7cUsHqGB486BL4zs
	hwiT3Ztn51vXx8HAMY1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSDk-0003At-OY; Thu, 13 Jun 2019 16:05:00 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSDY-00030O-FJ
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 16:04:50 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 6CBC320AC3;
 Thu, 13 Jun 2019 18:04:42 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id ED4C220514;
 Thu, 13 Jun 2019 18:04:41 +0200 (CEST)
Subject: Re: [PATCH v1] iopoll: Tweak readx_poll_timeout sleep range
To: Arnd Bergmann <arnd@arndb.de>
References: <c2e6af51-5676-3715-6666-c3f18df7b992@free.fr>
 <CAK8P3a1_WvHYW243MR5-NdFm3cSt+cVGM5EJmOM8uiQMQ3vQjQ@mail.gmail.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <a732f522-5e65-3ac4-de04-802ef5455747@free.fr>
Date: Thu, 13 Jun 2019 18:04:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAK8P3a1_WvHYW243MR5-NdFm3cSt+cVGM5EJmOM8uiQMQ3vQjQ@mail.gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Jun 13 18:04:42 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_090448_656735_B061C948 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Douglas Anderson <dianders@chromium.org>, Will Deacon <will.deacon@arm.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Bjorn Helgaas <helgaas@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTMvMDYvMjAxOSAxNDo0MiwgQXJuZCBCZXJnbWFubiB3cm90ZToKCj4gT24gVGh1LCBKdW4g
MTMsIDIwMTkgYXQgMjoxNiBQTSBNYXJjIEdvbnphbGV6IHdyb3RlOgo+Cj4+IENob3BwaW5nIG1h
eCBkZWxheSBpbiA0IHNlZW1zIGV4Y2Vzc2l2ZS4gTGV0J3MganVzdCBjdXQgaXQgaW4gaGFsZi4K
Pj4KPj4gU2lnbmVkLW9mZi1ieTogTWFyYyBHb256YWxleiA8bWFyYy53LmdvbnphbGV6QGZyZWUu
ZnI+Cj4+IC0tLQo+PiBXaGVuIG1heF91cz0xMDAsIG9sZF9taW4gd2FzIDI2IHVzOyBuZXdfbWlu
IHdvdWxkIGJlIDUwIHVzCj4+IFdhcyB0aGVyZSBhIGdvb2QgcmVhc29uIGZvciB0aGUgMS80dGg/
Cj4+IElzIG5ld19taW49MCBhIHByb2JsZW0/IChmb3IgbWF4PTEpCj4gCj4gWW91IG5vcm1hbGx5
IHdhbnQgYSBsYXJnZSBlbm91Z2ggcmFuZ2UgYmV0d2VlbiBtaW4gYW5kIG1heC4gSSBkb24ndAo+
IHNlZSBhbnl0aGluZyB3cm9uZyB3aXRoIGEgZmFjdG9yIG9mIGZvdXIuCgpIbW1tLCBJIGV4cGVj
dCB0aGUgdHlwaWNhbCB1c2UtY2FzZSB0byBiZToKIkhXIG1hbnVhbCBzdGF0ZXMgb3BlcmF0aW9u
IFggY29tcGxldGVzIGluIDEwMCDCtXMuCkxldCdzIGNhbGwgdXNsZWVwX3JhbmdlKDEwMCwgZm9v
KTsgYmVmb3JlIGhpdHRpbmcgdGhlIHJlZy4iCgpBbmQgZm9vIG5lZWRzIHRvIGJlIGEgInJlYXNv
bmFibGUiIHZhbHVlOiBiaWcgZW5vdWdoIHRvIGJlIGFibGUKdG8gbWVyZ2Ugc2V2ZXJhbCByZXF1
ZXN0cywgbG93IGVub3VnaCBub3QgdG8gd2FpdCB0b28gbG9uZyBhZnRlcgp0aGUgSFcgaXMgcmVh
ZHkuCgpJbiB0aGlzIGNhc2UsIEknZCBzYXkgdXNsZWVwX3JhbmdlKDEwMCwgMjAwKTsgbWFrZXMg
c2Vuc2UuCgpDb21lIHRvIHRoaW5rIG9mIGl0LCBJJ20gbm90IHN1cmUgbWluPTI2IChvciBtaW49
NTApIG1ha2VzIHNlbnNlLi4uCldoeSB3YWl0ICpsZXNzKiB0aGFuIHdoYXQgdGhlIHVzZXIgc3Bl
Y2lmaWVkPwoKPj4gQEAgLTQ3LDcgKzQ3LDcgQEAKPj4gICAgICAgICAgICAgICAgICAgICAgICAg
YnJlYWs7IFwKPj4gICAgICAgICAgICAgICAgIH0gXAo+PiAgICAgICAgICAgICAgICAgaWYgKF9f
c2xlZXBfdXMpIFwKPj4gLSAgICAgICAgICAgICAgICAgICAgICAgdXNsZWVwX3JhbmdlKChfX3Ns
ZWVwX3VzID4+IDIpICsgMSwgX19zbGVlcF91cyk7IFwKPj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgdXNsZWVwX3JhbmdlKF9fc2xlZXBfdXMgLyAyLCBfX3NsZWVwX3VzKTsgXAo+PiAgICAgICAg
IH0gXAo+IAo+IFlvdSBhcmUgYWxzbyBtaXNzaW5nIHRoZSAnKzEnIG5vdywgc28gdGhpcyBicmVh
a3Mgd2l0aCBfX3NsZWVwX3VzPTEuCgpJdCB3YXMgb24gcHVycG9zZS4KCnVzbGVlcF9yYW5nZSgw
LCAxKTsgaXMgbm90IHdlbGwtZGVmaW5lZD8KKEkgdHJpZWQgbG9va2luZyBhdCB0aGUgc291cmNl
LCBnb3QgbG9zdCBkb3duIHRoZSByYWJiaXQgaG9sZS4pCgpSZWdhcmRzLgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
