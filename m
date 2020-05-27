Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1621E4EC3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 22:02:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vkwPi9XNWsXkJjDuCpZGe0qmOl7NDj8ve0ZpUwz2U7o=; b=Iamja7Nj9HA/nxHETIXwUvOgS
	o/71VLvHm01lY01Y+UYG2OoRe0jfhNNqsHSnd/VVS/kNE6sK3PeWoKeSLOowj2pMsNHAwau2ma5qx
	laXuNUlLL/7Lux12PlxvlCOKAejEnrMmrSSRqSGQeW1ialLRI4y9MHRayywBWsRrO0JNybOvgtSyt
	czUa4JN7xLi2/U1hZyFUrJW2URbOu2h0cPysRAdbEy6KJzJVHDw7b7nE8qT3B3RTuN4cSReQ8spRj
	CYTQ5gtpkeV2k9CdF1hQGWRcoQMJgVO5RyUgqZRxWxPRRMwnDQsO5rPNEsDywNmUkfGc0r+e4tlXt
	lgKNXJJ3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je2GI-00023O-N5; Wed, 27 May 2020 20:02:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je2G8-00022j-8k
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 20:02:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7394C31B;
 Wed, 27 May 2020 13:02:38 -0700 (PDT)
Received: from [10.57.2.168] (unknown [10.57.2.168])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 45AE93F52E;
 Wed, 27 May 2020 13:02:36 -0700 (PDT)
Subject: Re: [PATCH] arm64: vdso32: force vdso32 to be compiled as -marm
From: Robin Murphy <robin.murphy@arm.com>
To: Nick Desaulniers <ndesaulniers@google.com>
References: <20200526173117.155339-1-ndesaulniers@google.com>
 <2f58c2a4-0f37-d507-7767-00161c6b5d98@arm.com>
 <CAKwvOd=Oy_OfRbL6-q-3CAHxWBNBKE+HkfNfgCiP726u+4dU1Q@mail.gmail.com>
 <34f261f7-c4b5-a628-9a4c-eb97b75fba52@arm.com>
Message-ID: <d2bf55cf-8b72-3f88-3c0b-5dfb4e120f7f@arm.com>
Date: Wed, 27 May 2020 21:02:33 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <34f261f7-c4b5-a628-9a4c-eb97b75fba52@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_130240_394962_86FC4F8E 
X-CRM114-Status: GOOD (  19.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Naohiro Aota <naohiro.aota@wdc.com>, Stephen Boyd <swboyd@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wNS0yNyAyMDoyOCwgUm9iaW4gTXVycGh5IHdyb3RlOgo+IE9uIDIwMjAtMDUtMjcg
MTg6NTUsIE5pY2sgRGVzYXVsbmllcnMgd3JvdGU6Cj4+IE9uIFdlZCwgTWF5IDI3LCAyMDIwIGF0
IDY6NDUgQU0gUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4gCj4+IHdyb3RlOgo+
Pj4KPj4+IE9uIDIwMjAtMDUtMjYgMTg6MzEsIE5pY2sgRGVzYXVsbmllcnMgd3JvdGU6Cj4+Pj4g
Q3VzdG9tIHRvb2xjaGFpbnMgdGhhdCBtb2RpZnkgdGhlIGRlZmF1bHQgdGFyZ2V0IHRvIC1tdGh1
bWIgY2Fubm90Cj4+Pj4gY29tcGlsZSB0aGUgYXJtNjQgY29tcGF0IHZkc28zMiwgYXMKPj4+PiBh
cmNoL2FybTY0L2luY2x1ZGUvYXNtL3Zkc28vY29tcGF0X2dldHRpbWVvZmRheS5oCj4+Pj4gY29u
dGFpbnMgYXNzZW1ibHkgdGhhdCdzIGludmFsaWQgaW4gLW10aHVtYi7CoCBGb3JjZSB0aGUgdXNl
IG9mIC1tYXJtLAo+Pj4+IGFsd2F5cy4KPj4+Cj4+PiBGV0lXLCB0aGlzIHNlZW1zIHN1c3BpY2lv
dXMgLSB0aGUgb25seSBhc3NlbWJseSBpbnN0cnVjdGlvbnMgSSBzZWUgdGhlcmUKPj4+IGFyZSBT
V0koU1ZDKSwgTVJSQywgYW5kIGEgTU9WLCBhbGwgb2Ygd2hpY2ggZXhpc3QgaW4gVGh1bWIgZm9y
IHRoZQo+Pj4gLW1hcmNoPWFybXY3YSBiYXNlbGluZSB0aGF0IHdlIHNldC4KPj4+Cj4+PiBPbiBh
IGh1bmNoLCBJJ3ZlIGp1c3QgYm9kZ2VkICJWRFNPX0NGTEFHUyArPSAtbXRodW1iIiBpbnRvIG15
IHRyZWUgYW5kCj4+PiBidWlsdCBhIFRodW1iIFZEU08gcXVpdGUgaGFwcGlseSB3aXRoIFVidW50
dSAxOS4wNCdzCj4+PiBnY2MtYXJtLWxpbnV4LWdudWVhYmloZi4gV2hhdCB3YXMgdGhlIGFjdHVh
bCBmYWlsdXJlIHlvdSBzYXc/Cj4+Cj4+IMKgRnJvbSB0aGUgbGluayBpbiB0aGUgY29tbWl0IG1l
c3NhZ2U6IGB3cml0ZSB0byByZXNlcnZlZCByZWdpc3RlciAnUjcnYAo+PiBodHRwczovL2dvZGJv
bHQub3JnL3ovendyN2laCj4+IElJVUMgcjcgaXMgcmVzZXJ2ZWQgZm9yIHRoZSBmcmFtZSBwb2lu
dGVyIGluIFRIVU1CPwo+IAo+IEl0IGNhbiBiZSwgaWYgeW91IGNob29zZSB0byBidWlsZCB3aXRo
IGZyYW1lIHBvaW50ZXJzIGFuZCB0aGUgY29tbW9uIAo+IGZyYW1lIHBvaW50ZXIgQUJJIGZvciBU
aHVtYiBjb2RlIHRoYXQgdXNlcyByNy4gSG93ZXZlciBpdCBjYW4gYWxzbyBiZSAKPiBmb3Igb3Ro
ZXIgdGhpbmdzIGxpa2UgdGhlIHN5c2NhbGwgbnVtYmVyIGluIHRoZSBBcm0gc3lzY2FsbCBBQkkg
dG9vLiBJIAoKT2gsIGFuZCBmb3IgdGhlIGF2b2lkYW5jZSBvZiBhbWJpZ3VpdHkgdGhhdCdzICJB
cm0iIGFzIGluIHRoZSAzMi1iaXQgQXJtIAphcmNoaXRlY3R1cmUgcG9ydCwgbm90IGEgc3BlY2lm
aWMgaW5zdHJ1Y3Rpb24gc2V0LgoKUm9iaW4uCgo+IHRha2UgaXQgQ2xhbmcgaGFzIGRlY2lkZWQg
dGhhdCB3cml0aW5nIHN5c2NhbGwgd3JhcHBlcnMgd2l0aCBtaW5pbWFsIAo+IGlubGluZSBhc20g
aXMgbm90IGEgdGhpbmcgcGVvcGxlIGRlc2VydmUgdG8gZG8gd2l0aG91dCBhcmJpdHJhcnkgb3Ro
ZXIgCj4gcmVzdHJpY3Rpb25zPwo+IAo+PiBXaGF0IGlzIHRoZSBpbXBsaWNpdCBkZWZhdWx0IG9m
IHlvdXIgZ2NjLWFybS1saW51eC1nbnVlYWJpaGYgYXQgLU8yPwo+PiAtbXRodW1iLCBvciAtbWFy
bT8KPiAKPiBBcyBEYXZlIHBvaW50ZWQgb3V0LCBsaWtlIHRoZSBwcm9iYWJsZSBtYWpvcml0eSBv
ZiB1c2VycyBpdCdzIFRodW1iOgo+IAo+ICQgYXJtLWxpbnV4LWdudWVhYmloZi1nY2MgLXYKPiBV
c2luZyBidWlsdC1pbiBzcGVjcy4KPiBDT0xMRUNUX0dDQz1hcm0tbGludXgtZ251ZWFiaWhmLWdj
Ywo+IENPTExFQ1RfTFRPX1dSQVBQRVI9L3Vzci9saWIvZ2NjLWNyb3NzL2FybS1saW51eC1nbnVl
YWJpaGYvOC9sdG8td3JhcHBlcgo+IFRhcmdldDogYXJtLWxpbnV4LWdudWVhYmloZgo+IENvbmZp
Z3VyZWQgd2l0aDogLi4vc3JjL2NvbmZpZ3VyZSAtdiAtLXdpdGgtcGtndmVyc2lvbj0nVWJ1bnR1
L0xpbmFybyAKPiA4LjMuMC02dWJ1bnR1MScgLS13aXRoLWJ1Z3VybD1maWxlOi8vL3Vzci9zaGFy
ZS9kb2MvZ2NjLTgvUkVBRE1FLkJ1Z3MgCj4gLS1lbmFibGUtbGFuZ3VhZ2VzPWMsYWRhLGMrKyxn
byxkLGZvcnRyYW4sb2JqYyxvYmotYysrIC0tcHJlZml4PS91c3IgCj4gLS13aXRoLWdjYy1tYWpv
ci12ZXJzaW9uLW9ubHkgLS1wcm9ncmFtLXN1ZmZpeD0tOCAtLWVuYWJsZS1zaGFyZWQgCj4gLS1l
bmFibGUtbGlua2VyLWJ1aWxkLWlkIC0tbGliZXhlY2Rpcj0vdXNyL2xpYiAKPiAtLXdpdGhvdXQt
aW5jbHVkZWQtZ2V0dGV4dCAtLWVuYWJsZS10aHJlYWRzPXBvc2l4IC0tbGliZGlyPS91c3IvbGli
IAo+IC0tZW5hYmxlLW5scyAtLXdpdGgtc3lzcm9vdD0vIC0tZW5hYmxlLWNsb2NhbGU9Z251IAo+
IC0tZW5hYmxlLWxpYnN0ZGN4eC1kZWJ1ZyAtLWVuYWJsZS1saWJzdGRjeHgtdGltZT15ZXMgCj4g
LS13aXRoLWRlZmF1bHQtbGlic3RkY3h4LWFiaT1uZXcgLS1lbmFibGUtZ251LXVuaXF1ZS1vYmpl
Y3QgCj4gLS1kaXNhYmxlLWxpYml0bSAtLWRpc2FibGUtbGlicXVhZG1hdGggLS1kaXNhYmxlLWxp
YnF1YWRtYXRoLXN1cHBvcnQgCj4gLS1lbmFibGUtcGx1Z2luIC0tZW5hYmxlLWRlZmF1bHQtcGll
IC0td2l0aC1zeXN0ZW0temxpYiAKPiAtLXdpdGgtdGFyZ2V0LXN5c3RlbS16bGliIC0tZW5hYmxl
LW11bHRpYXJjaCAtLWVuYWJsZS1tdWx0aWxpYiAKPiAtLWRpc2FibGUtc2psai1leGNlcHRpb25z
IC0td2l0aC1hcmNoPWFybXY3LWEgLS13aXRoLWZwdT12ZnB2My1kMTYgCj4gLS13aXRoLWZsb2F0
PWhhcmQgLS13aXRoLW1vZGU9dGh1bWIgLS1kaXNhYmxlLXdlcnJvciAtLWVuYWJsZS1tdWx0aWxp
YiAKPiAtLWVuYWJsZS1jaGVja2luZz1yZWxlYXNlIC0tYnVpbGQ9YWFyY2g2NC1saW51eC1nbnUg
Cj4gLS1ob3N0PWFhcmNoNjQtbGludXgtZ251IC0tdGFyZ2V0PWFybS1saW51eC1nbnVlYWJpaGYg
Cj4gLS1wcm9ncmFtLXByZWZpeD1hcm0tbGludXgtZ251ZWFiaWhmLSAKPiAtLWluY2x1ZGVkaXI9
L3Vzci9hcm0tbGludXgtZ251ZWFiaWhmL2luY2x1ZGUKPiBUaHJlYWQgbW9kZWw6IHBvc2l4Cj4g
Z2NjIHZlcnNpb24gOC4zLjAgKFVidW50dS9MaW5hcm8gOC4zLjAtNnVidW50dTEpCj4gCj4gKHll
YWgsIEkgZGlkbid0IGFjdHVhbGx5IG5lZWQgdG8gaGFjayBteSBtYWtlZmlsZSBhdCBhbGwpCj4g
Cj4gUm9iaW4uCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+IGxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
