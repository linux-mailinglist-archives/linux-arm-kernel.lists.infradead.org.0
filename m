Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 864A514A1FF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 11:32:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZcV2DXNPSEz5gSNW6VDSuBrI7HvLXOPTm+0Ued/aV6A=; b=gEgGPtFimRvWFn
	6pGSi4YBzoKHu1m8vJqtRFPFhmxI0uAVFqhC2d3L2oWEnIK84IaKBmPY9iDCrd+jukyDXA3UtZVZI
	Pbg0I4Q4B76DsLcmqluJqvLSWgiKitLTXl6LvvN8pVpf7Z4ZCsvaUeU8QofzQeHgV/GVUL1ULn/ze
	VR7sWlyvXsDxgBL1GfPXRCws3yuQCn4d9fmuzfKOmuwBbgspnbSQyYc3ATqamP/pJRwjBgwkboZBX
	eHmd+1cll9G1YB7yUawUZrRj9+8AYxTwZpxgnmJs6BnZKYvaETq5OvUk+jn43wdphEiwv8wbBXA9a
	LtCJOP+wbUt4ukOAd+sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw1gP-0000Ik-Lp; Mon, 27 Jan 2020 10:31:53 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw1gD-0000Gm-U6
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 10:31:44 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00RAVSlH043859;
 Mon, 27 Jan 2020 04:31:28 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1580121088;
 bh=3h8f4XbI491JsEjdTtwjglxtDcunKaSoHjicJCKo/ZU=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=bxObGFiN/208eM+ZN8Zk7SjwcV122LbY+xkUxj+XFtdvp3cJjmWG3w6uluPp5PV7r
 9BHr1Yd9byuu/qgSnfypN7VwX7UaM6th4kemgebDBhkeF2imXuABaJ78DaUv9YmxQn
 aXzDDdi+rsYNOKnG8Zd38RIjcS1rY1E2D/ZXCa0w=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00RAVSDY015973;
 Mon, 27 Jan 2020 04:31:28 -0600
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 27
 Jan 2020 04:31:27 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 27 Jan 2020 04:31:27 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00RAVOSB111634;
 Mon, 27 Jan 2020 04:31:25 -0600
Subject: Re: [PATCH] arm64: defconfig: Enable Texas Instruments UDMA driver
To: Olof Johansson <olof@lixom.net>
References: <20200124092359.12429-1-peter.ujfalusi@ti.com>
 <20200124200811.ytgs66cg5qpugi5c@localhost>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <12f40648-fec6-9179-1f62-0a648996ed20@ti.com>
Date: Mon, 27 Jan 2020 12:32:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200124200811.ytgs66cg5qpugi5c@localhost>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_023142_116075_29251A6A 
X-CRM114-Status: GOOD (  18.57  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alexandre.belloni@bootlin.com, arnd@arndb.de, soc@kernel.org,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org, t-kristo@ti.com,
 vkoul@kernel.org, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgT2xvZiwKCk9uIDI0LzAxLzIwMjAgMjIuMDgsIE9sb2YgSm9oYW5zc29uIHdyb3RlOgo+IE9u
IEZyaSwgSmFuIDI0LCAyMDIwIGF0IDExOjIzOjU5QU0gKzAyMDAsIFBldGVyIFVqZmFsdXNpIHdy
b3RlOgo+PiBUaGUgVURNQSBkcml2ZXIgaXMgdXNlZCBvbiBLMyBwbGF0Zm9ybXMgKGFtNjU0IGFu
ZCBqNzIxZSkuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFBldGVyIFVqZmFsdXNpIDxwZXRlci51amZh
bHVzaUB0aS5jb20+Cj4+IC0tLQo+PiBIaSwKPj4KPj4gVGhlIGRyaXZlcnMgZm9yIFVETUEgYXJl
IGFscmVhZHkgaW4gbGludS1uZXh0IGFuZCB0aGUgRFQgcGF0Y2hlcyBhcmUgZ29pbmcgdG8gYmUK
Pj4gYWxzbyBoZWFkaW5nIGZvciA1LjYuCj4+IFRoZSBvbmx5IG1pc3NpbmcgcGllY2UgaXMgdG8g
ZW5hYmxlIHRoZSBkcml2ZXJzIGluIGRlZmNvbmZpZyBzbyBjbGllbnRzIGNhbiB1c2UKPj4gdGhl
IERNQS4KPiAKPiBIaSBQZXRlciwKPiAKPiBXZSBub3JtYWxseSBsaWtlIHRvIHNlZSBuZXcgb3B0
aW9ucyB0dXJuZWQgb24gYWZ0ZXIgdGhlIGRyaXZlci9vcHRpb24gaGFzIGJlZW4KPiBtZXJnZWQs
IHNvIHNlbmQgdGhpcyBkdXJpbmcgb3IgcmlnaHQgYWZ0ZXIgdGhlIG1lcmdlIHdpbmRvdyB3aGVu
IHRoYXQgaGFwcGVucywKPiBwbGVhc2UuCgpTdXJlLCBJJ2xsIHBvc3QgaXQgbGF0ZXIuCgo+IEkg
YWxzbyBzZWUgdGhhdCB0aGlzIGlzIHN0YXRpY2FsbHkgZW5hYmxpbmcgdGhpcyBkcml2ZXIgLS0g
d2UgdHJ5IHRvIGtlZXAgYXMKPiBtYW55IGRyaXZlcnMgYXMgcG9zc2libGUgYXMgbW9kdWxlcyB0
byBhdm9pZCB0aGUgc3RhdGljIGtlcm5lbCBmcm9tIGdyb3dpbmcgdG9vCj4gbGFyZ2UuIFdvdWxk
IHRoYXQgYmUgYSBzdWl0YWJsZSBhcHByb2FjaCBoZXJlLCBvciBpcyB0aGUgZHJpdmVyIG5lZWRl
ZCB0byByZWFjaAo+IHJvb3RmcyBmb3IgZnVydGhlciBtb2R1bGUgbG9hZGluZz8KCldlIHdvdWxk
IG5lZWQgYnVpbHQgaW4gRE1BIGZvciBuZnMgcm9vdGZzLCBTRC9NTUMgaGFzIGl0J3Mgb3duIGJ1
aXQtaW4KQURNQS4gV2UgZG8gbm90IGhhdmUgbmV0d29yayBkcml2ZXJzIHVwc3RyZWFtIGFzIHRo
ZXkgZGVwZW5kIG9uIHRoZSBETUEuCgpJbWhvIG1vZHVsZSB3b3VsZCBiZSBmaW5lIGZvciB0aGUg
RE1BIHN0YWNrLCBidXQgbmVpdGhlciByaW5nYWNjIG9yIHRoZQpVRE1BIGRyaXZlciBjYW4gYmUg
YnVpbHQgYXMgbW9kdWxlIGF0bSB1bnRpbCB0aGUgZm9sbG93aW5nIHBhdGNoZXMgZ290Cm1lcmdl
ZDoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDIwMDEyMjEwNDcyMy4xNjk1NS0xLXBl
dGVyLnVqZmFsdXNpQHRpLmNvbS8KaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDIwMDEy
MjEwNDAzMS4xNTczMy0xLXBldGVyLnVqZmFsdXNpQHRpLmNvbS8KCkkgaGF2ZSB0aGUgcGF0Y2hl
cyB0byBhZGQgYmFjayBtb2R1bGUgc3VwcG9ydCwgYnV0IHdhaXRpbmcgb24gdGhlc2UKY3VycmVu
dGx5LgoKLSBQw6l0ZXIKClRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmth
dHUgMjIsIDAwMTgwIEhlbHNpbmtpLgpZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBL
b3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
