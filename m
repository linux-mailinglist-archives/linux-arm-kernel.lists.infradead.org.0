Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB011E0950
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 10:48:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=suLWL4G4aGGAoI0HSOfv6NaY4j92QvDbj9aegayqGUg=; b=Qg0K0NdWpT2uv4
	D+CbzQr2FA+spxgqCf4lUrDM1j3G0JAIWWcN7+bODrkB7LxTZFMAHbSZ9vPNDDIAUtG9XkJF2/A5d
	NWvRHbw25IxcGHE58J7v4NlDtPdasxqmcGkRqePpKwehEIu02NZczg8aifx8qYP1jy6t4FIJkR0T+
	RgC2+JJUvDx04jGQtBOc3lxbWaxAlhPZfteDQVrbG4AJaushDCmE2ShBx0Iva48eXdCa+tGxnv5Nt
	p2kueD5TR1qenp+xECj9+Zzl9Z/RxJ+yXnIfSAxWSbXTzn1kJYy+dliUDycK9yUdVdB1SMLjLVHbz
	6LFnY96JsMpiftNf4xdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd8mq-00042D-8Y; Mon, 25 May 2020 08:48:44 +0000
Received: from comms.puri.sm ([159.203.221.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd8mX-00041D-Qg
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 08:48:27 +0000
Received: from localhost (localhost [127.0.0.1])
 by comms.puri.sm (Postfix) with ESMTP id AB776DF781;
 Mon, 25 May 2020 01:47:41 -0700 (PDT)
Received: from comms.puri.sm ([127.0.0.1])
 by localhost (comms.puri.sm [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bjCaKVfCJaSc; Mon, 25 May 2020 01:47:40 -0700 (PDT)
Subject: Re: [PATCH 1/2] arm64: dts: Add a device tree for the Librem5 phone
To: robh@kernel.org, kernel@puri.sm, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, mchehab@kernel.org, Anson.Huang@nxp.com, agx@sigxcpu.org,
 angus@akkea.ca
References: <20200514155737.12160-1-martin.kepplinger@puri.sm>
From: Martin Kepplinger <martin.kepplinger@puri.sm>
Autocrypt: addr=martin.kepplinger@puri.sm; keydata=
 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
 ekMtxgNYb/8oDry09UFHbGHLsWn6oBo=
Message-ID: <c56d67e9-84e3-16e3-1315-aa976adb2739@puri.sm>
Date: Mon, 25 May 2020 10:47:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
In-Reply-To: <20200514155737.12160-1-martin.kepplinger@puri.sm>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_014825_865449_6D79E881 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [159.203.221.185 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTQuMDUuMjAgMTc6NTcsIE1hcnRpbiBLZXBwbGluZ2VyIHdyb3RlOgo+IEZyb206ICJBbmd1
cyBBaW5zbGllIChQdXJpc20pIiA8YW5ndXNAYWtrZWEuY2E+Cj4gCj4gQWRkIGEgZGV2aWNldHJl
ZSBkZXNjcmlwdGlvbiBmb3IgdGhlIExpYnJlbSA1IHBob25lLiBUaGUgZWFybHkgYmF0Y2hlcwo+
IHRoYXQgaGF2ZSBiZWVuIHNvbGQgYXJlIHN1cHBvcnRlZCBhcyB3ZWxsIGFzIHRoZSBtYXNzLXBy
b2R1Y2VkIGRldmljZQo+IGF2YWlsYWJsZSBsYXRlciB0aGlzIHllYXIsIHNlZSBodHRwczovL3B1
cmkuc20vcHJvZHVjdHMvbGlicmVtLTUvCj4gCj4gVGhpcyBib290cyB0byBhIHdvcmtpbmcgY29u
c29sZSB3aXRoIHdvcmtpbmcgV1dBTiBtb2RlbSwgd2lmaSB1c2RoYywKPiBJTVUgc2Vuc29yIGRl
dmljZSwgcHJveGltaXR5IHNlbnNvciwgaGFwdGljIG1vdG9yLCBncGlvIGtleXMsIEdOU1MgYW5k
IExFRHMuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWFydGluIEtlcHBsaW5nZXIgPG1hcnRpbi5rZXBw
bGluZ2VyQHB1cmkuc20+Cj4gU2lnbmVkLW9mZi1ieTogQW5ndXMgQWluc2xpZSAoUHVyaXNtKSA8
YW5ndXNAYWtrZWEuY2E+Cj4gU2lnbmVkLW9mZi1ieTogR3VpZG8gR8O8bnRoZXIgPGFneEBzaWd4
Y3B1Lm9yZz4KPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvTWFrZWZpbGUg
ICAgICAgIHwgICAgMSArCj4gIC4uLi9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLWxpYnJlbTUu
ZHRzICAgICB8IDExNzQgKysrKysrKysrKysrKysrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMTc1
IGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMv
ZnJlZXNjYWxlL2lteDhtcS1saWJyZW01LmR0cwo+IAoKaGksCgpJIGhpZ2hseSBhcHByZWNpYXRl
IGl0IGluIGNhc2UgeW91IGNhbiB0YWtlIHRpbWUgdG8gcmV2aWV3LiBJdCdzIG5vdCB0aGUKc21h
bGxlc3QgYm9hcmQsIGJ1dCB0aGlzICJiYXNlIiBzdXBwb3J0IGlzbid0IGh1Z2UgZWl0aGVyLiBG
b3IKZGV2aWNldHJlZSBwZW9wbGUgdGhpcyBpcyBjZXJ0YWlubHkgZWFzeSB0byByZWFkIGFuZCBJ
J2xsIGJlIGhhcHB5IGZvcgphbnkgb3BpbmlvbnMsIG9iamVjdGlvbnMgb3IgQWNrcyB5b3UgbWln
aHQgaGF2ZS4KCnRoYW5rcywKCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBtYXJ0aW4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
