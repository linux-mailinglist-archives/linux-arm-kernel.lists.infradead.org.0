Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2B0DA83C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 11:26:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aY+uja34WP2sVYhH/tA1D7EZLEQzacuRkj+lP8q4iMc=; b=h5sFddCqXnTOBXHBf3YKr7zKi
	hc1WUqaesPgevUcpH2+MkrgjiTlMgSxC0FfGy3GY16Kx89Fdi+hxqabnXFuMA7jHlLibqFPbj9Ddy
	URNfLrRaJ8PyE4OTwaVBlpt2q9MKJIzk7DMHEWeBw+Cv+nynEgyPXTOCo556gUPZLTc6Td6qLaapR
	BgxKsHwoy1gbTWq2KOO4w38wqsdllULSnXRPBl9b6satB13YHLEC+8XnL2Ki2UmnpUEBwIx34Vrua
	7iG0AWMx6toUhb/7NCMLjUA8h8Sa+nKrpoedcdRGl/oebiITQ4fkVvrYlx/OKf7mk17ENxDdNzXSU
	IJxw+5LPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL236-0001uk-3v; Thu, 17 Oct 2019 09:26:24 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL22w-0001uC-UZ
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 09:26:16 +0000
X-Originating-IP: 86.207.98.53
Received: from [192.168.10.51]
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id B5B77C001B
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 09:26:07 +0000 (UTC)
Subject: Re: [PATCH 2/2] ARM: dts: at91: add a common kizbox2 dtsi file
To: linux-arm-kernel@lists.infradead.org
References: <20191017085405.12599-1-kamel.bouhara@bootlin.com>
 <20191017085405.12599-3-kamel.bouhara@bootlin.com>
 <20191017110427.66bccdfb@windsurf>
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
Message-ID: <e50423e5-fd07-2e14-4c03-ff4472d289f2@bootlin.com>
Date: Thu, 17 Oct 2019 11:26:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191017110427.66bccdfb@windsurf>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_022615_118086_D173DDEE 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: overkiz.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: overkiz.com]
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVGhvbWFzLAoKT24gMTcvMTAvMjAxOSAxMTowNCwgVGhvbWFzIFBldGF6em9uaSB3cm90ZToK
PiBIZWxsbyBLYW1lbCwKPiAKPiBPbiBUaHUsIDE3IE9jdCAyMDE5IDEwOjU0OjA1ICswMjAwCj4g
S2FtZWwgQm91aGFyYSA8a2FtZWwuYm91aGFyYUBib290bGluLmNvbT4gd3JvdGU6Cj4gCj4+IFRo
ZXJlIGFyZSB0aHJlZSBkaWZmZXJlbnQgYm9hcmRzIGF2YWlsYWJsZSBkZXBlbmRpbmcgb24gdGhl
IFBDQgo+PiAoMyBhbnRlbm5hcyBzdXBwb3J0IGFuZCBzZXZlcmFsIHJldmlzb24pLiBBZGQgYSBk
dHNpIGZpbGUgdG8gc2hhcmUKPj4gY29tbW9uIGJpbmRpbmcgYmV0d2VlbiBhbGwga2l6Ym94MiBi
b2FyZHMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEthbWVsIEJvdWhhcmEgPGthbWVsLmJvdWhhcmFA
Ym9vdGxpbi5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IEvDqXZpbiBSQVlNT05EIDxrLnJheW1vbmRA
b3Zlcmtpei5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IE1pY2thZWwgR0FSREVUIDxtLmdhcmRldEBv
dmVya2l6LmNvbT4KPj4gLS0tCj4+ICAgYXJjaC9hcm0vYm9vdC9kdHMvTWFrZWZpbGUgICAgICAg
ICAgICAgICAgIHwgICA2ICstCj4+ICAgYXJjaC9hcm0vYm9vdC9kdHMvYXQ5MS1raXpib3guZHRz
ICAgICAgICAgIHwgMTczICsrKysrKystLS0tLS0tCj4gCj4gVGhlIGNoYW5nZXMgdG8gdGhpcyBm
aWxlIChjaGFuZ2UgdG8gdXNlIHBoYW5kbGVzKSBzZWVtIHVucmVsYXRlZCB0byB0aGUKPiBjdXJy
ZW50IHBhdGNoLCB1bmxlc3MgSSdtIG1pc3Npbmcgc29tZXRoaW5nLgo+IAo+PiAgIGFyY2gvYXJt
L2Jvb3QvZHRzL2F0OTEta2l6Ym94Mi0wLmR0cyAgICAgICB8ICAxNyArKwo+PiAgIGFyY2gvYXJt
L2Jvb3QvZHRzL2F0OTEta2l6Ym94Mi0xLmR0cyAgICAgICB8ICAyMiArKwo+PiAgIGFyY2gvYXJt
L2Jvb3QvZHRzL2F0OTEta2l6Ym94Mi0yLmR0cyAgICAgICB8ICAyNiArKysKPj4gICBhcmNoL2Fy
bS9ib290L2R0cy9hdDkxLWtpemJveDItMy5kdHMgICAgICAgfCAgMzAgKysrCj4+ICAgYXJjaC9h
cm0vYm9vdC9kdHMvYXQ5MS1raXpib3gyLXJldjIuZHRzICAgIHwgIDM0ICsrKwo+PiAgIGFyY2gv
YXJtL2Jvb3QvZHRzL2F0OTEta2l6Ym94Mi5kdHMgICAgICAgICB8IDI0NCAtLS0tLS0tLS0tLS0t
LS0tLS0tCj4+ICAgYXJjaC9hcm0vYm9vdC9kdHMvYXQ5MS1raXpib3gyX2NvbW1vbi5kdHNpIHwg
MjU4ICsrKysrKysrKysrKysrKysrKysrKwo+IAo+ICItIiBzZWVtcyB0byBiZSBhIG11Y2ggbW9y
ZSBjb21tb24gc2VwYXJhdG9yIGZvciBEVCBuYW1lcywgaW5jbHVkaW5nIGluCj4gdGhpcyBmaWxl
LCBzbyB3aGF0IGFib3V0IGF0OTEta2l6Ym94Mi1jb21tb24uZHRzaSA/Cj4gCkkgbmV2ZXIgcGFp
ZCBhdHRlbnRpb24gdG8gaXQgYnV0IEkganVzdCBmb3VuZCB0aGF0IHRoZSAiXyIgc2VlbXMgdXNl
ZCBhbHNvOgoKJCBmaW5kIGFyY2gvYXJtL2Jvb3QvZHRzLyAtbmFtZSAiKl8qIiB8d2MgLWwKMTc2
Cgo+PiArLy8gV01CVVMgKGludmVydGVkIHdpdGggSU8gaW4gdGhlIGxhdGVzdCBzY2hlbWF0aWMp
Cj4gCj4gSSBhbSBub3Qgc3VyZSBDKysgY29tbWVudHMgYXJlIGNvbW1vbiBpbiBEZXZpY2UgVHJl
ZSBmaWxlcy4KPiAKCiBGcm9tIHRoZSBkZXZpY2V0cmVlIHNwZWMuIGJvdGggKEMvQysrIHN0eWxl
KSBhcmUgc3VwcG9ydGVkLi4uIGJ1dCBJIAphZ3JlZSB0aGlzIGlzIG5vdCBjb21tb24uCgo+IEJl
c3QgcmVnYXJkcywKPiAKPiBUaG9tYXMKPiAKClJlZ2FyZHMsCgpLYW1lbAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
