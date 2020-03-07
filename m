Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A96F17CE54
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 14:10:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=veUAt7zH6yAS39CsWcoz8aRSNypjr/86OTiKac7oLBs=; b=P5s4YkbXBne01+La5WAlbFb+F
	aQnfKZB2j5bWbIXXL2Nv5tOH8N/BNzF4Bzam5BebTLMUlfiby5bYMutPWzuQJI6C1ydoWARc0ma4E
	W4x0pGIssAGqAZEUOGYmRjHgfJ3VTkFpJ4ScKTbJlIer1lHudgpw1NYCuMb/yqHtTu9FNEeimyXdq
	KHQH+jIo3lVqJkBhrT39U0Kz/QYg1zzjPZKW4eMH3XEBTFvpHlYB6tI77flKo+h7HgS3dSvXPW2h9
	mcgY11Cznq3SutHEppITWOwGlCBZhh38PM354DT2zQZ9R4KLKwbtfYtK32VZJsVo2cacgxuIFGiu+
	/gs+MZZRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAZDx-0006MG-QE; Sat, 07 Mar 2020 13:10:37 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAZDp-0006LB-LU
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 13:10:31 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 7F4DB23058;
 Sat,  7 Mar 2020 14:10:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1583586621;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1uf4sgSuEO4KOdf8x8D6sp3g7Zg8u/DJumv1+dN6104=;
 b=Sr2AX/wpTsaLJT9ULkatEcmcgDKiRWrU9g0NOoXxW654sP4fRHuho0Yjx+09Ja7OYbYoNQ
 3aJFUcdVKnlXvKwyk3tWNIwQJ5+t3Qk9ynsTlZzrpY/fHLOewLq/gaR7jDKFGTqFaU/J56
 gyDzJekCsrGrDENhzdQmEVmIlZB+Y3k=
MIME-Version: 1.0
Date: Sat, 07 Mar 2020 14:10:19 +0100
From: Michael Walle <michael@walle.cc>
To: Peng Ma <peng.ma@nxp.com>
Subject: Re: [EXT] [PATCH 2/2] arm64: dts: ls1028a: add "fsl,vf610-edma"
 compatible
In-Reply-To: <VI1PR04MB4431F901BEEF2EAB9AB1D7C6EDE00@VI1PR04MB4431.eurprd04.prod.outlook.com>
References: <20200306205403.29881-1-michael@walle.cc>
 <20200306205403.29881-2-michael@walle.cc>
 <VI1PR04MB44312A940BC5BFC7F13A5706EDE00@VI1PR04MB4431.eurprd04.prod.outlook.com>
 <e0be23f7d1307621151594dd66d2b8fd@walle.cc>
 <VI1PR04MB4431F901BEEF2EAB9AB1D7C6EDE00@VI1PR04MB4431.eurprd04.prod.outlook.com>
Message-ID: <433418e889347784bc74f3c22c23e644@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: 7F4DB23058
X-Spamd-Result: default: False [1.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_SEVEN(0.00)[11]; NEURAL_HAM(-0.00)[-0.568];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,kernel.org,arm.com,nxp.com,gmail.com];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_051030_021533_1C8FDA5C 
X-CRM114-Status: GOOD (  21.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Leo Li <leoyang.li@nxp.com>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 dmaengine@vger.kernel.org, Vladimir Oltean <olteanv@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhpIFBlbmcsCgpBbSAyMDIwLTAzLTA3IDExOjMyLCBzY2hyaWViIFBlbmcgTWE6Cj4+IC0tLS0t
T3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4+IEZyb206IE1pY2hhZWwgV2FsbGUgPG1pY2hhZWxAd2Fs
bGUuY2M+Cj4+IFNlbnQ6IDIwMjDlubQz5pyIN+aXpSAxNzoyNgo+PiBUbzogUGVuZyBNYSA8cGVu
Zy5tYUBueHAuY29tPgo+PiBDYzogZG1hZW5naW5lQHZnZXIua2VybmVsLm9yZzsgZGV2aWNldHJl
ZUB2Z2VyLmtlcm5lbC5vcmc7Cj4+IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgCj4+IFZpbm9kIEtvdWwKPj4gPHZrb3Vs
QGtlcm5lbC5vcmc+OyBSb2IgSGVycmluZyA8cm9iaCtkdEBrZXJuZWwub3JnPjsgTWFyayBSdXRs
YW5kCj4+IDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT47IFNoYXduIEd1byA8c2hhd25ndW9Aa2VybmVs
Lm9yZz47IExlbyBMaQo+PiA8bGVveWFuZy5saUBueHAuY29tPgo+PiBTdWJqZWN0OiBSZTogW0VY
VF0gW1BBVENIIDIvMl0gYXJtNjQ6IGR0czogbHMxMDI4YTogYWRkIAo+PiAiZnNsLHZmNjEwLWVk
bWEiCj4+IGNvbXBhdGlibGUKPj4gCj4+IENhdXRpb246IEVYVCBFbWFpbAo+PiAKPj4gSGkgUGVu
ZywKPj4gCj4+IEFtIDIwMjAtMDMtMDcgMDM6MDksIHNjaHJpZWIgUGVuZyBNYToKPj4+PiAtLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+Pj4+IEZyb206IE1pY2hhZWwgV2FsbGUgPG1pY2hhZWxA
d2FsbGUuY2M+Cj4+Pj4gU2VudDogMjAyMOW5tDPmnIg35pelIDQ6NTQKPj4+PiBUbzogZG1hZW5n
aW5lQHZnZXIua2VybmVsLm9yZzsgZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7Cj4+Pj4gbGlu
dXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCj4+Pj4gQ2M6IFZpbm9kIEtvdWwgPHZrb3VsQGtlcm5lbC5vcmc+OyBSb2IgSGVycmlu
ZyA8cm9iaCtkdEBrZXJuZWwub3JnPjsKPj4+PiBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBh
cm0uY29tPjsgU2hhd24gR3VvCj4+IDxzaGF3bmd1b0BrZXJuZWwub3JnPjsKPj4+PiBMZW8gTGkg
PGxlb3lhbmcubGlAbnhwLmNvbT47IFBlbmcgTWEgPHBlbmcubWFAbnhwLmNvbT47IE1pY2hhZWwg
Cj4+Pj4gV2FsbGUKPj4+PiA8bWljaGFlbEB3YWxsZS5jYz4KPj4+PiBTdWJqZWN0OiBbRVhUXSBb
UEFUQ0ggMi8yXSBhcm02NDogZHRzOiBsczEwMjhhOiBhZGQgImZzbCx2ZjYxMC1lZG1hIgo+Pj4+
IGNvbXBhdGlibGUKPj4+PiAKPj4+PiBDYXV0aW9uOiBFWFQgRW1haWwKPj4+PiAKPj4+PiBUaGUg
Ym9vdGxvYWRlciBkb2VzIHRoZSBJT01NVSBmaXh1cCBhbmQgZHluYW1pY2FsbHkgYWRkcyB0aGUg
Cj4+Pj4gImlvbW11cyIKPj4+PiBwcm9wZXJ0eSB0byBkZXZpY2VzIGFjY29yZGluZyB0byBpdHMg
Y29tcGF0aWJsZSBzdHJpbmcuIEluIGNhc2Ugb2YKPj4+PiB0aGUgZURNQSBjb250cm9sbGVyIHRo
aXMgcHJvcGVydHkgaXMgbWlzc2luZy4gQWRkIGl0LiBBZnRlciB0aGF0IHRoZQo+Pj4+IElPTU1V
IHdpbGwgd29yayB3aXRoIHRoZSBlRE1BIGNvcmUuCj4+Pj4gCj4+Pj4gU2lnbmVkLW9mZi1ieTog
TWljaGFlbCBXYWxsZSA8bWljaGFlbEB3YWxsZS5jYz4KPj4+PiAtLS0KPj4+PiBhcmNoL2FybTY0
L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS5kdHNpIHwgMiArLQo+Pj4+IDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pj4+IAo+Pj4+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS5kdHNpCj4+Pj4g
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS5kdHNpCj4+Pj4gaW5k
ZXggYjE1MmZhOTBjZjVjLi5hYTQ2N2JmZjIyMDkgMTAwNjQ0Cj4+Pj4gLS0tIGEvYXJjaC9hcm02
NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEuZHRzaQo+Pj4+ICsrKyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLmR0c2kKPj4+PiBAQCAtNDQ3LDcgKzQ0
Nyw3IEBACj4+Pj4gCj4+Pj4gICAgICAgICAgICAgICAgZWRtYTA6IGRtYS1jb250cm9sbGVyQDIy
YzAwMDAgewo+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgI2RtYS1jZWxscyA9IDwyPjsKPj4+
PiAtICAgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gImZzbCxsczEwMjhhLWVkbWEi
Owo+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiZnNsLGxzMTAyOGEt
ZWRtYSIsCj4+Pj4gKyAiZnNsLHZmNjEwLWVkbWEiOwo+Pj4gSGkgTWljaGFlbCwKPj4+IAo+Pj4g
WW91IHNob3VsZCBjaGFuZ2UgaXQgb24gYm9vdGxvYWRlciBpbnN0ZWFkIG9mIGtlcm5lbCwgU29t
ZSBSZWcgb2YKPj4+IExTMTAyOGEgaXMgZGlmZmVyZW50IGZyb20gb3RoZXJzLCBTbyB3ZSB1c2Vk
IGNvbXBhdGlibGUKPj4+ICJmc2wsbHMxMDI4YS1lZG0iIHRvIGRpc3Rpbmd1aXNoICIKPj4+IGZz
bCx2ZjYxMC1lZG1hIi4KPj4gCj4+IFllcyB0aGlzIG1pZ2h0IGJlIHRoZSByaWdodCB0aGluZyB0
byBkby4gU28gc2luY2UgaXQgaXMgTlhQcyAKPj4gYm9vdGxvYWRlciBmZWVsIGZyZWUgdG8KPj4g
Zml4IHRoYXQgOykgTG9va2luZyBhdCB0aGUgdS1ib290IGNvZGUgcmlnaHQgbm93LCBJIGRvbid0
IGV2ZW4ga25vdyBpdCAKPj4gdGhhdCBpcyB0aGUKPj4gcmlnaHQgZml4IGF0IGFsbC4gVGhlIGZp
eHVwIGNvZGUgaW4gdS1ib290IGlzIFNvQyBpbmRlcGVuZGVudCAoaXRzIGluIAo+PiBmc2xfaWNp
ZC5oIGFuZCBpcwo+PiBlbmFibGVkIHdpdGggQ09ORklHX0xTQ0gzLCBpZSB5b3VyIGNoYXNzaXMg
dmVyc2lvbikuIEZvciBleGFtcGxlLCB0aGUgCj4+IHNkaGMKPj4gZml4dXAgd2lsbCBzY2FuIHRo
ZSBub2RlcyBmb3IgImNvbXBhdGlibGUgPSBmc2wsZXNkaGMiLCB3aGljaCBpcyBhbHNvIAo+PiB0
aGUKPj4gc2Vjb25kYXJ5IGNvbXBhdGlibGUgZm9yIHRoZSAibHMxMDI4YS1lc2RoYyIgY29tcGF0
aWJsZS4KPj4gCj4+IEFuZCBoZXJlIGlzIGFub3RoZXIgcmVhc29uIHRvIGhhdmUgaXQgdGhpcyB3
YXk6IHdlIG5lZWQgYmFja3dhcmRzIAo+PiBjb21wYXRpYmlsaXR5LAo+PiB0aGUgYXJlIGFscmVh
ZHkgYm9hcmRzIG91dCB0aGVyZSB3aG9zZSBib290bG9hZGVyIHdpbGwgZml4LXVwIHRoZSAKPj4g
Im9sZCIgbm9kZS4KPj4gVGh1cyBJIGRvbid0IHNlZSBhbnkgb3RoZXIgcG9zc2liaWx0eS4KPj4g
Cj4gW1BlbmcgTWFdIE9LLCBUaGVyZSBpcyBub24gZml4ZWQgb24gdWJvb3QuCj4gSSB3aWxsIGZp
eCBpdCBvbiB1Ym9vdCwgaWYgeW91IHdhbnQgdG8gdXNlIG5vdywgcGxlYXNlIGNoYW5nZSB0aGUK
PiB1Ym9vdCBhcyBiZWxvdzoKCkFzIEkgdG9sZCB5b3UsIEkgY2Fubm90IGJlIGNoYW5nZWQgZm9y
IHNoaXBwZWQgYm9vdGxvYWRlcnMuIFdoaWxlIGl0IGNhbiAKYmUKY2hhbmdlZCBmb3IgbmV3ZXIg
b25lcywgSSB3b3VsZCByZWFsbHkgbGlrZSB0byByZXRhaW4gYmFja3dhcmRzIApjb21wYXRpYmls
aXR5LgpBbmQgc28gc2hvdWxkIHlvdS4KClRoYXQgYmVpbmcgc2FpZCwgSSBkb24ndCBzZWUgYSBw
cm9ibGVtIGluIGhhdmluZyBib3RoIGNvbXBhdGlibGVzLiBMaW51eAp3aWxsIHVzZSB0aGUgbHMx
MDI4YS1lbWRhIG9uZSBhbmQgdS1ib290IHdpbGwgZml4IHVwIHRoZSAib2xkZXIiCnZmNjEwLWVk
bWEgb25lLgoKVW5mb3J0dW5hdGVseSwgdGhpcyBwYXRjaCB3aWxsIG5vdCBvbmx5IGFmZmVjdCBl
RE1BIGJ1dCBhbGwgb3RoZXIgCmRyaXZlcnMKd2hpY2ggdXNlcyBlRE1BLCBlZy4gc291bmQsIGxw
dWFydCwgaTJjIGFuZCBtYXliZSBEU1BJLgoKLW1pY2hhZWwKCj4gCj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtL2NwdS9hcm12OC9mc2wtbGF5ZXJzY2FwZS9sczEwMjhfaWRzLmMKPiBiL2FyY2gvYXJt
L2NwdS9hcm12OC9mc2wtbGF5ZXJzY2FwZS9sczEwMjhfaWRzLmMKPiBpbmRleCBkOWQxMjVlOGJh
Li5kYjlkZDY5NTQ4IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2NwdS9hcm12OC9mc2wtbGF5ZXJz
Y2FwZS9sczEwMjhfaWRzLmMKPiArKysgYi9hcmNoL2FybS9jcHUvYXJtdjgvZnNsLWxheWVyc2Nh
cGUvbHMxMDI4X2lkcy5jCj4gQEAgLTE0LDcgKzE0LDcgQEAgc3RydWN0IGljaWRfaWRfdGFibGUg
aWNpZF90YmxbXSA9IHsKPiAgICAgICAgIFNFVF9TREhDX0lDSUQoMSwgRlNMX1NETU1DX1NUUkVB
TV9JRCksCj4gICAgICAgICBTRVRfU0RIQ19JQ0lEKDIsIEZTTF9TRE1NQzJfU1RSRUFNX0lEKSwK
PiAgICAgICAgIFNFVF9TQVRBX0lDSUQoMSwgImZzbCxsczEwMjhhLWFoY2kiLCBGU0xfU0FUQTFf
U1RSRUFNX0lEKSwKPiAtICAgICAgIFNFVF9FRE1BX0lDSUQoRlNMX0VETUFfU1RSRUFNX0lEKSwK
PiArICAgICAgIFNFVF9FRE1BX0lDSURfTFMxMDI4KEZTTF9FRE1BX1NUUkVBTV9JRCksCj4gICAg
ICAgICBTRVRfUURNQV9JQ0lEKCJmc2wsbHMxMDI4YS1xZG1hIiwgRlNMX0RNQV9TVFJFQU1fSUQp
LAo+ICAgICAgICAgU0VUX0dQVV9JQ0lEKCJmc2wsbHMxMDI4YS1ncHUiLCBGU0xfR1BVX1NUUkVB
TV9JRCksCj4gICAgICAgICBTRVRfRElTUExBWV9JQ0lEKEZTTF9ESVNQTEFZX1NUUkVBTV9JRCks
Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtZnNsLWxheWVyc2NhcGUv
ZnNsX2ljaWQuaAo+IGIvYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1mc2wtbGF5ZXJzY2FwZS9m
c2xfaWNpZC5oCj4gaW5kZXggMzdlMmZlNGU2Ni4uMTVkMGI2MGRiZSAxMDA2NDQKPiAtLS0gYS9h
cmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLWZzbC1sYXllcnNjYXBlL2ZzbF9pY2lkLmgKPiArKysg
Yi9hcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLWZzbC1sYXllcnNjYXBlL2ZzbF9pY2lkLmgKPiBA
QCAtMTQ0LDYgKzE0NCwxMCBAQCBleHRlcm4gaW50IGZtYW5faWNpZF90Ymxfc3o7Cj4gICAgICAg
ICBTRVRfR1VSX0lDSUQoImZzbCx2ZjYxMC1lZG1hIiwgc3RyZWFtaWQsIHNwYXJlM19hbXFyLFwK
PiAgICAgICAgICAgICAgICAgRURNQV9CQVNFX0FERFIpCj4gCj4gKyNkZWZpbmUgU0VUX0VETUFf
SUNJRF9MUzEwMjgoc3RyZWFtaWQpIFwKPiArICAgICAgIFNFVF9HVVJfSUNJRCgiZnNsLGxzMTAy
OGEtZWRtYSIsIHN0cmVhbWlkLCBzcGFyZTNfYW1xcixcCj4gKyAgICAgICAgICAgICAgIEVETUFf
QkFTRV9BRERSKQo+ICsKPiAgI2RlZmluZSBTRVRfR1BVX0lDSUQoY29tcGF0LCBzdHJlYW1pZCkg
XAo+ICAgICAgICAgU0VUX0dVUl9JQ0lEKGNvbXBhdCwgc3RyZWFtaWQsIG1pc2MxX2FtcXIsXAo+
ICAgICAgICAgICAgICAgICBHUFVfQkFTRV9BRERSKQo+IAo+IEJSLAo+IFBlbmcKPj4gLW1pY2hh
ZWwKPj4gCj4+PiAKPj4+IFRoYW5rcywKPj4+IFBlbmcKPj4+PiAgICAgICAgICAgICAgICAgICAg
ICAgIHJlZyA9IDwweDAgMHgyMmMwMDAwIDB4MCAweDEwMDAwPiwKPj4+PiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIDwweDAgMHgyMmQwMDAwIDB4MCAweDEwMDAwPiwKPj4+PiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIDwweDAgMHgyMmUwMDAwIDB4MCAweDEwMDAwPjsKPj4+PiAt
LQo+Pj4+IDIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
