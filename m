Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 930551A9CEB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 13:41:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w44esJmVfOO+3W3Iam+ZjJF1hC7sQ3O72R34e6bKXAs=; b=feEw5DQyLRN2LlGfKc1qPBYdk
	VPoxGNG7bJ+TvwklbfS1rW2fhhN2989mbJfDBfBU4vT14iQCAHG8YK88bBLm7sAtcm41FPsd8NA5J
	1+j2Mo/f/DQs8dpEAwtaRj3aam4wvpppNiY+d3nbgLwBd0lgFEbLFt0o7OB68OA1vjgXWuDPdcp8A
	WPrFCkZTlHlLetdHHT1msy52waDQIUYQEXw9fShJdDAshYPE7uWYRydXc1W/cwmJCMARr6V1hapO7
	ObKU16cm3D/7ZVn1L89YHJf2Ip+oHUc2sWUaHcdmruFsLTbqqxHCjl69k2JMv4bR5k6LEq7Ov7QYl
	f0iv0uPrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOgQ2-0007FQ-Uj; Wed, 15 Apr 2020 11:41:26 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOgPv-0007Es-6E; Wed, 15 Apr 2020 11:41:21 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id E7CA0AEE7;
 Wed, 15 Apr 2020 11:41:15 +0000 (UTC)
Subject: Re: [PATCH v3 2/2] arm64: dts: realtek: Add RTD1319 SoC and Realtek
 PymParticle EVB
To: James Tai <james.tai@realtek.com>
References: <20200204145207.28622-1-james.tai@realtek.com>
 <20200204145207.28622-3-james.tai@realtek.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <842e8a9d-cdd6-cb85-ce85-17f20ff7b626@suse.de>
Date: Wed, 15 Apr 2020 13:41:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200204145207.28622-3-james.tai@realtek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_044119_533710_51A2B783 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

SGkgSmFtZXMsCgpBIGNvdXBsZSBtb3JlIG5pdHMgdG8gY29uc2lkZXIgZm9yIHY0OgoKQW0gMDQu
MDIuMjAgdW0gMTU6NTIgc2NocmllYiBKYW1lcyBUYWk6Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMzE5LXB5bXBhcnRpY2xlLmR0cyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcmVhbHRlay9ydGQxMzE5LXB5bXBhcnRpY2xlLmR0cwo+IG5ldyBmaWxlIG1vZGUg
MTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi4yYTM2ZDIyMGZlZjYKPiAtLS0gL2Rldi9udWxs
Cj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEzMTktcHltcGFydGljbGUu
ZHRzCj4gQEAgLTAsMCArMSw0MyBAQAo+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQ
TC0yLjAtb3ItbGF0ZXIgT1IgQlNELTItQ2xhdXNlKQo+ICsvKgo+ICsgKiBDb3B5cmlnaHQgKGMp
IDIwMTkgUmVhbHRlayBTZW1pY29uZHVjdG9yIENvcnAuCgoyMDE5LTIwMjA/IChhbHNvIGVsc2V3
aGVyZSkKCj4gKyAqLwo+ICsKPiArL2R0cy12MS87Cj4gKwo+ICsjaW5jbHVkZSAicnRkMTMxOS5k
dHNpIgo+ICsKPiArLyB7Cj4gKwljb21wYXRpYmxlID0gInJlYWx0ZWsscHltcGFydGljbGUiLCAi
cmVhbHRlayxydGQxMzE5IjsKPiArCW1vZGVsID0gIlJlYWx0ZWsgUHltUGFydGljbGUgRVZCIjsK
PiArCj4gKwltZW1vcnlAMmUwMDAgewo+ICsJCWRldmljZV90eXBlID0gIm1lbW9yeSI7Cj4gKwkJ
cmVnID0gPDB4MmUwMDAgMHgzZmZkMjAwMD47IC8qIGJvb3QgUk9NIHRvIDEgR2lCIG9yIDIgR2lC
ICovCj4gKwl9Owo+ICsKPiArCWNob3NlbiB7Cj4gKwkJc3Rkb3V0LXBhdGggPSAic2VyaWFsMDo0
NjA4MDBuOCI7Cj4gKwl9Owo+ICsKPiArCWFsaWFzZXMgewo+ICsJCXNlcmlhbDAgPSAmdWFydDA7
Cj4gKwkJc2VyaWFsMSA9ICZ1YXJ0MTsKPiArCQlzZXJpYWwyID0gJnVhcnQyOwo+ICsJfTsKPiAr
fTsKPiArCj4gKy8qIGRlYnVnIGNvbnNvbGUgKEoxKSAqLwo+ICsmdWFydDAgewo+ICsJc3RhdHVz
ID0gIm9rYXkiOwo+ICt9Owo+ICsKPiArLyogTS4yIHNsb3QgKENPTjgpICovCgpBbHNvIEoxNCBh
bmQgQ09OMiAodW5sZXNzIHRoZSBib2FyZCBpcyBtaXNsYWJlbGVkPykuCgovKiBKMTQgYW5kIE0u
MiBzbG90cyAoQ09OMiwgQ09OOCkgKi8gPwoKPiArJnVhcnQxIHsKPiArCXN0YXR1cyA9ICJkaXNh
YmxlZCI7Cj4gK307Cj4gKwo+ICsvKiBHUElPIGNvbm5lY3RvciAoVDEpICovCj4gKyZ1YXJ0MiB7
Cj4gKwlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICt9Owo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTMxOS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZWFs
dGVrL3J0ZDEzMTkuZHRzaQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAw
MDAwLi4xZGNlZTAwMDA5Y2QKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yZWFsdGVrL3J0ZDEzMTkuZHRzaQo+IEBAIC0wLDAgKzEsMTIgQEAKPiArLy8gU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9yLWxhdGVyIE9SIEJTRC0yLUNsYXVzZSkKPiAr
LyoKPiArICogUmVhbHRlayBSVEQxMzE5IFNvQwo+ICsgKgo+ICsgKiBDb3B5cmlnaHQgKGMpIDIw
MTkgUmVhbHRlayBTZW1pY29uZHVjdG9yIENvcnAuCj4gKyAqLwo+ICsKPiArI2luY2x1ZGUgInJ0
ZDEzeHguZHRzaSIKPiArCj4gKy8gewo+ICsJY29tcGF0aWJsZSA9ICJyZWFsdGVrLHJ0ZDEzMTki
Owo+ICt9Owo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTN4
eC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEzeHguZHRzaQo+IG5ldyBm
aWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi5mNmQ3M2YxODM0NWQKPiAtLS0g
L2Rldi9udWxsCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEzeHguZHRz
aQo+IEBAIC0wLDAgKzEsMjEzIEBACj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BM
LTIuMC1vci1sYXRlciBPUiBCU0QtMi1DbGF1c2UpCj4gKy8qCj4gKyAqIFJlYWx0ZWsgUlREMTN4
eCBTb0MgZmFtaWx5Cj4gKyAqCj4gKyAqIENvcHlyaWdodCAoYykgMjAxOSBSZWFsdGVrIFNlbWlj
b25kdWN0b3IgQ29ycC4KPiArICovCj4gKwo+ICsvbWVtcmVzZXJ2ZS8JMHgwMDAwMDAwMDAwMDAw
MDAwIDB4MDAwMDAwMDAwMDAyZTAwMDsgLyogQm9vdCBST00gKi8KCkNhbiB5b3UgY2hlY2sgd2hl
dGhlciB5b3VyIFUtQm9vdCBhbmQgTEsgcmVzcGVjdGl2ZWx5IG5lZWQgdGhpcyAKbWVtcmVzZXJ2
ZSBlbnRyeSwgaGVyZSBhbmQgZm9yIHByZXZpb3VzIFNvQ3M/IEJlY2F1c2UgZm9yIFJURDE2eHgg
d2UgCmRvbid0IHNlZW0gdG8gaGF2ZSBhbnkgbWVtcmVzZXJ2ZSBlbnRyaWVzIGF0IGFsbC4gV2Ug
ZG8gaGF2ZSBpdCBpbiAKcnRkMTM5eC5kdHNpLCBydGQxMjl4LmR0c2kgYW5kIHJ0ZDExOTUuZHRz
aS4KClVucmVsYXRlZDogU2luY2Ugd2UncmUgY2FydmluZyBvdXQgdGhlIDJlMDAwIG9yIHNvIGZy
b20gL21lbW9yeSBub2RlIGFuZCAKbWFwcGluZyByYW5nZXMgZm9yIC9zb2MsIEkndmUgYmVlbiB3
b25kZXJpbmcgd2hldGhlciB3ZSBzaG91bGQgcmVwcmVzZW50IAp0aGUgQm9vdCBST00gYXMgbm9k
ZSBzb21laG93LiBCdXQgc2luY2UgaXQncyBhIFJPTSB3aXRoIChJIGFzc3VtZSkgCmJpbmFyeSBj
b2RlIG9ubHksIEkgZGlkbid0IHNlZSBhbnkgbmVlZCB0byBoYXZlIGl0IGFjY2Vzc2libGUgYXMg
bXRkLXJvbSAKZGV2aWNlLCBzbyBpdCdzIHdheSBkb3duIG15IHRvLWRvIGxpc3QgdG8gcmVzZWFy
Y2ggaG93IG90aGVyIG1haW5saW5lIApwbGF0Zm9ybXMgbWlnaHQgbW9kZWwgdGhlaXIgYm9vdCBS
T01zLi4uIChtYXliZSB5b3VyIHRlYW0gaGFzIHRpbWUsIG9yIApzb21lb25lIHJlYWRpbmcgaGFw
cGVucyB0byBrbm93PykKCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJu
ZWwvZ2l0L25leHQvbGludXgtbmV4dC5naXQvdHJlZS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvbXRkL210ZC1waHlzbWFwLnR4dAoKPiArL21lbXJlc2VydmUvCTB4MDAwMDAwMDAw
MDAyZTAwMCAweDAwMDAwMDAwMDAxMDAwMDA7IC8qIEJvb3QgbG9hZGVyICovCgpJcyB0aGlzIGEp
IGNvcnJlY3RseSBzaXplZCAobm90IDB4ZDIwMDA/KSBhbmQgYikgc3RpbGwgbmVlZGVkPyBJIHRo
b3VnaHQgCnRoZSBkb2N1bWVudGVkIHN1Yi0weDEwMDAwMCBtZW1vcnkgY29ycnVwdGlvbiB3ZXJl
IGZpeGVkIGluIG5ld2VyIEJTUHM/Cgo+ICsvbWVtcmVzZXJ2ZS8JMHgwMDAwMDAwMDBmNDAwMDAw
IDB4MDAwMDAwMDAwMDUwMDAwMDsgLyogVmlkZW8gRlcgKi8KPiArL21lbXJlc2VydmUvCTB4MDAw
MDAwMDAwZjkwMDAwMCAweDAwMDAwMDAwMDA1MDAwMDA7IC8qIEF1ZGlvIEZXICovCj4gKy9tZW1y
ZXNlcnZlLwkweDAwMDAwMDAwMTAwMDAwMDAgMHgwMDAwMDAwMDAwMDE0MDAwOyAvKiBBdWRpbyBG
VyBSQU0gKi8KW3NuaXBdCgpBcmUgdGhlc2UgbmVlZGVkIGZvciB0aGUgYm9vdGxvYWRlciBub3Qg
dG8gb3ZlcndyaXRlIHByZWxvYWRlZCBmaXJtd2FyZSwgCm9yIGNvdWxkIHRoZXNlIGJlY29tZSAv
bWVtLXJlc2VydmUgc3ViLW5vZGVzIGluc3RlYWQ/CgpMb25nLXRlcm0gSSdtIGFzc3VtaW5nIHdl
IHdvdWxkIG1vdmUgdGhlIHJlc3BvbnNpYmlsaXR5IGZvciBsb2FkaW5nIAp0aGVzZSB0byB0aGUg
bmV3IGtlcm5lbCBkcml2ZXJzIChzbyB0aGF0IHRoZSBib290bG9hZGVyIGRvZXNuJ3QgbmVlZCB0
byAKdGFrZSBjYXJlIGFueW1vcmUpIGFuZCBzaGlwIHRoZSBuZWVkZWQgYmxvYnMgaW4gbGludXgt
ZmlybXdhcmUuZ2l0PwoKT3IgaXMgdGhlIHZpZGVvIEZXIG5lZWRlZCBieSB0aGUgYm9vdGxvYWRl
ciBpdHNlbGYgZm9yIEhETUkvRFAgb3V0cHV0PwoKVGhhbmtzLApBbmRyZWFzCgotLSAKU1VTRSBT
b2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJICk1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJu
YmVyZywgR2VybWFueQpHRjogRmVsaXggSW1lbmTDtnJmZmVyCkhSQiAzNjgwOSAoQUcgTsO8cm5i
ZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
