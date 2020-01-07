Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B9E13246F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 12:04:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XBuDC4dnqs5BBcNLJUkS8RDmgilSxYcpoAhfw66bkT4=; b=XCpnxmGvXe76lR
	SmfLdbXes7cbAaUc2wj2zlfhEDXLa9HjU8yFHOYxsDsJno/gblsTyH/it2UQEJNZyrNBsNYCXPE56
	Z6gLvvVH47+Lwnc5SsLWzUU/d3sSGLp0RBv27vYp8NqnHXMi4BBe43RbOseCaOdFBfaevLJSkwPzu
	JoerZAq7Mt68TG7Z+HLxAupEbrgIzwmUXPXufbnPlabCyi4fAlf57JTGa2BSZbX4gUT6utIr8l0wY
	cHzZduUL0dSPqqfP29hWPHvYwi9XC36JUshGKgXFSkef/V/yp/LIYSbJZIzY8re58vGRf/P7E5ZYD
	7lJeTnqIj5FV91fNZWbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iomfH-0001qx-F1; Tue, 07 Jan 2020 11:04:47 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iomeb-0001k9-0u; Tue, 07 Jan 2020 11:04:27 +0000
Received: by mail-ed1-f66.google.com with SMTP id f8so6455391edv.2;
 Tue, 07 Jan 2020 03:04:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=ptBtaLfSefXKIlF4+ATcVDfD9CqQtKSIYDSRdZx4Dts=;
 b=BwJVVduBH3q5Qid9RMG1kwAuBOHtUdNILi2maNtcgQ/OQjX1rDriFARyJRvLvE5Usq
 OAszbfkYwNctlu2FUMjzcODdNzi4/lFPWIuoM3Wflj0bKf1Jryp0yQY6mf6P2qTXy1uY
 CEVHMZrW8oowdBqjRY6nO8crthkphvfsxdAyLXTjgeuP5nU07pRogFbUPqgJRLs1cCfP
 AX1w1xrv1PW6tECFnzTyR2AiCNuVH66E+KUpCOy8To306eFKKRmOFtPdRlRxxRCWYpvR
 jy3ZoKNhF4mgx8bdzy6CYYZncD+AjaeEcHiXXjhUZe9VaL6tY2qjtj++jstfYZ4XBlxr
 +a6A==
X-Gm-Message-State: APjAAAXOAvR0iEtdRQgyNfMnIDG+zFYrRG0eqxYCwSZ3mDYGWREHNjRX
 f9e4ETjRi7y2MBuWLJug+88=
X-Google-Smtp-Source: APXvYqzKoAnAzDFoVmt8WsrTLEo61oVGbLtxhYn9w1G9R8M+n/U0qKkIJnksdqHSF0YmF+wOzkLZyQ==
X-Received: by 2002:a17:906:c4d:: with SMTP id
 t13mr112159727ejf.198.1578395042449; 
 Tue, 07 Jan 2020 03:04:02 -0800 (PST)
Received: from pi3 ([194.230.155.149])
 by smtp.googlemail.com with ESMTPSA id x8sm7492342eds.88.2020.01.07.03.04.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 03:04:01 -0800 (PST)
Date: Tue, 7 Jan 2020 12:03:59 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH 2/2] pwm: Enable compile testing for some of drivers
Message-ID: <20200107110359.GA32423@pi3>
References: <20191230172113.17222-1-krzk@kernel.org>
 <20191230172113.17222-2-krzk@kernel.org>
 <20200107072645.ko247bwhh3ibdu73@pengutronix.de>
 <20200107082539.GA31827@pi3>
 <20200107104234.wq74fska3szrg4ii@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107104234.wq74fska3szrg4ii@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_030424_657276_6201ADA7 
X-CRM114-Status: GOOD (  19.14  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-pwm@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Richard Weinberger <richard@nod.at>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Thierry Reding <thierry.reding@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 kernel@pengutronix.de, linux-tegra@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-riscv@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKYW4gMDcsIDIwMjAgYXQgMTE6NDI6MzRBTSArMDEwMCwgVXdlIEtsZWluZS1Lw7Zu
aWcgd3JvdGU6Cj4gPiBJIGd1ZXNzIG90aGVyIHNvbHV0aW9uIHdvdWxkIGJlIHRvIGFkZCBzdHVi
cyBmb3IgZmV3IGNsayBmdW5jdGlvbnMuLi4KPiA+IAo+ID4gPiBBbHNvIEhBU19JT01FTSBpcyBh
IHR5cGljYWwgcmVxdWlyZW1lbnQsIGJ1dCBJIHRlc3RlZCB3aXRoIGFuIEFSQ0g9dW0KPiA+ID4g
Y29uZmlnICh3aGljaCBkb2VzJ3QgaGF2ZSBIQVNfSU9NRU0pIGFuZCB0aGV5IGFsbCBjb21waWxl
IGZpbmUuCj4gPiAKPiA+IEJlY2F1c2Ugb2YgIUhBU19JT01FTSwgc2luY2Ugc29tZSB0aW1lIEFS
Q0g9dW0gZG9lcyBub3Qgc3VwcG9ydAo+ID4gQ09NUElMRV9URVNULiBUaGVyZWZvcmUgSEFTX0lP
TUVNIGRlcGVuZGVuY3kgaXMgbm90IG5lZWRlZCBmb3IgY29tcGlsZQo+ID4gdGVzdGluZyAoYW5k
IGZvciByZWd1bGFyIGJ1aWxkIGl0IGlzIHNlbGVjdGVkIGJ5IEFSQ0gpLgo+IAo+IEhlaGUsIEkg
ZGlkbid0IG5vdGljZSBiZWNhdXNlIGZvciB0ZXN0aW5nIEkganVzdCBkcm9wcGVkIHRoZSAiZGVw
ZW5kcyBvbgo+IC4uLiIgbGluZXMgaW4gS2NvbmZpZyBpbnN0ZWFkIG9mIGFkZGluZyAifHwgQ09N
UElMRV9URVNUIiA6LSkgU3RpbGwgdGhleQo+IGNvbXBpbGUgZmluZSBvbiBVTUwuCj4gCj4gQWgs
IHNpbmNlIGJjMDgzYTY0YjZjMCAoImluaXQvS2NvbmZpZzogbWFrZSBDT01QSUxFX1RFU1QgZGVw
ZW5kIG9uCj4gIVVNTCIpID09IHY0LjgtcmMxfjUyXjJ+ODMgQ09NUElMRV9URVNUIGNhbm5vdCBi
ZSBlbmFibGVkIG9uIFVNTCwgYnV0Cj4gbGF0ZXIgMWJjYmZiZmRlYjAwICgidW06IGFkZCBkdW1t
eSBpb3JlbWFwIGFuZCBpb3VubWFwIGZ1bmN0aW9ucyIpCj4gPT0gdjQuMTMtcmMxfjheMn42IFVN
IGdvdCBhIGR1bW15IGltcGxlbWVudGF0aW9uLiBTbyBtYXliZSB3ZSBjb3VsZAo+IHJldmVydCBi
YzA4M2E2NGI2YzAgdG9kYXk/IChBbmQgaWYgbm90LCBhIGNvbW1lbnQgYWJvdXQgd2h5IG5lYXIg
dGhlCj4gImRlcGVuZHMgb24gIVVNTCIgaW4gaW5pdC9LY29uZmlnIHdvdWxkIGJlIGdyZWF0LikK
PiAKPiBPcnRob2dvbmFsIHRvIHRoYXQsIEkgd29uZGVyIGlmIGRlcGVuZGluZyBvbiBIQVNfSU9N
RU0gaXMgcmlnaHQgZXZlbgo+IHRob3VnaCB0aGUgY29tcGlsZSB0ZXN0ZXJzIHdvbid0IG5vdGlj
ZSBpdCBtaXNzaW5nLiBPciBzaG91bGQgSEFTX0lPTUVNCj4gYmUgZHJvcHBlZD8KCkkgdGhpbmsg
eWVzLCBpdCBjYW4gYmUgZHJvcHBlZCwgYnV0IHRoaXMgd291bGQgcmVxdWlyZToKMS4gRml4aW5n
IGFueSBkZXBlbmRlbmNpZXMgb24gSEFTX0lPTUVNLCBlLmcuOgogICAgV0FSTklORzogdW5tZXQg
ZGlyZWN0IGRlcGVuZGVuY2llcyBkZXRlY3RlZCBmb3IgTUZEX1NZU0NPTgogICAgICBEZXBlbmRz
IG9uIFtuXTogSEFTX0lPTUVNIFs9bl0KICAgICAgU2VsZWN0ZWQgYnkgW3ldOgogICAgICAtIFBI
WV9EQThYWF9VU0IgWz15XSAmJiAoQVJDSF9EQVZJTkNJX0RBOFhYIHx8IENPTVBJTEVfVEVTVCBb
PXldKQoKMi4gQ2hlY2tpbmcgaWYgYWxsIG9mIHN0dWJzIGFyZSBpbXBsZW1lbnRlZCAobm90IG9u
bHkgSU9NRU0gYnV0IG1heWJlCiAgIERNQSBhcyB3ZWxsKS4gQWxzbyAxYmNiZmJmZGViMDAgYnJv
dWdodCBvbmx5IGZldyBzdHVicy4gU3RpbGwgd2UKICAgbmVlZCBkZXZtX2lvcmVtYXBfcmVzb3Vy
Y2UoKSBhbmQgb3RoZXJzLgoKUXVpY2sgdGVzdCBzaG93cyBtZW50aW9uZWQgInVubWV0IGRpcmVj
dCBkZXBlbmRlbmNpZXMiIGFuZDoKICAgIHBoeS1weGEtdXNiLmM6KC50ZXh0KzB4MmY1KTogdW5k
ZWZpbmVkIHJlZmVyZW5jZSB0byBgZGV2bV9pb3JlbWFwX3Jlc291cmNlJwogICAgZG1hLWlvbW11
LmM6KC50ZXh0KzB4MTc5KTogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgZG1hX3BncHJvdCcKCj4g
Cj4gPiA+ID4gQEAgLTMxOCw3ICszMTksNyBAQCBjb25maWcgUFdNX01FRElBVEVLCj4gPiA+ID4g
IAo+ID4gPiA+ICBjb25maWcgUFdNX01YUwo+ID4gPiA+ICAJdHJpc3RhdGUgIkZyZWVzY2FsZSBN
WFMgUFdNIHN1cHBvcnQiCj4gPiA+ID4gLQlkZXBlbmRzIG9uIEFSQ0hfTVhTICYmIE9GCj4gPiA+
ID4gKwlkZXBlbmRzIG9uIChBUkNIX01YUyAmJiBPRikgfHwgQ09NUElMRV9URVNUCj4gPiA+ID4g
IAlzZWxlY3QgU1RNUF9ERVZJQ0UKPiA+ID4gPiAgCWhlbHAKPiA+ID4gPiAgCSAgR2VuZXJpYyBQ
V00gZnJhbWV3b3JrIGRyaXZlciBmb3IgRnJlZXNjYWxlIE1YUy4KPiA+ID4gPiBAQCAtMzI4LDcg
KzMyOSw4IEBAIGNvbmZpZyBQV01fTVhTCj4gPiA+ID4gIAo+ID4gPiA+ICBjb25maWcgUFdNX09N
QVBfRE1USU1FUgo+ID4gPiA+ICAJdHJpc3RhdGUgIk9NQVAgRHVhbC1Nb2RlIFRpbWVyIFBXTSBz
dXBwb3J0Igo+ID4gPiA+IC0JZGVwZW5kcyBvbiBPRiAmJiBBUkNIX09NQVAgJiYgT01BUF9ETV9U
SU1FUgo+ID4gPiA+ICsJZGVwZW5kcyBvbiAoQVJDSF9PTUFQICYmIE9NQVBfRE1fVElNRVIpIHx8
IENPTVBJTEVfVEVTVAo+ID4gPiA+ICsJZGVwZW5kcyBvbiBPRgo+ID4gPiAKPiA+ID4gSSdtIHN1
cnByaXNlZCB0aGF0IE9GIGlzbid0IHJlcXVpcmVkIGZvciBQV01fTVhTIGJ1dCBpcyBpcyBmb3IK
PiA+ID4gUFdNX09NQVBfRE1USU1FUi4gcHdtLW14cyBjb21waWxlcyB3aXRob3V0IENPTkZJR19P
RiwgZGlkbid0IHRlc3QKPiA+ID4gcHdtLW9tYXAtZG10aW1lci4KPiA+IAo+ID4gU2luY2Ugc29t
ZSB0aW1lICFPRiBoYXMgYWxsIG5lY2Vzc2FyeSBzdHVicyBzbyBPRiBpcyBhY3R1YWxseSBuZWVk
ZWQKPiA+IG9ubHkgZm9yIGJpbmRpbmcsIG5vdCBjb21waWxpbmcuCj4gCj4gVGhhdCBkb2Vzbid0
IGV4cGxhaW4gd2h5IHlvdSBoYW5kbGUgUFdNX01YUyBhbmQgUFdNX09NQVBfRE1USU1FUgo+IGRp
ZmZlcmVudGx5IHRob3VnaC4KCllvdSdyZSByaWdodCwgSSBtaXNzZWQgdGhpcy4gTm9uZSBvZiB0
aGVtIHJlcXVpcmUgT0YgZm9yIGJ1aWxkaW5nIHNvCnNlcGFyYXRlICJkZXBlbmRzIG9uIE9GIiBt
YWtlcyBzZW5zZSBvbmx5IGZvciByZWFkYWJpbGl0eSBvZiB0aGlzLiAgTGV0Cm1lIHNlbmQgdjIg
dG8gbWFrZSBpdCBzaW1pbGFyIHRvIFBXTV9NWFMuCgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
