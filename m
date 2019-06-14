Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8EDE4655E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 19:07:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aDDXykQIlocbSOpbtNV7Svj4n+9Q0kzqXHm4U/x2gMM=; b=HywKN8UiuwCgqi
	eYqp5el+G32tCrVfjYOYU/JiGyEkHUObwX8DoBc8/63AIh/Nc8wmEKDWY2uu5omknlWPRWhkctL/i
	XlaeQ/JVYfSXkz79mQmF7AiaVE2SgfCfQMUmOS02EwSHnv9716H8pQ/ioSPqwZcJ0K5alNIPqu4EK
	EB4eEFzGmv9eS3ic/NpVdB/p4x+/IqY1SjoHOgefuSWKTBM5qltAPz8pLEfb30QVftsQncZXxIoy1
	8KIL5PihuhkUWsGGVb52tAvK6xWyEImpAtvs6idug9rvIAhYYoR0l5wtkhYxnT+G2MswDbx8xIY4/
	w1c7LEj2UiwmZSNhE6LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbpgD-0004hy-2a; Fri, 14 Jun 2019 17:07:57 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbpg4-0004gf-K4
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 17:07:50 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 28740AF10;
 Fri, 14 Jun 2019 17:07:45 +0000 (UTC)
Subject: Re: [PATCH v3] dt-bindings: arm: Convert Actions Semi bindings to
 jsonschema
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Rob Herring <robh@kernel.org>
References: <20190517153223.7650-1-robh@kernel.org>
 <20190613224435.GA32572@bogus> <20190614170450.GA29654@Mani-XPS-13-9360>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Openpgp: preference=signencrypt
Organization: SUSE Linux GmbH
Message-ID: <5946467c-7674-de2b-a657-627cf3be42df@suse.de>
Date: Fri, 14 Jun 2019 19:07:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190614170450.GA29654@Mani-XPS-13-9360>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_100748_805396_9884BFDA 
X-CRM114-Status: GOOD (  16.83  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMTQuMDYuMTkgdW0gMTk6MDQgc2NocmllYiBNYW5pdmFubmFuIFNhZGhhc2l2YW06Cj4gT24g
VGh1LCBKdW4gMTMsIDIwMTkgYXQgMDQ6NDQ6MzVQTSAtMDYwMCwgUm9iIEhlcnJpbmcgd3JvdGU6
Cj4+IE9uIEZyaSwgTWF5IDE3LCAyMDE5IGF0IDEwOjMyOjIzQU0gLTA1MDAsIFJvYiBIZXJyaW5n
IHdyb3RlOgo+Pj4gQ29udmVydCBBY3Rpb25zIFNlbWkgU29DIGJpbmRpbmdzIHRvIERUIHNjaGVt
YSBmb3JtYXQgdXNpbmcganNvbi1zY2hlbWEuCj4+Pgo+Pj4gQ2M6ICJBbmRyZWFzIEbDpHJiZXIi
IDxhZmFlcmJlckBzdXNlLmRlPgo+Pj4gQ2M6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZh
bm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+Cj4+PiBDYzogTWFyayBSdXRsYW5kIDxtYXJrLnJ1
dGxhbmRAYXJtLmNvbT4KPj4+IENjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKPj4+IENjOiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZwo+Pj4gU2lnbmVkLW9mZi1ieTog
Um9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KPj4+IC0tLQo+Pj4gdjM6Cj4+PiAtIHVwZGF0
ZSBNQUlOVEFJTkVSUwo+Pj4KPj4+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vYWN0aW9u
cy50eHQgICAgICAgfCA1NiAtLS0tLS0tLS0tLS0tLS0tLS0tCj4+PiAgLi4uL2RldmljZXRyZWUv
YmluZGluZ3MvYXJtL2FjdGlvbnMueWFtbCAgICAgIHwgMzggKysrKysrKysrKysrKwo+Pj4gIE1B
SU5UQUlORVJTICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAyICstCj4+PiAg
MyBmaWxlcyBjaGFuZ2VkLCAzOSBpbnNlcnRpb25zKCspLCA1NyBkZWxldGlvbnMoLSkKPj4+ICBk
ZWxldGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9h
Y3Rpb25zLnR4dAo+Pj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvYXJtL2FjdGlvbnMueWFtbAo+Pgo+PiBQaW5nLiBQbGVhc2UgYXBwbHkgb3Ig
bW9kaWZ5IHRoaXMgaG93IHlvdSdkIHByZWZlci4gSSdtIG5vdCBnb2luZyB0byAKPj4ga2VlcCBy
ZXNwaW5uaW5nIHRoaXMuCj4+Cj4gCj4gU29ycnkgZm9yIHRoYXQgUm9iLgoKV2VsbCwgaXQgd2Fz
IHNpbXBseSBub3QgY2xlYXIgd2hldGhlciB3ZSB3ZXJlIHN1cHBvc2VkIHRvIG9yIG5vdC4gOikK
Cj4gQW5kcmVhcywgYXJlIHlvdSBnb2luZyB0byB0YWtlIHRoaXMgcGF0Y2g/IEVsc2UgSSdsbCBw
aWNrIGl0IHVwIChJZiB5b3UKPiB3YW50IG1lIHRvIGRvIHRoZSBQUiBmb3IgbmV4dCBjeWNsZSkK
CkkgaGFkIGNoZWNrZWQgdGhhdCBhbGwgcHJldmlvdXMgY2hhbmdlcyB0byB0aGUgLnR4dCBmaWxl
IHdlcmUgYnkgbXlzZWxmLApzbyBJIHdvdWxkIHByZWZlciBpZiB3ZSBub3QgbGljZW5zZSBpdCB1
bmRlciBHUEx2Mi1vbmx5IGJ1dCB1bmRlciB0aGUKc2FtZSBkdWFsLWxpY2Vuc2UgKE1JVC9HUEx2
MispIGFzIHRoZSBEVHMuIFRoYXQgbW9kaWZpY2F0aW9uIHdvdWxkIG5lZWQKUm9iJ3MgYXBwcm92
YWwgdGhlbi4KClJlZ2FyZHMsCkFuZHJlYXMKCi0tIApTVVNFIExpbnV4IEdtYkgsIE1heGZlbGRz
dHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2VybWFueQpHRjogRmVsaXggSW1lbmTDtnJmZmVyLCBN
YXJ5IEhpZ2dpbnMsIFNyaSBSYXNpYWgKSFJCIDIxMjg0IChBRyBOw7xybmJlcmcpCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
