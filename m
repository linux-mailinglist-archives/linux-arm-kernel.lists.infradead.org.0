Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F2771000FF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 10:14:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FOsCVXIwgvWp0em9bjnT2tscJC0e6wVgyQwv5k11PSM=; b=FFYsdA0ued06I3oScEx6q27Tx
	2GmzqeuueFsvxzXXjiEo635faOywFtL6xKBt81F9o1uzejjiS7TJnLbHhBQKFbSxR917cZwIyOLlt
	XXi2FBxIGYqiwdO1GCTomwbL/mcVkzhH3lMIMQdcsLpavHlDfvZ7BD3RXgak24a0+oP6gLyelML9c
	JQM/90TSwWA64eQ5xM45kN/q5uQNMOntu9uxknNdTF/jx8nyb6hV2X8pYxEn9HbptF13pOwI7fbFG
	tdvd5JBnyowXQy85n6TxZcT9+INyQ2Kzsb6HMMZlk5F6QhPyXIA8Az6+nc5vxwF1AnyvYB51DzMf7
	PRSVK8m3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWd79-0003Yd-Qk; Mon, 18 Nov 2019 09:14:31 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWd70-0003XJ-Ry; Mon, 18 Nov 2019 09:14:24 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iWd6v-0005nP-NO; Mon, 18 Nov 2019 10:14:17 +0100
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
Subject: Re: [PATCH v3 3/8] ARM: dts: Prepare Realtek RTD1195 and MeLE X1000
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Mon, 18 Nov 2019 09:14:17 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <25965de3-cc82-7fe6-6b3d-5754c329ac07@suse.de>
References: <20191117072109.20402-1-afaerber@suse.de>
 <20191117072109.20402-4-afaerber@suse.de> <20191117104726.2b1fccb8@why>
 <61bf74ad-b4a1-f443-bf99-be354b4d942b@suse.de>
 <86a78ujwwd.wl-maz@kernel.org>
 <25965de3-cc82-7fe6-6b3d-5754c329ac07@suse.de>
Message-ID: <e72d61bc883bdab70d81422f5b8acbef@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: afaerber@suse.de, linux-realtek-soc@lists.infradead.org,
 mark.rutland@arm.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 james.tai@realtek.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_011423_049506_A7E8532B 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
 James Tai <james.tai@realtek.com>, linux-realtek-soc@lists.infradead.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0xMS0xOCAwMToyNCwgQW5kcmVhcyBGw6RyYmVyIHdyb3RlOgo+IEFtIDE3LjExLjE5
IHVtIDE3OjIyIHNjaHJpZWIgTWFyYyBaeW5naWVyOgo+PiBPbiBTdW4sIDE3IE5vdiAyMDE5IDE1
OjQwOjU5ICswMDAwLAo+PiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+IHdyb3Rl
Ogo+Pj4gQW0gMTcuMTEuMTkgdW0gMTE6NDcgc2NocmllYiBNYXJjIFp5bmdpZXI6Cj4+Pj4gT24g
U3VuLCAxNyBOb3YgMjAxOSAwODoyMTowNCArMDEwMAo+Pj4+IEFuZHJlYXMgRsOkcmJlciA8YWZh
ZXJiZXJAc3VzZS5kZT4gd3JvdGU6Cj4+Pj4+ICsJdGltZXIgewo+Pj4+PiArCQljb21wYXRpYmxl
ID0gImFybSxhcm12Ny10aW1lciI7Cj4+Pj4+ICsJCWludGVycnVwdHMgPSA8R0lDX1BQSSAxMwo+
Pj4+PiArCQkJKEdJQ19DUFVfTUFTS19TSU1QTEUoMikgfCBJUlFfVFlQRV9MRVZFTF9MT1cpPiwK
Pj4+Pj4gKwkJCSAgICAgPEdJQ19QUEkgMTQKPj4+Pj4gKwkJCShHSUNfQ1BVX01BU0tfU0lNUExF
KDIpIHwgSVJRX1RZUEVfTEVWRUxfTE9XKT4sCj4+Pj4+ICsJCQkgICAgIDxHSUNfUFBJIDExCj4+
Pj4+ICsJCQkoR0lDX0NQVV9NQVNLX1NJTVBMRSgyKSB8IElSUV9UWVBFX0xFVkVMX0xPVyk+LAo+
Pj4+PiArCQkJICAgICA8R0lDX1BQSSAxMAo+Pj4+PiArCQkJKEdJQ19DUFVfTUFTS19TSU1QTEUo
MikgfCBJUlFfVFlQRV9MRVZFTF9MT1cpPjsKPj4+Pj4gKwkJY2xvY2stZnJlcXVlbmN5ID0gPDI3
MDAwMDAwPjsKPj4+Pgo+Pj4+IFRoaXMgaXMgMjAxOSwgYW5kIHlldCBpdCBmZWVscyBsaWtlIDIw
MTEuIFRoaXMgc2hvdWxkIGJlIHNldHVwIGluIAo+Pj4+IHRoZQo+Pj4+IGJvb3Rsb2FkZXIsIG5v
dCBpbiBEVC4uLgo+Pj4KPj4+IFdoYXQgZXhhY3RseSAtIHRoZSB3aG9sZSBub2RlLCB0aGUgR0lD
IENQVSBtYXNrLCB0aGUKPj4+IGNsb2NrLWZyZXF1ZW5jeT8KPj4KPj4gVGhlIGNsb2NrIGZyZXF1
ZW5jeS4gSGF2aW5nIHRvIHJlbHkgb24gc3VjaCBoYWNrcyA4IHllYXJzIGRvd24gdGhlCj4+IGxp
bmUgbWFrZXMgbWUgZmVlbCBsaWtlIHdlJ3ZlIGFjaGlldmVkIG5vdGhpbmcuLi4KPj4gPC9kZXBy
ZXNzZWQ+Cj4KPiBVbmZvcnR1bmF0ZWx5IEkgY2FuIGNvbmZpcm0gdGhhdCB3aXRob3V0IGNsb2Nr
LWZyZXF1ZW5jeSBwcm9wZXJ0eSBJIAo+IGdldDoKClt0cmFjZSBzaG93aW5nIGhvdyBiYWQgZmly
bXdhcmUgY2FuIGJlXQoKSSBkb24ndCBkaXNwdXRlIHRoYXQgeW91IG5lZWQgdGhpcyBmb3IgeW91
ciBicm9rZW4gYm9vdGxvYWRlci4KCkJ1dCBpbnN0ZWFkIG9mIGFkZGluZyBoYWNrcyB1cG9uIGhh
Y2tzIHRvIHRoZSBrZXJuZWwgdG8gc3VwcG9ydApzdWJwYXIgaW1wbGVtZW50YXRpb25zLCBtYXli
ZSB5b3Ugc2hvdWxkIGNvbnNpZGVyIHB1dHRpbmcgZWZmb3J0cwppbiBhIHUtYm9vdCBwb3J0IHRo
YXQgZG9lc24ndCBzdWNrLgoKICAgICAgICAgTS4KLS0gCkphenogaXMgbm90IGRlYWQuIEl0IGp1
c3Qgc21lbGxzIGZ1bm55Li4uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
