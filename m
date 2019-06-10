Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFF03B6ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 16:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j+0OBWGYzI9veecSsiDySU7lEyavGWINYvYMuFWpjTw=; b=crYHz7qEbGhuc8
	zjjSbXVdGPJLvO0jAcO6vNYYlYOfivbuljfrEv5LWqmq+cZJXb6d9rOYxJdiGbRv9x9k001Y4Sqvn
	mueEa/S01zggG2fCtQ62sDydA3H+ERCy9aWt8vvjesi5sSaNjfvRKXBUmIVJL6MRbu9jfdY9g9jro
	IELpQ34ofCeu4MixUiG09pi3k1VBGkOMi5+J7s8eym3OeL6k00boWCjwOqeH+2wVfw4LPkRF5Lu2J
	0/BGNMZQ2sX9Z6oeLke4KOjzxoBlQ8IVb7cVPhleDSKam3DPjDPuMzD0R+5ImptDXyeCsaZ2lC19W
	E+P9Bq3U0IfnyoFmCHTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haKyW-0008QK-Sf; Mon, 10 Jun 2019 14:08:41 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haKyK-0008Ol-Jy; Mon, 10 Jun 2019 14:08:30 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 241CDADE6;
 Mon, 10 Jun 2019 14:08:27 +0000 (UTC)
Subject: Re: [PATCH 4/7] arm64: dts: actions: Add uSD and eMMC support for
 Bubblegum96
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
References: <20190608195317.6336-1-manivannan.sadhasivam@linaro.org>
 <20190608195317.6336-5-manivannan.sadhasivam@linaro.org>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Openpgp: preference=signencrypt
Organization: SUSE Linux GmbH
Message-ID: <1381305a-8585-9dcf-6b43-34e852e785ab@suse.de>
Date: Mon, 10 Jun 2019 16:08:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190608195317.6336-5-manivannan.sadhasivam@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_070828_947912_CACA78E9 
X-CRM114-Status: GOOD (  17.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, ulf.hansson@linaro.org, sboyd@kernel.org,
 linux-actions@lists.infradead.org, linus.walleij@linaro.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 thomas.liau@actions-semi.com, robh+dt@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFuaSwKCkFtIDA4LjA2LjE5IHVtIDIxOjUzIHNjaHJpZWIgTWFuaXZhbm5hbiBTYWRoYXNp
dmFtOgo+IEFkZCB1U0QgYW5kIGVNTUMgc3VwcG9ydCBmb3IgQnViYmxlZ3VtOTYgYm9hcmQgYmFz
ZWQgb24gQWN0aW9ucyBTZW1pCj4gT3dsIFNvQy4KCldoYXQgaW5mb3JtYXRpb24gZG9lcyAiYmFz
ZWQgb24gQWN0aW9ucyBTZW1pIE93bCBTb0MiIGdpdmUgdXM/IDopClRoZSBib2FyZCBuYW1lIHNo
b3VsZCBiZSB1bmlxdWUgZW5vdWdoIC0gT3dsIGlzIGEgZmFtaWx5IG9mIFNvQ3MsCiJhY3Rpb25z
OiIgaXMgaW4gdGhlIHN1YmplY3QgYW5kICJzOTAwLSIgaXMgaW4gdGhlIGZpbGVuYW1lLgoKPiBT
RDAgaXMgY29ubmVjdGVkIHRvIHVTRCBzbG90IGFuZCBTRDIgaXMgY29ubmVjdGVkIHRvIGVNTUMu
CgpTdWdnZXN0IHRvIGFkZCB0aGF0IGFzIGNvbW1lbnRzIGFib3ZlIHRoZSB0d28gbm9kZXMgaW5z
dGVhZC4KCj4gU2luY2UgdGhlcmUgaXMgbm8gUE1JQyBzdXBwb3J0IGFkZGVkIHlldCwgZml4ZWQg
cmVndWxhdG9yIGhhcyBiZWVuCj4gdXNlZCBhcyBhIHJlZ3VsYXRvciBub2RlLgoKRmluZSB3aXRo
IG1lIC0gbWF5YmUgYWRkIGEgY29tbWVudCBhbmQgbWFrZSBzdXJlIGl0J3MgYWxpZ25lZCB3aXRo
IHRoZQpzY2hlbWF0aWNzIG5hbWluZyB3cnQgUE1JQy4KCj4gCj4gU2lnbmVkLW9mZi1ieTogTWFu
aXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KPiAt
LS0KPiAgLi4uL2Jvb3QvZHRzL2FjdGlvbnMvczkwMC1idWJibGVndW0tOTYuZHRzICAgIHwgNTAg
KysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNTAgaW5zZXJ0aW9ucygrKQo+
IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FjdGlvbnMvczkwMC1idWJibGVn
dW0tOTYuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9hY3Rpb25zL3M5MDAtYnViYmxlZ3VtLTk2
LmR0cwo+IGluZGV4IDczMmRhYWE2ZTlkMy4uM2I1OTZkNzJkZTI1IDEwMDY0NAo+IC0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvYWN0aW9ucy9zOTAwLWJ1YmJsZWd1bS05Ni5kdHMKPiArKysgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL2FjdGlvbnMvczkwMC1idWJibGVndW0tOTYuZHRzCj4gQEAgLTEz
LDYgKzEzLDkgQEAKPiAgCj4gIAlhbGlhc2VzIHsKPiAgCQlzZXJpYWw1ID0gJnVhcnQ1Owo+ICsJ
CW1tYzAgPSAmbW1jMDsKPiArCQltbWMxID0gJm1tYzE7Cj4gKwkJbW1jMiA9ICZtbWMyOwoKU29y
dCB0aGVtIGFscGhhYmV0aWNhbGx5PwoKPiAgCX07Cj4gIAo+ICAJY2hvc2VuIHsKPiBAQCAtMjMs
NiArMjYsMTQgQEAKPiAgCQlkZXZpY2VfdHlwZSA9ICJtZW1vcnkiOwo+ICAJCXJlZyA9IDwweDAg
MHgwIDB4MCAweDgwMDAwMDAwPjsKPiAgCX07Cj4gKwo+ICsJcmVnXzNwMXY6IHJlZ3VsYXRvci0z
cDF2IHsKPiArCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4gKwkJcmVndWxhdG9y
LW5hbWUgPSAiZml4ZWQtMy4xViI7Cj4gKwkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MzEw
MDAwMD47Cj4gKwkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MzEwMDAwMD47Cj4gKwkJcmVn
dWxhdG9yLWFsd2F5cy1vbjsKPiArCX07Cj4gIH07Cj4gIAo+ICAmaTJjMCB7Cj4gQEAgLTI0MSw2
ICsyNTIsNDUgQEAKPiAgCQkJYmlhcy1wdWxsLXVwOwo+ICAJCX07Cj4gIAl9Owo+ICsKPiArCW1t
YzBfZGVmYXVsdDogbW1jMF9kZWZhdWx0IHsKPiArCQlwaW5tdXggewo+ICsJCQlncm91cHMgPSAi
c2QwX2QwX21mcCIsICJzZDBfZDFfbWZwIiwgInNkMF9kMl9kM19tZnAiLAo+ICsJCQkJICJzZDBf
Y21kX21mcCIsICJzZDBfY2xrX21mcCI7Cj4gKwkJCWZ1bmN0aW9uID0gInNkMCI7Cj4gKwkJfTsK
PiArCX07Cj4gKwo+ICsJbW1jMl9kZWZhdWx0OiBtbWMyX2RlZmF1bHQgewo+ICsJCXBpbm11eCB7
Cj4gKwkJCWdyb3VwcyA9ICJuYW5kMF9kMF9jZWIzX21mcCI7Cj4gKwkJCWZ1bmN0aW9uID0gInNk
MiI7Cj4gKwkJfTsKPiArCX07CgpXb3VsZG4ndCBpdCBtYWtlIG1vcmUgc2Vuc2UgdG8gbW92ZSB0
aGVzZSBhbmQgdGhlIGJlbG93IHBpbmN0cmwtKiB0bwpzOTAwLmR0c2kgZm9yIHNoYXJpbmcgd2l0
aCBvdGhlciB0aGVvcmV0aWNhbCBib2FyZHM/IEkgcmVhbGx5IGRpc2xpa2UKdGhlIGlteCBtb2Rl
bCB3aGVyZSBwaW4gbXV4aW5nIGlzIGR1cGxpY2F0ZWQgaW50byBlYWNoIGluZGl2aWR1YWwgYm9h
cmQuCgpSZWdhcmRzLApBbmRyZWFzCgo+ICt9Owo+ICsKPiArJm1tYzAgewo+ICsJc3RhdHVzID0g
Im9rYXkiOwo+ICsJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiArCXBpbmN0cmwtMCA9IDwm
bW1jMF9kZWZhdWx0PjsKPiArCW5vLXNkaW87Cj4gKwluby1tbWM7Cj4gKwluby0xLTgtdjsKPiAr
CWNkLWdwaW9zID0gPCZwaW5jdHJsIDEyMCBHUElPX0FDVElWRV9MT1c+Owo+ICsJYnVzLXdpZHRo
ID0gPDQ+Owo+ICsJdm1tYy1zdXBwbHkgPSA8JnJlZ18zcDF2PjsKPiArCXZxbW1jLXN1cHBseSA9
IDwmcmVnXzNwMXY+Owo+ICt9Owo+ICsKPiArJm1tYzIgewo+ICsJc3RhdHVzID0gIm9rYXkiOwo+
ICsJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiArCXBpbmN0cmwtMCA9IDwmbW1jMl9kZWZh
dWx0PjsKPiArCW5vLXNkaW87Cj4gKwluby1zZDsKPiArCW5vbi1yZW1vdmFibGU7Cj4gKwlidXMt
d2lkdGggPSA8OD47Cj4gKwl2bW1jLXN1cHBseSA9IDwmcmVnXzNwMXY+Owo+ICB9Owo+ICAKPiAg
JnRpbWVyIHsKCi0tIApTVVNFIExpbnV4IEdtYkgsIE1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJu
YmVyZywgR2VybWFueQpHRjogRmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5IEhpZ2dpbnMsIFNyaSBS
YXNpYWgKSFJCIDIxMjg0IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
