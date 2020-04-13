Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A181A6133
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 02:17:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oV+jkj3Bz1OnejhoFDH6ImG1RjzynKNzxwUGrgUwlJ0=; b=g35c/V3ivTivGjfzl+Dghh/Im
	9p34bD0Z2B6M4I6GYOiy0CfqhAeOBXvJ7un1246g77usuljV5xvFUpcsFEPdTSCIBDEOIYMvpVdBD
	w62q4+8E2sL+uEo3r8RVP+TZIHZGRLp8DbSrWiTCbo67CeiAYCR7++lNIljNuowyQZgAXGlGLzd9y
	G+VetPEkJ3vJL+gswqhW5wsBC60xNJGCkXHWP5NtAU7PEa3enAYs4TNLYgDjAAguzYCRlHA9H3vZi
	mUmjV3od1vBA6IKYjOBTG1s3HKKMS5jN9qdWB26iICmfDtItEL1CA6Dz5uXo6tso4PHA2NROaTWIU
	FwxHFFTFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNmms-0002AY-3l; Mon, 13 Apr 2020 00:17:18 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNmmk-00029e-U9; Mon, 13 Apr 2020 00:17:12 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 6812EAC12;
 Mon, 13 Apr 2020 00:17:05 +0000 (UTC)
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: realtek: Document RTD1319 and
 Realtek PymParticle EVB
To: James Tai <james.tai@realtek.com>
References: <20200204145207.28622-1-james.tai@realtek.com>
 <20200204145207.28622-2-james.tai@realtek.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <bf55ccbe-cbdf-7ba7-d701-aa84c20204e3@suse.de>
Date: Mon, 13 Apr 2020 02:17:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200204145207.28622-2-james.tai@realtek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_171711_115604_ED3022AF 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXMsCgpBbSAwNC4wMi4yMCB1bSAxNTo1MiBzY2hyaWViIEphbWVzIFRhaToKPiBEZWZp
bmUgY29tcGF0aWJsZSBzdHJpbmdzIGZvciBSZWFsdGVrIFJURDEzMTkgU29DIGFuZCBSZWFsdGVr
IFB5bVBhcnRpY2xlCj4gRVZCLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEphbWVzIFRhaSA8amFtZXMu
dGFpQHJlYWx0ZWsuY29tPgo+IC0tLQo+ICAgdjIgLT4gdjM6IFVuY2hhbmdlZAo+IAo+ICAgdjEg
LT4gdjI6Cj4gICAqIFB1dCBzdHJpbmcgaW4gYWxwaGFiZXRpY2FsIG9yZGVyCj4gCj4gICBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JlYWx0ZWsueWFtbCB8IDYgKysrKysr
Cj4gICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcmVhbHRlay55YW1sIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yZWFsdGVrLnlhbWwKPiBpbmRleCA4NDVm
OWM3NmQ2ZjcuLjNiNDhhZTcxZmRkOCAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvYXJtL3JlYWx0ZWsueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9hcm0vcmVhbHRlay55YW1sCj4gQEAgLTQyLDYgKzQyLDEyIEBAIHBy
b3BlcnRpZXM6Cj4gICAgICAgICAgICAgICAgIC0gc3lub2xvZ3ksZHM0MTggIyBTeW5vbG9neSBE
aXNrU3RhdGlvbiBEUzQxOAo+ICAgICAgICAgICAgIC0gY29uc3Q6IHJlYWx0ZWsscnRkMTI5Ngo+
ICAgCj4gKyAgICAgICMgUlREMTMxOSBTb0MgYmFzZWQgYm9hcmRzCj4gKyAgICAgIC0gaXRlbXM6
Cj4gKyAgICAgICAgICAtIGVudW06Cj4gKyAgICAgICAgICAgICAgLSByZWFsdGVrLHB5bXBhcnRp
Y2xlICMgUmVhbHRlayBQeW1QYXJ0aWNsZSBFVkIKClRoZSBib2FyZCBzZWVtcyBsYWJlbGxlZCAi
UFlNX1BBUlRJQ0xFUyIuCgpXaGlsZSBXaWtpcGVkaWEgaGFzIG5vdGhpbmcgb24gdGhhdCwgSSBm
b3VuZCB0aGlzIGV4cGxhbmF0aW9uOgpodHRwczovL21hcnZlbC5mYW5kb20uY29tL3dpa2kvUHlt
X1BhcnRpY2xlcwoKU28sIGFyZSB5b3Ugc3VyZSBpdCdzIFB5bVBhcnRpY2xlIGFuZCBub3QgIlB5
bSBQYXJ0aWNsZSIgd2l0aCBzcGFjZSBvciAKIlB5bSBQYXJ0aWNsZXMiIHdpdGggc3BhY2UgYW5k
IHBsdXJhbCBTPyBUaGUgUyB3b3VsZCBhZmZlY3QgYWxzbyB0aGUgCi5kdHMgZmlsZW5hbWUuIEZv
ciB0aGUgY29tcGF0aWJsZSBzdHJpbmcgdGhlIHF1ZXN0aW9uIGlzIHB5bXBhcnRpY2xlIG9yIApw
eW0tcGFydGljbGUuCgpCeSBjb21wYXJpc29uLCBMSU9OLVNLSU4gd2FzIG5hbWVkIGxpb24tc2tp
biBpbiB0aGUgY29tcGF0aWJsZSBhbmQgCnNwZWxsZWQgTGlvbiBTa2luIGluIHRleHR1YWwgZm9y
bS4gSWYgeW91IGJlbGlldmUgdGhhdCBzaG91bGQgYmUgZml4ZWQsIApub3cgd291bGQgYmUgdGhl
IHRpbWUgdG8gcmV2aXNpdCB0aG9zZSBwYXRjaGVzIHRoYXQgZGlkbid0IG1ha2UgdjUuNy4KClRo
YW5rcywKQW5kcmVhcwoKPiArICAgICAgICAgIC0gY29uc3Q6IHJlYWx0ZWsscnRkMTMxOQo+ICsK
PiAgICAgICAgICMgUlREMTM5NSBTb0MgYmFzZWQgYm9hcmRzCj4gICAgICAgICAtIGl0ZW1zOgo+
ICAgICAgICAgICAgIC0gZW51bToKCi0tIApTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55
IEdtYkgKTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55CkdGOiBGZWxpeCBJ
bWVuZMO2cmZmZXIKSFJCIDM2ODA5IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
