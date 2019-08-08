Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF75B8616A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 14:13:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0r4v8i7XO0QNPo8fhX7vysBHF46pyZrku/tyik01AjM=; b=DRi2kzFQMfUDBM
	kVDslII0e9w+fDW1uDJrBgl25GwZKTBrrr3HZlnBiIXsMqg3mu9FbKmTg7jO8LMPZrbNUAB0BjRZF
	RHzv7fOuTGxjSWlA21bA1RRo0WF064AQqtChbCYVREYN8VagEmnt+lvgBKb2XIiUZ1tW0z1i2zMnC
	wMutR0gLheD2Bk4DnBMJ+hYbDH4/LO+XywFWFdHXlulrSd86MXWZaz/2Wpnxj8Y25CnT+VYyjYgYa
	g5/1YWB7cXNTqapWWZQaMKAG+/Wi3mA5RGainK0CrZC16py+XE3kMChulwHHd4SEtSw6GK6TyUKvu
	CxxfQ2DKf/yEF7xwwD5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvhHq-0004nC-R0; Thu, 08 Aug 2019 12:12:54 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvhHf-0004lg-7y
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 12:12:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1565266358; bh=YR0FHwwc4tmQEDY6+l7XAQ5vaMUXhvN625ICx9pNwyg=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=Qd9gwkz+IAUYkFnbm+yGA4MfQAQoeVQH6V5rTGkoD1vjvyoxsK/PxapaGvkli+pa6
 e/Ni/kZ6HqBP2FbyuQo7jCxVGCdj+3Kex7Wlz2/Omly0lPYtMqc6t7LhW95+WB4WWJ
 8+3lHLRBfQ201XEZ+VhRuEostHFx1INt+bzJ70eI=
Date: Thu, 8 Aug 2019 14:12:37 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [linux-sunxi] [PATCH 0/3] Add basic support for RTC on Allwinner
 H6 SoC
Message-ID: <20190808121237.g6twq2nh3sayu3vx@core.my.home>
Mail-Followup-To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rtc@vger.kernel.org
References: <20190412120730.473-1-megous@megous.com>
 <CAGb2v66cbpsoHJoiFJkBwhZ5SbO+uO+Kf6gtnA3kPFQZq0329Q@mail.gmail.com>
 <20190806183045.edhm3qzpegscf2z7@core.my.home>
 <20190807105502.GK3600@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807105502.GK3600@piout.net>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_051243_665241_71ACAD2D 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBBdWcgMDcsIDIwMTkgYXQgMTI6NTU6MDJQTSArMDIwMCwgQWxleGFuZHJlIEJlbGxv
bmkgd3JvdGU6Cj4gSGksCj4gCj4gT24gMDYvMDgvMjAxOSAyMDozMDo0NSswMjAwLCBPbmTFmWVq
IEppcm1hbiB3cm90ZToKPiA+IE1heWJlIHdoZXRoZXIgWE8gb3IgRENYTyBpcyB1c2VkIGFsc28g
bWF0dGVycyBpZiB5b3Ugd2FudCB0byBkbyBzb21lIGZpbmUKPiA+IHR1bm5pbmcgb2YgRENYTyAo
Y29udHJvbCByZWdpc3RlciBoYXMgcGxldG55IG9mIG9wdGlvbnMpLCBidXQgdGhhdCdzIHByb2Jh
Ymx5Cj4gPiBiZXR0ZXIgZG9uZSBpbiB1LWJvb3QuIEFuZCB0aGVyZSdzIHN0aWxsIG5vIG5lZWQg
dG8gcmVhZCBIT1NDIHNvdXJjZSBmcm9tIERULgo+ID4gVGhlIGRyaXZlciBjYW4ganVzdCBjaGVj
ayBjb21wYXRpYmxlLCBhbmQgaWYgaXQgaXMgSDYgYW5kIE9TQ19DTEtfU1JDX1NFTCBpcyAxLAo+
ID4gaXQgY2FuIGRvIGl0J3MgRENYTyB0dW5uaW5nLCBvciB3aGF0ZXZlci4gQnV0IG5laXRoZXIg
T1Mgbm9yIGJvb3Rsb2FkZXIgd2lsbAo+ID4gYmUgdXNpbmcgdGhpcyBpbmZvIHRvIGdhdGUvZGlz
YWJsZSB0aGUgb3NjaWFsbGF0b3IuCj4gPiAKPiAKPiBJdCBpcyBhY3R1YWxseSB1c2VmdWwgdG8g
YmUgYWJsZSB0byB0d2VhayB0aGUgY3J5c3RhbCB0dW5pbmcgYXQKPiBydW50aW1lIHRvIGJlIGFi
bGUgdG8gcmVkdWNlIGNsb2NrIGRyaWZ0IGFuZCBjb21wYXJlIHdpdGggYSByZWxpYWJsZQo+IHNv
dXJjZSAoZS5nLiBOVFApLgoKSSBkb24ndCB0aGluayB0aGVyZSdzIGEgTGludXgga2VybmVsIEFQ
SSB0aGF0IHlvdSBjYW4gdXNlIHRvIGFjaGlldmUgdGhhdCwgc28KdGhhdCdzIGEgcmF0aGVyIHRo
ZW9yZXRpY2FsIGNvbmNlcm4gYXQgdGhlIG1vbWVudC4KCkFsc28gdGhlcmUgYXJlIG11bHRpcGxl
IGNsb2NrcywgdGhhdCBjYW4gZHJpdmUgdGhlIFJUQywgYW5kIHlvdSB1c3VhbGx5IGRvbid0CmRy
aXZlIGl0IGZyb20gMjRNSHogRENYTyBvc2NpbGxhdG9yLiBUaGUgcmVhc29uIGlzIHRoYXQgeW91
J2QgaGF2ZSB0byBkZWFsIHdpdGgKdGhlIGZhY3QgdGhhdCB0aGUgY2xvY2sgZm9yIFJUQyB0aGVu
IGJlY29tZXMgMjQwMDAwMDAvNzUwICg3NTAgaXMgZml4ZWQKZGl2aWRlciksIHdoaWNoIGlzIDMy
MDAwLgoKU28gaWYgeW91IHdhbnQgdG8gZ2V0IDMyNzY4SHogZm9yIFJUQyBieSB0dW5pbmcgdGhl
IERDWE8sIGl0IHdvdWxkIGhhdmUgdG8gaGF2ZQoyNCA1NzYgMDAwIEh6LiBBbmQgZXZlbiBpZiB5
b3UgY291bGQgYWNoaWV2ZSB0aGF0IChkb3VidGZ1bCksIGl0IHdvdWxkIHRocm93IG9mZgp0aW1p
bmdzIGluIHRoZSByZXN0IG9mIHRoZSBzeXN0ZW0gKHNheSBVQVJULCBVU0IsIENQVSwgZGlzcGxh
eSBjdGwpIGluIGEgbWFqb3Igd2F5LgoKSSBndWVzcyB5b3UgY2FuIHRyeSB0dW5pbmcgMjRNSHog
b3NjaWxsYXRvciBzbyB0aGF0IGl0J3MgY2xvc2VyIHRvIHRoZQpyZWFsLXdvcmxkIDI0TUh6IHZp
YSBOVFAgcmVmZXJlbmNlIGZvciBvdGhlciByZWFzb25zLiBCdXQgaXQgd291bGQgYmUKY29tcGxp
Y2F0ZWQsIGFuZCByZXF1aXJlIHByZWNpc2UgaW50ZXJhY3Rpb24gd2l0aCBvdGhlciBjb21wb25l
bnRzLCBsaWtlIHVzaW5nCkhXIHRpbWVycyBzb3VyY2VkIGZyb20gMjRNSHogSE9TQyBjbG9jaywg
YmVjYXVzZSB5b3UgY2FuJ3QgdXNlIENQVSdzIHRpbWVycywKYmVjYXVzZSBvZiBpbmFjY3VyYWNp
ZXMgaW50cm9kdWNlZCBkdXJpbmcgRFZGUywgZm9yIGV4YW1wbGUuCgpyZWdhcmRzLAoJby4KCj4g
SSdtIGN1cmlvdXMsIHdoYXQga2luZCBvZiBvcHRpb25zIGRvZXMgdGhpcyBSVEMgaGF2ZT8KPiAK
PiAtLSAKPiBBbGV4YW5kcmUgQmVsbG9uaSwgQm9vdGxpbgo+IEVtYmVkZGVkIExpbnV4IGFuZCBL
ZXJuZWwgZW5naW5lZXJpbmcKPiBodHRwczovL2Jvb3RsaW4uY29tCj4gCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdAo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
