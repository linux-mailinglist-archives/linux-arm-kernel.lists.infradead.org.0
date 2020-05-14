Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD461D34FB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 17:23:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wbics3IiX6mrrmWjrU0GAhTZFpiCv1qUfbCBMQz+sJE=; b=tg70Qq3tvAC7qU
	a+mlUb4WXSu8d2xcI0+TrwfhqjbBx7pqosD34LEV6vNZlk58FLDxG6KXVdjzaSvaDj8QZSkHeD4Aa
	12Ewnmw9cs46ZmlNyAZykg/BTaw5Y1uXMTtIc4PZ2TidyIeAsoZnAdy1IwNVKHwJS7aMPwO6iSczx
	Fjyrr93tDvA5uyIcTMi4wGUSDq1EFIhkcjTJ9TVVYoFprp6A5FsUHe2QxdPM47NKVVb00wRAWo0TU
	VQrQytrv4VGQR1ixVfxU6g9N3m5TQIgUa5WlxESnc/tp5rxgIhXmw3Ih0bVCbTiHWyeWO5abtRZ0g
	wZlKRiNxu2xaYiok1Fcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZFhm-0007g9-17; Thu, 14 May 2020 15:23:26 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZFhW-0007RW-7r
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 15:23:16 +0000
X-Originating-IP: 90.76.143.236
Received: from localhost (lfbn-tou-1-1075-236.w90-76.abo.wanadoo.fr
 [90.76.143.236]) (Authenticated sender: antoine.tenart@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 24BF41BF20E;
 Thu, 14 May 2020 15:22:53 +0000 (UTC)
MIME-Version: 1.0
In-Reply-To: <20200324104918.29578-1-hhhawa@amazon.com>
References: <20200324104918.29578-1-hhhawa@amazon.com>
From: Antoine Tenart <antoine.tenart@bootlin.com>
To: hhhawa@amazon.com, robh+dt@kernel.org, tsahee@annapurnalabs.com,
 arm@kernel.org
Subject: Re: [PATCH v5 0/6] Amazon's Annapurna Labs Alpine v3 device-tree
Message-ID: <158946977180.3480.12435085393834819053@kwain>
Date: Thu, 14 May 2020 17:22:52 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_082310_548397_9EC757F1 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.201 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, benh@amazon.com, linux-kernel@vger.kernel.org,
 talel@amazon.com, linux-arm-kernel@lists.infradead.org, jonnyc@amazon.com,
 ronenk@amazon.com, hanochu@amazon.com, dwmw@amazon.co.uk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

W0FkZGluZyBhcm0tc29jXQoKSGkgSGFubmEsCgpTb3JyeSBmb3IgdGhlIGRlbGF5LCB0aGUgc2Vy
aWVzIHdhcyBidXJpZWQgaW4gbXkgbWFpbHMuLi4KCkFja2VkLWJ5OiBBbnRvaW5lIFRlbmFydCA8
YW50b2luZS50ZW5hcnRAYm9vdGxpbi5jb20+CgpBcm5kLCBPbG9mLCBjb3VsZCB5b3UgdGFrZSB0
aGlzIHNlcmllcyBkaXJlY3RseSBhcyB0aGlzIHdpbGwgYmUgdGhlIG9ubHkKQWxwaW5lIHBhdGNo
ZXMgZm9yIHRoaXMgcmVsZWFzZSAoYW5kIGZvciBhIGxvbmcgdGltZSk/CgpUaGFua3MhCkFudG9p
bmUKClF1b3RpbmcgSGFubmEgSGF3YSAoMjAyMC0wMy0yNCAxMTo0OToxMikKPiBUaGlzIHNlcmll
cyBvcmdhbml6ZSB0aGUgQW1hem9uJ3MgQW5uYXB1cm5hIExhYnMgQWxwaW5lIGRldmljZSB0cmVl
Cj4gYmluZGluZ3MsIGRldmljZSB0cmVlIGZvbGRlciBhbmQgYWRkcyBuZXcgZGV2aWNlIHRyZWUg
Zm9yIEFscGluZSB2My4KPiAKPiBDaGFuZ2VzIHNpbmNlIHY0Ogo+IC0tLS0tLS0tLS0tLS0tLS0t
Cj4gLSBSZS1vcmRlciBub2RlcyBpbiBpbmNyZWFzaW5nIG9yZGVyLgo+IC0gQWRkIGRpc2FibGUg
dG8gVUFSVCBub2Rlcy4KPiAtIEFkZCBtaXNzaW5nIFVBUlQgbm9kZXMgKDEsMiwzKQo+IC0gQWRk
IGNvbW1lbnRzIGZvciBHSUMvVUFSVAo+IC0gQWRkIGlvLWZhYnJpYyBidXMsIGFuZCBtb3ZlIHVh
cnQgbm9kZXMgaW50byBpdC4KPiAtIEZpeCBNU0l4IHJhbmdlIGFjY29yZGluZyBBbHBpbmUgZnVu
Y3Rpb24gc3BlYwo+IAo+IENoYW5nZXMgc2luY2UgdjM6Cj4gLS0tLS0tLS0tLS0tLS0tLS0KPiAt
IHJlYmFzZWQgYW5kIHJldGVzdGVkIGZvciB0YWcgTGludXggNS42LXJjMgo+IAo+IENoYW5nZXMg
c2luY2UgdjI6Cj4gLS0tLS0tLS0tLS0tLS0tLS0KPiAtIE1vdmUgdXAgYSBsZXZlbCBmb3IgRFQg
bm9kZSB3aXRob3V0IG1taW8gcmVncy4KPiAtIERyb3AgZGV2aWNlX3R5cGUgZnJvbSBzZXJpYWxA
ZmQ4ODMwMDAgbm9kZS4KPiAtIE1pbm9yIGNoYW5nZSBuYW1lIG9mIFBDSWUgbm9kZSB0bzogcGNp
ZUBmYmQwMDAwMAo+IAo+IENoYW5nZXMgc2luY2UgdjE6Cj4gLS0tLS0tLS0tLS0tLS0tLS0KPiAt
IFJlbmFtZSBhbCxhbHBpbmUgRFQgYmluZGluZyB0byBhbWF6b24sYWxwaW5lCj4gLSBSZW5hbWUg
YWwgZm9sZGVyIHRvIGJlIGFtYXpvbgo+IC0gVXBkYXRlIG1haW50YWluZXJzIG9mIGFtYXpvbixh
bHBpbmUgRFQKPiAtIEFkZCBtaXNzaW5nIGFscGluZS12MiBEVCBiaW5kaW5nCj4gLSBGaXggeWFt
bCBzY2hlbWFzIGZvciBhbHBpbmUtdjMtZXZwLmR0czoKPiAgICAgICAgIC0gI3NpemUtY2VsbHM6
MDowOiAwIGlzIG5vdCBvbmUgb2YgWzEsIDJdCj4gICAgICAgICAtIGFyY2gtdGltZXI6IGludGVy
cnVwdHM6IFtbMSwgMTMsIDgsIDEsIDE0LCA4LCAxLCAxMSwgOCwgMSwgMTAsCj4gICAgICAgICA4
XV0gaXMgdG9vIHNob3J0Cj4gLSBDaGFuZ2UgY29tcGF0aWJsZSBzdHJpbmcgb2YgYWxwaW5lLXYz
LWV2cCB0byBhbWF6b24sYWwKPiAKPiBIYW5uYSBIYXdhICg1KToKPiAgIGR0LWJpbmRpbmdzOiBh
cm06IGFtYXpvbjogcmVuYW1lIGFsLGFscGluZSBEVCBiaW5kaW5nIHRvIGFtYXpvbixhbAo+ICAg
YXJtNjQ6IGR0czogYW1hem9uOiByZW5hbWUgYWwgZm9sZGVyIHRvIGJlIGFtYXpvbgo+ICAgZHQt
YmluZGluZ3M6IGFybTogYW1hem9uOiB1cGRhdGUgbWFpbnRhaW5lcnMgb2YgYW1hem9uLGFsIERU
IGJpbmRpbmdzCj4gICBkdC1iaW5kaW5nczogYXJtOiBhbWF6b246IGFkZCBtaXNzaW5nIGFscGlu
ZS12MiBEVCBiaW5kaW5nCj4gICBkdC1iaW5kaW5nczogYXJtOiBhbWF6b246IGFkZCBBbWF6b24g
QW5uYXB1cm5hIExhYnMgQWxwaW5lIFYzCj4gCj4gUm9uZW4gS3J1cG5payAoMSk6Cj4gICBhcm02
NDogZHRzOiBhbWF6b246IGFkZCBBbWF6b24ncyBBbm5hcHVybmEgTGFicyBBbHBpbmUgdjMgc3Vw
cG9ydAo+IAo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vYWwsYWxwaW5lLnlhbWwgICAg
fCAgMjEgLQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vYW1hem9uLGFsLnlhbWwgICAg
fCAgMzMgKysKPiAgTUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwgICAyICstCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvTWFrZWZpbGUgICAgICAgICAgICAgICAg
ICB8ICAgMiArLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3thbCA9PiBhbWF6b259L01ha2VmaWxl
ICAgfCAgIDEgKwo+ICAuLi4vYm9vdC9kdHMve2FsID0+IGFtYXpvbn0vYWxwaW5lLXYyLWV2cC5k
dHMgfCAgIDAKPiAgLi4uL2Jvb3QvZHRzL3thbCA9PiBhbWF6b259L2FscGluZS12Mi5kdHNpICAg
IHwgICAwCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvYW1hem9uL2FscGluZS12My1ldnAuZHRzICB8
ICAyNCArKwo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2FtYXpvbi9hbHBpbmUtdjMuZHRzaSAgICAg
fCA0MDggKysrKysrKysrKysrKysrKysrCj4gIDkgZmlsZXMgY2hhbmdlZCwgNDY4IGluc2VydGlv
bnMoKyksIDIzIGRlbGV0aW9ucygtKQo+ICBkZWxldGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9hbCxhbHBpbmUueWFtbAo+ICBjcmVhdGUgbW9kZSAx
MDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9hbWF6b24sYWwueWFt
bAo+ICByZW5hbWUgYXJjaC9hcm02NC9ib290L2R0cy97YWwgPT4gYW1hem9ufS9NYWtlZmlsZSAo
NjQlKQo+ICByZW5hbWUgYXJjaC9hcm02NC9ib290L2R0cy97YWwgPT4gYW1hem9ufS9hbHBpbmUt
djItZXZwLmR0cyAoMTAwJSkKPiAgcmVuYW1lIGFyY2gvYXJtNjQvYm9vdC9kdHMve2FsID0+IGFt
YXpvbn0vYWxwaW5lLXYyLmR0c2kgKDEwMCUpCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL2FtYXpvbi9hbHBpbmUtdjMtZXZwLmR0cwo+ICBjcmVhdGUgbW9kZSAxMDA2
NDQgYXJjaC9hcm02NC9ib290L2R0cy9hbWF6b24vYWxwaW5lLXYzLmR0c2kKPiAKPiAtLSAKPiAy
LjE3LjEKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCgotLSAKQW50b2luZSBUw6luYXJ0LCBCb290bGluCkVt
YmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcKaHR0cHM6Ly9ib290bGluLmNvbQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
