Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F38361FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 19:01:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J9X3wphLSM/K8Gd6XObitvaEpJJVB5LKtAS50R5SxUE=; b=ldL9BmK3ncLWVm
	sJpsGD4UcycBhAjfurVj6bBQJdhTOk270Z940Qu5gsOKzZrWzFXDxORO12S0kES6VgsfpvxCbM5xE
	I/ahwm8+qfxKrQ+X8PefCP1dQysEhUhJhwwoUWdvuyBQmjpj5JbZXe2yuNU6L80eZBLFRfyhLXGUS
	vf45UF1GwHtTFcDmdlUDna9rnHI5ifJxOkSUZVxojAEmUD9YxzMA029oJtfW+7hUh+UfwBFr4HpN4
	Lc3OKZYn4xBIqLzooiVnm8MNWN7+EO0b64u2V1fIwFiaYn++XUSTONJ8j//d4aG78BrM3CPAp8kRp
	dniW1mT54sbJS1jUq4ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYZI1-0003x9-4p; Wed, 05 Jun 2019 17:01:29 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYZHu-0003wh-PW
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 17:01:24 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x55H1MeS005829;
 Wed, 5 Jun 2019 12:01:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559754082;
 bh=8sdv9OMwCo1DjNPKoB6XMbjUo3Wy5dATHmE6s5+hYes=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=h6tKOVmLufk7aN/lQPgEB1edmZ+dYwOejzRGPm0sIqyNLbNK4aTuFf1DJoZDbPUVw
 Yx2j3Ink/8jeAGEXlRuD/H8RzS1Cj8YdBz541BJAQivYiFZLA1EwdAwcJkOesLc+fQ
 tRug/Z15TpgHL7jNFVebqAWmtZkET62vBL3yzdYE=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x55H1Ml7127413
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 5 Jun 2019 12:01:22 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 5 Jun
 2019 12:01:21 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 5 Jun 2019 12:01:21 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x55H1L8Z083065;
 Wed, 5 Jun 2019 12:01:21 -0500
Subject: Re: [PATCH 0/4] Add MCU SRAM nodes for TI K3 SoCs
To: "Andrew F. Davis" <afd@ti.com>, Tero Kristo <t-kristo@ti.com>, Nishanth
 Menon <nm@ti.com>
References: <20190605163434.23173-1-s-anna@ti.com>
 <acf9cf30-bcd6-76a0-5498-c334c7c43213@ti.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <37a5bf73-2f93-8474-bca1-2e9fae4d6668@ti.com>
Date: Wed, 5 Jun 2019 12:01:21 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <acf9cf30-bcd6-76a0-5498-c334c7c43213@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_100122_913025_F7C96EE1 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNi81LzE5IDExOjUzIEFNLCBBbmRyZXcgRi4gRGF2aXMgd3JvdGU6Cj4gT24gNi81LzE5IDEy
OjM0IFBNLCBTdW1hbiBBbm5hIHdyb3RlOgo+PiBIaSBUZXJvLAo+Pgo+PiBUaGUgZm9sbG93aW5n
IHNlcmllcyBhZGRzIHRoZSBEVCBub2RlcyBmb3IgdGhlIE1DVSBTUkFNIHByZXNlbnQgd2l0aGlu
Cj4+IHRoZSBNQ1UgZG9tYWluIGZvciBib3RoIEFNNjV4IGFuZCBKNzIxRSBTb0NzLiBUaGUgZmly
c3QgMiBwYXRjaGVzIGVuYWJsZQo+PiB0aGUgTUNVIFNSQU0gbm9kZSB0byBiZSBwcm9iZWQgcHJv
cGVybHkgb24gQU02NXggU29DcywgYW5kIHRoZSB0aGlyZAo+PiBwYXRjaCB0aGUgZXF1aXZhbGVu
dCBmb3IgSjcyMUUgU29Dcy4gVGhlIHRoaXJkIHBhdGNoIGRlcGVuZHMgb24gdGhlCj4+IGJhc2Ug
SjcyMUUgc3VwcG9ydCBwYXRjaCBzZXJpZXMgZnJvbSBOaXNoYW50aCBbMV0uCj4+Cj4+IFRoZSBs
YXN0IHBhdGNoIGlzIG5vdCByZWxhdGVkIHRvIE1DVSBTUkFNLCBidXQgYWRkcyB0aGUgcmFuZ2Vz
IGZvciB0aGUKPj4gUjVGIGNsdXN0ZXIgdGhhdCBpcyBhbHNvIHByZXNlbnQgaW4gdGhlIE1DVSBk
b21haW4gaW4gcHJlcGFyYXRpb24gZm9yCj4+IHRoZSBSNUYgbm9kZXMuCj4+Cj4gCj4gV2h5IG5v
dCBoYXZlIHRoaXMgbGFzdCBwYXRjaCBhcyBwYXJ0IG9mIHRoZSBzZXJpZXMgYWRkaW5nIHRoZSBS
NUYgbm9kZXM/CgpUaGUgcGF0Y2ggY2FuIGJlIGFwcGxpZWQgaW5kZXBlbmRlbnRseSBhcyBpcywg
bm8gcmVhc29uIHRvIHdhaXQgdW50aWwgSQpwb3N0IHRob3NlLgoKcmVnYXJkcwpTdW1hbgoKPiAK
PiBBbmRyZXcKPiAKPj4gcmVnYXJkcwo+PiBTdW1hbgo+Pgo+PiBbMV0KPj4gaHR0cHM6Ly9wYXRj
aHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LWFybS1rZXJuZWwvbGlzdC8/c2VyaWVzPTEy
MTE4OQo+Pgo+PiBTdW1hbiBBbm5hICg0KToKPj4gwqDCoCBhcm02NDogZHRzOiB0aTogazMtYW02
NTogQWRkIE1DVSBTUkFNIHJhbmdlcyBpbiBpbnRlcmNvbm5lY3Qgbm9kZXMKPj4gwqDCoCBhcm02
NDogZHRzOiB0aTogazMtYW02NS1tY3U6IEFkZCB0aGUgTUNVIFJBTSBub2RlCj4+IMKgwqAgYXJt
NjQ6IGR0czogdGk6IGszLWo3MjFlOiBBZGQgdGhlIE1DVSBTUkFNIG5vZGUKPj4gwqDCoCBhcm02
NDogZHRzOiB0aTogazMtYW02NTogQWRkIFI1RiByYW5nZXMgaW4gaW50ZXJjb25uZWN0IG5vZGVz
Cj4+Cj4+IMKgIGFyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtYW02NS1tY3UuZHRzacKgwqDCoMKg
wqDCoMKgwqAgfCA4ICsrKysrKysrCj4+IMKgIGFyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtYW02
NS5kdHNpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgNiArKysrKysKPj4gwqAgYXJjaC9hcm02
NC9ib290L2R0cy90aS9rMy1qNzIxZS1tY3Utd2FrZXVwLmR0c2kgfCA4ICsrKysrKysrCj4+IMKg
IDMgZmlsZXMgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKQo+PgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
