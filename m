Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D922DFBA4F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 22:02:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dEuOw95KOUkdxd+rTBwJZ/N3MV2WZZ0dJf+IBr7OogI=; b=pIstx1tIsq+Z/z
	0024Z9D+AEZiEWAYEsf4H4gzcIpu6R1BxuRfmmp+1RjmiyB92YfCDHkFKCAsJDBhajn1kRJCmMHnJ
	ZAkaSG8ILibuxCsvuFunb2Nd5/zvr7ekSe70/2C9WhObsFZNJEjeYR7OY8XLX7Ye4LYTJ0FILpa/j
	uTd/o43/FGmI5ArF6QpZZtEOHfMaRI7qkYFTv7Ju5+dJ1bt++u86AnPgOyx+xQPf7A8/ipoah4Kvv
	K4v6WHRg0F7e76siSkui46DZN5mkzbFGSXdr2EL/SeT01RoC+hzWCXRS1i3wUzTUh1Fy6LS5gqL54
	nRUW+UI1MVMM6h5y6wHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUzm7-000153-Ij; Wed, 13 Nov 2019 21:02:03 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUzlx-00014E-Mr; Wed, 13 Nov 2019 21:01:55 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 217D8B1B1;
 Wed, 13 Nov 2019 21:01:49 +0000 (UTC)
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: realtek: Document RTD1619 and
 Realtek Mjolnir EVB
To: James Tai <james.tai@realtek.com>
References: <d655415326064b079b9d1d791024c725@realtek.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <420ad4a0-a583-c3b9-5ce6-ff4d12e71511@suse.de>
Date: Wed, 13 Nov 2019 22:01:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <d655415326064b079b9d1d791024c725@realtek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_130153_891512_D52485BA 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, 'DTML' <devicetree@vger.kernel.org>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMTIuMTEuMTkgdW0gMTY6NDUgc2NocmllYiBKYW1lcyBUYWk6Cj4gRGVmaW5lIGNvbXBhdGli
bGUgc3RyaW5ncyBmb3IgUmVhbHRlayBSVEQxNjE5IFNvQyBhbmQgUmVhbHRlayBNam9sbmlyIEVW
Qi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKYW1lcyBUYWkgPGphbWVzLnRhaUByZWFsdGVrLmNvbT4K
PiAtLS0KClRoaXMgaXMgbWlzc2luZyB0aGUgcmVxdWVzdGVkIGNoYW5nZSBsb2cgaGVyZTogV2hh
dCBjaGFuZ2VkIHNpbmNlIHYyPwoKSWYgbm90aGluZyBjaGFuZ2VkLCB0aGVuIHlvdSBzaG91bGQn
dmUgaW5zZXJ0ZWQgbXkgUmV2aWV3ZWQtYnkgZnJvbSB2MgpiZWZvcmUgeW91ciBTaWduZWQtb2Zm
LWJ5LgoKUmVnYXJkcywKQW5kcmVhcwoKPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2FybS9yZWFsdGVrLnlhbWwgfCA2ICsrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNl
cnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9hcm0vcmVhbHRlay55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2FybS9yZWFsdGVrLnlhbWwKPiBpbmRleCBhYjU5ZGUxNzE1MmQuLjI0NDRlZmYyYzNkNSAxMDA2
NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JlYWx0ZWsu
eWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcmVhbHRl
ay55YW1sCj4gQEAgLTMzLDQgKzMzLDEwIEBAIHByb3BlcnRpZXM6Cj4gICAgICAgICAgICAtIGVu
dW06Cj4gICAgICAgICAgICAgICAgLSBzeW5vbG9neSxkczQxOCAjIFN5bm9sb2d5IERpc2tTdGF0
aW9uIERTNDE4Cj4gICAgICAgICAgICAtIGNvbnN0OiByZWFsdGVrLHJ0ZDEyOTYKPiArCj4gKyAg
ICAgICMgUlREMTYxOSBTb0MgYmFzZWQgYm9hcmRzCj4gKyAgICAgIC0gaXRlbXM6Cj4gKyAgICAg
ICAgICAtIGVudW06Cj4gKyAgICAgICAgICAgICAgLSByZWFsdGVrLG1qb2xuaXIgIyBSZWFsdGVr
IE1qb2xuaXIgRVZCCj4gKyAgICAgICAgICAtIGNvbnN0OiByZWFsdGVrLHJ0ZDE2MTkKPiAgLi4u
Cj4gCgoKLS0gClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSApNYXhmZWxkc3Ry
LiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlcgpIUkIg
MzY4MDkgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
