Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C195113D15
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 09:34:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qz6m2ev5BOtM9RNPUEyRUj8QlW/64VKmOjaf+8VDe2Y=; b=LcPczuWTQSRjaU
	KXteQlQj/2BYfPlyD/3BZMzVzwMFnyXf3WJKiS/pqcTQth8jWoVjARTwP79hWR5gpWuQFR4CNxbsa
	eTz87o9KkWxC8KXMy7xY7+cuJ271GycJFaeAh9NJrlVXHaQW3t0/x1xk7iD0M5ljbwgzRe1oX3emo
	vh4F3p/A8BQ6ivb3Emr+I9Ynmfo34MXEKNStTV3iimCvok1jkM7P7ufkxe4iofG2fuedE61AHIVuQ
	OmskYb9CPoRgPAJ0au8x+V3s7I6dGS+LXXYe7rJZDt2PlRWi2rks1kkl02qjw1xL99oxkMm1kyLC4
	O66F50+hihB5AAw6hE0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icmaL-0000sz-Tw; Thu, 05 Dec 2019 08:34:05 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icmaC-0000ry-9u; Thu, 05 Dec 2019 08:33:58 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id C314AACA5;
 Thu,  5 Dec 2019 08:33:54 +0000 (UTC)
Subject: Re: [PATCH 1/2] dt-bindings: arm: realtek: Document RTD1319 and
 Realtek PymParticle EVB
To: James Tai <james.tai@realtek.com>
References: <20191205082555.22633-1-james.tai@realtek.com>
 <20191205082555.22633-2-james.tai@realtek.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <ca3edb07-b2d4-7305-9a34-c4d55f30d778@suse.de>
Date: Thu, 5 Dec 2019 09:33:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191205082555.22633-2-james.tai@realtek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_003357_571304_1AD18917 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXMsCgpBbSAwNS4xMi4xOSB1bSAwOToyNSBzY2hyaWViIEphbWVzIFRhaToKPiBEZWZp
bmUgY29tcGF0aWJsZSBzdHJpbmdzIGZvciBSZWFsdGVrIFJURDEzMTkgU29DIGFuZCBSZWFsdGVr
IFB5bVBhcnRpY2xlCj4gRVZCLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEphbWVzIFRhaSA8amFtZXMu
dGFpQHJlYWx0ZWsuY29tPgo+IC0tLQo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvYXJtL3JlYWx0ZWsueWFtbCB8IDYgKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2Vy
dGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2FybS9yZWFsdGVrLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
YXJtL3JlYWx0ZWsueWFtbAo+IGluZGV4IDI0NDRlZmYyYzNkNS4uZjAxOGQ2ODNhNTQ0IDEwMDY0
NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcmVhbHRlay55
YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yZWFsdGVr
LnlhbWwKPiBAQCAtMzksNCArMzksMTAgQEAgcHJvcGVydGllczoKPiAgICAgICAgICAgIC0gZW51
bToKPiAgICAgICAgICAgICAgICAtIHJlYWx0ZWssbWpvbG5pciAjIFJlYWx0ZWsgTWpvbG5pciBF
VkIKPiAgICAgICAgICAgIC0gY29uc3Q6IHJlYWx0ZWsscnRkMTYxOQo+ICsKPiArICAgICAjIFJU
RDEzMTkgU29DIGJhc2VkIGJvYXJkcwo+ICsgICAgIC0gaXRlbXM6Cj4gKyAgICAgICAgICAtIGVu
dW06Cj4gKyAgICAgICAgICAgICAgLSByZWFsdGVrLHB5bXBhcnRpY2xlICMgUmVhbHRlayBQeW1Q
YXJ0aWNsZSBFVkIKPiArICAgICAgICAgIC0gY29uc3Q6IHJlYWx0ZWsscnRkMTMxOQo+ICAuLi4K
CkkgdGhpbmsgaXQgd291bGQgYmUgYmV0dGVyIHRvIG9yZGVyIHRoaXMgYWxwaGFiZXRpY2FsbHkg
YmVmb3JlIFJURDEzOTUuCgpPdGhlcndpc2UgbG9va2luZyBnb29kLgoKVGhhbmtzLApBbmRyZWFz
CgotLSAKU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJICk1heGZlbGRzdHIuIDUs
IDkwNDA5IE7DvHJuYmVyZywgR2VybWFueQpHRjogRmVsaXggSW1lbmTDtnJmZmVyCkhSQiAzNjgw
OSAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
