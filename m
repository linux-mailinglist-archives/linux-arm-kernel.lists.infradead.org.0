Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE21E19CDF1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 02:51:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o/3uqzxykOe5kfqA0aZOOdxj3A0QxVmpKK4qQMXOApk=; b=QjkElBlRxe7piY
	pGNJBxxRtg/krYpsWn40WYrTGVG3mAV91ekMwm0xnGIDlBq8UrgLpIKW2KFmE9bumuvdg7WZUrUGN
	FajwEqUJne+6Oh0uHzgGn4DFI6ISEPlH5EUAZJ2iY7+E+CqxqO7WECJwHqrkpdwHvoZOojvUkDXiD
	Tww+XcJ2nwwoNCEe9zsH8JgYd4+nBGsewRz2JOKEG68tFC90tCJlttsszscDJtV31WPh/ZIm42U3O
	iyiD6EPfm4jyYc438T7ESKL56gK/0YcIbzizWoT1gWHagbz4GqslWn6f58eqcflilVRbv/Iztm2cv
	yxOIx1DUiBcpgzOXNwug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKAYe-0007Rt-DX; Fri, 03 Apr 2020 00:51:40 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKAYX-0007Qn-KY
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 00:51:35 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 8FBCC5C02F8;
 Thu,  2 Apr 2020 20:51:27 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Thu, 02 Apr 2020 20:51:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type:content-transfer-encoding; s=fm2; bh=o4k4Q
 byRVOVaBijp4V3irP0AE4nFGkKuv35zWmzD8BU=; b=mec9o25/tw3Q2livsvRKG
 QhCtaxCniN6f8hKoSNg/O9gjNkUjnkW0FAjtI/W9t0iWwg5dQc3ycoxKwwu5HLJB
 aLARhApfJU7v/YA4Z+x/KYO2oyYaHFjgG5wcjVmuSbJ5Qz5ObBHH2y2Is1bzzl3/
 x5xx2d1Nb1g34kqdp9G74YI9kpoumzztHr1LgCK8KCQCkZYJ1bTXqAUMDOjmOFyD
 XPrqjC+VXI/5ggaF4OZ0aPggnQh5PQ+8LyG6tkgx5UQuLFN53m0j+dr8NgXP6kIT
 f83RsMOGdVoRRD9owhDCfpzxjNbtKcxDOx7DOEFW0AZI8+Ill4z/6pyj2sRCFgq4
 g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; bh=o4k4QbyRVOVaBijp4V3irP0AE4nFGkKuv35zWmzD8
 BU=; b=C8jIhCmnDW9uX6UnO/+qCjj/AIgnTI6ruqM7x1NVRfMQYNFsZBUshXPdf
 Lk38RkhieIkn4BHPje53naD2QERc/YMWjcZsrjizmeio701jDO3RkuLQobfw4C3v
 njUtYBGL71JmM1jSQl0jrsQMFr049sg9+Yej7hUkwgITZnkFKMeAeh8JEYOOVmcR
 a4hQhaaPdJ4Ho0KcBwhqv5D6HlBSPbNUpc+5iJEomWAkILL9tMOJsWCAX0cgVuqw
 osgbqLFkH8YKIZDLK7+K9NRXg07fYzd2ngpDzT7uICMRaGmNnTsmGa0qvht+7ss3
 iipXfF2ICZjgqZOOovkmYi72eomEg==
X-ME-Sender: <xms:iIiGXvxSTTafl6tt0gQFQbHdfo5UEgXrpcVu8l0t0PaC4EwvQ_D4Zg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrtdehgdefkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtgfesthhqredtreerjeenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuvehluh
 hsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegr
 jhdrihgurdgruh
X-ME-Proxy: <xmx:iIiGXlvaWz23-H1wujEUO6g9z11ljzX5dmNpzGzv-ipV4s9drmtqRw>
 <xmx:iIiGXr9q_QuNl9kf6dfh4o_1JEtkTfElIpSMuoP73M7-t56qeOtmfQ>
 <xmx:iIiGXk0jV93oo_7IYJ-xld6fW28zXwFUvimoPbSNpWKpN4mwJ1-4eQ>
 <xmx:j4iGXqRNGMdIVooQRfZbcToWLJCYOBPGxS4otGweza_msf_5QgkRDQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id DD995E00B0; Thu,  2 Apr 2020 20:51:20 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-1080-gca5de7b-fmstable-20200402v5
Mime-Version: 1.0
Message-Id: <48c9bd0e-3b5c-4f76-830f-4b0bd962148b@www.fastmail.com>
In-Reply-To: <9360D2B2-8242-4BA1-BF06-8916E87EDE67@gmail.com>
References: <20200306170218.79698-1-geissonator@yahoo.com>
 <20200306170218.79698-2-geissonator@yahoo.com>
 <294a52cd-2f60-41e5-a58f-a74151a83b08@www.fastmail.com>
 <9360D2B2-8242-4BA1-BF06-8916E87EDE67@gmail.com>
Date: Fri, 03 Apr 2020 11:21:41 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Andrew Geissler" <geissonator@gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: aspeed: zaius: Add gpio line names
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_175133_811433_9FA02F26 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
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
Cc: devicetree <devicetree@vger.kernel.org>, linux-aspeed@lists.ozlabs.org,
 openbmc@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Joel Stanley <joel@jms.id.au>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiBUdWUsIDMxIE1hciAyMDIwLCBhdCAwNDo0NiwgQW5kcmV3IEdlaXNzbGVyIHdyb3RlOgo+
IAo+IAo+ID4gT24gTWFyIDI2LCAyMDIwLCBhdCA2OjIwIFBNLCBBbmRyZXcgSmVmZmVyeSA8YW5k
cmV3QGFqLmlkLmF1PiB3cm90ZToKPiA+IAo+ID4gCj4gPiAKPiA+IE9uIFNhdCwgNyBNYXIgMjAy
MCwgYXQgMDM6MzIsIEFuZHJldyBHZWlzc2xlciB3cm90ZToKPiA+PiBOYW1lIHRoZSBHUElPcyB0
byBoZWxwIHVzZXJzcGFjZSB3b3JrIHdpdGggdGhlbS4gVGhlIG5hbWVzIGRlc2NyaWJlIHRoZQo+
ID4+IGZ1bmN0aW9uYWxpdHkgdGhlIGxpbmVzIHByb3ZpZGUsIG5vdCB0aGUgbmV0IG9yIGJhbGwg
bmFtZS4gVGhpcyBtYWtlcyBpdAo+ID4+IGVhc2llciB0byBzaGFyZSB1c2Vyc3BhY2UgY29kZSBh
Y3Jvc3MgZGlmZmVyZW50IHN5c3RlbXMgYW5kIG1ha2VzIHRoZQo+ID4+IHVzZSBvZiB0aGUgbGlu
ZXMgbW9yZSBvYnZpb3VzLgo+ID4+IAo+ID4+IFNpZ25lZC1vZmYtYnk6IEFuZHJldyBHZWlzc2xl
ciA8Z2Vpc3NvbmF0b3JAeWFob28uY29tPgo+ID4gCj4gPiBTbyB3ZSdyZSBjcmVhdGluZyBhIGJp
dCBvZiBhbiBhZC1ob2MgQUJJIGhlcmUgYmV0d2VlbiB0aGUgRFQgYW5kIHVzZXJzcGFjZS4KPiA+
IAo+ID4gV2hlcmUgYXJlIHdlIGRvY3VtZW50aW5nIGl0Pwo+IAo+IFllYWgsIHNvIGZhciBpdOKA
mXMgYmFzaWNhbGx5IGRlc2lnbiBieSBwcmVjZWRlbnQuIElmIHlvdSB3YW50IHlvdXIgT3BlbkJN
Qwo+IGZ1bmN0aW9uIHRvIHdvcmsgdGhlbiBmb2xsb3cgdGhlIHN0YW5kYXJkcyB3ZSdyZSBzZXR0
aW5nIGluIG90aGVyIGR0c+KAmXMuCj4gCj4gSXMgdGhlcmUgYSBnb29kIHBsYWNlIHRvIGRvY3Vt
ZW50IHRoaXM/IEkgY291bGQgY3JlYXRlIGEgT3BlbkJNQyBkZXNpZ24KPiBkb2MgYnV0IHRoYXQg
d291bGQgbm90IGFkZHJlc3Mgbm9uLU9wZW5CTUMgYXJlYXMuCgpEb24ndCBsZXQgcGVyZmVjdCBi
ZSB0aGUgZW5lbXkgb2YgZ29vZCBlbm91Z2ggOikgTGV0cyBkb2N1bWVudCBpdCBpbiBPcGVuQk1D
CmFuZCB0aGVuIGxvb2sgYXQgYWx0ZXJuYXRpdmVzIGlmIHdlIGZpbmQgaXQncyBuZWNlc3Nhcnku
IEkgZG9uJ3QgdGhpbmsgd2Ugd2lsbCBnaXZlbgp0aGF0IHRoZSBjb250cmFjdCBpcyBiZXR3ZWVu
IHRoZSBrZXJuZWwgYW5kIE9wZW5CTUMgdXNlcnNwYWNlLgoKQW5kcmV3CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
