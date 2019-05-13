Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3CE1BED6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 22:55:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Message-ID:Subject:From:To:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X4ndlf8b2HKL7XwbtNlp4+QTdfqpPkrZR6TCvxJ84u8=; b=n1xnrexMSZgNG1
	wkSASn0Qd7CENdH8qDORWUTI4ClM4xE8gTYr/Vq3AhzlWdZYEKq5/kdmi4Oqxj80w2DgSCh4hMENj
	N3PswetaQ2Nhy+JIZ8ba/jdNSmxZy8/zT6BiwCApWc1wCqKLgychJY8cvTbooXun8tBLrVnTr8lKK
	uXy8XV+6rk+vpWIlOmT3Jen6wI226Rwo6oPTbGpeUhcDblC6LyqXd/BHX4l3kWgsl9XDVtLONpqoN
	zbLKEv2Zcc8l0+ss0Z7kMkUFGc6awmIzEcVQ7aS+JnxMPv9JFUN+fglod1MqAkNsLM8HuLnOBYYcD
	Rh0YFItNe7f6qhOoQZvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQHyL-0002fw-RN; Mon, 13 May 2019 20:54:57 +0000
Received: from mail-40132.protonmail.ch ([185.70.40.132])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQHyB-0002cR-Aq
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 20:54:49 +0000
Date: Mon, 13 May 2019 20:54:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=default; t=1557780883;
 bh=RSd78YB79lA3Ya3juukbN6IBJTvG5gz0FM/G7SozeCs=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:
 Feedback-ID:From;
 b=Q7yeX8wR4AV/qc1bNOsdUi0GAbLQsQw08PsJfoYfnHJ26loUUMhrRVCcNEORkISPd
 tjE2KxM9pLcpAqshBHb++ejXqgqWV72nVCAwRn9rWgWqsJjx3jEfR42eTD30dla5+r
 pBlN5U7KXKjsYOfaA9RTeA8BqkzN/fDzfSLqND7U=
To: Jerome Brunet <jbrunet@baylibre.com>
From: Bob <pigiron@protonmail.com>
Subject: Re: arm64: dts: meson: Boot failure with using eMMC
Message-ID: <yo6yKUmAfWHBzU_1DJkPYbANkgXUc6VTgaVZQiusvrUEy2gHdGHGLVzduFlQdUgOgSpCUbn3u7bQXlIeCY8Hc0g7puYkfnEVZxgaq6Nlyf8=@protonmail.com>
In-Reply-To: <dc6ee617fb0902ae05289b2bc794c8362fd08eae.camel@baylibre.com>
References: <7yaiVYWS-VlbP5H6BTXnSiNE_w6ZJQRMX8DjxBa7gDLaZ4PoWFPg_CZkd9EU0-UVVuGvpxrlTJR1_6i64BP7eSb3XZdCV9vv3NFhHsmifA8=@protonmail.com>
 <dc6ee617fb0902ae05289b2bc794c8362fd08eae.camel@baylibre.com>
Feedback-ID: C9LuG3VnvxsVE-NK__4mgtHQkVUBjoNZAKT1UPY69jR3O3SjppQt3FTXk4t40ZQ2rrvuZCw-kRM7a0ytDe7Whg==:Ext:ProtonMail
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.protonmail.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_135447_846658_F7038418 
X-CRM114-Status: GOOD (  21.49  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.70.40.132 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pigiron[at]protonmail.com)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Reply-To: Bob <pigiron@protonmail.com>
Cc: "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgoKCgrigJDigJDigJDigJDigJDigJDigJAgT3JpZ2luYWwgTWVzc2FnZSDigJDigJDigJDigJDi
gJDigJDigJAKT24gTW9uZGF5LCBNYXkgMTMsIDIwMTkgNDo1MyBBTSwgSmVyb21lIEJydW5ldCA8
amJydW5ldEBiYXlsaWJyZS5jb20+IHdyb3RlOgoKPiBPbiBTYXQsIDIwMTktMDUtMTEgYXQgMjA6
NDkgKzAwMDAsIEJvYiB3cm90ZToKPgo+ID4gRXZlbiB0aG91Z2ggSSBjb21lIHdpdGggYSBwcm9i
bGVtLCBJIGZpcnN0IHdhbnQgdG8gdGhhbmsgeW91IGZvbGtzIGZvciBhbGwKPiA+IHRoYXQgeW91
IGRvLiBJdCdzIG11Y2ggYXBwcmVjaWF0ZWQuCj4gPiBTbyBvbiB0byB0aGUgcHJvYmxlbS4gSSd2
ZSBnb3QgYW4gT2Ryb2lkIEMyIChtZXNvbi1neGJiKSB3aXRoIGFuIGVNTUMgY2hpcAo+ID4gdGhh
dCBBbWVyaWRyb2lkIGNsYWltcyB0byBiZSBhbiAiZU1NQyBWZXJzaW9uIDQuNSAtIEhTMjAwIGlu
dGVyZmFjZSB3aXRoCj4gPiA4Yml0IEREUiBtb2RlIGZyb20gU2Ftc3VuZyIuCj4KPiBDb3VsZCB5
b3Ugc2hhcmUgdGhlIGNvbXBsZXRlIHBhcnQgbnVtYmVyIHRoYXQgaXMgd3JpdHRlbiBvbiB0aGUg
c2Ftc3VuZyBNTUMKPiBtb2R1bGUgPwo+ClRoaXMgaXMgdGhlIGVNTUMgY2hpcCBJIHB1cmNoYXNl
ZCwgYW5kIGl0IGRlc2NyaWJlcyB0aGUgY2hpcCBsaWtlIEkgc2FpZCBhYm92ZToKCmh0dHBzOi8v
YW1lcmlkcm9pZC5jb20vY29sbGVjdGlvbnMvc3RvcmFnZS1lbW1jLWFuZC1taWNyb3NkL3Byb2R1
Y3RzLwplbW1jLW1vZHVsZS1jMi1saW51eC1yZWQtYm94CgpZZXQsIHdoZW4gSSBwZWVsZWQgb2Zm
IHRoZSByZWQgc3RpY2tlciwgdGhpcyBpcyB3aGF0IHdhcyBzY3JpYmVkIG9uIHRoZSBjaGlwOgoK
ICAgU2FuRGlzawogICBOQkRHNCAtIDMyRwogICA3NDI0RFBISjgwSEsKCkdvb2dsZSB0ZWxscyBt
ZSB0aGF0J3MgU2FuRGlzayBwYXJ0IG51bWJlciBTRElOQkRHNC0zMkcuICpJZiogdGhhdCdzIGNv
cnJlY3QsCnRoZW4gdGhlIGludGVyZmFjZSBpcyBhY3R1YWxseSAiZU1NQyA1LjEgSFM0MDAiLiBT
byBwZXJoYXBzIHRoYXQgY2hhbmdlcwp0aGluZ3M/Pz8gQnV0IG15IGdvb2dsZS1mdSBzaG91bGQg
cHJvYmFibHkgYmUgdmVyaWZpZWQuCgo+ID4gSSBydW4gdGhlIEFyY2ggTGludXggIm1haW5saW5l
IiBrZXJuZWwgYW5kIGl0IGhhZCBiZWVuIHdvcmtpbmcgd2VsbC4gQnV0IHdoZW4KPiA+IEkgdXBn
cmFkZWQgdGhlIGtlcm5lbCBmcm9tIDQuMjAgdG8gNS4wIGl0IGZhaWxlZCB0byBib290IHdoZW4g
VUJvb3QgY291bGRuJ3QKPiA+IG1vdW50IHRoZSByb290IGZpbGVzeXN0ZW0sIHNvIGl0IGRyb3Bw
ZWQgaW50byBpdCdzIHNoZWxsLiBVc2luZyBhbiBVU0Igc2VyaWFsCj4gPiBkb25nbGUsIEkgbm90
aWNlZCB0aGF0IG5vbmUgb2YgdGhlIHVzdWFsIC9kZXYvbW1jYmxrKiBmaWxlcyB3ZXJlIGNyZWF0
ZWQuCj4gPiBJIHNhdmVkIHRoZSBmYWlsaW5nIGJvb3Qgb3V0cHV0IGZyb20gdGhlIFVTQiBkb25n
bGUsIGRvd25ncmFkZWQgYmFjayB0byB0aGUKPiA+IDQuMjAga2VybmVsLCBhbmQgbm93IGl0IGJv
b3RlZCBzdWNjZXNzZnVsbHkuIFdoZW4gSSBjb21wYXJlZCB0aGUgZ29vZC9iYWQKPiA+IGRvbmds
ZSBvdXRwdXRzIGl0IHNlZW1zIHRoYXQgdGhlIGZpcnN0IGVycm9yIG1lc3NhZ2VzIHdlcmU6Cj4g
PiBbMi43OTAxNDFdIG1lc29uLWd4LW1tYyBkMDA3NDAwMC5tbWM6IG5vIHN1cHBvcnQgZm9yIGNh
cmQncyB2b2x0cwo+ID4gKHNuaXApCj4gPiBbMi43OTk3MzBdIG1tYzA6IGVycm9yIC0yMiB3aGls
c3QgaW5pdGlhbGlzaW5nIE1NQyBjYXJkCj4gPiBJIHRoZW4gZGlkIGEgYnVuY2ggb2YgImdpdCBi
aXNlY3QiIGNvbXBpbGVzIG9uIExpbnVzJyAidmFuaWxsYSIga2VybmVsIGZyb20gaGlzCj4gPiBn
aXQgdHJlZSBhbmQgdWx0aW1hdGVseSBpdCBwb2ludGVkIHRvIGNvbW1pdDoKPiA+IGFybTY0OiBk
dHM6IG1lc29uOiBkaXNhYmxlIHBhZCBiaWFzIGZvciBtbWMgcGlubXV4ZXMKPiA+IDk2YTEzNjkx
YzFkZGZhZmMzMDFkMWVlNDUxZDkxZmMyY2NhNDhkMjcKPiA+IFN1cmUgZW5vdWdoLCB3aGVuIEkg
bm93IHJldmVydCB0aGF0IGNvbW1pdCBpbiAvYm9vdC9kdGJzL2FtbG9naWMvbWVzb24tZ3hiYi0K
PiA+IG9kcm9pZGMyLmR0YiBvbiB0aGUgbGF0ZXN0IHNoaXBwaW5nIDUuMSBrZXJuZWwsIGl0IGJv
b3RzIHN1Y2Nlc3NmdWxseS4gVGhhdAo+ID4gc2FtZSA1LjEga2VybmVsIGZhaWxzIHRvIGJvb3Qg
d2l0aCB0aGUgc2FtZSBlcnJvciBtZXNzYWdlcyB3aGVuIHRoYXQgY29tbWl0Cj4gPiBpcyBlbmdh
Z2VkLgo+Cj4gV291bGQgeW91IG1pbmQgdHJ5aW5nIHRoaXMgYnJhbmNoIGZyb20ga2V2aW46Cj4K
PiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9raGlsbWFu
L2xpbnV4LWFtbG9naWMuZ2l0L2xvZy8/aD1pbnRlZwo+Cj4gVGhpcyBwYXJ0aWN1bGFyIGNvbW1p
dCBtaWdodCBiZSB1c2VmdWwgY29uc2lkZXJpbmcgeW91ciBiaXNlY3QgcmVzdWx0czoKPgo+IGh0
dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2toaWxtYW4vbGlu
dXgtYW1sb2dpYy5naXQvY29tbWl0Lz9oPWludGVnJmlkPTFjMTAwMjNmNGQxYjc1ZWQxNjRmNjBi
YjBlZTZiYzIzOTY1NTQwOGMKPgo+ID4gbGludXgtYW1sb2dpYyBtYWlsaW5nIGxpc3QKPiA+IGxp
bnV4LWFtbG9naWNAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hbWxvZ2ljCgpGb3IgY29tcGxldGVuZXNzLCBo
ZXJlJ3Mgd2hhdCBJIGRpZDoKClBlcmZvcm1lZCBhICJnaXQgY2xvbmUiIG9mIEtldmluJ3MgdHJl
ZSBhbmQgdGhlbiByYW4gIm1ha2UgbG9jYWxtb2Rjb25maWciIHRvCmtlZXAgdGhlIGNvbXBpbGUg
dGltZSBkb3duIChJIGhhZCBkb25lIHRoZSBzYW1lIG9uIGFsbCBvZiB0aG9zZSBvdGhlciBiaXNl
Y3QKY29tcGlsZXMpLiBJIGFuc3dlcmVkICJOIiBmb3IgIm5vIiBvbiBhbGwgb2YgaXQncyBjb25m
aWcgcXVlc3Rpb25zLCBzaW5jZSBJCmFzc3VtZWQgdGhvc2Ugd291bGQgc3VwcG9ydCBuZXcgY29k
ZSBjb21waWxlIG9wdGlvbnMgdGhhdCB3b3VsZG4ndCBiZSBuZWVkZWQKZm9yIG15IHN5c3RlbSBo
YXJkd2FyZS4gQW5kIHRoZW4gSSBjb21waWxlZC9pbnN0YWxsZWQgdGhlIG5ldyBrZXJuZWwgYW5k
IGJvb3RlZC4KClVCb290IHN0aWxsIGNvdWxkbid0IGZpbmQgdGhlIHJvb3QgZmlsZXN5c3RlbSBh
bmQgZHJvcHBlZCBpbnRvIGl0J3Mgc2hlbGwuIFlldCwKdGhpcyB0aW1lIEkgZG9uJ3Qgc2VlIGFu
eSBvdGhlciBlcnJvcnMuIEhlcmUncyB0aGUgb3V0cHV0IGZyb20gdGhlIFVTQiBzZXJpYWwKZG9u
Z2xlOgoKICAgaHR0cDovL2RwYXN0ZS5jb20vMjVBM0g3OAoKTk9URTogSSBzYXcgdGhvc2UgIl9y
ZWd1bGF0b3JfcHV0IiBXQVJOX09OKCkgZXJyb3JzIG9uICpzb21lKiBvZiB0aG9zZSBwcmV2aW91
cwpiaXNlY3QgY29tcGlsZXMgd2hlcmUgdGhlIGtlcm5lbCBzdGlsbCBib290ZWQgdXAgY29ycmVj
dGx5IChpLmUuIEdvdCB0byBhIGxvZ2luCnByb21wdCkuCgpBcyBhbiBleHBlcmltZW50LCBJIHJl
cGxhY2VkIChyZXZlcnRlZCBhbmQgbm93IHdvcmtpbmcpICIvYm9vdC9kdGJzL2FtbG9naWMvCm1l
c29uLWd4YmItb2Ryb2lkYzIuZHRiIiBmaWxlIG9uIHRoZSA1LjEga2VybmVsIEknbSBjdXJyZW50
bHkgdXNpbmcsIHdpdGggdGhlCm9uZSBmcm9tIEtldmluJ3MgY29tcGlsZS4KClRoYXQgYm9vdCBm
YWlsZWQgdG8gZmluZCB0aGUgcm9vdCBmaWxlc3lzdGVtIGFnYWluIChhbmQgZHJvcHBlZCBpbnRv
IHRoZSBVQm9vdApzaGVsbCksIGJ1dCBkaXNwbGF5ZWQgdGhlIHNhbWUgMiBlcnJvciBtZXNzYWdl
cyBkZXNjcmliZWQgeWVzdGVyZGF5LgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
