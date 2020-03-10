Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DABA7180208
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 16:38:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/i0AQOcqtUy303tHjdidxDuRpLpNu6kKHnQszIDsLK0=; b=oY02gk0Pa0u0Sk
	eVOq+8QaOEYOR7YKrLEfb7lmGIdJ3Lms6g2ZrplHtjKbEy48uZoxCAnifhMt87F3kW6MafpPJHrFZ
	Pp4fVPN3AyP9WW7okRrgXwyHO5vE9xbgB9gELOknEeXu2omdknv/4IFQhcrpMGAqtmxzlnmM1X55N
	nLze7PNRnDq48Zvwo+X/BnwNsXA0mHSJKW0syW5v7fBvt+H+ZrLe+ZQsZtIOUMjku9dPlScZHAXZF
	B6GpnkuC0FwRjAkKpZKgC04jya/kH/DWe0/CzgUe43I6r3+g7DPmBDeVFm14qMAMdStUds1kLzSd0
	k7Q8nxZXjLjee7E80Ttg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBgxk-0002Rj-Ao; Tue, 10 Mar 2020 15:38:32 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBgxb-0002RK-Ai
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 15:38:25 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id CD98327E06CF;
 Tue, 10 Mar 2020 16:38:20 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id B8fxa8_W8eoP; Tue, 10 Mar 2020 16:38:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id F3C7327E0778;
 Tue, 10 Mar 2020 16:38:19 +0100 (CET)
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 44Wf8UyRlh7P; Tue, 10 Mar 2020 16:38:19 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id D5B5627E06CF;
 Tue, 10 Mar 2020 16:38:19 +0100 (CET)
Date: Tue, 10 Mar 2020 16:38:19 +0100 (CET)
From: =?utf-8?Q?Cl=C3=A9ment?= Leger <cleger@kalrayinc.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Message-ID: <371773363.9138477.1583854699708.JavaMail.zimbra@kalray.eu>
In-Reply-To: <20200310152031.GA25781@xps15>
References: <20200210162209.23149-1-cleger@kalray.eu>
 <20200302093902.27849-1-cleger@kalray.eu>
 <20200302093902.27849-6-cleger@kalray.eu> <20200302231342.GE262924@yoga>
 <482678048.7666348.1583222551942.JavaMail.zimbra@kalray.eu>
 <20200310000005.GF14744@builder> <20200310152031.GA25781@xps15>
Subject: Re: [PATCH v5 5/8] remoteproc: Rename rproc_elf_sanity_check for elf32
MIME-Version: 1.0
X-Originating-IP: [192.168.40.202]
X-Mailer: Zimbra 8.8.15_GA_3895 (ZimbraWebClient - GC75 (Linux)/8.8.15_GA_3895)
Thread-Topic: remoteproc: Rename rproc_elf_sanity_check for elf32
Thread-Index: 744OYv16WCG9UdQXi+/ZzGoAOSiy2Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_083823_693157_22AACF87 
X-CRM114-Status: GOOD (  22.38  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [92.103.151.219 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Loic PALLARDY <loic.pallardy@st.com>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, Jonathan Corbet <corbet@lwn.net>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-doc <linux-doc@vger.kernel.org>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Patrice Chotard <patrice.chotard@st.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, s-anna <s-anna@ti.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF0aGlldSwKCi0tLS0tIE9uIDEwIE1hciwgMjAyMCwgYXQgMTY6MjAsIE1hdGhpZXUgUG9p
cmllciBtYXRoaWV1LnBvaXJpZXJAbGluYXJvLm9yZyB3cm90ZToKCj4gT24gTW9uLCBNYXIgMDks
IDIwMjAgYXQgMDU6MDA6MDVQTSAtMDcwMCwgQmpvcm4gQW5kZXJzc29uIHdyb3RlOgo+PiBPbiBU
dWUgMDMgTWFyIDAwOjAyIFBTVCAyMDIwLCBDbD9tZW50IExlZ2VyIHdyb3RlOgo+PiAKPj4gPiBI
aSBCam9ybiwKPj4gPiAKPj4gPiAtLS0tLSBPbiAzIE1hciwgMjAyMCwgYXQgMDA6MTMsIEJqb3Ju
IEFuZGVyc3NvbiBiam9ybi5hbmRlcnNzb25AbGluYXJvLm9yZwo+PiA+IHdyb3RlOgo+PiA+IAo+
PiA+ID4gT24gTW9uIDAyIE1hciAwMTozOCBQU1QgMjAyMCwgQ2xlbWVudCBMZWdlciB3cm90ZToK
Pj4gPiA+IAo+PiA+ID4+IFNpbmNlIHRoaXMgZnVuY3Rpb24gd2lsbCBiZSBtb2RpZmllZCB0byBz
dXBwb3J0IGJvdGggZWxmMzIgYW5kIGVsZjY0LAo+PiA+ID4+IHJlbmFtZSB0aGUgZXhpc3Rpbmcg
b25lIHRvIGVsZjMyICh3aGljaCBpcyB0aGUgb25seSBzdXBwb3J0ZWQgZm9ybWF0Cj4+ID4gPj4g
YXQgdGhlIG1vbWVudCkuIFRoaXMgd2lsbCBhbGxvdyBub3QgdG8gaW50cm9kdWNlIHBvc3NpYmxl
IHNpZGUgZWZmZWN0Cj4+ID4gPj4gd2hlbiBhZGRpbmcgZWxmNjQgc3VwcG9ydCAoaWU6IGFsbCBi
YWNrZW5kcyB3aWxsIHN0aWxsIHN1cHBvcnQgb25seQo+PiA+ID4+IGVsZjMyIGlmIG5vdCByZXF1
ZXN0ZWQgZXhwbGljaXRlbHkgdXNpbmcgcnByb2NfZWxmX3Nhbml0eV9jaGVjaykuCj4+ID4gPj4g
Cj4+ID4gPiAKPj4gPiA+IElzIHRoZXJlIGEgcmVhc29uIGZvciBwcmV2ZW50aW5nIEVMRjY0IGJp
bmFyaWVzIGJlIGxvYWRlZD8KPj4gPiAKPj4gPiBJIGRlY2lkZWQgdG8gZ28gdGhpcyB3YXkgdG8g
bGV0IGRyaXZlciBtYWludGFpbmVyIGRlY2lkZSBpZiB0aGV5IHdhbnQKPj4gPiB0byBzdXBwb3J0
IGVsZjY0IHRvIGF2b2lkIHByb2JsZW1zIHdpdGggNjRiaXRzIGFkZHJlc3Nlcy9zaXplcyB3aGlj
aCBkbwo+PiA+IG5vdCBmaXQgaW4gdGhlaXIgbmF0aXZlIHR5cGUgKHNpemVfdCBmb3IgaW5zdGFu
Y2UpLiBUaGlzIGlzIHByb2JhYmx5Cj4+ID4gbm90IGdvaW5nIHRvIGhhcHBlbiBhbmQgdGhlcmUg
YXJlIGFkZGl0aW9ubmFsIGNoZWNrcyBiZWZvcmUgY2FsbGluZwo+PiA+IHJwcm9jX2RhX3RvX3Zh
LiBBbmQgYWRkcmVzc2VzIHNob3VsZCBiZSBmaWx0ZXJlZCBieSBycHJvY19kYV90b192YS4KPj4g
PiBTbywgYWN0dWFsbHkgaXQgc2VlbXMgdGhlcmUgaXMgbm8gcmVhc29uIHRvIGZvcmJpZCBzdXBw
b3J0aW5nIGVsZjMyLzY0Cj4+ID4gZm9yIGFsbCBkcml2ZXJzLgo+PiA+IAo+PiAKPj4gSSB3YXMg
aG9waW5nIHRvIGhlYXIgc29tZSBhZGRpdGlvbmFsIGZlZWRiYWNrIG9uIHRoaXMgZnJvbSBvdGhl
cnMuCj4gCj4gSSBkaWRuJ3QgZm9sbG93IHVwIG9uIHRoaXMgb25lIGJlY2F1c2UgSSBhZ3JlZWQg
d2l0aCB5b3VyIGFzc2VzbWVudCBhbmQgZGlkbid0Cj4gdGhpbmsgaXQgd2FzIG5lZWRlZC4KPiAK
PiBTaW1wbHkgcHV0IEkgd291bGQgcmF0aGVyIHNlZSBycHJvY19lbGZfc2FuaXR5X2NoZWNrKCkg
Z2FpbiBzdXBwb3J0IGZvciBlbGY2NAo+IGFuZCBsZXQgdGhlIHBsYXRmb3JtIGNvZGUgZGVjaWRl
IHdoYXQgdG8gZG8gd2l0aCBmb3JtYXQgdGhleSBkb24ndCBzdXBwb3J0Cj4gcmF0aGVyIHRoYW4g
c3Bpbm5pbmcgYSBuZXcgZnVuY3Rpb24uCj4gCj4+IAo+PiBJJ3ZlIG1lcmdlIHRoZSBwYXRjaCBh
cyBpcywgYnV0IHRoaW5rIGl0IHdvdWxkIGJlIG5pY2UgdG8gY2xlYW4gdGhpcyB1cAo+PiBhbmQg
anVzdCBoYXZlIHRoZSBkcml2ZXIgaWdub3JlIGlmIGZlZCBhIDMyIG9yIDY0LWVsZi4KPiAKPiBJ
dCB3b3VsZCBiZSByZWFsbHkgbmljZSB0byBzZWUgdGhpcyBjbGVhbmVkIHVwIGluIHRpbWUgZm9y
IHRoZSBjb21pbmcgbWVyZ2UKPiB3aW5kb3cuLi4KCkkgY291bGQgaGF2ZSBzZW50IGEgVjcsIGJ1
dCBCam9ybiB3YXMgZmFzdGVyIHRoYW4gbXkgY29tbWVudCA7KQpCam9ybiwgSXMgdGhlcmUgYW55
IHdheSB0byByZXZlcnQgdGhhdCBvciBpdCdzIGFscmVhZHkgcHVzaGVkID8KSSBhbHJlYWR5IGhh
dmUgYSBjbGVhbiBWNy4KClRoYW5rcywKCkNsw6ltZW50Cgo+IAo+IFRoYW5rcwo+IE1hdGhpZXUK
PiAKPj4gCj4+IFJlZ2FyZHMsCj4+IEJqb3JuCj4+IAo+PiA+IFJlZ2FyZHMsCj4+ID4gCj4+ID4g
Q2zDqW1lbnQKPj4gPiAKPj4gPiA+IAo+PiA+ID4gUmVnYXJkcywKPj4gPiA+IEJqb3JuCj4+ID4g
PiAKPj4gPiA+PiBTaWduZWQtb2ZmLWJ5OiBDbGVtZW50IExlZ2VyIDxjbGVnZXJAa2FscmF5LmV1
Pgo+PiA+ID4+IC0tLQo+PiA+ID4+ICBkcml2ZXJzL3JlbW90ZXByb2MvcmVtb3RlcHJvY19jb3Jl
LmMgICAgICAgfCAyICstCj4+ID4gPj4gIGRyaXZlcnMvcmVtb3RlcHJvYy9yZW1vdGVwcm9jX2Vs
Zl9sb2FkZXIuYyB8IDYgKysrLS0tCj4+ID4gPj4gIGRyaXZlcnMvcmVtb3RlcHJvYy9yZW1vdGVw
cm9jX2ludGVybmFsLmggICB8IDIgKy0KPj4gPiA+PiAgZHJpdmVycy9yZW1vdGVwcm9jL3N0X3Jl
bW90ZXByb2MuYyAgICAgICAgIHwgMiArLQo+PiA+ID4+ICBkcml2ZXJzL3JlbW90ZXByb2Mvc3Rf
c2xpbV9ycHJvYy5jICAgICAgICAgfCAyICstCj4+ID4gPj4gIGRyaXZlcnMvcmVtb3RlcHJvYy9z
dG0zMl9ycHJvYy5jICAgICAgICAgICB8IDIgKy0KPj4gPiA+PiAgNiBmaWxlcyBjaGFuZ2VkLCA4
IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCj4+ID4gPj4gCj4+ID4gPj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcmVtb3RlcHJvYy9yZW1vdGVwcm9jX2NvcmUuYwo+PiA+ID4+IGIvZHJpdmVy
cy9yZW1vdGVwcm9jL3JlbW90ZXByb2NfY29yZS5jCj4+ID4gPj4gaW5kZXggNGJmYWY0YTNjNGEz
Li45OWYwYjc5NmZiYzcgMTAwNjQ0Cj4+ID4gPj4gLS0tIGEvZHJpdmVycy9yZW1vdGVwcm9jL3Jl
bW90ZXByb2NfY29yZS5jCj4+ID4gPj4gKysrIGIvZHJpdmVycy9yZW1vdGVwcm9jL3JlbW90ZXBy
b2NfY29yZS5jCj4+ID4gPj4gQEAgLTIwNTUsNyArMjA1NSw3IEBAIHN0cnVjdCBycHJvYyAqcnBy
b2NfYWxsb2Moc3RydWN0IGRldmljZSAqZGV2LCBjb25zdCBjaGFyCj4+ID4gPj4gKm5hbWUsCj4+
ID4gPj4gIAkJcnByb2MtPm9wcy0+bG9hZCA9IHJwcm9jX2VsZl9sb2FkX3NlZ21lbnRzOwo+PiA+
ID4+ICAJCXJwcm9jLT5vcHMtPnBhcnNlX2Z3ID0gcnByb2NfZWxmX2xvYWRfcnNjX3RhYmxlOwo+
PiA+ID4+ICAJCXJwcm9jLT5vcHMtPmZpbmRfbG9hZGVkX3JzY190YWJsZSA9IHJwcm9jX2VsZl9m
aW5kX2xvYWRlZF9yc2NfdGFibGU7Cj4+ID4gPj4gLQkJcnByb2MtPm9wcy0+c2FuaXR5X2NoZWNr
ID0gcnByb2NfZWxmX3Nhbml0eV9jaGVjazsKPj4gPiA+PiArCQlycHJvYy0+b3BzLT5zYW5pdHlf
Y2hlY2sgPSBycHJvY19lbGYzMl9zYW5pdHlfY2hlY2s7Cj4+ID4gPj4gIAkJcnByb2MtPm9wcy0+
Z2V0X2Jvb3RfYWRkciA9IHJwcm9jX2VsZl9nZXRfYm9vdF9hZGRyOwo+PiA+ID4+ICAJfQo+PiA+
ID4+ICAKPj4gPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9yZW1vdGVwcm9jL3JlbW90ZXByb2Nf
ZWxmX2xvYWRlci5jCj4+ID4gPj4gYi9kcml2ZXJzL3JlbW90ZXByb2MvcmVtb3RlcHJvY19lbGZf
bG9hZGVyLmMKPj4gPiA+PiBpbmRleCBjMmE5NzgzY2ZiOWEuLjVhNjc3NDVmMjYzOCAxMDA2NDQK
Pj4gPiA+PiAtLS0gYS9kcml2ZXJzL3JlbW90ZXByb2MvcmVtb3RlcHJvY19lbGZfbG9hZGVyLmMK
Pj4gPiA+PiArKysgYi9kcml2ZXJzL3JlbW90ZXByb2MvcmVtb3RlcHJvY19lbGZfbG9hZGVyLmMK
Pj4gPiA+PiBAQCAtMjUsMTMgKzI1LDEzIEBACj4+ID4gPj4gICNpbmNsdWRlICJyZW1vdGVwcm9j
X2ludGVybmFsLmgiCj4+ID4gPj4gIAo+PiA+ID4+ICAvKioKPj4gPiA+PiAtICogcnByb2NfZWxm
X3Nhbml0eV9jaGVjaygpIC0gU2FuaXR5IENoZWNrIEVMRiBmaXJtd2FyZSBpbWFnZQo+PiA+ID4+
ICsgKiBycHJvY19lbGZfc2FuaXR5X2NoZWNrKCkgLSBTYW5pdHkgQ2hlY2sgRUxGMzIgZmlybXdh
cmUgaW1hZ2UKPj4gPiA+PiAgICogQHJwcm9jOiB0aGUgcmVtb3RlIHByb2Nlc3NvciBoYW5kbGUK
Pj4gPiA+PiAgICogQGZ3OiB0aGUgRUxGIGZpcm13YXJlIGltYWdlCj4+ID4gPj4gICAqCj4+ID4g
Pj4gICAqIE1ha2Ugc3VyZSB0aGlzIGZ3IGltYWdlIGlzIHNhbmUuCj4+ID4gPj4gICAqLwo+PiA+
ID4+IC1pbnQgcnByb2NfZWxmX3Nhbml0eV9jaGVjayhzdHJ1Y3QgcnByb2MgKnJwcm9jLCBjb25z
dCBzdHJ1Y3QgZmlybXdhcmUgKmZ3KQo+PiA+ID4+ICtpbnQgcnByb2NfZWxmMzJfc2FuaXR5X2No
ZWNrKHN0cnVjdCBycHJvYyAqcnByb2MsIGNvbnN0IHN0cnVjdCBmaXJtd2FyZSAqZncpCj4+ID4g
Pj4gIHsKPj4gPiA+PiAgCWNvbnN0IGNoYXIgKm5hbWUgPSBycHJvYy0+ZmlybXdhcmU7Cj4+ID4g
Pj4gIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcnByb2MtPmRldjsKPj4gPiA+PiBAQCAtODksNyAr
ODksNyBAQCBpbnQgcnByb2NfZWxmX3Nhbml0eV9jaGVjayhzdHJ1Y3QgcnByb2MgKnJwcm9jLCBj
b25zdCBzdHJ1Y3QKPj4gPiA+PiBmaXJtd2FyZSAqZncpCj4+ID4gPj4gIAo+PiA+ID4+ICAJcmV0
dXJuIDA7Cj4+ID4gPj4gIH0KPj4gPiA+PiAtRVhQT1JUX1NZTUJPTChycHJvY19lbGZfc2FuaXR5
X2NoZWNrKTsKPj4gPiA+PiArRVhQT1JUX1NZTUJPTChycHJvY19lbGYzMl9zYW5pdHlfY2hlY2sp
Owo+PiA+ID4+ICAKPj4gPiA+PiAgLyoqCj4+ID4gPj4gICAqIHJwcm9jX2VsZl9nZXRfYm9vdF9h
ZGRyKCkgLSBHZXQgcnByb2MncyBib290IGFkZHJlc3MuCj4+ID4gPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcmVtb3RlcHJvYy9yZW1vdGVwcm9jX2ludGVybmFsLmgKPj4gPiA+PiBiL2RyaXZlcnMv
cmVtb3RlcHJvYy9yZW1vdGVwcm9jX2ludGVybmFsLmgKPj4gPiA+PiBpbmRleCAwZGVhZTVmMjM3
YjguLjI4NjM5YzU4OGQ1OCAxMDA2NDQKPj4gPiA+PiAtLS0gYS9kcml2ZXJzL3JlbW90ZXByb2Mv
cmVtb3RlcHJvY19pbnRlcm5hbC5oCj4+ID4gPj4gKysrIGIvZHJpdmVycy9yZW1vdGVwcm9jL3Jl
bW90ZXByb2NfaW50ZXJuYWwuaAo+PiA+ID4+IEBAIC01NCw3ICs1NCw3IEBAIHZvaWQgKnJwcm9j
X2RhX3RvX3ZhKHN0cnVjdCBycHJvYyAqcnByb2MsIHU2NCBkYSwgc2l6ZV90IGxlbik7Cj4+ID4g
Pj4gIHBoeXNfYWRkcl90IHJwcm9jX3ZhX3RvX3BhKHZvaWQgKmNwdV9hZGRyKTsKPj4gPiA+PiAg
aW50IHJwcm9jX3RyaWdnZXJfcmVjb3Zlcnkoc3RydWN0IHJwcm9jICpycHJvYyk7Cj4+ID4gPj4g
IAo+PiA+ID4+IC1pbnQgcnByb2NfZWxmX3Nhbml0eV9jaGVjayhzdHJ1Y3QgcnByb2MgKnJwcm9j
LCBjb25zdCBzdHJ1Y3QgZmlybXdhcmUgKmZ3KTsKPj4gPiA+PiAraW50IHJwcm9jX2VsZjMyX3Nh
bml0eV9jaGVjayhzdHJ1Y3QgcnByb2MgKnJwcm9jLCBjb25zdCBzdHJ1Y3QgZmlybXdhcmUgKmZ3
KTsKPj4gPiA+PiAgdTY0IHJwcm9jX2VsZl9nZXRfYm9vdF9hZGRyKHN0cnVjdCBycHJvYyAqcnBy
b2MsIGNvbnN0IHN0cnVjdCBmaXJtd2FyZSAqZncpOwo+PiA+ID4+ICBpbnQgcnByb2NfZWxmX2xv
YWRfc2VnbWVudHMoc3RydWN0IHJwcm9jICpycHJvYywgY29uc3Qgc3RydWN0IGZpcm13YXJlICpm
dyk7Cj4+ID4gPj4gIGludCBycHJvY19lbGZfbG9hZF9yc2NfdGFibGUoc3RydWN0IHJwcm9jICpy
cHJvYywgY29uc3Qgc3RydWN0IGZpcm13YXJlICpmdyk7Cj4+ID4gPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcmVtb3RlcHJvYy9zdF9yZW1vdGVwcm9jLmMKPj4gPiA+PiBiL2RyaXZlcnMvcmVtb3Rl
cHJvYy9zdF9yZW1vdGVwcm9jLmMKPj4gPiA+PiBpbmRleCBhMzI2OGQ5NWE1MGUuLmE2Y2JmYTQ1
Mjc2NCAxMDA2NDQKPj4gPiA+PiAtLS0gYS9kcml2ZXJzL3JlbW90ZXByb2Mvc3RfcmVtb3RlcHJv
Yy5jCj4+ID4gPj4gKysrIGIvZHJpdmVycy9yZW1vdGVwcm9jL3N0X3JlbW90ZXByb2MuYwo+PiA+
ID4+IEBAIC0yMzMsNyArMjMzLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBycHJvY19vcHMgc3Rf
cnByb2Nfb3BzID0gewo+PiA+ID4+ICAJLnBhcnNlX2Z3CQk9IHN0X3Jwcm9jX3BhcnNlX2Z3LAo+
PiA+ID4+ICAJLmxvYWQJCQk9IHJwcm9jX2VsZl9sb2FkX3NlZ21lbnRzLAo+PiA+ID4+ICAJLmZp
bmRfbG9hZGVkX3JzY190YWJsZQk9IHJwcm9jX2VsZl9maW5kX2xvYWRlZF9yc2NfdGFibGUsCj4+
ID4gPj4gLQkuc2FuaXR5X2NoZWNrCQk9IHJwcm9jX2VsZl9zYW5pdHlfY2hlY2ssCj4+ID4gPj4g
Kwkuc2FuaXR5X2NoZWNrCQk9IHJwcm9jX2VsZjMyX3Nhbml0eV9jaGVjaywKPj4gPiA+PiAgCS5n
ZXRfYm9vdF9hZGRyCQk9IHJwcm9jX2VsZl9nZXRfYm9vdF9hZGRyLAo+PiA+ID4+ICB9Owo+PiA+
ID4+ICAKPj4gPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9yZW1vdGVwcm9jL3N0X3NsaW1fcnBy
b2MuYwo+PiA+ID4+IGIvZHJpdmVycy9yZW1vdGVwcm9jL3N0X3NsaW1fcnByb2MuYwo+PiA+ID4+
IGluZGV4IDA5YmNiNGQ4YjllMC4uM2NjYThiNjVhOGRiIDEwMDY0NAo+PiA+ID4+IC0tLSBhL2Ry
aXZlcnMvcmVtb3RlcHJvYy9zdF9zbGltX3Jwcm9jLmMKPj4gPiA+PiArKysgYi9kcml2ZXJzL3Jl
bW90ZXByb2Mvc3Rfc2xpbV9ycHJvYy5jCj4+ID4gPj4gQEAgLTIwMyw3ICsyMDMsNyBAQCBzdGF0
aWMgY29uc3Qgc3RydWN0IHJwcm9jX29wcyBzbGltX3Jwcm9jX29wcyA9IHsKPj4gPiA+PiAgCS5k
YV90b192YSAgICAgICA9IHNsaW1fcnByb2NfZGFfdG9fdmEsCj4+ID4gPj4gIAkuZ2V0X2Jvb3Rf
YWRkcgk9IHJwcm9jX2VsZl9nZXRfYm9vdF9hZGRyLAo+PiA+ID4+ICAJLmxvYWQJCT0gcnByb2Nf
ZWxmX2xvYWRfc2VnbWVudHMsCj4+ID4gPj4gLQkuc2FuaXR5X2NoZWNrCT0gcnByb2NfZWxmX3Nh
bml0eV9jaGVjaywKPj4gPiA+PiArCS5zYW5pdHlfY2hlY2sJPSBycHJvY19lbGYzMl9zYW5pdHlf
Y2hlY2ssCj4+ID4gPj4gIH07Cj4+ID4gPj4gIAo+PiA+ID4+ICAvKioKPj4gPiA+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9yZW1vdGVwcm9jL3N0bTMyX3Jwcm9jLmMgYi9kcml2ZXJzL3JlbW90ZXBy
b2Mvc3RtMzJfcnByb2MuYwo+PiA+ID4+IGluZGV4IGExOGY4ODA0NDExMS4uOWE4YjVmNWUyNTcy
IDEwMDY0NAo+PiA+ID4+IC0tLSBhL2RyaXZlcnMvcmVtb3RlcHJvYy9zdG0zMl9ycHJvYy5jCj4+
ID4gPj4gKysrIGIvZHJpdmVycy9yZW1vdGVwcm9jL3N0bTMyX3Jwcm9jLmMKPj4gPiA+PiBAQCAt
NTA1LDcgKzUwNSw3IEBAIHN0YXRpYyBzdHJ1Y3QgcnByb2Nfb3BzIHN0X3Jwcm9jX29wcyA9IHsK
Pj4gPiA+PiAgCS5sb2FkCQk9IHJwcm9jX2VsZl9sb2FkX3NlZ21lbnRzLAo+PiA+ID4+ICAJLnBh
cnNlX2Z3CT0gc3RtMzJfcnByb2NfcGFyc2VfZncsCj4+ID4gPj4gIAkuZmluZF9sb2FkZWRfcnNj
X3RhYmxlID0gcnByb2NfZWxmX2ZpbmRfbG9hZGVkX3JzY190YWJsZSwKPj4gPiA+PiAtCS5zYW5p
dHlfY2hlY2sJPSBycHJvY19lbGZfc2FuaXR5X2NoZWNrLAo+PiA+ID4+ICsJLnNhbml0eV9jaGVj
awk9IHJwcm9jX2VsZjMyX3Nhbml0eV9jaGVjaywKPj4gPiA+PiAgCS5nZXRfYm9vdF9hZGRyCT0g
cnByb2NfZWxmX2dldF9ib290X2FkZHIsCj4+ID4gPj4gIH07Cj4+ID4gPj4gIAo+PiA+ID4+IC0t
Cj4gPiA+ID4+IDIuMTUuMC4yNzYuZzg5ZWE3OTkKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
