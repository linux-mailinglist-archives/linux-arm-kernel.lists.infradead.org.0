Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2009EAD5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 16:22:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lV2nTfK5WzucNfU9LM7LtbbFsUPLpTk/PqwC7yRO5Aw=; b=gF7Az8/i4WbcBk
	TAhtiFaJc5nvB4qAbOs9u8fwjc3g77z450KpmgZcrt6dyOsPEoUfCBktgAKcHejfut1JFLajRi7zu
	Wne114rR60Xaw0AjvDIk5tEbYzveymuf6N5j+u1mtu1/e3dEH3EtIw1kJAsf7RvEEaW+WZWLgcKJh
	kmy8mUmGl9en91OGLJ04Sn16kfqKtOU+6FMxsU/6DcxqMC5CKoc9vVa7tki6F0tfvUGjQyHcNH/6K
	gBLjCJMSVMR+DX1kTtbRMM6Lt4X8L8dgWMTHioB2NlOnp8ItsugLruxX4wu/51cfCmNwZRuMWsnJF
	8xwX7CWnqMNYS0ebY7aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2cN4-00035E-Ts; Tue, 27 Aug 2019 14:22:55 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2cMo-00034l-Tv
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 14:22:41 +0000
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id E554B100007;
 Tue, 27 Aug 2019 14:22:26 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v3 00/19] Enhance CP110 COMPHY support
In-Reply-To: <20190731122126.3049-1-miquel.raynal@bootlin.com>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
Date: Tue, 27 Aug 2019 16:22:26 +0200
Message-ID: <87lfvezo0t.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_072239_267428_11A50843 
X-CRM114-Status: GOOD (  20.90  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>, Russell King <linux@armlinux.org.uk>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWlxdWVsLAoKPiBBcm1hZGEgQ1AxMTAgaGF2ZSBhIENPTVBIWSBJUCB3aGljaCBzdXBwb3J0
cyBjb25maWd1cmluZyBTRVJERVMgbGFuZXMKPiBpbiBvbmUgbW9kZSwgZWl0aGVyOgo+IC0gU0FU
QQo+IC0gVVNCMyBob3N0Cj4gLSBQQ0llIChzZXZlcmFsIHdpZHRoKQo+IC0gRXRoZXJuZXQgKHNl
dmVyYWwgbW9kZXMpCj4KPiBBcyBvZiB0b2RheSwgb25seSBhIGZldyBFdGhlcm5ldCBtb2RlcyBh
cmUgc3VwcG9ydGVkIGFuZCB0aGUgY29kZSBpcwo+IGVtYmVkZGVkIGluIHRoZSBMaW51eCBkcml2
ZXIuIEEgbW9yZSBjb21wbGV0ZSBDT01QSFkgZHJpdmVyIHRoYXQgY2FuCj4gYmUgdXNlZCBieSBi
b3RoIExpbnV4IGFuZCBVLUJvb3QgaXMgZW1iZWRkZWQgaW4gdGhlIGZpcm13YXJlIGFuZCBjYW4K
PiBiZSBydW4gdGhyb3VnaCBTTUMgY2FsbHMuCj4KPiBGaXJzdCB0aGUgY3VycmVudCBDT01QSFkg
ZHJpdmVyIGlzIHVwZGF0ZWQgdG8gdXNlIFNNQyBjYWxscyBidXQKPiBmYWxsYmFja3MgdG8gdGhl
IGFscmVhZHkgZXhpc3RpbmcgZnVuY3Rpb25zIGlmIHRoZSBmaXJtd2FyZSBpcyBub3QKPiB1cC10
by1kYXRlLiBUaGVuLCBtb3JlIEV0aGVybmV0IG1vZGVzIGFyZSBhZGRlZCAodGhyb3VnaCBTTUMg
Y2FsbHMKPiBvbmx5KS4gU0FUQSwgVVNCM0ggYW5kIFBDSWUgbW9kZXMgYXJlIGFsc28gc3VwcG9y
dGVkIG9uZSBieSBvbmUuCj4KPiBUaGVyZSBpcyBvbmUgc3VidGxlIGRpZmZlcmVuY2Ugd2l0aCB0
aGUgUENJZSBmdW5jdGlvbnM6IHdlIG11c3QgdGVsbAo+IHRoZSBmaXJtd2FyZSB0aGUgbnVtYmVy
IG9mIGxhbmVzIHRvIGNvbmZpZ3VyZSAoeDEsIHgyIG9yIHg0KS4gVGhpcwo+IHBhcmFtZXRlciBk
ZXBlbmRzIG9uIHRoZSBudW1iZXIgb2YgZW50cmllcyBpbiB0aGUgJ3BoeXMnIHByb3BlcnR5Cj4g
ZGVzY3JpYmluZyB0aGUgUENJZSBQSFkuIFdlIHVzZSB0aGUgInN1Ym1vZGUiIHBhcmFtZXRlciBv
ZiB0aGUgZ2VuZXJpYwo+IFBIWSBBUEkgdG8gY2FycnkgdGhpcyB2YWx1ZS4gVGhlIEFybWFkYS04
ayBQQ0llIGRyaXZlciBoYXMgYmVlbgo+IHVwZGF0ZWQgdG8gZm9sbG93IHRoaXMgaWRlYSBhbmQg
dGhpcyBjaGFuZ2UgaGFzIGJlZW4gbWVyZ2VkIGFscmVhZHk6Cj4gaHR0cDovL3BhdGNod29yay5v
emxhYnMub3JnL3BhdGNoLzEwNzI3NjMvCj4KPiBUaGFua3MsCj4gTWlxdcOobAo+Cj4KPiBDaGFu
Z2VzIHNpbmNlIHYyOgo+IC0tLS0tLS0tLS0tLS0tLS0tCj4gKiBJbnZlcnRlZCB0d28gYXJndW1l
bnRzIGluIGEgdHJhY2UuCj4gKiBBdm9pZCB3YXJuaW5nIHRoZSB1c2VyIHdoZW4gRVBST0JFX0RF
RkVSIGlzIHJldHVybmVkIChjbG9ja3MgY2FzZSkuCj4gKiBBZGRlZCBNYXhpbWUgQy4gYW5kIEdy
emVnb3J6IEouICdzIFRlc3RlZC1ieSB0YWdzIChvbmx5IG9uIHRoZQo+ICAgImludHJvZHVjaW5n
IFNNQyBjYWxscyIgcGF0Y2gsIGJ1dCB0aGV5IHRlc3RlZCB0aGUgd2hvbGUgc2VyaWVzKS4KPiAq
IEFkZGVkIFJvYidzIFJldmlld2VkLWJ5IG9uIHRoZSBiaW5kaW5ncy4KPiAqIEFsc28gdXBkYXRl
ZCB0aGUgYmluZGluZ3MgYXMgc3VnZ2VzdGVkIGJ5IFJvYiB0byByZWZsZWN0IHRoYXQgdGhlcmUK
PiAgIGNhbiBiZSBmcm9tIG9uZSB0byBmb3VyIFBIWXMgaW4gdGhlIFBDSWUgbm9kZXMgKGhlbmNl
LCB0aGUgbmVlZCBmb3IKPiAgIHRoZSBwaHktbmFtZXMgcHJvcGVydHkpLgo+Cj4gQ2hhbmdlcyBz
aW5jZSB2MToKPiAtLS0tLS0tLS0tLS0tLS0tLQo+ICogQWxsIG1vZGVzIHJlcG9ydCB0aGVpciBl
cnJvcnMgdG8gdGhlIHVzZXIuCj4gKiBJZiB0aGUgZmlybXdhcmUgaXMgdG9vIG9sZCwgYWR2aXNl
IHRoZSB1c2VyIHRvIHVwZGF0ZSBpdC4KPiAqIENyZWRpdCBHcnplZ29yeiBmb3IgaGlzIHdvcmsu
Cj4gKiBGaXggd3Jvbmcgc3BlZWQgaW4gRXRoZXJuZXQgbW9kZXMuCj4gKiBBZGQgQ09NUEhZIG5l
Y2Vzc2FyeSBjbG9ja3MuCj4gKiBVcGRhdGUgYmluZGluZ3MuCj4gKiBUaGUgc2VjdXJpdHkgZmxh
dyByZWxhdGVkIHRvIHRoZSBmYWN0IHRoYXQgd2UgbXVzdCBnaXZlIHRoZSBDUAo+ICAgYWRkcmVz
cyB0byB0aGUgZmlybXdhcmUgaGFzIGJlZW4gbWl0aWdhdGVkIGJ5IHRoZSBhZGRpdGlvbiBvZiBl
eHRyYQo+ICAgY2hlY2tzIGluIEFURiByZWNlbnRseS4KPgo+Cj4gR3J6ZWdvcnogSmFzemN6eWsg
KDUpOgo+ICAgcGh5OiBtdmVidS1jcDExMC1jb21waHk6IEFkZCBTTUMgY2FsbCBzdXBwb3J0Cj4g
ICBwaHk6IG12ZWJ1LWNwMTEwLWNvbXBoeTogQWRkIFJYQVVJIHN1cHBvcnQKPiAgIHBoeTogbXZl
YnUtY3AxMTAtY29tcGh5OiBBZGQgVVNCMyBob3N0L2RldmljZSBzdXBwb3J0Cj4gICBwaHk6IG12
ZWJ1LWNwMTEwLWNvbXBoeTogQWRkIFNBVEEgc3VwcG9ydAo+ICAgcGh5OiBtdmVidS1jcDExMC1j
b21waHk6IEFkZCBQQ0llIHN1cHBvcnQKPgo+IE1pcXVlbCBSYXluYWwgKDE0KToKPiAgIHBoeTog
bXZlYnUtY3AxMTAtY29tcGh5OiBBZGQgY2xvY2tzIHN1cHBvcnQKPiAgIHBoeTogbXZlYnUtY3Ax
MTAtY29tcGh5OiBFeHBsaWNpdGx5IGluaXRpYWxpemUgdGhlIGxhbmUgc3VibW9kZQo+ICAgcGh5
OiBtdmVidS1jcDExMC1jb21waHk6IExpc3QgYWxyZWFkeSBzdXBwb3J0ZWQgRXRoZXJuZXQgbW9k
ZXMKPiAgIHBoeTogbXZlYnUtY3AxMTAtY29tcGh5OiBSZW5hbWUgdGhlIG1hY3JvIGhhbmRsaW5n
IG9ubHkgRXRoZXJuZXQgbW9kZXMKPiAgIHBoeTogbXZlYnUtY3AxMTAtY29tcGh5OiBBbGxvdyBu
b24tRXRoZXJuZXQgbW9kZXMgdG8gYmUgY29uZmlndXJlZAo+ICAgcGh5OiBtdmVidS1jcDExMC1j
b21waHk6IENvc21ldGljIGNoYW5nZSBpbiBhIGhlbHBlcgo+ICAgcGh5OiBtdmVidS1jcDExMC1j
b21waHk6IFVwZGF0ZSBjb21tZW50IGFib3V0IHBvd2VyaW5nIG9mZiBhbGwgbGFuZXMKPiAgICAg
YXQgYm9vdAo+ICAgZHQtYmluZGluZ3M6IHBoeTogQWRkIE1hcnZlbGwgQ09NUEhZIGNsb2Nrcwo+
ICAgZHQtYmluZGluZ3M6IHBjaTogYWRkIFBIWSBwcm9wZXJ0aWVzIHRvIEFybWFkYSA3Sy84SyBj
b250cm9sbGVyCj4gICAgIGJpbmRpbmdzCgoKCj4gICBhcm02NDogZHRzOiBtYXJ2ZWxsOiBBZGQg
Q1AxMTAgQ09NUEhZIGNsb2Nrcwo+ICAgYXJtNjQ6IGR0czogbWFydmVsbDogQWRkIDdrLzhrIHBl
ci1wb3J0IFBIWXMgaW4gU0FUQSBub2Rlcwo+ICAgYXJtNjQ6IGR0czogbWFydmVsbDogQWRkIDdr
LzhrIFBIWXMgaW4gVVNCMyBub2Rlcwo+ICAgYXJtNjQ6IGR0czogbWFydmVsbDogQWRkIDdrLzhr
IFBIWXMgaW4gUENJZSBub2Rlcwo+ICAgYXJtNjQ6IGR0czogbWFydmVsbDogQ29udmVydCA3ay84
ayB1c2ItcGh5IHByb3BlcnRpZXMgdG8gcGh5LXN1cHBseQoKVGhlc2UgNSBwYXRjaGVzIGhhdmUg
YmVlbiBhcHBsaWVkIG9uIG12ZWJ1L2R0NjQKClRoYW5rcywKCkdyZWdvcnkKCgoKPgo+ICAuLi4v
ZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcGNpLWFybWFkYThrLnR4dCAgfCAgIDYgKwo+ICAuLi4v
YmluZGluZ3MvcGh5L3BoeS1tdmVidS1jb21waHkudHh0ICAgICAgICAgfCAgMTAgKwo+ICAuLi4v
YXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtNzA0MC1kYi5kdHMgfCAgMzcgKy0KPiAgLi4u
L21hcnZlbGwvYXJtYWRhLTgwNDAtY2xlYXJmb2ctZ3QtOGsuZHRzICAgIHwgIDIyICstCj4gIC4u
Li9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS04MDQwLWRiLmR0cyB8ICA0MyArLQo+ICAu
Li4vYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtODA0MC1tY2Jpbi5kdHNpICAgfCAgMzggKy0KPiAg
YXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS1jcDExMC5kdHNpIHwgIDEzICsKPiAg
ZHJpdmVycy9waHkvbWFydmVsbC9waHktbXZlYnUtY3AxMTAtY29tcGh5LmMgIHwgNDEyICsrKysr
KysrKysrKysrKy0tLQo+ICA4IGZpbGVzIGNoYW5nZWQsIDQ5OSBpbnNlcnRpb25zKCspLCA4MiBk
ZWxldGlvbnMoLSkKPgo+IC0tIAo+IDIuMjAuMQo+CgotLSAKR3JlZ29yeSBDbGVtZW50LCBCb290
bGluCkVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcKaHR0cDovL2Jvb3RsaW4u
Y29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
