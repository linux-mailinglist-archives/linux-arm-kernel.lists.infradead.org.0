Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B97F1155
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 09:42:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4P9JodbZKVbOYukjWu6dCIGXTswMF3M2irsWdGST1qs=; b=qqK80ds36G36qm
	JXhT1Cjy82H8mwAKhlJz3HZfdhn/fhZlekhQlbrCuK60nUEvo7aWew6YkFlRbpCp+yjgVkzosZm3F
	6cTP8rgwvKVct7OUqnm4HKfcO6yzuaPAWHbg/DRx+v5QOfs8DsUpgQ25cR/+YOTfcAwekI7jH8AJW
	VMxM8zU/banC1oRJMK/j/4OG2mjzxo0ixM7CjHEoEkaQZMaUzg9LEoQOSusMmovWgb0tBnJsPg1Ia
	mGeWLAJZffpqvaJePq+gW3AEiLEs5GnuPoxATRm6e/t/LN0GuWN0HBqyL/8mYYuhxzunOk6vYw/h3
	Gw7tP1IFDkivW+d/eBuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSGtI-0003QQ-9G; Wed, 06 Nov 2019 08:42:12 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSGt9-0003PO-H8; Wed, 06 Nov 2019 08:42:04 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 2F6E3ACA4;
 Wed,  6 Nov 2019 08:42:02 +0000 (UTC)
Subject: Re: [RFC 05/11] dt-bindings: soc: realtek: rtd1195-chip: Extend reg
 property
To: Rob Herring <robh@kernel.org>
References: <20191103013645.9856-1-afaerber@suse.de>
 <20191103013645.9856-6-afaerber@suse.de> <20191106044605.GA28959@bogus>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <202d501d-f548-24c6-b99c-652a59a9e255@suse.de>
Date: Wed, 6 Nov 2019 09:42:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191106044605.GA28959@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_004203_711984_A16F93C3 
X-CRM114-Status: GOOD (  16.26  )
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-realtek-soc@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMDYuMTEuMTkgdW0gMDU6NDYgc2NocmllYiBSb2IgSGVycmluZzoKPiBPbiBTdW4sIE5vdiAw
MywgMjAxOSBhdCAwMjozNjozOUFNICswMTAwLCBBbmRyZWFzIEbDpHJiZXIgd3JvdGU6Cj4+IEFs
bG93IHRvIG9wdGlvbmFsbHkgc3BlY2lmeSBhIHNlY29uZCByZWdpc3RlciB0byBpZGVudGlmeSB0
aGUgY2hpcC4KPj4gV2hldGhlciBuZWVkZWQgYW5kIHdoaWNoIHJlZ2lzdGVyIHRvIHNwZWNpZnkg
ZGVwZW5kcyBvbiB0aGUgZmFtaWx5Owo+PiBSVEQxMjk1IGZhbWlseSB3aWxsIHdhbnQgdGhlIENI
SVBfSU5GTzEgcmVnaXN0ZXIuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8
YWZhZXJiZXJAc3VzZS5kZT4KPj4gLS0tCj4+ICBBIFNvQyBzcGVjaWZpYyBiaW5kaW5nIHdvdWxk
IGRlZmVhdCB0aGUgcHVycG9zZSBvZiB0aGUgZ2VuZXJpYyBMaW51eCBkcml2ZXI7Cj4gCj4gV2h5
PyBZb3UgY2FuIG1hcCBhbnkgbnVtYmVyIG9mIGNvbXBhdGlibGVzIHRvIGEgZ2VuZXJpYyBkcml2
ZXIuCgpCZWNhdXNlIHRoZSBwdXJwb3NlIG9mIHRoZSBkcml2ZXIgaXMgdG8gcmVhZCBmcm9tIHRo
ZSByZWdpc3RlcnMgd2hpY2gKY2hpcCBpdCBpcy4gSWYgd2UgdGVsbCBpdCB2aWEgdGhlIGNvbXBh
dGlibGUgd2hhdCBpdCBpcyBzdXBwb3NlZCB0byBiZSwKMSkgb25seSB0aGUgcmV2aXNpb24gd291
bGQgbmVlZCB0byBiZSByZWFkLCBhbmQgMikgaG93IHNob3VsZCBpdCByZWFjdAppZiB0aGUgY29t
cGF0aWJsZSB0ZWxscyBpdCBvbmUgdGhpbmcgYW5kIHRoZSByZWdpc3RlciB2YWx1ZSBhbm90aGVy
LgoKQWxzbyBpdCBkb2Vzbid0IHNvbHZlIHRoZSBwcm9ibGVtIHRoYXQgd2UgbWF5IG5lZWQgdG8g
ZXh0ZW5kIHRoZSBiaW5kaW5nCmFzIG5ldyBtb2RlbHMgZW1lcmdlLCBvciBpbnN0ZWFkIG9mIGp1
c3QgcnRkMTE5NSwgcnRkMTI5NSwgcnRkMTM5NSwgZXRjLgp3ZSdkIGFsc28gbmVlZCBvbmUgZm9y
IGVhY2ggY2hpcCwgaS5lLiwgcnRkMTI5NiwgY2YuIDEpIGFib3ZlLgoKPj4gIGlzIGl0IHBvc3Np
YmxlIHRvIGNoZWNrIHRoZSByb290IG5vZGUncyBjb21wYXRpYmxlIGluIGFuIGlmOiBleHByZXNz
aW9uCj4+ICB0byBwcm9oaWJpdCB1c2luZyBtb3JlIHRoYW4gb25lIHJlZyBvbiAicmVhbHRlayxy
dGQxMTk1Ij8KPiAKPiBUaGUgInJ1bGUiIGlzIGRpZmZlcmVudCBwcm9ncmFtbWluZyBtb2RlbCwg
ZGlmZmVyZW50IGNvbXBhdGlibGUgc3RyaW5nIAo+IGZvciB0aGUgYmxvY2suCgpBZ3JlZWQgaW4g
Z2VuZXJhbC4KCj4gQnV0IHRoaXMgbG9va3Mgc2ltcGxlIGVub3VnaCwgSSBkb24ndCByZWFsbHkg
Y2FyZS4KCkhvcGUgeW91IGFsc28gcmVhZCB0aGUgY292ZXIgbGV0dGVyIHdydCBzeXNjb24/IFRo
YXQgd291bGQgcHJvYmFibHkKb2Jzb2xldGUgdGhpcyBiaW5kaW5nIHRoZW4gYW5kIHJlcXVpcmUg
dG8gbW92ZSB0aGUgZHJpdmVyJ3MgbG9naWMgaW50byBhCm1vZHVsZSBpbml0IGluc3RlYWQgZm9y
IGxhY2sgb2YgZGVkaWNhdGVkIGNvbXBhdGlibGUgdG8gYmluZCBhZ2FpbnN0LApsaWtlIE1lc29u
IGRvZXMuCgpSZWdhcmRzLApBbmRyZWFzCgotLSAKU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2Vy
bWFueSBHbWJICk1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2VybWFueQpHRjogRmVs
aXggSW1lbmTDtnJmZmVyCkhSQiAzNjgwOSAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
