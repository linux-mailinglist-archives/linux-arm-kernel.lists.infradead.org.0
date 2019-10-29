Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB82E7F44
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 05:39:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p/n6+xVkTsII1jiqEil2Gc4lK1oWmIPu1s1N8Gdh40A=; b=uotzdMMSgDSYgV
	1AIb9gZblJHfMHaHSNBhyVaumilYmJzzY434RdCDG4zfxtuIEfu+fltx/oZ1gavAQh6I86ugraCV0
	Jd4QL46pBpTAHf6pnfzserN80NKVSml4ri1fXlFlKX7iNJkVcei9Q0PkWOFGqacZvQlRdu0GOKdQU
	1Y5a5yZXm61L5hiceIsPGcNWsxb/Sb/zBljBq2kk1y09/HA4N8VNLFVyHKsT58/k/AhqJmAvcVRJ+
	GobP7SR/r+pECibItd3EKzjDzFJzyDQanltR0mAulXYnPIIIyvnXp7X2k1oyxf/fqDCbh5y+tWcPq
	CXm9fGYYsG3hSUhxBMxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPJIC-0008Dk-VQ; Tue, 29 Oct 2019 04:39:40 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPJHx-0008DG-Gl; Tue, 29 Oct 2019 04:39:27 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 41769AD14;
 Tue, 29 Oct 2019 04:39:24 +0000 (UTC)
Subject: Re: [PATCH v2 5/8] arm64: dts: realtek: Change dual-license from MIT
 to BSD
To: Rob Herring <robh@kernel.org>
References: <20191020040817.16882-1-afaerber@suse.de>
 <20191020040817.16882-6-afaerber@suse.de>
 <CAL_Jsq+OhiZZ4Ei3wg4s-1z+WsqQSvvRMNrK37Yq+1XR3-3_uA@mail.gmail.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <66c69519-6717-8c2e-dc92-05448535c181@suse.de>
Date: Tue, 29 Oct 2019 05:39:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <CAL_Jsq+OhiZZ4Ei3wg4s-1z+WsqQSvvRMNrK37Yq+1XR3-3_uA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_213925_702379_209E2E9B 
X-CRM114-Status: GOOD (  14.69  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 LAKML <linux-arm-kernel@lists.infradead.org>,
 linux-realtek-soc@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjUuMTAuMTkgdW0gMjI6NTIgc2NocmllYiBSb2IgSGVycmluZzoKPiBPbiBTYXQsIE9jdCAx
OSwgMjAxOSBhdCAxMTowOCBQTSBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+IHdy
b3RlOgo+Pgo+PiBNb3ZlIHRoZSBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0byB0aGUgdG9wIGxp
bmUgYW5kIHVwZGF0ZSB0byBTUERYIDIuMC4KPj4gV2hpbGUgYXQgaXQsIHN3aXRjaCBmcm9tIEdQ
THYyKy9NSVQgdG8gR1BMdjIrL0JTRDJjIGJlZm9yZSBhZGRpbmcgbW9yZS4KPj4KPj4gU3VnZ2Vz
dGVkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgo+PiBDYzogUm9iIEhlcnJpbmcg
PHJvYmhAa2VybmVsLm9yZz4KPj4gU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFl
cmJlckBzdXNlLmRlPgo+PiAtLS0KPj4gIHYyOiBOZXcKPj4KPj4gIGFyY2gvYXJtNjQvYm9vdC9k
dHMvcmVhbHRlay9ydGQxMjk1LXppZG9vLXg5cy5kdHMgfCAzICstLQo+PiAgYXJjaC9hcm02NC9i
b290L2R0cy9yZWFsdGVrL3J0ZDEyOTUuZHRzaSAgICAgICAgICB8IDMgKy0tCj4+ICBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC5kdHNpICAgICAgICAgIHwgMyArLS0KPj4gIDMg
ZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+IAo+IEFja2Vk
LWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgo+IAo+IEl0J3MgcmVhbGx5IG9ubHkg
c2NoZW1hIGZpbGVzIHRoYXQgSSdtIHB1c2hpbmcgdG93YXJkcyBCU0QyQy4gTWF5YmUgaW4KPiBo
aW5kc2lnaHQgd2Ugc2hvdWxkIGhhdmUgZG9uZSBNSVQgYXMgdGhhdCdzIG1vcmUgY29tbW9uIGlu
IHRoZSBkdHMKPiBmaWxlcy4KCkFmdGVyIGRpc2N1c3Npb24gd2l0aCBSb2IgYWJvdXQgd2hldGhl
ciB0byBkcm9wIHRoaXMgY2hhbmdlIEkgZHJvcHBlZAp0aGUgbWlzdW5kZXJzdG9vZCBTdWdnZXN0
ZWQtYnkgYW5kIGFwcGxpZWQgdGhpcyB0byBsaW51eC1yZWFsdGVrLmdpdAp2NS41L2R0NjQgYW55
d2F5OgoKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYWZh
ZXJiZXIvbGludXgtcmVhbHRlay5naXQvbG9nLz9oPXY1LjUvZHQ2NAoKSSBkb24ndCBtaW5kIGVp
dGhlciBsaWNlbnNlLgoKVGhhbmtzLApBbmRyZWFzCgotLSAKU1VTRSBTb2Z0d2FyZSBTb2x1dGlv
bnMgR2VybWFueSBHbWJICk1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2VybWFueQpH
RjogRmVsaXggSW1lbmTDtnJmZmVyCkhSQiAzNjgwOSAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
