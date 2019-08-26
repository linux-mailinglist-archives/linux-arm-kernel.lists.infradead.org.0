Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F82E9C9F0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 09:11:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5+W7SPumFSYYo1mHRuflRB7Io6lrcuaElYakFT0EVFA=; b=GqBZAU2qPv+68L0lsHIpYtARL
	jYej+eTTYnw3vZbxKOf0lGDkBkfJWJJbfR/LkmasggeBhmnN2yAsIFi7hd2HWE0KESZ9plZwS0B5U
	jdXYqfg4WKpmQNHm08wdWjB48tTOtahmtKTwQ7nkmh0yuMnRdmD/Lz7XDTGuUtLEu9q76LFu2HJwk
	upAtGhlAmRDsCGtLiMJ8BVJKrx8qfRE4SCUASN7v6YBcyIAyzoKKpLSh7V8u2R9+2pTdzBFi2zpOZ
	Ir0dlMFreZmupu7gdQICwUmF9FxXaQr8qm3rqebRtSurIv/4UgjO9c6K5guV/VWTWUQHIw1cwYzpd
	NJiAfwyDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i299f-0004Hy-H0; Mon, 26 Aug 2019 07:11:07 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i299R-0004GV-7M; Mon, 26 Aug 2019 07:10:55 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id E15F95FB9C;
 Mon, 26 Aug 2019 09:10:48 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="pmf2jINY"; 
 dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id 932C11D9D97F;
 Mon, 26 Aug 2019 09:10:48 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 932C11D9D97F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1566803448;
 bh=nldrHn+KAKeYnid1IIOCpT7MYz4xEwc91l3x6SgF+6E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pmf2jINYRJh9VPHOycLU+JkTVk84l9+SH0R5yT6L0GCIN5y13UkDQg8XU5gh7Z1rs
 a2fkMFSj33k6ov18h8wdC5FrcfKK2j+ZWMjHHlZTozWHTIVR+BQ638D3ZvN+DDzMo7
 hNba0C6plwDPWYmE473SdQ+YZZZdvpgixDMwIu8+sTrpadfo9e0gT0FSQhmMBvp+Ve
 Jv31tM4W27rQCcb6WjWVaTqDQUXI9Nea5lUy5q1X/J+QZL7pAfzQssZB0BvdlGukbI
 cdeNqWwE85V+YQAye2auaD937iGkIVCk0ssYmgk/6P3QTSczN7Q8v8VXgg/l4yTgno
 Zg2O3LDULsLIg==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Mon, 26 Aug 2019 07:10:48 +0000
Date: Mon, 26 Aug 2019 07:10:48 +0000
Message-ID: <20190826071048.Horde.gwS9nzceYYiYGJLnJ6-x2hz@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: Mao Wenan <maowenan@huawei.com>, sr@denx.de
Subject: Re: [PATCH v2 -next] net: mediatek: remove set but not used
 variable 'status'
References: <20190824.142158.1506174328495468705.davem@davemloft.net>
 <20190826013118.22720-1-maowenan@huawei.com>
In-Reply-To: <20190826013118.22720-1-maowenan@huawei.com>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_001053_832638_B03FA01B 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: nbd@openwrt.org, nelson.chang@mediatek.com, netdev@vger.kernel.org,
 sean.wang@mediatek.com, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 john@phrozen.org, matthias.bgg@gmail.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGV0J3MgYWRkIFN0ZWZhbiB0byB0aGUgY29udmVyc2F0aW9uLgpIZSBpcyB0aGUgYXV0aG9yIG9m
IHRoaXMgY29tbWl0LgoKUXVvdGluZyBNYW8gV2VuYW4gPG1hb3dlbmFuQGh1YXdlaS5jb20+OgoK
PiBGaXhlcyBnY2MgJy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGUnIHdhcm5pbmc6Cj4gZHJpdmVy
cy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9zb2MuYzogSW4gZnVuY3Rpb24gbXRrX2hh
bmRsZV9pcnE6Cj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9zb2MuYzox
OTUxOjY6IHdhcm5pbmc6ICAKPiB2YXJpYWJsZSBzdGF0dXMgc2V0IGJ1dCBub3QgdXNlZCBbLVd1
bnVzZWQtYnV0LXNldC12YXJpYWJsZV0KPgo+IEZpeGVzOiAyOTZjOTEyMDc1MmIgKCJuZXQ6IGV0
aGVybmV0OiBtZWRpYXRlazogQWRkIE1UNzYyOC84OCBTb0Mgc3VwcG9ydCIpCj4gU2lnbmVkLW9m
Zi1ieTogTWFvIFdlbmFuIDxtYW93ZW5hbkBodWF3ZWkuY29tPgo+IC0tLQo+ICB2MjogY2hhbmdl
IGZvcm1hdCBvZiAnRml4ZXMnIHRhZy4KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsv
bXRrX2V0aF9zb2MuYyB8IDIgLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgZGVsZXRpb25zKC0pCj4K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9zb2Mu
YyAgCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5jCj4gaW5k
ZXggOGRkYmI4ZC4uYmI3ZDYyMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9t
ZWRpYXRlay9tdGtfZXRoX3NvYy5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0
ZWsvbXRrX2V0aF9zb2MuYwo+IEBAIC0xOTQ4LDkgKzE5NDgsNyBAQCBzdGF0aWMgaXJxcmV0dXJu
X3QgbXRrX2hhbmRsZV9pcnFfdHgoaW50IGlycSwgIAo+IHZvaWQgKl9ldGgpCj4gIHN0YXRpYyBp
cnFyZXR1cm5fdCBtdGtfaGFuZGxlX2lycShpbnQgaXJxLCB2b2lkICpfZXRoKQo+ICB7Cj4gIAlz
dHJ1Y3QgbXRrX2V0aCAqZXRoID0gX2V0aDsKPiAtCXUzMiBzdGF0dXM7Cj4KPiAtCXN0YXR1cyA9
IG10a19yMzIoZXRoLCBNVEtfUERNQV9JTlRfU1RBVFVTKTsKCkhpIFN0ZWZhbiwKCllvdSBhZGRl
ZCBhbiBleHRyYSBNVEtfUERNQV9JTlRfU1RBVFVTIHJlYWQgaW4gbXRrX2hhbmRsZV9pcnEoKQpJ
cyB0aGF0IHJlYWQgbmVjZXNzYXJ5IHRvIHdvcmsgcHJvcGVybHk/CgpHcmVhdHMsCgpSZW7DqQoK
Cj4gIAlpZiAobXRrX3IzMihldGgsIE1US19QRE1BX0lOVF9NQVNLKSAmIE1US19SWF9ET05FX0lO
VCkgewo+ICAJCWlmIChtdGtfcjMyKGV0aCwgTVRLX1BETUFfSU5UX1NUQVRVUykgJiBNVEtfUlhf
RE9ORV9JTlQpCj4gIAkJCW10a19oYW5kbGVfaXJxX3J4KGlycSwgX2V0aCk7Cj4gLS0KPiAyLjcu
NAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
