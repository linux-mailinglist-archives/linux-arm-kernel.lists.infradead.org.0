Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FF73C9FF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 13:29:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LH4Px1c+WTB6RslmvJZ7DBd8dAovS6FUrGA8ei2OTfU=; b=CI9sovf3uX323w
	j+uZ+N0ayJHanm2VQQbpsCIhps20H41fq1j/Smm64AsDWsQG8598+zrx6WSkkUodPnLaOPWoSRj+0
	QtB0SXgMKbMHmuFJ29qbXr2RvZNNPfqHlwGQOfvWdMYxcBqvdw0ylc+t0gsunikek1Y2Nd/0El0kI
	IfVuNyJlpDgxwOhS26awRKmEFwDMUEZTg/vBbLaRaXYD51QYta5r5SSxd4UxQEjxuhvMzBUeOH/Ay
	5MtmlF3jC60zr3v5UldfDL1S+NM5Pl5OjqzjcurzX6/vuKBpx2SGfLHlfHsiGTHIrWcWHe6zu8R0M
	jU+ZlPwDMQwj3ZMRTOgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haeyJ-00087q-2Z; Tue, 11 Jun 2019 11:29:47 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haexN-0007uI-Mg
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 11:28:52 +0000
X-Originating-IP: 131.228.32.188
Received: from localhost (unknown [131.228.32.188])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 9B399FF80B;
 Tue, 11 Jun 2019 11:28:34 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Jan =?utf-8?Q?Kundr=C3=A1t?= <jan.kundrat@cesnet.cz>
Subject: Re: [PATCH] ARM: mvebu_v7_defconfig: fix Ethernet on Clearfog
In-Reply-To: <0f5e7886-f722-44ac-b64f-1f372a52938d@cesnet.cz>
References: <8f2f4c517f1664f362badc2a0f9af8e3531cba87.1558105715.git.jan.kundrat@cesnet.cz>
 <87pnogzxmy.fsf@FE-laptop> <871fc85b-5f0a-40a4-ade2-0701796bcd9a@cesnet.cz>
 <87mujkzwkr.fsf@FE-laptop> <0609d750-de5e-49cb-97b5-43772c5bbe0d@cesnet.cz>
 <0f5e7886-f722-44ac-b64f-1f372a52938d@cesnet.cz>
Date: Tue, 11 Jun 2019 13:28:32 +0200
Message-ID: <87wohspdi7.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_042850_803571_7C63A6B9 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: Baruch Siach <baruch@tkos.co.il>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SmFuIEt1bmRyw6F0IDxqYW4ua3VuZHJhdEBjZXNuZXQuY3o+IHdyaXRlczoKCj4gT24gc29ib3Rh
IDE4LiBrdsSbdG5hIDIwMTkgMDo1MDoyOCBDRVNULCBKYW4gS3VuZHLDoXQgd3JvdGU6Cj4+PiBX
ZWxsLCB0aGlzIGlzIGp1c3QgYWJvdXQgY29uZmlndXJhdGlvbiwgSSBkb24ndCBjb25zaWRlciB0
aGlzIGlzCj4+PiBzb21ldGhpbmcgdGhhdCBpcyBhIGNhbmRpZGF0ZSBmb3IgYSBmaXguCj4+PiAK
Pj4+IElmIHRoZXJlIGlzIGEgcmVncmVzc2lvbiwgdGhlbiwgaXQgaXMgbWF5YmUgbG9jYXRlZCBp
biB0aGUgS2NvbmZpZwo+Pj4gZGVwZW5kZW5jeS4KPj4+IAo+Pj4gT2YgY291cnNlIEkgY2FuIGNo
YW5nZSBteSBtaW5kIHdpdGggZ29vZCBhcmd1bWVudHMgOikKPj4KPj4gSGkgR3JlZ29yeSwKPj4g
SSBhZ3JlZSB0aGF0IGl0J3MganVzdCBhIGNvbmZpZyBidWcsIGJ1dCBpdCdzIGFsc28gc29tZXRo
aW5nIAo+PiB3aGljaCBjYW4gc2lsZW50bHkgcHJvZHVjZSBicm9rZW4gc3lzdGVtcy4gSWYgdGhp
cyBpcyBub3QgZml4ZWQsIAo+PiBwZW9wbGUgYnVpbGRpbmcgdGhlaXIgNS4yIGtlcm5lbHMgd2ls
bCBub3QgaGF2ZSB3b3JraW5nIG5ldHdvcmsgCj4+IG9uIENsZWFyZm9nIHVubGVzcyB0aGV5IHRh
a2UgYW4gZXh0cmEgYWN0aW9uLiBGb3IgZXhhbXBsZSwgYSAKPj4gQnVpbGRyb290IGRlZmNvbmZp
ZyB0aGF0J3MgYmVlbiBhdmFpbGFibGUgZm9yIHF1aXRlIHNvbWUgdGltZSAKPj4gKGFuZCB3aGlj
aCB1c2VzIGp1c3QgYG12ZWJ1X3Y3X2RlZmNvbmZpZ2AgZm9yIGtlcm5lbCkgc3VkZGVubHkgCj4+
IGJlY29tZXMgYnJva2VuLgo+Pgo+PiBJc24ndCB0aGUgd2hvbGUgcG9pbnQgb2YgdGhlIC1yYyBy
ZWxlYXNlIHRvIGZpbmQgKmFuZCogZml4IGJ1Z3MgCj4+IGVhcmx5PyBUaGlzIHRyaXZpYWwgcGF0
Y2ggZG9lcyBub3QgaW50cm9kdWNlIGFueSBuZXcgb3IgdW50ZXN0ZWQgCj4+IGNvZGUuIEkgbWFk
ZSBhIGNob2ljZSB0byB0ZXN0IGEgcHJlLXJlbGVhc2Uga2VybmVsLCBJIGhpdCBhIGJ1ZyAKPj4g
LS0gbm8gYmlnIGRlYWwuIEkgZm91bmQgdGhlIHJvb3QgY2F1c2UsIEkgc2VudCBhIHRyaXZpYWwg
Zml4IAo+PiB1cHN0cmVhbSwgYW5kIG5vdyBJJ20gdG9sZCBieSBhIG1haW50YWluZXIgdGhhdCB0
aGV5IHdpbGwgbGV0IAo+PiB0aGUgbmV4dCBrZXJuZWwgdmVyc2lvbiwgd2hpY2ggaXMgYWJvdXQg
c2V2ZW4gLXJjIHJlbGVhc2VzIGF3YXksIAo+PiBiZSByZWxlYXNlZCB3aXRob3V0IGEgZnVsbHkg
ZnVuY3Rpb25pbmcgbmV0d29yaywgSSBhbSBzdXJwcmlzZWQgCj4+IGJ5IHRoYXQuIEkgd291bGQg
aGF2ZSB1bmRlcnN0b29kIHRoaXMgYmV0dGVyIGlmIHdlIHdlcmUgYXQgdGhlIAo+PiBmaW5hbCAt
cmMgc3RhZ2UsIGJ1dCBkdXJpbmcgdGhlIG1lcmdlIHdpbmRvdz8gT3IgaXMgdGhhdCBwZXJoYXBz
IAo+PiBhIG1pc3VuZGVyc3RhbmRpbmcgYW5kIHlvdSdyZSBwbGFubmluZyB0byBzZW5kIHRoaXMg
aW4gdGltZSAKPj4gYWZ0ZXIgLXJjMT8KPgo+IEhpIEdyZWdvcnksCj4gd2FzIEkgc3VjY2Vzc2Z1
bCBpbiBwZXJzdWFkaW5nIHlvdSB0aGF0IHRoaXMgcGF0Y2ggc2hvdWxkIGJlIGluY2x1ZGVkIGlu
IAo+IHRoZSA1LjIgdHJlZSwgc28gdGhhdCBDbGVhcmZvZyBCYXNlIGhhcyBhbGwgdGhyZWUgRXRo
ZXJuZXQgaW50ZXJmYWNlcz8KCkZpbmFsbHkgSSBtb3ZlZCB0aGUgY29tbWl0IGZyb20gbXZlYnUv
YXJtIHRvIG12ZWJ1L2ZpeGVzLiBJIHN0aWxsIHRoaW5rCnRoZSBwcm9ibGVtIGlzIGF0IGRyaXZl
ciBsZXZlbCwgYnV0IEkgZGlkbid0IHRha2UgZW5vdWdoIHRpbWUgdG8gZmluZAp3aGVyZSBhbmQg
d2UgZGlkbid0IGhhdmUgYW55IGZlZWRiYWNrIGZyb20gdGhlIGF1dGhvciBvZiB0aGUgaW5pdGls
YQpwYXRjaC4KClNvIGxldCdzIHRyeSB0byBwdXNoIGl0IHRvIGZpeGVzLCBJIHdpbGwgZG8gdGhl
IHB1bGwgcmVxdWVzdCBmb3IgYXJtLXNvYwpiZWZvcmUgZW5kIG9mIHRoZSB3ZWVrLgoKR3JlZ29y
eQoKPgo+IFdpdGgga2luZCByZWdhcmRzLAo+IEphbgoKLS0gCkdyZWdvcnkgQ2xlbWVudCwgQm9v
dGxpbgpFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2luZWVyaW5nCmh0dHA6Ly9ib290bGlu
LmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
