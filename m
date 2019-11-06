Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A9AF22B9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 00:35:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GavY7p3MRn97VsChDgZFDkB9tnhLACwN7sUSkjikJ8o=; b=LcRE3SSQbs9tys
	Q6PAPMJJWy7gD/YR/ut0kPTYzymeLaE3lx3+Y6Lcor31/uMIqVHuQikqmreqrlrSCF5PMiXDqbjaI
	vjWIkvj8xgKvqyzI5UQWwPtgnR4VJlnKTQ1ZjFKZnIDK+KPzVxjJmfYRp5sWSyHa04X+xqlSEhmES
	VIcsxP2yXFNgjBPppNGQ+7bmZGnPLLzb0S20VS3tnxl25p59tBz6tDDYknERaGqwKrntc09Kv1cYQ
	fi+HyiE7Qx8PCZF+L1Jv1Mj7A/jpwOg2fHTy7EHGoPoQ7JhCQJFqL0a8miSkuVTmfuV+x1k+UHJ09
	LokOmomXi8uW5kXRd6yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSUpy-0006w6-HM; Wed, 06 Nov 2019 23:35:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSUpp-0006vk-Id
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 23:35:35 +0000
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1E19121D7F
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  6 Nov 2019 23:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573083333;
 bh=acYkWuh1lxFHEeKgrIYJ5Yd9kylQa/fKIKHitMgaldM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=y8CyCGFD6r8Yx6zd8knD2LQGyvkkPbvxiV5bsc2HYW4xX9s6Q2f6KRkfGPv+YyaXp
 FL+lDZrxyuN6rJfajkygkBM5zlGJFoIlw3psHHScwjPnUh1cD59AsZ4CvJsvDxyGi6
 lBe3FoyN2A149QlMILkLty2lw6pSRaSAMVjATGlg=
Received: by mail-qt1-f171.google.com with SMTP id t8so313770qtc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 15:35:33 -0800 (PST)
X-Gm-Message-State: APjAAAWf5z8lWlE3B05MBZx9pjCFJh+TgZixlRjbsHCBddFCfIWI8Ny1
 7T+lxmEfXL8paILdLDO1Y437yQwUhzv6DjgQZw==
X-Google-Smtp-Source: APXvYqwNuYTsv7zmDJbGaopPUrmmqNxKU8Cj804+ATwfmxxu9034v+A6BQ+Qmo8CGUNIZgx7qrGV1CetGwfhUmZEvmQ=
X-Received: by 2002:ac8:7612:: with SMTP id t18mr653216qtq.143.1573083332254; 
 Wed, 06 Nov 2019 15:35:32 -0800 (PST)
MIME-Version: 1.0
References: <20191031123040.26316-1-benjamin.gaignard@st.com>
 <20191031123040.26316-3-benjamin.gaignard@st.com>
 <20191103110841.3ad3ecfb@archlinux>
 <CA+M3ks5sZ6wwV-V+HCLC8OLdeLqrxK0Ga-pXTsdktQErbMOk4g@mail.gmail.com>
 <20191106040657.GA5294@bogus> <d0196570-9140-c775-742c-89092056e651@st.com>
In-Reply-To: <d0196570-9140-c775-742c-89092056e651@st.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 6 Nov 2019 17:35:20 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+b_e1MbXx6918+iKfrTgqoozxOZ2rEYgogChZDWR_+iQ@mail.gmail.com>
Message-ID: <CAL_Jsq+b_e1MbXx6918+iKfrTgqoozxOZ2rEYgogChZDWR_+iQ@mail.gmail.com>
Subject: Re: [PATCH 2/4] dt-bindings: iio: timer: Convert stm32 IIO trigger
 bindings to json-schema
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_153533_667891_C95E2D02 
X-CRM114-Status: GOOD (  20.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 Linux PWM List <linux-pwm@vger.kernel.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 Fabrice GASNIER <fabrice.gasnier@st.com>, Lee Jones <lee.jones@linaro.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBOb3YgNiwgMjAxOSBhdCAxOjUyIFBNIEJlbmphbWluIEdBSUdOQVJECjxiZW5qYW1p
bi5nYWlnbmFyZEBzdC5jb20+IHdyb3RlOgo+Cj4KPiBPbiAxMS82LzE5IDU6MDYgQU0sIFJvYiBI
ZXJyaW5nIHdyb3RlOgo+ID4gT24gVHVlLCBOb3YgMDUsIDIwMTkgYXQgMTE6MDc6MTZBTSArMDEw
MCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gPj4gTGUgZGltLiAzIG5vdi4gMjAxOSDDoCAx
MjowOCwgSm9uYXRoYW4gQ2FtZXJvbiA8amljMjNAa2VybmVsLm9yZz4gYSDDqWNyaXQgOgo+ID4+
PiBPbiBUaHUsIDMxIE9jdCAyMDE5IDEzOjMwOjM4ICswMTAwCj4gPj4+IEJlbmphbWluIEdhaWdu
YXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBzdC5jb20+IHdyb3RlOgo+ID4+Pgo+ID4+Pj4gQ29udmVy
dCB0aGUgU1RNMzIgSUlPIHRyaWdnZXIgYmluZGluZyB0byBEVCBzY2hlbWEgZm9ybWF0IHVzaW5n
IGpzb24tc2NoZW1hCj4gPj4+Pgo+ID4+Pj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25h
cmQgPGJlbmphbWluLmdhaWduYXJkQHN0LmNvbT4KPiA+Pj4gSSdtIGZhciBmcm9tIGdyZWF0IG9u
IHRoZXNlIGFzIHN0aWxsIGhhdmVuJ3QgdGFrZW4gdGhlIHRpbWUgSSBzaG91bGQgdG8gbGVhcm4K
PiA+Pj4gdGhlIHlhbWwgc3ludGF4IHByb3Blcmx5LiAgQSBmZXcgY29tbWVudHMgaW5saW5lIGhv
d2V2ZXIgYmFzZWQgbW9zdGx5IG9uIHRoaXMKPiA+Pj4gZG9lc24ndCBxdWl0ZSBsb29rIGxpa2Ug
b3RoZXIgb25lcyBJJ3ZlIHNlZW4gcmVjZW50bHkuCj4gPj4+Cj4gPj4+IFRoYW5rcywKPiA+Pj4K
PiA+Pj4gSm9uYXRoYW4KPiA+Pj4KPiA+Pj4+IC0tLQo+ID4+Pj4gICAuLi4vYmluZGluZ3MvaWlv
L3RpbWVyL3N0LHN0bTMyLXRpbWVyLXRyaWdnZXIueWFtbCB8IDQ0ICsrKysrKysrKysrKysrKysr
KysrKysKPiA+Pj4+ICAgLi4uL2JpbmRpbmdzL2lpby90aW1lci9zdG0zMi10aW1lci10cmlnZ2Vy
LnR4dCAgICAgfCAyNSAtLS0tLS0tLS0tLS0KPiA+Pj4+ICAgMiBmaWxlcyBjaGFuZ2VkLCA0NCBp
bnNlcnRpb25zKCspLCAyNSBkZWxldGlvbnMoLSkKPiA+Pj4+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0
IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9paW8vdGltZXIvc3Qsc3RtMzItdGlt
ZXItdHJpZ2dlci55YW1sCj4gPj4+PiAgIGRlbGV0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvaWlvL3RpbWVyL3N0bTMyLXRpbWVyLXRyaWdnZXIudHh0Cj4g
Pj4+Pgo+ID4+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9paW8vdGltZXIvc3Qsc3RtMzItdGltZXItdHJpZ2dlci55YW1sIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2lpby90aW1lci9zdCxzdG0zMi10aW1lci10cmlnZ2VyLnlhbWwK
PiA+Pj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPj4+PiBpbmRleCAwMDAwMDAwMDAwMDAuLjFj
OGM4YjU1ZThjZAo+ID4+Pj4gLS0tIC9kZXYvbnVsbAo+ID4+Pj4gKysrIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2lpby90aW1lci9zdCxzdG0zMi10aW1lci10cmlnZ2VyLnlh
bWwKPiA+Pj4+IEBAIC0wLDAgKzEsNDQgQEAKPiA+Pj4+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKPiA+Pj4+ICslWUFNTCAxLjIKPiA+
Pj4+ICstLS0KPiA+Pj4+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL2lpby90
aW1lci9zdCxzdG0zMi10aW1lci10cmlnZ2VyLnlhbWwjCj4gPj4+PiArJHNjaGVtYTogaHR0cDov
L2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4gPj4+PiArCj4gPj4+PiAr
dGl0bGU6IFNUTWljcm9lbGVjdHJvbmljcyBTVE0zMiBUaW1lcnMgSUlPIHRpbWVyIGJpbmRpbmdz
Cj4gPj4+PiArCj4gPj4+PiArbWFpbnRhaW5lcnM6Cj4gPj4+PiArICAtIEJlbmphbWluIEdhaWdu
YXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBzdC5jb20+Cj4gPj4+PiArICAtIEZhYnJpY2UgR2Fzbmll
ciA8ZmFicmljZS5nYXNuaWVyQHN0LmNvbT4KPiA+Pj4+ICsKPiA+Pj4+ICtwcm9wZXJ0aWVzOgo+
ID4+Pj4gKyAgJG5vZGVtYW5lOgo+ID4+PiBub2RlbmFtZT8KPiA+PiBUaGF0IHdpbGwgYmUgaW4g
djIKPiA+IE5vLCAkbm9kZW5hbWUgaXMgY29ycmVjdC4gVGhlICckJyBzaWduaWZpZXMgc29tZXRo
aW5nIHdlIGdlbmVyYXRlIGFuZAo+ID4gYWRkIGluLiBJT1csIG5vdCBhIHJlYWwgcHJvcGVydHku
IEkgZ3Vlc3Mgd2UgY291bGQgaGF2ZSB1c2VkICduYW1lJyBoZXJlCj4gPiBhbmQgc3R1Y2sgd2l0
aCB0cmFkaXRpb25hbCBPcGVuRmlybXdhcmUuCj4gbGV0J3MgZ28gZm9yICRuYW1lCgpObywgJG5v
ZGVuYW1lIGlzIGNvcnJlY3QuIFlvdSBkb24ndCBoYXZlIGEgY2hvaWNlLiBUaGF0IGlzIHdoYXQg
dGhlCnRvb2xpbmcgZ2VuZXJhdGVzLgoKUm9iCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
