Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 383511DA389
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 23:27:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kYBm2kB1dy8SP4NfzXuvD7BhDKy2dInEm+yJuJTk2Hk=; b=VJJq/G9cSVlhKt
	5R9vvc1jqIW6gO8PrG92sKrq3KUEjwKQAr6WYw2NT+p6QjW4vmRk2r5Zj1XwCPslikprppFfB0tJt
	dJewTrsozaTxGvb2/vhxS50TbYInvwcHKHPEyrOixPM/izDBUS+pD6QezRWmuEsVRnqRcR5p8KQYe
	F2W/wEoxFic17wlZwWY3IppL78ywlCxid9crJz98Se2C+SzFmJvQ/rnqtC/0PB0Nnr1IOZCT1riRz
	ZfdTGle+ihzK8Jq1Vtj3aJ9HTHj+mdGB9v7I4ce0QrZPdJo08lJy3u/0lCfPJ41vc8aWqH5CyidJx
	QUWvtJeFYPpBFW4uWCnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb9lt-0005Zr-Hm; Tue, 19 May 2020 21:27:33 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb9l6-00052z-N1; Tue, 19 May 2020 21:26:47 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 91788B14D;
 Tue, 19 May 2020 21:26:39 +0000 (UTC)
Subject: Re: [PATCH 3/4] clk/soc: mediatek: mt6779: Bind clock driver from
 platform device
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, matthias.bgg@kernel.org
References: <20200518113156.25009-1-matthias.bgg@kernel.org>
 <20200518113156.25009-3-matthias.bgg@kernel.org>
 <CAAOTY_80D6ZMM5_nEyf_XDjOLaWCOyi3mn9ibWhNX8_ozPK1BQ@mail.gmail.com>
From: Matthias Brugger <mbrugger@suse.com>
Autocrypt: addr=mbrugger@suse.com; prefer-encrypt=mutual; keydata=
 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
 HxUCQ9Y1Y/Ct
Message-ID: <3a8b3846-c399-2193-a203-8707d693dad8@suse.com>
Date: Tue, 19 May 2020 23:26:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAAOTY_80D6ZMM5_nEyf_XDjOLaWCOyi3mn9ibWhNX8_ozPK1BQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_142645_047729_7F588CC3 
X-CRM114-Status: GOOD (  23.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Allison Randal <allison@lohutok.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, mtk01761 <wendell.lin@mediatek.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-clk@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxOS8wNS8yMDIwIDE3OjEwLCBDaHVuLUt1YW5nIEh1IHdyb3RlOgo+IEhpLCBNYXR0aGlh
czoKPiAKPiA8bWF0dGhpYXMuYmdnQGtlcm5lbC5vcmc+IOaWvCAyMDIw5bm0NeaciDE45pelIOmA
seS4gCDkuIvljYg3OjMz5a+r6YGT77yaCj4+Cj4+IEZyb206IE1hdHRoaWFzIEJydWdnZXIgPG1h
dHRoaWFzLmJnZ0BnbWFpbC5jb20+Cj4+Cj4+IFRoZSBtbXN5cyBkcml2ZXIgaXMgbm93IHRoZSB0
b3AgbGV2ZWwgZW50cnkgcG9pbnQgZm9yIHRoZSBtdWx0aW1lZGlhCj4+IHN5c3RlbSAobW1zeXMp
LCB3ZSBiaW5kIHRoZSBjbG9jayBkcml2ZXIgYnkgY3JlYXRpbmcgYSBwbGF0Zm9ybSBkZXZpY2Uu
Cj4+IFdlIGFsc28gYmluZCB0aGUgTWVkaWFUZWsgRFJNIGRyaXZlciB3aGljaCBpcyBub3QgeWV0
IGltcGxlbWVudCBhbmQKPj4gdGhlcmVmb3Igd2lsbCBlcnJyb3Igb3V0IGZvciBub3cuCj4+Cj4+
IFNpZ25lZC1vZmYtYnk6IE1hdHRoaWFzIEJydWdnZXIgPG1hdHRoaWFzLmJnZ0BnbWFpbC5jb20+
Cj4+IC0tLQo+Pgo+PiAgZHJpdmVycy9jbGsvbWVkaWF0ZWsvY2xrLW10Njc3OS1tbS5jIHwgOSAr
Ky0tLS0tLS0KPj4gIGRyaXZlcnMvc29jL21lZGlhdGVrL210ay1tbXN5cy5jICAgICB8IDggKysr
KysrKysKPj4gIDIgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMo
LSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL21lZGlhdGVrL2Nsay1tdDY3NzktbW0u
YyBiL2RyaXZlcnMvY2xrL21lZGlhdGVrL2Nsay1tdDY3NzktbW0uYwo+PiBpbmRleCBmYjVmYmI4
ZTNlNDEuLjA1OWMxYTQxYWM3YSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9jbGsvbWVkaWF0ZWsv
Y2xrLW10Njc3OS1tbS5jCj4+ICsrKyBiL2RyaXZlcnMvY2xrL21lZGlhdGVrL2Nsay1tdDY3Nzkt
bW0uYwo+PiBAQCAtODQsMTUgKzg0LDExIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbXRrX2dhdGUg
bW1fY2xrc1tdID0gewo+PiAgICAgICAgIEdBVEVfTU0xKENMS19NTV9ESVNQX09WTF9GQkRDLCAi
bW1fZGlzcF9vdmxfZmJkYyIsICJtbV9zZWwiLCAxNiksCj4+ICB9Owo+Pgo+PiAtc3RhdGljIGNv
bnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgb2ZfbWF0Y2hfY2xrX210Njc3OV9tbVtdID0gewo+PiAt
ICAgICAgIHsgLmNvbXBhdGlibGUgPSAibWVkaWF0ZWssbXQ2Nzc5LW1tc3lzIiwgfSwKPj4gLSAg
ICAgICB7fQo+PiAtfTsKPj4gLQo+PiAgc3RhdGljIGludCBjbGtfbXQ2Nzc5X21tX3Byb2JlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+ICB7Cj4+ICsgICAgICAgc3RydWN0IGRldmlj
ZSAqZGV2ID0gJnBkZXYtPmRldjsKPj4gKyAgICAgICBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUg
PSBkZXYtPnBhcmVudC0+b2Zfbm9kZTsKPj4gICAgICAgICBzdHJ1Y3QgY2xrX29uZWNlbGxfZGF0
YSAqY2xrX2RhdGE7Cj4+IC0gICAgICAgc3RydWN0IGRldmljZV9ub2RlICpub2RlID0gcGRldi0+
ZGV2Lm9mX25vZGU7Cj4+Cj4+ICAgICAgICAgY2xrX2RhdGEgPSBtdGtfYWxsb2NfY2xrX2RhdGEo
Q0xLX01NX05SX0NMSyk7Cj4+Cj4+IEBAIC0xMDYsNyArMTAyLDYgQEAgc3RhdGljIHN0cnVjdCBw
bGF0Zm9ybV9kcml2ZXIgY2xrX210Njc3OV9tbV9kcnYgPSB7Cj4+ICAgICAgICAgLnByb2JlID0g
Y2xrX210Njc3OV9tbV9wcm9iZSwKPj4gICAgICAgICAuZHJpdmVyID0gewo+PiAgICAgICAgICAg
ICAgICAgLm5hbWUgPSAiY2xrLW10Njc3OS1tbSIsCj4+IC0gICAgICAgICAgICAgICAub2ZfbWF0
Y2hfdGFibGUgPSBvZl9tYXRjaF9jbGtfbXQ2Nzc5X21tLAo+PiAgICAgICAgIH0sCj4+ICB9Owo+
Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zb2MvbWVkaWF0ZWsvbXRrLW1tc3lzLmMgYi9kcml2
ZXJzL3NvYy9tZWRpYXRlay9tdGstbW1zeXMuYwo+PiBpbmRleCBmZWU2NGM4ZDMwMjAuLmRjMTU4
MDhjZjNhMyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9zb2MvbWVkaWF0ZWsvbXRrLW1tc3lzLmMK
Pj4gKysrIGIvZHJpdmVycy9zb2MvbWVkaWF0ZWsvbXRrLW1tc3lzLmMKPj4gQEAgLTg4LDYgKzg4
LDEwIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbXRrX21tc3lzX2RyaXZlcl9kYXRhIG10MjcxMl9t
bXN5c19kcml2ZXJfZGF0YSA9IHsKPj4gICAgICAgICAuY2xrX2RyaXZlciA9ICJjbGstbXQyNzEy
LW1tIiwKPj4gIH07Cj4+Cj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IG10a19tbXN5c19kcml2ZXJf
ZGF0YSBtdDY3NzlfbW1zeXNfZHJpdmVyX2RhdGEgPSB7Cj4+ICsgICAgICAgLmNsa19kcml2ZXIg
PSAiY2xrLW10Njc3OS1tbSIsCj4gCj4gVGhpcyBwYXRjaCBsb29rcyBnb29kIHRvIG1lLCBidXQg
SSd2ZSBvbmUgcXVlc3Rpb246IHdoeSBkcm0gZHJpdmVyCj4ganVzdCB1c2Ugc2luZ2xlICJtZWRp
YXRlay1kcm0iIGZvciBzdWIgZHJpdmVyIG5hbWUsIGJ1dCBjbG9jayBkcml2ZXIKPiBoYXMgZGlm
ZmVyZW50IG5hbWUgZm9yIGVhY2ggU29DPwo+IENvdWxkIHdlIGp1c3QgdXNlIHNpbmdsZSBuYW1l
IGZvciBjbG9jayBkcml2ZXIgc3VjaCBhcyAibWVkaWF0ZWstY2xrLW1tIj8KCkJlY2F1c2UgdGhl
IERSTSBmb3IgYWxsIFNvQ3MgYXJlIGhhbmRsZWQgaW4gdGhlIHNhbWUgZHJpdmVyLCB3aGlsZSB3
ZSBoYXZlIGEKZGlmZmVyZW50IGNsb2NrIGRyaXZlcnMgZm9yIGVhY2ggU29DLiBTbyB3ZSBuZWVk
IHRvIHNwZWNpZnkgd2hpY2ggY2xvY2sgZHJpdmVyCndlIHdhbnQgdG8gbG9hZC4KCklmIHdlIHdh
bnQgdG8gY2hhbmdlIHRoYXQsIHdlIHdvdWxkIG5lZWQgdG8gcmVmYWN0b3IgaGVhdmlseSB0aGUg
Y2xvY2sgZHJpdmVycwpmb3IgYWxsIE1lZGlhVGVrIFNvQ3MuIEkgZG9uJ3QgdGhpbmsgaXQncyB3
b3J0aCB0aGUgZWZmb3J0LgoKUmVnYXJkcywKTWF0dGhpYXMKCj4gCj4gUmVnYXJkcywKPiBDaHVu
LUt1YW5nLgo+IAo+PiArfTsKPj4gKwo+PiAgc3RhdGljIGNvbnN0IHN0cnVjdCBtdGtfbW1zeXNf
ZHJpdmVyX2RhdGEgbXQ2Nzk3X21tc3lzX2RyaXZlcl9kYXRhID0gewo+PiAgICAgICAgIC5jbGtf
ZHJpdmVyID0gImNsay1tdDY3OTctbW0iLAo+PiAgfTsKPj4gQEAgLTM0Myw2ICszNDcsMTAgQEAg
c3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgb2ZfbWF0Y2hfbXRrX21tc3lzW10gPSB7
Cj4+ICAgICAgICAgICAgICAgICAuY29tcGF0aWJsZSA9ICJtZWRpYXRlayxtdDI3MTItbW1zeXMi
LAo+PiAgICAgICAgICAgICAgICAgLmRhdGEgPSAmbXQyNzEyX21tc3lzX2RyaXZlcl9kYXRhLAo+
PiAgICAgICAgIH0sCj4+ICsgICAgICAgewo+PiArICAgICAgICAgICAgICAgLmNvbXBhdGlibGUg
PSAibWVkaWF0ZWssbXQ2Nzc5LW1tc3lzIiwKPj4gKyAgICAgICAgICAgICAgIC5kYXRhID0gJm10
Njc3OV9tbXN5c19kcml2ZXJfZGF0YSwKPj4gKyAgICAgICB9LAo+PiAgICAgICAgIHsKPj4gICAg
ICAgICAgICAgICAgIC5jb21wYXRpYmxlID0gIm1lZGlhdGVrLG10Njc5Ny1tbXN5cyIsCj4+ICAg
ICAgICAgICAgICAgICAuZGF0YSA9ICZtdDY3OTdfbW1zeXNfZHJpdmVyX2RhdGEsCj4+IC0tCj4+
IDIuMjYuMgo+Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+PiBMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKPj4gTGludXgtbWVkaWF0ZWtA
bGlzdHMuaW5mcmFkZWFkLm9yZwo+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
