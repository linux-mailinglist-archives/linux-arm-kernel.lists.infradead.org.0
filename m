Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E2917384E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 14:29:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M8lQEm/ejtz3zBTdecTaFX8aQzMGA2O4AbSZ+BUQogk=; b=eOskB0idfd94pP
	oIORniizzXh4LoqUV9rK7Eqe4qlij797Ztof8+O8gZdm/C294qPVwo34L0HOPURcKYiIO2SzFktf6
	xTkaEXZhm5TmCTxyfemNIoVFaKn03cAUu0PjELCWwbkgd5XIDrc1hfSWomWa0OARSnTO2VCsAY3Ls
	u0EZGk8z49jjQB88cBO09IyDxyVO4gQRSvYT8UWnrHP/em42LfeDLIsnf7uJdgJZCFTN7pZc1uSxa
	nDr1PPwA0Ux9wXsQAZypoRIS+hxeN3zF4nK4UBoyhgtZ9xkasu9RkMzzBdU+q9ChotEXsc6V5DGo/
	67E+liex8e597LLxDCUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7fhL-00074T-VM; Fri, 28 Feb 2020 13:28:59 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7fh2-00072I-PF; Fri, 28 Feb 2020 13:28:42 +0000
Received: by mail-wr1-x444.google.com with SMTP id j16so2969838wrt.3;
 Fri, 28 Feb 2020 05:28:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=NrHT7T88RoyQjD1urqyZZ0aRh9a3eutzKOCuX5K1yeY=;
 b=j6znWTYLAzRRvkNdjZ9zjIGXFuDM7tFBO5sd5AZONq1ZAuvPhGMFHHQOAoP61wNFNI
 mNHtRD/kP22UvMXlJ5U3VoD1aUGzx6sA9covL0XoeczLGAAjioSJiDDNcQC4NskJXa6q
 0EFE3AyjZ/CkTqKnG23nCGcNxYr4hN0h+3Z6ZnqPkULjB6NGlS0UIKjC1FZm8taT0yTZ
 qEhmjFrXYy3BYHOU3YFz9EzKp63awNX/eiyDNLZcfi3ZZVdeM5B6PwIZzbFriEQPT8zv
 ZIgCDKgj2COpOcdpjZ8iZDxOlFRZNROL9pmbfA8xT5yHobnGvQ0uIRxTTMHafZufC2m5
 +tow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NrHT7T88RoyQjD1urqyZZ0aRh9a3eutzKOCuX5K1yeY=;
 b=pG9/d/2ThSFrpXnQZhAN4tIfSNZ4G1QYRJBJ6FCkZJhWw9qedoi7tLPRSDsWCX3h2R
 IFG0o3YE1xtoDtv77BtWGAuks0pRaeE4Q5CpBNXOKLROP4XOXX/Ar4gE23rRkfLl6LUv
 GMgme4/D4GVozKxzA5DCNbe1gqen+hoEMq8g2NUJ9nDOmgcH+Nan0lRTedUcrNbkpYzk
 TSDb3ghTABB4AsUTL/hfT0xr80I9LQcPqbgokn5wLCgZqZtve98ttiKudbLJiUJLw+RM
 /C3SvgQhfh6SxQXIkEvH2Av/v7vuK4jaREOXySz5C8YbW28OZqNOvADT05IlRUrz3z/+
 +yVg==
X-Gm-Message-State: APjAAAUqayeTV6/crJkLJh4h8n74FCtWd1aChx7UhILha8OhA7ThOCE9
 2ftGS9VGPvkC7+Gg1G5RRVXmnjO0
X-Google-Smtp-Source: APXvYqzcazyu+zLUhQgdULQfW0b/6JUEwzdAx/yhhMPyZiEnDR8uFexywppZaicqNefTUid2wvto4g==
X-Received: by 2002:a5d:5609:: with SMTP id l9mr4697197wrv.48.1582896518952;
 Fri, 28 Feb 2020 05:28:38 -0800 (PST)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q9sm12906735wrx.18.2020.02.28.05.28.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 28 Feb 2020 05:28:38 -0800 (PST)
Subject: Re: [PATCH 3/4] dt-bindings: arm: fix Rockchip rk3399-evb bindings
To: Robin Murphy <robin.murphy@arm.com>, heiko@sntech.de
References: <20200228061436.13506-1-jbx6244@gmail.com>
 <20200228061436.13506-3-jbx6244@gmail.com>
 <78b8b53f-2e2a-3804-41fb-bb2610947ca2@arm.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <229c3511-d99d-8bac-6241-0088c5fc13ef@gmail.com>
Date: Fri, 28 Feb 2020 14:28:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <78b8b53f-2e2a-3804-41fb-bb2610947ca2@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_052840_825143_5379F070 
X-CRM114-Status: GOOD (  20.29  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iaW4sCgpXaGVuIEkgbG9vayBhdCB0aGUgcmV2aWV3IHByb2Nlc3Mgb2YgcmszMzk5LWV2
Yi5kdHMKaXQgaXMgbWVudGlvbmVkIGhlcmU6CgpodHRwczovL2xvcmUua2VybmVsLm9yZy9wYXRj
aHdvcmsvcGF0Y2gvNjcyMzI3LwoKPj4gKwltb2RlbCA9ICJSb2NrY2hpcCBSSzMzOTkgRXZhbHVh
dGlvbiBCb2FyZCI7Cj4+ICsJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzOTktZXZiIiwgInJv
Y2tjaGlwLHJrMzM5OSIsCj4+ICsJCSAgICAgImdvb2dsZSxyazMzOTlldmItcmV2MiIsIGdvb2ds
ZSxyazMzOTlldmItcmV2MSIsCj4+ICsJCSAgICAgImdvb2dsZSxyazMzOTlldmItcmV2MCIgOwo+
IAo+IGNhbiB5b3UgY2hlY2sgYWdhaW5zdCB3aGljaCBjb21wYXRpYmxlcyB0aGF0IGNvcmVib290
IHJlYWxseSBtYXRjaGVzPwo+IAo+IEFzIHdlIHNhaWQgdGhhdCB0aGUgZXZiIGNoYW5nZWQgYmV0
d2VlbiByZXYxIGFuZCByZXYyLCBJIHdvdWxkIGV4cGVjdCB0aGUgCj4gY29tcGF0aWJsZSB0byBi
ZSBzb21ldGhpbmcgbGlrZQo+IAo+IAljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzM5OS1ldmIi
LCAgImdvb2dsZSxyazMzOTlldmItcmV2MiIsIAo+IAkJCSJyb2NrY2hpcCxyazMzOTkiOwo+IAo+
IGxlYXZpbmcgb3V0IHRoZSByZXYxIGFuZCByZXYwCgpUaGUgY29uc2Vuc3VzIGluIHZlcnNpb24g
NCBlbmRzIGluIHdoYXQgaXMgc2hvd24gaW4gdGhlIGR0cyBmaWxlLCBzbyBJCmNoYW5nZWQgaXQg
aW4gcm9ja2NoaXAueWFtbC4gVGhpbmdzIGZyb20gdGhlIHBhc3QgbWF5YmUgY2FuIGJldHRlciBi
ZQpleHBsYWluZWQgYnkgSGVpa28uIFBsZWFzZSBhZHZpc2UgaWYgdGhpcyBwYXRjaCBuZWVkcyB0
byBjaGFuZ2UgYW5kIGluCndoYXQgZmlsZS4KCktpbmQgcmVnYXJkcywKCkpvaGFuCgoKT24gMi8y
OC8yMCAxOjQyIFBNLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4gT24gMjgvMDIvMjAyMCA2OjE0IGFt
LCBKb2hhbiBKb25rZXIgd3JvdGU6Cj4+IEEgdGVzdCB3aXRoIHRoZSBjb21tYW5kIGJlbG93IGdp
dmVzIHRoaXMgZXJyb3I6Cj4+Cj4+IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5
LWV2Yi5kdC55YW1sOiAvOiBjb21wYXRpYmxlOgo+PiBbJ3JvY2tjaGlwLHJrMzM5OS1ldmInLCAn
cm9ja2NoaXAscmszMzk5JywgJ2dvb2dsZSxyazMzOTlldmItcmV2MiddCj4+IGlzIG5vdCB2YWxp
ZCB1bmRlciBhbnkgb2YgdGhlIGdpdmVuIHNjaGVtYXMKPj4KPj4gRml4IHRoaXMgZXJyb3IgYnkg
YWRkaW5nICdnb29nbGUscmszMzk5ZXZiLXJldjInIHRvIHRoZSBjb21wYXRpYmxlCj4+IHByb3Bl
cnR5IGluIHJvY2tjaGlwLnlhbWwKPj4KPj4gbWFrZSBBUkNIPWFybTY0IGR0YnNfY2hlY2sKPj4g
RFRfU0NIRU1BX0ZJTEVTPURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9j
a2NoaXAueWFtbAo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBKb2hhbiBKb25rZXIgPGpieDYyNDRAZ21h
aWwuY29tPgo+PiAtLS0KPj4gwqAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Fy
bS9yb2NrY2hpcC55YW1sIHwgMSArCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KQo+Pgo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Fy
bS9yb2NrY2hpcC55YW1sCj4+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Fy
bS9yb2NrY2hpcC55YW1sCj4+IGluZGV4IGQzMDM3OTBmNS4uNmM2ZTgyNzNlIDEwMDY0NAo+PiAt
LS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwK
Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55
YW1sCj4+IEBAIC01MDksNiArNTA5LDcgQEAgcHJvcGVydGllczoKPj4gwqDCoMKgwqDCoMKgwqDC
oMKgIGl0ZW1zOgo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IHJvY2tjaGlwLHJr
MzM5OS1ldmIKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiByb2NrY2hpcCxyazMz
OTkKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiBnb29nbGUscmszMzk5ZXZiLXJldjIK
PiAKPiBUaGlzIGxvb2tzIHdyb25nIC0gdGhlIGJvYXJkIGNhbid0IHJlYXNvbmFibHkgYmUgYSAq
bW9yZSogZ2VuZXJhbCBtYXRjaAo+IHRoYW4gdGhlIFNvQy4gSWYgdGhpcyBpcyBzdXBwb3NlZCB0
byByZXByZXNlbnQgYSBzcGVjaWZpYyB2YXJpYW50IG9mIHRoZQo+IGJhc2ljIEVWQiBkZXNpZ24g
dGhlbiBpdCBzaG91bGQgY29tZSBiZWZvcmUgInJvY2tjaGlwLHJrMzM5OS1ldmIiIChhbmQKPiBw
b3NzaWJseSBiZSBvcHRpb25hbCBpZiBvdGhlciB2YXJpYW50cyBhbHNvIGV4aXN0KS4KPiAKPiBS
b2Jpbi4KPiAKPj4gwqAgwqDCoMKgwqDCoMKgwqAgLSBkZXNjcmlwdGlvbjogUm9ja2NoaXAgUksz
Mzk5IFNhcHBoaXJlIHN0YW5kYWxvbmUKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGl0ZW1zOgo+PgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
