Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E7B76F79
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 19:07:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3KVoB5KRrANFAiPr5kYvMskC0kRnSpRZu2P2mVyzCDg=; b=DTO/F4bN8gBnCuh2hYhwGDsvh
	m8dnw3CLCn6uKPPnj4y4ysYJHYMu5RoahuZjYl4OduXFOh+iMt0nsUIuNwqghqgkd9ugJ1+3AlS1V
	tpLHT1LCHW13FBetkRqYF8qrpjHFbboR4IviX9c6SY8Y4OfKwBMW4ty6XPJXI7x7GSVdyln5nobwE
	KwcHOFuwjlJvKd+rGUK6ddzUvZN4Rh+h7Ehoy3Yfj9SKkKHazjNhCLrNO/zNmavxefrXKM61Tso8j
	6sxwG5PbIQ2AjfUg2hDrLZSJvSnbm/tk8v6+DodHWLPvab11B3qxil6YJIbXVT8ARTZY1DsgvKlDa
	4liKhmRSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr3gT-0005xL-Rm; Fri, 26 Jul 2019 17:07:09 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr3gK-0004fu-Er
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 17:07:01 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 10:04:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,311,1559545200"; d="scan'208";a="172279192"
Received: from haiyuewa-mobl.ccr.corp.intel.com (HELO [10.255.31.18])
 ([10.255.31.18])
 by fmsmga007.fm.intel.com with ESMTP; 26 Jul 2019 10:04:51 -0700
Subject: Re: [RFC PATCH 14/17] ipmi: kcs: Finish configuring ASPEED KCS device
 before enable
To: Andrew Jeffery <andrew@aj.id.au>, linux-aspeed@lists.ozlabs.org
References: <20190726053959.2003-1-andrew@aj.id.au>
 <20190726053959.2003-15-andrew@aj.id.au>
From: "Wang, Haiyue" <haiyue.wang@linux.intel.com>
Message-ID: <29a2d999-23bd-8e95-a1b8-f00e25a11df5@linux.intel.com>
Date: Sat, 27 Jul 2019 01:04:51 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190726053959.2003-15-andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_100700_543566_BFAA6EC2 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 1.0 HK_RANDOM_FROM         From username looks random
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Corey Minyard <minyard@acm.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, joel@jms.id.au, openipmi-developer@lists.sourceforge.net,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

1NogMjAxOS0wNy0yNiAxMzozOSwgQW5kcmV3IEplZmZlcnkg0LS1wDoKPiBUaGUgY3VycmVudGx5
IGludGVycnVwdHMgYXJlIGNvbmZpZ3VyZWQgYWZ0ZXIgdGhlIGNoYW5uZWwgd2FzIGVuYWJsZWQu
Cj4KPiBDYzogSGFpeXVlIFdhbmc8aGFpeXVlLndhbmdAbGludXguaW50ZWwuY29tPgo+IENjOiBD
b3JleSBNaW55YXJkPG1pbnlhcmRAYWNtLm9yZz4KPiBDYzogQXJuZCBCZXJnbWFubjxhcm5kQGFy
bmRiLmRlPgo+IENjOiBHcmVnIEtyb2FoLUhhcnRtYW48Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5v
cmc+Cj4gQ2M6b3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldAo+IFNpZ25l
ZC1vZmYtYnk6IEFuZHJldyBKZWZmZXJ5PGFuZHJld0Bhai5pZC5hdT4KPiAtLS0KPiAgIGRyaXZl
cnMvY2hhci9pcG1pL2tjc19ibWNfYXNwZWVkLmMgfCA3ICsrKystLS0KPiAgIDEgZmlsZSBjaGFu
Z2VkLCA0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9jaGFyL2lwbWkva2NzX2JtY19hc3BlZWQuYyBiL2RyaXZlcnMvY2hhci9pcG1pL2tjc19i
bWNfYXNwZWVkLmMKPiBpbmRleCAzYzk1NTk0NmU2NDcuLmUzZGQwOTAyMjU4OSAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2NoYXIvaXBtaS9rY3NfYm1jX2FzcGVlZC5jCj4gKysrIGIvZHJpdmVycy9j
aGFyL2lwbWkva2NzX2JtY19hc3BlZWQuYwo+IEBAIC0yNjgsMTMgKzI2OCwxNCBAQCBzdGF0aWMg
aW50IGFzcGVlZF9rY3NfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgIAlr
Y3NfYm1jLT5pb19pbnB1dGIgPSBhc3BlZWRfa2NzX2luYjsKPiAgIAlrY3NfYm1jLT5pb19vdXRw
dXRiID0gYXNwZWVkX2tjc19vdXRiOwo+ICAgCj4gKwlyYyA9IGFzcGVlZF9rY3NfY29uZmlnX2ly
cShrY3NfYm1jLCBwZGV2KTsKPiArCWlmIChyYykKPiArCQlyZXR1cm4gcmM7Cj4gKwo+ICAgCWRl
dl9zZXRfZHJ2ZGF0YShkZXYsIGtjc19ibWMpOwoKClRoYW5rcyBmb3IgY2F0Y2hpbmcgdGhpcywg
Zm9yIG5vdCBtaXNzIHRoZSBkYXRhLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
