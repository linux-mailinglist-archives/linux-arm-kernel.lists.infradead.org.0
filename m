Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BB774716
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 08:22:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YjT1dT8ssPIbhVv7QplvXa+y2mGA4K4UqYEKzfohIPc=; b=T4n6+1YhxbamLsDYdUWKbaRdu
	oh7pgAaXg1i8ZFbg0Jm1COTn6HbXqgOD9U9q2fRJ/4W3ovoG+LxuRwqSlrJ55jBQ3ESzSeqpI511G
	gBuhZcWMZqg4NXSTWqvLA4yndRgGP2g8x2eRSYVCq2GFRYGSkNK4Dro0Y7xFWF2vV+noNKjGVT1Gy
	zCnSVYZeiuZAFvC+lLWZfhkEDAlCnZWnspF+eFgHzb4vJt1XB3vmOndkw8R2NcQ1G+lmrGWuhms1u
	+O3cCYESBlTRWsOTvbxCPCYpFx9CeKn5ZlTc3R69xXX/REl4Cwpb23WGomB5K7a2huC5ufXUr7QNU
	3W95QtD3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqX9A-00052v-OV; Thu, 25 Jul 2019 06:22:37 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqX8l-0004tE-EW; Thu, 25 Jul 2019 06:22:13 +0000
X-Originating-IP: 81.250.144.103
Received: from [10.30.1.20] (lneuilly-657-1-5-103.w81-250.abo.wanadoo.fr
 [81.250.144.103]) (Authenticated sender: alex@ghiti.fr)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 5DDD5E000E;
 Thu, 25 Jul 2019 06:22:06 +0000 (UTC)
Subject: Re: [PATCH REBASE v4 11/14] mips: Adjust brk randomization offset to
 fit generic version
To: Andrew Morton <akpm@linux-foundation.org>
References: <20190724055850.6232-1-alex@ghiti.fr>
 <20190724055850.6232-12-alex@ghiti.fr>
From: Alexandre Ghiti <alex@ghiti.fr>
Message-ID: <1ba4061a-c026-3b9e-cd91-3ed3a26fce1b@ghiti.fr>
Date: Thu, 25 Jul 2019 08:22:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190724055850.6232-12-alex@ghiti.fr>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_232211_907108_7034DE7D 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Paul Burton <paul.burton@mips.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, James Hogan <jhogan@kernel.org>,
 linux-fsdevel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-mips@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org, Luis Chamberlain <mcgrof@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNy8yNC8xOSA3OjU4IEFNLCBBbGV4YW5kcmUgR2hpdGkgd3JvdGU6Cj4gVGhpcyBjb21taXQg
c2ltcGx5IGJ1bXBzIHVwIHRvIDMyTUIgYW5kIDFHQiB0aGUgcmFuZG9tIG9mZnNldAo+IG9mIGJy
aywgY29tcGFyZWQgdG8gOE1CIGFuZCAyNTZNQiwgZm9yIDMyYml0IGFuZCA2NGJpdCByZXNwZWN0
aXZlbHkuCj4KPiBTdWdnZXN0ZWQtYnk6IEtlZXMgQ29vayA8a2Vlc2Nvb2tAY2hyb21pdW0ub3Jn
Pgo+IFNpZ25lZC1vZmYtYnk6IEFsZXhhbmRyZSBHaGl0aSA8YWxleEBnaGl0aS5mcj4KPiBSZXZp
ZXdlZC1ieTogS2VlcyBDb29rIDxrZWVzY29va0BjaHJvbWl1bS5vcmc+Cj4gLS0tCj4gICBhcmNo
L21pcHMvbW0vbW1hcC5jIHwgNyArKysrLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRp
b25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvbWlwcy9tbS9tbWFw
LmMgYi9hcmNoL21pcHMvbW0vbW1hcC5jCj4gaW5kZXggYTdlODRiMmU3MWQ3Li5mYWE1YWE2MTUz
ODkgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9taXBzL21tL21tYXAuYwo+ICsrKyBiL2FyY2gvbWlwcy9t
bS9tbWFwLmMKPiBAQCAtMTYsNiArMTYsNyBAQAo+ICAgI2luY2x1ZGUgPGxpbnV4L3JhbmRvbS5o
Pgo+ICAgI2luY2x1ZGUgPGxpbnV4L3NjaGVkL3NpZ25hbC5oPgo+ICAgI2luY2x1ZGUgPGxpbnV4
L3NjaGVkL21tLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9zaXplcy5oPgo+ICAgCj4gICB1bnNpZ25l
ZCBsb25nIHNobV9hbGlnbl9tYXNrID0gUEFHRV9TSVpFIC0gMTsJLyogU2FuZSBjYWNoZXMgKi8K
PiAgIEVYUE9SVF9TWU1CT0woc2htX2FsaWduX21hc2spOwo+IEBAIC0xODksMTEgKzE5MCwxMSBA
QCBzdGF0aWMgaW5saW5lIHVuc2lnbmVkIGxvbmcgYnJrX3JuZCh2b2lkKQo+ICAgCXVuc2lnbmVk
IGxvbmcgcm5kID0gZ2V0X3JhbmRvbV9sb25nKCk7Cj4gICAKPiAgIAlybmQgPSBybmQgPDwgUEFH
RV9TSElGVDsKPiAtCS8qIDhNQiBmb3IgMzJiaXQsIDI1Nk1CIGZvciA2NGJpdCAqLwo+ICsJLyog
MzJNQiBmb3IgMzJiaXQsIDFHQiBmb3IgNjRiaXQgKi8KPiAgIAlpZiAoVEFTS19JU18zMkJJVF9B
RERSKQo+IC0JCXJuZCA9IHJuZCAmIDB4N2ZmZmZmdWw7Cj4gKwkJcm5kID0gcm5kICYgU1pfMzJN
Owo+ICAgCWVsc2UKPiAtCQlybmQgPSBybmQgJiAweGZmZmZmZmZ1bDsKPiArCQlybmQgPSBybmQg
JiBTWl8xRzsKPiAgIAo+ICAgCXJldHVybiBybmQ7Cj4gICB9CgpIaSBBbmRyZXcsCgpJIGhhdmUg
anVzdCBub3RpY2VkIHRoYXQgdGhpcyBwYXRjaCBpcyB3cm9uZywgZG8geW91IHdhbnQgbWUgdG8g
c2VuZAphbm90aGVyIHZlcnNpb24gb2YgdGhlIGVudGlyZSBzZXJpZXMgb3IgaXMgdGhlIGZvbGxv
d2luZyBkaWZmIGVub3VnaCA/ClRoaXMgbWlzdGFrZSBnZXRzIGZpeGVkIGFueXdheSBpbiBwYXRj
aCAxMy8xNCB3aGVuIGl0IGdldHMgbWVyZ2VkIHdpdGggdGhlCmdlbmVyaWMgdmVyc2lvbi4KClNv
cnJ5IGFib3V0IHRoYXQsCgpUaGFua3MsCgpBbGV4CgpkaWZmIC0tZ2l0IGEvYXJjaC9taXBzL21t
L21tYXAuYyBiL2FyY2gvbWlwcy9tbS9tbWFwLmMKaW5kZXggYTdlODRiMmU3MWQ3Li5mZjZhYjg3
ZTljNTYgMTAwNjQ0Ci0tLSBhL2FyY2gvbWlwcy9tbS9tbWFwLmMKKysrIGIvYXJjaC9taXBzL21t
L21tYXAuYwpAQCAtMTYsNiArMTYsNyBAQAogwqAjaW5jbHVkZSA8bGludXgvcmFuZG9tLmg+CiDC
oCNpbmNsdWRlIDxsaW51eC9zY2hlZC9zaWduYWwuaD4KIMKgI2luY2x1ZGUgPGxpbnV4L3NjaGVk
L21tLmg+CisjaW5jbHVkZSA8bGludXgvc2l6ZXMuaD4KCiDCoHVuc2lnbmVkIGxvbmcgc2htX2Fs
aWduX21hc2sgPSBQQUdFX1NJWkUgLSAxO8KgIC8qIFNhbmUgY2FjaGVzICovCiDCoEVYUE9SVF9T
WU1CT0woc2htX2FsaWduX21hc2spOwpAQCAtMTg5LDExICsxOTAsMTEgQEAgc3RhdGljIGlubGlu
ZSB1bnNpZ25lZCBsb25nIGJya19ybmQodm9pZCkKIMKgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGxv
bmcgcm5kID0gZ2V0X3JhbmRvbV9sb25nKCk7CgogwqDCoMKgwqDCoMKgwqAgcm5kID0gcm5kIDw8
IFBBR0VfU0hJRlQ7Ci3CoMKgwqDCoMKgwqAgLyogOE1CIGZvciAzMmJpdCwgMjU2TUIgZm9yIDY0
Yml0ICovCivCoMKgwqDCoMKgwqAgLyogMzJNQiBmb3IgMzJiaXQsIDFHQiBmb3IgNjRiaXQgKi8K
IMKgwqDCoMKgwqDCoMKgIGlmIChUQVNLX0lTXzMyQklUX0FERFIpCi3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHJuZCA9IHJuZCAmIDB4N2ZmZmZmdWw7CivCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJuZCA9IHJuZCAmIChTWl8zMk0gLSAxKTsKIMKgwqDCoMKgwqDCoMKgIGVsc2UK
LcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcm5kID0gcm5kICYgMHhmZmZmZmZmdWw7CivC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJuZCA9IHJuZCAmIChTWl8xRyAtIDEpOwoKIMKg
wqDCoMKgwqDCoMKgIHJldHVybiBybmQ7CiDCoH0KCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
