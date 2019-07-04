Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0665FB2C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 17:46:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pPBQ+JYUqenMpCDOw/gXz1fBnCZY787D61/Jq1p6tU8=; b=azbhAy+eFRDbPp
	STgknBOAT2zguMzzYl4tDiONc3My8p0CySzOxWqDzQertp9fCf1wBsOPlbPcHgwP664SEipza6YDg
	2fakMkb1Z1WQ2zW16Vjm7OIFOLEjVaEucp06z7ijdkd54ZzXKMqk+rFOarpj1aGRDLPdMOwbh77cT
	Qr8h77bEsFNCVvMKWi/4yQsyiYMRBMShGv0jEi8igyGzVkFWChPM5iHF+nCrWdTIp/l1vex03YMV3
	xSrNGTYmb38MjbvDLrNXLcL/2FcZzWx0CbMqFbH3uPe5EIBXUzisFOANrcNpvXAbp2nLjoN5W8iqD
	AqDXq0+K9IWXsPzoaIdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj3w1-00047s-AZ; Thu, 04 Jul 2019 15:46:09 +0000
Received: from mailout02.agenturserver.de ([185.15.192.33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj3vm-00046j-Sc
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 15:45:56 +0000
Received: from mail02.agenturserver.de (mail02.internal [172.16.51.35])
 by mailout02.agenturserver.de (Postfix) with ESMTP id 7F5401209BB;
 Thu,  4 Jul 2019 17:45:47 +0200 (CEST)
Received: from localhost (ac02.internal [172.16.51.82])
 by mail02.agenturserver.de (Postfix) with ESMTP id 7323380670;
 Thu,  4 Jul 2019 17:45:47 +0200 (CEST)
X-Spam-Level: 
Received: from mail.agenturserver.de ([172.16.51.35])
 by localhost (ac02.mittwald.de [172.16.51.82]) (amavisd-new, port 10026)
 with ESMTP id Ky2jPVPPeh4V; Thu,  4 Jul 2019 17:45:47 +0200 (CEST)
Received: from karo-electronics.de (unknown [89.1.81.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: lw@karo-electronics.de)
 by mail.agenturserver.de (Postfix) with ESMTPSA;
 Thu,  4 Jul 2019 17:45:46 +0200 (CEST)
Date: Thu, 4 Jul 2019 17:45:43 +0200
From: Lothar =?UTF-8?B?V2HDn21hbm4=?= <LW@KARO-electronics.de>
To: fugang.duan@nxp.com
Subject: Re: [PATCH nvmem 1/1] nvmem: imx: correct the fuse word index
Message-ID: <20190704174543.194a0158@karo-electronics.de>
In-Reply-To: <20190704142015.10701-1-fugang.duan@nxp.com>
References: <20190704142015.10701-1-fugang.duan@nxp.com>
Organization: Ka-Ro electronics GmbH
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_084555_080689_A0AE05E3 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.15.192.33 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: festevam@gmail.com, gregkh@linuxfoundation.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, srinivas.kandagatla@linaro.org,
 kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBUaHUsICA0IEp1bCAyMDE5IDIyOjIwOjE1ICswODAwIGZ1Z2FuZy5kdWFuQG54cC5j
b20gd3JvdGU6Cj4gRnJvbTogRnVnYW5nIER1YW4gPGZ1Z2FuZy5kdWFuQG54cC5jb20+Cj4gCj4g
aU1YOCBmdXNlIHdvcmQgaW5kZXggcmVwcmVzZW50IGFzIG9uZSA0LWJ5dGVzIHdvcmQsCj4gaXQg
c2hvdWxkIG5vdCBiZSBkaXZpZGVkIGJ5IDQuCj4gCj4gRXhwOgo+IC0gTUFDMCBhZGRyZXNzIGxh
eW91dCBpbiBmdXNlOgo+IG9mZnNldCA3MDg6IE1BQ1szXSBNQUNbMl0gTUFDWzFdIE1BQ1swXQo+
IG9mZnNldCA3MDk6IFhYICAgICB4eCAgICAgTUFDWzVdIE1BQ1s0XQo+IAo+IFNpZ25lZC1vZmYt
Ynk6IEZ1Z2FuZyBEdWFuIDxmdWdhbmcuZHVhbkBueHAuY29tPgo+IC0tLQo+ICBkcml2ZXJzL252
bWVtL2lteC1vY290cC1zY3UuYyB8IDYgKysrLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZW0v
aW14LW9jb3RwLXNjdS5jIGIvZHJpdmVycy9udm1lbS9pbXgtb2NvdHAtc2N1LmMKPiBpbmRleCBk
OWRjNDgyLi5iZTJmNWYwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbnZtZW0vaW14LW9jb3RwLXNj
dS5jCj4gKysrIGIvZHJpdmVycy9udm1lbS9pbXgtb2NvdHAtc2N1LmMKPiBAQCAtNzEsOCArNzEs
OCBAQCBzdGF0aWMgaW50IGlteF9zY3Vfb2NvdHBfcmVhZCh2b2lkICpjb250ZXh0LCB1bnNpZ25l
ZCBpbnQgb2Zmc2V0LAo+ICAJdm9pZCAqcDsKPiAgCWludCBpLCByZXQ7Cj4gIAo+IC0JaW5kZXgg
PSBvZmZzZXQgPj4gMjsKPiAtCW51bV9ieXRlcyA9IHJvdW5kX3VwKChvZmZzZXQgJSA0KSArIGJ5
dGVzLCA0KTsKPiArCWluZGV4ID0gb2Zmc2V0Owo+ICsJbnVtX2J5dGVzID0gcm91bmRfdXAoYnl0
ZXMsIDQpOwo+ICAJY291bnQgPSBudW1fYnl0ZXMgPj4gMjsKPiAgCj4gIAlpZiAoY291bnQgPiAo
cHJpdi0+ZGF0YS0+bnJlZ3MgLSBpbmRleCkpCj4gQEAgLTEwMCw3ICsxMDAsNyBAQCBzdGF0aWMg
aW50IGlteF9zY3Vfb2NvdHBfcmVhZCh2b2lkICpjb250ZXh0LCB1bnNpZ25lZCBpbnQgb2Zmc2V0
LAo+ICAJCWJ1ZisrOwo+ICAJfQo+ICAKPiAtCW1lbWNweSh2YWwsICh1OCAqKXAgKyBvZmZzZXQg
JSA0LCBieXRlcyk7Cj4gKwltZW1jcHkodmFsLCAodTggKilwLCBieXRlcyk7Cj4gIAo+ICAJa2Zy
ZWUocCk7Cj4gIApXaXRoIHRoZXNlIGNoYW5nZXMgeW91IGNvdWxkIHVzZSB0aGUgJ3ZhbCcgcG9p
bnRlciBkaXJlY3RseQphcyB0aGUgZGVzdGluYXRpb24gZm9yIG9jb3RwX3JlYWQoKSB3aXRob3V0
IG5lZWQgZm9yIGFuIGludGVybWVkaWF0ZQpidWZmZXIuCgoKTG90aGFyIFdhw59tYW5uCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
