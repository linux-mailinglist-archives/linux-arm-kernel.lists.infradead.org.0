Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B13183654
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 17:40:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hTf8Co9lT+RakrElokz6cMeYPXreDcjqK48xTvfI/RY=; b=oxdCSO37K/TZSL
	/m/XvTcDXyFdUMRUox6YtKTQpJ6rLZ7aWcYuGaKC4tea1Q8JURbGrrWyCU5Bh5nkyVXbQNc2cti2a
	Jmacun/d5qAhOXPFV8nxrCwZZ6uwTvXlBVLGjhlnJon6R8bf1/R/bERP04DBcCk+onhA6dw2mUzqu
	ToxFdQct6GNCFbZGKSbLZ1O78Sp6Gg6DdNew9pstWd4ZuTEC9Fu9nihYWw682kFYP85PsJ6U6JpoU
	UbaIXO/LgmjAew2UzaZt1y5uEvx0B26kwIy+btm8Q7b2Z8/kodSKG2QL5KI6QLeYQxnv3rSJJQEKz
	qEMjVnGdsAsGVYaf2+Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCQtA-0007S9-9w; Thu, 12 Mar 2020 16:40:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCQt3-0007RT-19
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 16:40:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 06A8E30E;
 Thu, 12 Mar 2020 09:40:42 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8EE4D3F6CF;
 Thu, 12 Mar 2020 09:40:40 -0700 (PDT)
Date: Thu, 12 Mar 2020 16:40:36 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: =?utf-8?B?UsOpbWk=?= Denis-Courmont <remi@remlab.net>
Subject: Re: [PATCH] arm64: move kimage_vaddr to .rodata
Message-ID: <20200312164035.GA21120@lakrids.cambridge.arm.com>
References: <20200312094002.153302-1-remi@remlab.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200312094002.153302-1-remi@remlab.net>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_094045_129352_12BC2DA3 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: suzuki.poulose@arm.com, catalin.marinas@arm.com, ard.biesheuvel@linaro.org,
 linux-kernel@vger.kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, maz@kernel.org, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXIgMTIsIDIwMjAgYXQgMTE6NDA6MDJBTSArMDIwMCwgUsOpbWkgRGVuaXMtQ291
cm1vbnQgd3JvdGU6Cj4gRnJvbTogUmVtaSBEZW5pcy1Db3VybW9udCA8cmVtaS5kZW5pcy5jb3Vy
bW9udEBodWF3ZWkuY29tPgo+IAo+IFRoaXMgZGF0dW0gaXMgbm90IHJlZmVyZW5jZWQgZnJvbSAu
aWRtYXAudGV4dDogaXQgZG9lcyBub3QgbmVlZCB0byBiZQo+IG1hcHBlZCBpbiBpZG1hcC4gTGV0
cyBtb3ZlIGl0IHRvIC5yb2RhdGEgYXMgaXQgaXMgbmV2ZXIgd3JpdHRlbiB0byBhZnRlcgo+IGVh
cmx5IGJvb3Qgb2YgdGhlIHByaW1hcnkgQ1BVLgo+IChNYXliZSAuZGF0YS5yb19hZnRlcl9pbml0
IHdvdWxkIGJlIGNsZWFuZXIgdGhvdWdoPykKCkNhbiB3ZSBtb3ZlIHRoaXMgaW50byBhcmNoL2Fy
bTY0L21tL21tdS5jLCB3aGVyZSB3ZSBhbHJlYWR5IGhhdmUKa2ltYWdlX3ZvZmZzZXQ6Cgp8IHU2
NCBraW1hZ2Vfdm9mZnNldCBfX3JvX2FmdGVyX2luaXQ7CnwgRVhQT1JUX1NZTUJPTChraW1hZ2Vf
dm9mZnNldCk7CgouLi4gb3IgaXMgaXQgbm90IHBvc3NpYmxlIHRvIGluaXRpYWxpemUga2ltYWdl
X3ZhZGRyIGNvcnJlY3RseSBpbiBDPwoKVGhhbmtzLApNYXJrLgoKPiAKPiBTaWduZWQtb2ZmLWJ5
OiBSw6ltaSBEZW5pcy1Db3VybW9udCA8cmVtaUByZW1sYWIubmV0Pgo+IC0tLQo+ICBhcmNoL2Fy
bTY0L2tlcm5lbC9oZWFkLlMgfCAxMiArKysrKysrLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDcg
aW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9rZXJuZWwvaGVhZC5TIGIvYXJjaC9hcm02NC9rZXJuZWwvaGVhZC5TCj4gaW5kZXggNmUwOGVl
MmI0ZDU1Li44ZTVjMGUwMDQwZTQgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9rZXJuZWwvaGVh
ZC5TCj4gKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvaGVhZC5TCj4gQEAgLTQ1NywxNyArNDU3LDE5
IEBAIFNZTV9GVU5DX1NUQVJUX0xPQ0FMKF9fcHJpbWFyeV9zd2l0Y2hlZCkKPiAgCWIJc3RhcnRf
a2VybmVsCj4gIFNZTV9GVU5DX0VORChfX3ByaW1hcnlfc3dpdGNoZWQpCj4gIAo+ICsJLnB1c2hz
ZWN0aW9uICIucm9kYXRhIiwgImEiCj4gK1NZTV9EQVRBX1NUQVJUKGtpbWFnZV92YWRkcikKPiAr
CS5xdWFkCQlfdGV4dCAtIFRFWFRfT0ZGU0VUCj4gK1NZTV9EQVRBX0VORChraW1hZ2VfdmFkZHIp
Cj4gK0VYUE9SVF9TWU1CT0woa2ltYWdlX3ZhZGRyKQo+ICsJLnBvcHNlY3Rpb24KPiArCj4gIC8q
Cj4gICAqIGVuZCBlYXJseSBoZWFkIHNlY3Rpb24sIGJlZ2luIGhlYWQgY29kZSB0aGF0IGlzIGFs
c28gdXNlZCBmb3IKPiAgICogaG90cGx1ZyBhbmQgbmVlZHMgdG8gaGF2ZSB0aGUgc2FtZSBwcm90
ZWN0aW9ucyBhcyB0aGUgdGV4dCByZWdpb24KPiAgICovCj4gIAkuc2VjdGlvbiAiLmlkbWFwLnRl
eHQiLCJhd3giCj4gIAo+IC1TWU1fREFUQV9TVEFSVChraW1hZ2VfdmFkZHIpCj4gLQkucXVhZAkJ
X3RleHQgLSBURVhUX09GRlNFVAo+IC1TWU1fREFUQV9FTkQoa2ltYWdlX3ZhZGRyKQo+IC1FWFBP
UlRfU1lNQk9MKGtpbWFnZV92YWRkcikKPiAtCj4gIC8qCj4gICAqIElmIHdlJ3JlIGZvcnR1bmF0
ZSBlbm91Z2ggdG8gYm9vdCBhdCBFTDIsIGVuc3VyZSB0aGF0IHRoZSB3b3JsZCBpcwo+ICAgKiBz
YW5lIGJlZm9yZSBkcm9wcGluZyB0byBFTDEuCj4gLS0gCj4gMi4yNS4xCj4gCj4gCj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdAo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+
IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
