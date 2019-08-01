Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B417DB12
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 14:13:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YqvW/x1/im3Jqqhovx9pKkcyp3LBR4LkShwlbnNgwgU=; b=aGVZoIaZDQguZ8
	AvUBhr9bZ3DN0p61MjlGMT0QczG2SL7nBEbQn97yx5/G+EjV1wCSmXhWD6T28oCNn9GC3+JoA230a
	odGr0rsMgzKWh5BaIRiDxfs9JmyDb0MVq5NpxdR/1dm6vtNMthnUtvGwGRnZ1oy2Fr+BUHvxoTF1s
	3sZNJA/NzygLfnXtz4imDthwMoerU+NjNOUZBaAunT8HI04xrAq4RkNiX9DMf2rIdTSxD/z/fdYHm
	lnPpzSqyi1T8m6YGKento7OY9FoEnf5CqQ9sNgp/XIcyQPSwSjDYlsbE2dFHvccpsvsnbFEzLdSV0
	lQ8MBFqcOiVbD772mLhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht9xq-0004Wn-EF; Thu, 01 Aug 2019 12:13:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht9wT-0002oF-Un
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 12:12:23 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 52C70214DA;
 Thu,  1 Aug 2019 12:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564661541;
 bh=oIaRqmpy4nbMnyVSHQ2jwoHghsxRXBYnSkrs4LmjELU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XpjBoZOM9WEMmJnVixUe8KlMMnHzHLMwsEfaOe5HpMAunBpn20UoOMHV/gjCXcw14
 e6uSzA0A769JajDOkm2zd4fd5l3J8MfUlCD0Peh/QIJRPoVq4LzNVUBu+1ItDmblca
 aS2iudqWh/M9bSjEGPHLN0UITfRFIXT9oMYdGsgQ=
Date: Thu, 1 Aug 2019 13:12:17 +0100
From: Will Deacon <will@kernel.org>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH] arm64/mm: fix variable 'tag' set but not used
Message-ID: <20190801121216.gsvneelth6scj57s@willie-the-truck>
References: <1564605498-17629-1-git-send-email-cai@lca.pw>
 <20190801120121.6cmtho3wd32nzfoz@willie-the-truck>
 <5E9F5456-3B82-4CB8-868B-1C7B4CBE4CBC@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5E9F5456-3B82-4CB8-868B-1C7B4CBE4CBC@lca.pw>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_051222_218370_A58A6D41 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, andreyknvl@google.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBBdWcgMDEsIDIwMTkgYXQgMDg6MDc6MTJBTSAtMDQwMCwgUWlhbiBDYWkgd3JvdGU6
Cj4gCj4gCj4gPiBPbiBBdWcgMSwgMjAxOSwgYXQgODowMSBBTSwgV2lsbCBEZWFjb24gPHdpbGxA
a2VybmVsLm9yZz4gd3JvdGU6Cj4gPiAKPiA+IE9uIFdlZCwgSnVsIDMxLCAyMDE5IGF0IDA0OjM4
OjE4UE0gLTA0MDAsIFFpYW4gQ2FpIHdyb3RlOgo+ID4+IFdoZW4gQ09ORklHX0tBU0FOX1NXX1RB
R1M9biwgc2V0X3RhZygpIGlzIGNvbXBpbGVkIGF3YXkuIEdDQyB0aHJvd3MgYQo+ID4+IHdhcm5p
bmcsCj4gPj4gCj4gPj4gbW0va2FzYW4vY29tbW9uLmM6IEluIGZ1bmN0aW9uICdfX2thc2FuX2tt
YWxsb2MnOgo+ID4+IG1tL2thc2FuL2NvbW1vbi5jOjQ2NDo1OiB3YXJuaW5nOiB2YXJpYWJsZSAn
dGFnJyBzZXQgYnV0IG5vdCB1c2VkCj4gPj4gWy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGVdCj4g
Pj4gIHU4IHRhZyA9IDB4ZmY7Cj4gPj4gICAgIF5+fgo+ID4+IAo+ID4+IEZpeCBpdCBieSBtYWtp
bmcgX190YWdfc2V0KCkgYSBzdGF0aWMgaW5saW5lIGZ1bmN0aW9uLgo+ID4+IAo+ID4+IFNpZ25l
ZC1vZmYtYnk6IFFpYW4gQ2FpIDxjYWlAbGNhLnB3Pgo+ID4+IC0tLQo+ID4+IGFyY2gvYXJtNjQv
aW5jbHVkZS9hc20vbWVtb3J5LmggfCA2ICsrKysrLQo+ID4+IDEgZmlsZSBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+PiAKPiA+PiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm02NC9pbmNsdWRlL2FzbS9tZW1vcnkuaCBiL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vbWVtb3J5
LmgKPiA+PiBpbmRleCBiN2JhNzU4MDk3NTEuLjk2NDViMTM0MGFmZSAxMDA2NDQKPiA+PiAtLS0g
YS9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL21lbW9yeS5oCj4gPj4gKysrIGIvYXJjaC9hcm02NC9p
bmNsdWRlL2FzbS9tZW1vcnkuaAo+ID4+IEBAIC0yMTAsNyArMjEwLDExIEBAIHN0YXRpYyBpbmxp
bmUgdW5zaWduZWQgbG9uZyBrYXNscl9vZmZzZXQodm9pZCkKPiA+PiAjZGVmaW5lIF9fdGFnX3Jl
c2V0KGFkZHIpCXVudGFnZ2VkX2FkZHIoYWRkcikKPiA+PiAjZGVmaW5lIF9fdGFnX2dldChhZGRy
KQkJKF9fdTgpKCh1NjQpKGFkZHIpID4+IDU2KQo+ID4+ICNlbHNlCj4gPj4gLSNkZWZpbmUgX190
YWdfc2V0KGFkZHIsIHRhZykJKGFkZHIpCj4gPj4gK3N0YXRpYyBpbmxpbmUgY29uc3Qgdm9pZCAq
X190YWdfc2V0KGNvbnN0IHZvaWQgKmFkZHIsIHU4IHRhZykKPiA+PiArewo+ID4+ICsJcmV0dXJu
IGFkZHI7Cj4gPj4gK30KPiA+IAo+ID4gV2h5IGRvZXNuJ3QgdGhpcyB0cmlnZ2VyIGEgd2Fybmlu
ZyBpbiBwYWdlX3RvX3ZpcnQoKSwgd2hpY2ggcGFzc2VzIGFuCj4gPiB1bnNpZ25lZCBsb25nIGZv
ciB0aGUgYWRkcmVzcyBwYXJhbWV0ZXI/Cj4gCj4gI2RlZmluZSBwYWdlX3RvX3ZpcnQocGFnZSkg
4oCmIF9fdGFnX3NldChfX2FkZHIsIHBhZ2Vfa2FzYW5fdGFnKHBhZ2UpKTsg4oCmCj4gCj4gc3Rh
dGljIGlubGluZSB1OCBwYWdlX2thc2FuX3RhZyhjb25zdCBzdHJ1Y3QgcGFnZSAqcGFnZSkKPiB7
CQo+IAlyZXR1cm4gMHhmZjsKPiB9Cj4gCj4gR0NDIHdpbGwgc2VlIHRoYXQg4oCccGFnZeKAnSBp
cyB1c2VkLgoKTm8sIEkgbWVhbiBiZWNhdXNlIHlvdSdyZSBtYWtpbmcgYWRkciAnY29uc3Qgdm9p
ZCAqJy4KCi9tZSBmaW5kcyBhIHRvb2xjaGFpbi4KCkxvb2s6CgoKSW4gZmlsZSBpbmNsdWRlZCBm
cm9tIC4vYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9wZ3RhYmxlLWh3ZGVmLmg6OCwKICAgICAgICAg
ICAgICAgICBmcm9tIC4vYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9wcm9jZXNzb3IuaDozNSwKICAg
ICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9tdXRleC5oOjE5LAogICAgICAgICAg
ICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L2tlcm5mcy5oOjEyLAogICAgICAgICAgICAgICAg
IGZyb20gLi9pbmNsdWRlL2xpbnV4L3N5c2ZzLmg6MTYsCiAgICAgICAgICAgICAgICAgZnJvbSAu
L2luY2x1ZGUvbGludXgva29iamVjdC5oOjIwLAogICAgICAgICAgICAgICAgIGZyb20gLi9pbmNs
dWRlL2xpbnV4L29mLmg6MTcsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgv
aXJxZG9tYWluLmg6MzUsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvYWNw
aS5oOjEzLAogICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2FjcGkvYXBlaS5oOjksCiAg
ICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvYWNwaS9naGVzLmg6NSwKICAgICAgICAgICAg
ICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9hcm1fc2RlaS5oOjE0LAogICAgICAgICAgICAgICAg
IGZyb20gYXJjaC9hcm02NC9rZXJuZWwvYXNtLW9mZnNldHMuYzoxMDoKLi9pbmNsdWRlL2xpbnV4
L21tLmg6IEluIGZ1bmN0aW9uIOKAmGxvd21lbV9wYWdlX2FkZHJlc3PigJk6Ci4vYXJjaC9hcm02
NC9pbmNsdWRlL2FzbS9tZW1vcnkuaDozMDk6MTQ6IHdhcm5pbmc6IHBhc3NpbmcgYXJndW1lbnQg
MSBvZiDigJhfX3RhZ19zZXTigJkgbWFrZXMgcG9pbnRlciBmcm9tIGludGVnZXIgd2l0aG91dCBh
IGNhc3QgWy1XaW50LWNvbnZlcnNpb25dCiAgICBfX3RhZ19zZXQoX19hZGRyLCBwYWdlX2thc2Fu
X3RhZyhwYWdlKSk7ICBcCiAgICAgICAgICAgICAgXn5+fn5+Ci4vaW5jbHVkZS9saW51eC9tbS5o
OjEzMDI6OTogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmHBhZ2VfdG9fdmlydOKAmQog
IHJldHVybiBwYWdlX3RvX3ZpcnQocGFnZSk7CiAgICAgICAgIF5+fn5+fn5+fn5+fgouL2FyY2gv
YXJtNjQvaW5jbHVkZS9hc20vbWVtb3J5Lmg6MjEzOjQ5OiBub3RlOiBleHBlY3RlZCDigJhjb25z
dCB2b2lkICrigJkgYnV0IGFyZ3VtZW50IGlzIG9mIHR5cGUg4oCYbG9uZyB1bnNpZ25lZCBpbnTi
gJkKIHN0YXRpYyBpbmxpbmUgY29uc3Qgdm9pZCAqX190YWdfc2V0KGNvbnN0IHZvaWQgKmFkZHIs
IHU4IHRhZykKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH5+fn5+fn5+fn5+
fl5+fn4KLi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL21lbW9yeS5oOjMwOTo0OiB3YXJuaW5nOiBp
bml0aWFsaXphdGlvbiBvZiDigJhsb25nIHVuc2lnbmVkIGludOKAmSBmcm9tIOKAmGNvbnN0IHZv
aWQgKuKAmSBtYWtlcyBpbnRlZ2VyIGZyb20gcG9pbnRlciB3aXRob3V0IGEgY2FzdCBbLVdpbnQt
Y29udmVyc2lvbl0KICAgIF9fdGFnX3NldChfX2FkZHIsIHBhZ2Vfa2FzYW5fdGFnKHBhZ2UpKTsg
IFwKICAgIF5+fn5+fn5+fgouL2luY2x1ZGUvbGludXgvbW0uaDoxMzAyOjk6IG5vdGU6IGluIGV4
cGFuc2lvbiBvZiBtYWNybyDigJhwYWdlX3RvX3ZpcnTigJkKICByZXR1cm4gcGFnZV90b192aXJ0
KHBhZ2UpOwogICAgICAgICBefn5+fn5+fn5+fn4KCgpJZiB5b3UncmUgZ29pbmcgdG8gc2VuZCBw
YXRjaGVzIHJlbW92aW5nIGNvbXBpbGVyIHdhcm5pbmdzLCBwbGVhc2UgaGF2ZSB0aGUKY291cnRl
c3kgdG8gdGVzdCB0aGVtIGZpcnN0LgoKV2lsbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
