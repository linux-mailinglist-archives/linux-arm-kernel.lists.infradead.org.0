Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70476198E46
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 10:26:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TzGr9TfmE4ttJxLZUNMrU/PO52HWv8V/FizXY2ovz7k=; b=UnxW5EgstN9CVr
	5jk13ddp/p8U3bxUYabp85EK1vztNK1aGWWYti56sg7V2qbpXpSc/sIsIxGRWOorGdX7+Le8XFqaD
	sbphjIAb3yymNsn7A0dE+xsi+DmiaTvoDjkEbkPkE2WIZPlK7avL9/qPf6DCkCGheLNDF7pZA6gQx
	9Wr84vlvSSUpNsLcprdmWykLjo4RPv6nRyM3actgXJ87/QTu0PF24AIogYVl2Ka3jY91JJ1nzkKsC
	U8B7wcpFhF5FXeNI9D0Xk+ogDdGl6p3edxh5vXvluTzmiD08usqvDswTVSiv6Zj9KVlU8LXeGOf6Y
	QRwqXU8ZgDMF7GPqpkKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJCEQ-0005f4-LN; Tue, 31 Mar 2020 08:26:46 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJCEG-0005dm-0D
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 08:26:37 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 3F26340E6;
 Tue, 31 Mar 2020 10:26:21 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id e7874178;
 Tue, 31 Mar 2020 10:26:07 +0200 (CEST)
Date: Tue, 31 Mar 2020 10:26:06 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: olinuxino: add user red LED
Message-ID: <20200331082606.GD21251@meh.true.cz>
References: <20200325205924.30736-1-ynezz@true.cz>
 <20200330175347.r4uam7cybvuxlgog@gilmour.lan>
 <CAGb2v66+oT=qfu7oHTs3d_e2hd_8Fc_0ULhHRfMLmrdcfOoe=A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v66+oT=qfu7oHTs3d_e2hd_8Fc_0ULhHRfMLmrdcfOoe=A@mail.gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_012636_196055_9F95B78D 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <maxime@cerno.tech>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q2hlbi1ZdSBUc2FpIDx3ZW5zQGNzaWUub3JnPiBbMjAyMC0wMy0zMSAwOToxOTo1N106CgpIaSwK
Cj4gT24gVHVlLCBNYXIgMzEsIDIwMjAgYXQgMTo1MyBBTSBNYXhpbWUgUmlwYXJkIDxtYXhpbWVA
Y2Vybm8udGVjaD4gd3JvdGU6Cj4gPgo+ID4gT24gV2VkLCBNYXIgMjUsIDIwMjAgYXQgMDk6NTk6
MjRQTSArMDEwMCwgUGV0ciDFoHRldGlhciB3cm90ZToKPiA+ID4gVGhlcmUgaXMgYSByZWQgTEVE
IG1hcmtlZCBhcyBgR1BJT19MRUQxYCBvbiB0aGUgc2lsa3NjcmVlbiBhbmQgY29ubmVjdGVkCj4g
PiA+IHRvIFBFMTcgYnkgZGVmYXVsdC4gU28gbGV0cyBhZGQgdGhpcyBtaXNzaW5nIGJpdCBpbiB0
aGUgY3VycmVudCBoYXJkd2FyZQo+ID4gPiBkZXNjcmlwdGlvbi4KPiA+ID4KPiA+ID4gU2lnbmVk
LW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KPiA+Cj4gPiBRVWV1ZWQgZm9y
IDUuOCwgdGhhbmtzIQo+IAo+IFRoZSBncGlvLWxlZCBiaW5kaW5nIHNlZW1zIHRvIHByZWZlciAi
bGVkLTAiIHVwIHRvICJsZWQtZiIgKF5sZWQtWzAtOWEtZl0pCj4gYXMgdGhlIGNoaWxkIG5vZGUg
bmFtZS4gVGhpcyB3YXMgcmVjZW50bHkgYnJvdWdodCB0byBteSBhdHRlbnRpb24uIERvIHdlCj4g
d2FudCB0byBmb2xsb3cgc3VpdCBoZXJlPwoKSSBjYW4gc2VlIGZvbGxvd2luZyBpbiBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbGVkcy9sZWRzLWdwaW8ueWFtbDoKCiBwYXR0ZXJu
UHJvcGVydGllczoKICAgIyBUaGUgZmlyc3QgZm9ybSBpcyBwcmVmZXJyZWQsIGJ1dCBmYWxsIGJh
Y2sgdG8ganVzdCAnbGVkJyBhbnl3aGVyZSBpbiB0aGUKICAgIyBub2RlIG5hbWUgdG8gYXQgbGVh
c3QgY2F0Y2ggc29tZSBjaGlsZCBub2Rlcy4KICAgIihebGVkLVswLTlhLWZdJHxsZWQpIjoKClNv
IGl0IHNlZW1zIGxpa2UgYGxlZC0wYCBpcyBpbmRlZWQgcHJlZmVycmVkLCBzaG91bGQgSSBzZW5k
IHYyIG9yIGEgbmV3IHBhdGNoCmFzIGEgZml4IG9uIHRvcCBvZiB0aGUgcHJldmlvdXMgb25lPwoK
LS0geW5lenoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
