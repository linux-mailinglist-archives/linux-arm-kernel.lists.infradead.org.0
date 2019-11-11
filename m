Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4D4F6D22
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 04:09:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5qGmK0n1UpObxUGAizSVAVL4AkLdEV+2FjiqfDH36Ko=; b=Lobt1UFGebtghB
	kVgkpwvqshbOCfVXyaK0B42HiZiVH6Xpxv71BIw2u79dlVeSSMYMpRT/6GXl3jUXnml1klpydtc5L
	dhO9i/qKswLQOrR7e87b2ToDDNKxkQx0PRhi0hc2gq0MRQOBnVzPnpD5w6mDbi4rE52o19w/gfsJk
	02ru0qW+HAWmGicCm3amoMKw78+/polM82ZQzcNKLUpa7wLRvQOj/tF6j2IB/FHofcSSM/ZafoOpZ
	8waqUkRqwwaeeMqchMx96/VOQDMcyl0OPxsQeOFefGja7vt+QMx0Wlm854ZHyQX+YE5zOb44IiOub
	VoEXEne4NLfeltvNlFaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU05B-0006fl-E7; Mon, 11 Nov 2019 03:09:37 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU052-0006bY-6K; Mon, 11 Nov 2019 03:09:29 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E95B9B169;
 Mon, 11 Nov 2019 03:09:26 +0000 (UTC)
Subject: Re: [PATCH] arm64: dts: realtek: Add Realtek rtd1619 and mjolnir
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
To: James Tai <james.tai@realtek.com>
References: <43B123F21A8CFE44A9641C099E4196FFCF91BEFA@RTITMBSVM04.realtek.com.tw>
 <25fdd8eb-f1a0-82ae-9c4b-22325b163b0e@suse.de>
 <43B123F21A8CFE44A9641C099E4196FFCF920024@RTITMBSVM04.realtek.com.tw>
 <7a05ac2c-00bc-b2ac-0a33-be0242d33188@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <63d61bcb-fba0-5890-e46b-306c6cd2aa1c@suse.de>
Date: Mon, 11 Nov 2019 04:09:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <7a05ac2c-00bc-b2ac-0a33-be0242d33188@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_190928_389416_0D7C06C5 
X-CRM114-Status: GOOD (  14.32  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 "'linux-kernel@vger.kernel.org'" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMDguMTEuMTkgdW0gMTg6MTcgc2NocmllYiBBbmRyZWFzIEbDpHJiZXI6Cj4gSGkgSmFtZXMs
Cj4gCj4gQW0gMDguMTEuMTkgdW0gMTY6MzYgc2NocmllYiBKYW1lcyBUYWk6Cj4+PiBBbmQgZG91
YmxlLWNoZWNrIHdoZXRoZXIgeW91IGFjdHVhbGx5IG5lZWQgPDI+IC0gY29tcGFyZSBydGQxMjl4
LmR0c2kgdXNpbmcKPj4+IDwxPiBiZWNhdXNlIG5vdGhpbmcgd2VudCBiZXlvbmQgMzItYml0IGFk
ZHJlc3Mgc3BhY2UuIEl0IHdhcyBhIHJldmlldwo+Pj4gcmVxdWVzdCBiYWNrIHRoZW4uIENhbiBS
VEQxNjE5IGhhdmUgbW9yZSB0aGFuIDIgR2lCIFJBTSwgd2l0aCBhIHNlY29uZAo+Pj4gUkFNIHJl
Z2lvbiBpbiBoaWdoIG1lbSwgcmVxdWlyaW5nIHR3byBjZWxscyBmb3IgbWVtb3J5IG5vZGVzPwo+
Pj4KPj4gVGhlIFJURDE2MTkgY2FuIHN1cHBvcnQgbW9yZSB0aGFuIDIgR2lCIFJBTS4KPiAKPiBI
b3cgbXVjaD8gTW9yZSB0aGFuIDB4OTgwMDAwMDA/IFRoZSBSVEQxMzk1IGRhdGFzaGVldCBzYXlz
IHVwIHRvIDQgR0IgLQo+IGRvZXMgdGhhdCBtZWFuIGl0IGNvbnRpbnVlcyBpbiBhIHNlY29uZCBy
ZWdpb24gYmV5b25kIDB4ZmZmZmZmZmY/IFRob3NlCj4gbG9jYXRpb25zIHNob3VsZCBiZSBleGNs
dWRlZCBpbiB0aGUgc29jIG5vZGUgcmFuZ2VzICh3aGljaCB5b3Ugc2FkbHkKPiBhcHBlYXIgdG8g
aGF2ZSBkcm9wcGVkIGluIHYyKS4KPiAKPiBJJ2xsIHRyeSB0byBwb3N0IGEgcGF0Y2ggZm9yIFJU
RDEyOTUgc29vbiB0byBkZW1vbnN0cmF0ZSwgaXQncyBqdXN0IGEKPiBsaXR0bGUgdGltZS1jb25z
dW1pbmcgd2l0aCB0aGUgMTAwKyBjb21taXRzIG9uIHRvcCBvZiBsaW51eC1uZXh0IHRoYXQKPiBu
ZWVkIHRvIGJlIHJlYmFzZWQgdGhlbi4uLiBSVEQxMTk1IG1heSBiZSBxdWlja2VyLgoKSSd2ZSBm
aW5pc2hlZCBib3RoIGFuZCBpbmNsdWRlZCBwYXRjaGVzIGZvciBib3RoIGluIHRoZSBSVEQxMzk1
IHNlcmllcwpqdXN0IHBvc3RlZCwgYWxvbmcgd2l0aCBvdGhlciBmb2xsb3ctdXAgY2xlYW51cHMg
cmVjZW50bHkgZGlzY3Vzc2VkLgoKVGhhbmtzLApBbmRyZWFzCgotLSAKU1VTRSBTb2Z0d2FyZSBT
b2x1dGlvbnMgR2VybWFueSBHbWJICk1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2Vy
bWFueQpHRjogRmVsaXggSW1lbmTDtnJmZmVyCkhSQiAzNjgwOSAoQUcgTsO8cm5iZXJnKQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
