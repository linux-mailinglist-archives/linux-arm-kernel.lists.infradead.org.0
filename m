Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9459E169757
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 12:29:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:References:In-Reply-To:
	Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/rf260LSgthi7mUqlJ59NFu2/w27LYDwtsD73AlojSQ=; b=eMxA6VmyGLMxfP5NLBKnSfpvM
	NH5nQ1cnGRnyNfTMw1KvBdf+dqKkKwac6ocbl50Tz8QwqpMfRnsMWBCBgkR2+9q3OcLpqrFKuFjzH
	t9d6/9E5eOWXxCw5F8BmU1DwD0JHmVWGHZNm22auZHWItK7IVp/5Kw0M+TRtdmUBwtAUERLJi+TZU
	d81LVfbenJtZyG8eVCtiYrg4y1RH4wpVtWd/xLIl5koqr0VmcrEVcRkmKAjzWBwL1ZpaOZXrQqY6v
	2Tp0LHRYmnECSEguQMmUcJIZh+yiuxFTimTi0pfHfpgTYcJR9RFbz/6PoDt/dN9djnjo5ObmZIq8q
	r76NVOUhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5pS7-0006gT-HY; Sun, 23 Feb 2020 11:29:39 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5pRx-0006g5-S4
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 11:29:31 +0000
Received: by mail-wm1-x343.google.com with SMTP id t23so6222642wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Feb 2020 03:29:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:date:message-id:in-reply-to:references:user-agent
 :subject:mime-version:content-transfer-encoding;
 bh=Wsmvetnj/uRqidICErzZezRvkzyJsUsUIsU21dU7djU=;
 b=GZEnATEbiLPG2xlP1VtmI9eGW0L75Tjcio9m/sk7rU5YfD43fRdeoXb+g3oH9xuej9
 HdOAjrjAF/CgPwXQAZay9hQhUoKg2DOICY9riwHUIz1WFsRfhL/d3rR7RA+1jsQbJCqk
 HeKVxF410HwT+IKuUdBOa81l1QrUtp53kbKSY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:subject:mime-version
 :content-transfer-encoding;
 bh=Wsmvetnj/uRqidICErzZezRvkzyJsUsUIsU21dU7djU=;
 b=aka2LVpfMsDLJaYP3e3OF8vwq3nY/PKTpn58RG5bcKYyPT8sSYtjOqDD+7L8EdRQ4B
 liNql/nsGmccz1tAMljbOhFadYsYb00aqC5n3KEz5tLrPIEOu077IZ7RWFYJIwOFkRDt
 eiYv5gK6C72QJqfiuFqvYIxwc9qbbSK/UDXdaH31IttY8Z11IB1xP3+t96C8MdvEn4Ox
 hunEQXKb04dAqBMqgULY/pv533TbfUXnM2WBGXNe89H3qkMB5cLJwycO39hYQevPAxTj
 OjJwA4Qhr+Zva2TkwxhrETf6g457L2MmBETFKG+y1pXLP1ju+cKQANh48decZ91yc2rY
 XF2g==
X-Gm-Message-State: APjAAAW//lgkFiEhiBZrP3E3J0SNIkc6EI2/K7aziOFUJEc22SRdKu71
 iAzLS0z963CJmzXs2rqgQm/miw==
X-Google-Smtp-Source: APXvYqz6+9MPmpyo+ROixdyxqt/lfCR1xsPFagF33I0ML2XY9pDawBqPDq1xdZxReCF3AUcO3iuYFQ==
X-Received: by 2002:a1c:4383:: with SMTP id q125mr15905602wma.88.1582457364551; 
 Sun, 23 Feb 2020 03:29:24 -0800 (PST)
Received: from [192.168.178.38] (f140230.upc-f.chello.nl. [80.56.140.230])
 by smtp.gmail.com with ESMTPSA id a135sm12328905wme.47.2020.02.23.03.29.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 23 Feb 2020 03:29:23 -0800 (PST)
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
To: =?UTF-8?B?T25kxZllaiBKaXJtYW4=?= <megous@megous.com>,
 "Chen-Yu Tsai" <wens@csie.org>
Date: Sun, 23 Feb 2020 12:29:21 +0100
Message-ID: <17071cf1268.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
In-Reply-To: <20200223105524.smp3p2quewp3ddop@core.my.home>
References: <20200222223154.221632-1-megous@megous.com>
 <20200222223154.221632-2-megous@megous.com>
 <CAGb2v67XwrYA8FLF9wpnngm9F-F9UV2m+rr+r3t+KUVv5-EMiw@mail.gmail.com>
 <CAGb2v66G5P_souwFHodO0_NYhWyQ+dGE4fbqLLK3qd9ue7Kk9g@mail.gmail.com>
 <20200223105524.smp3p2quewp3ddop@core.my.home>
User-Agent: AquaMail/1.23.0-1556 (build: 102300002)
Subject: Re: [linux-sunxi] [PATCH 1/4] ARM: dts: sun8i-a83t-tbs-a711: OOB WiFi
 interrupt doesn't work
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_032929_912963_8F74E85E 
X-CRM114-Status: GOOD (  20.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>, Tomas Novotny <tomas@novotny.cz>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRmVicnVhcnkgMjMsIDIwMjAgMTE6NTU6MjUgQU0gT25kxZllaiBKaXJtYW4gPG1lZ291c0Bt
ZWdvdXMuY29tPiB3cm90ZToKCj4gSGVsbG8sCj4KPiBPbiBTdW4sIEZlYiAyMywgMjAyMCBhdCAx
MjowMzo0NlBNICswODAwLCBDaGVuLVl1IFRzYWkgd3JvdGU6Cj4+IE9uIFN1biwgRmViIDIzLCAy
MDIwIGF0IDExOjI2IEFNIENoZW4tWXUgVHNhaSA8d2Vuc0Bjc2llLm9yZz4gd3JvdGU6Cj4+Pgo+
Pj4gSGksCj4+Pgo+Pj4KPj4+IE9uIFN1biwgRmViIDIzLCAyMDIwIGF0IDY6MzIgQU0gT25kcmVq
IEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+IHdyb3RlOgo+Pj4+Cj4+Pj4gSXQganVzdCBjYXVz
ZXMgYSBjb25zdGFudCByYXRlIG9mIDUwMDAgaW50ZXJydXB0cyBwZXIgc2Vjb25kIGZvciBib3Ro
Cj4+Pj4gR1BJTyBhbmQgTU1DLCBldmVuIGlmIG5vdGhpbmcgaXMgaGFwcGVuaW5nLiBSZWx5IG9u
IGluLWJhbmQgaW50ZXJydXB0cwo+Pj4+IGluc3RlYWQuCj4+Pj4KPj4+PiBGaXhlczogMGUyMzM3
MjA4MGRlZjdiYiAoImFybTogZHRzOiBzdW44aTogQWRkIHRoZSBUQlMgQTcxMSB0YWJsZXQgZGV2
aWNldHJlZSIpCj4+Pj4gU2lnbmVkLW9mZi1ieTogT25kcmVqIEppcm1hbiA8bWVnb3VzQG1lZ291
cy5jb20+Cj4+Pgo+Pj4gV2hhdCBXaUZpIGNoaXAvbW9kdWxlIGRvZXMgdGhpcyB1c2U/IEl0IG1p
Z2h0IGJlIHdvcnRoIGFza2luZyBCcm9hZGNvbQo+Pj4gcGVvcGxlIHRvIGhlbHAgd2l0aCB0aGlz
IGFuZCBmaXggdGhlIGRyaXZlci4KPj4KPj4gQmFzZWQgb24gdGhlIGNvbW1lbnRzIGluIHRoZSBk
ZXZpY2UgdHJlZSBmaWxlLCBpdCB1c2VzIGFuIEFQNjIxMCwgd2hpY2gKPj4gaXMgYSBCQ000MzM2
MiBpbnNpZGUgZm9yIFNESU8tYmFzZWQgV2lGaS4gVGhlcmUgaXMgYSByZWNlbnQgZml4IGluIDUu
Ni1yYzEKPj4gZm9yIHRoaXMsCj4+Cj4+IDhjOGU2MGZiODZhOSBicmNtZm1hYzogc2RpbzogRml4
IE9PQiBpbnRlcnJ1cHQgaW5pdGlhbGl6YXRpb24gb24gYnJjbTQzMzYyCj4+Cj4+IHdoaWNoIHNl
ZW1zIHRvIGZpeCB0aGluZ3MgZm9yIG1lLiBDb3VsZCB5b3UgdHJ5IGl0IG9uIHlvdXIgZW5kPwo+
Cj4gSSBjYW4gY29uZmlybSB0aGF0IGl0IHdvcmtzIGFzIHlvdSBzYXkgKG9uIGxpbnVzL21hc3Rl
cikuIDUuNSBzdGlsbCBkb2Vzbid0IAo+IGhhdmUKPiB0aGUgcGF0Y2gsIHNvIGl0J3MgYnJva2Vu
IHRoZXJlLCB3aGljaCBjb25mdXNlZCBtZSBJIGd1ZXNzLgoKSGkgT25kcmVqLAoKSSBoYXZlIHNl
ZW4gZW1haWxzIGZyb20gR3JlZ0tIIGluY2x1ZGluZyB0aGlzIHBhdGNoIGluIDUuNSBzdGFibGUg
c28gaXQgCndpbGwgYWxzbyBsYW5kIHRoZXJlIGV2ZW50dWFsbHkuCgpSZWdhcmRzLApBcmVuZAoK
Pgo+IFBsZWFzZSBpZ25vcmUgdGhpcyBwYXRjaC4KPgo+IHRoYW5rIHlvdSwKPiBPbmRyZWoKPgo+
PiBDaGVuWXUKPj4KPj4KPj4+IENoZW5ZdQo+Pj4KPj4+PiAtLS0KPj4+PiBhcmNoL2FybS9ib290
L2R0cy9zdW44aS1hODN0LXRicy1hNzExLmR0cyB8IDMgLS0tCj4+Pj4gMSBmaWxlIGNoYW5nZWQs
IDMgZGVsZXRpb25zKC0pCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMv
c3VuOGktYTgzdC10YnMtYTcxMS5kdHMgCj4+Pj4gYi9hcmNoL2FybS9ib290L2R0cy9zdW44aS1h
ODN0LXRicy1hNzExLmR0cwo+Pj4+IGluZGV4IDJmZDMxYTBhMGIzNDQuLmVlNWNlMzU1NmIyYWQg
MTAwNjQ0Cj4+Pj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvc3VuOGktYTgzdC10YnMtYTcxMS5k
dHMKPj4+PiArKysgYi9hcmNoL2FybS9ib290L2R0cy9zdW44aS1hODN0LXRicy1hNzExLmR0cwo+
Pj4+IEBAIC0yMTQsOSArMjE0LDYgQEAgJm1tYzEgewo+Pj4+ICAgIGJyY21mOiB3aWZpQDEgewo+
Pj4+ICAgICAgICAgICAgcmVnID0gPDE+Owo+Pj4+ICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJi
cmNtLGJjbTQzMjktZm1hYyI7Cj4+Pj4gLSAgICAgICAgICAgICAgIGludGVycnVwdC1wYXJlbnQg
PSA8JnJfcGlvPjsKPj4+PiAtICAgICAgICAgICAgICAgaW50ZXJydXB0cyA9IDwwIDMgSVJRX1RZ
UEVfTEVWRUxfTE9XPjsgLyogUEwzIFdMX1dBS0VfVVAgKi8KPj4+PiAtICAgICAgICAgICAgICAg
aW50ZXJydXB0LW5hbWVzID0gImhvc3Qtd2FrZSI7Cj4+Pj4gICAgfTsKPj4+PiB9Owo+Pj4+Cj4+
Pj4gLS0KPj4+PiAyLjI1LjEKPj4+Pgo+Pj4+IC0tCj4+Pj4gWW91IHJlY2VpdmVkIHRoaXMgbWVz
c2FnZSBiZWNhdXNlIHlvdSBhcmUgc3Vic2NyaWJlZCB0byB0aGUgR29vZ2xlIEdyb3VwcyAKPj4+
PiAibGludXgtc3VueGkiIGdyb3VwLgo+Pj4+IFRvIHVuc3Vic2NyaWJlIGZyb20gdGhpcyBncm91
cCBhbmQgc3RvcCByZWNlaXZpbmcgZW1haWxzIGZyb20gaXQsIHNlbmQgYW4gCj4+Pj4gZW1haWwg
dG8gbGludXgtc3VueGkrdW5zdWJzY3JpYmVAZ29vZ2xlZ3JvdXBzLmNvbS4KPj4+PiBUbyB2aWV3
IHRoaXMgZGlzY3Vzc2lvbiBvbiB0aGUgd2ViLCB2aXNpdCAKPj4+PiBodHRwczovL2dyb3Vwcy5n
b29nbGUuY29tL2QvbXNnaWQvbGludXgtc3VueGkvMjAyMDAyMjIyMjMxNTQuMjIxNjMyLTItbWVn
b3VzJTQwbWVnb3VzLmNvbS4KCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
