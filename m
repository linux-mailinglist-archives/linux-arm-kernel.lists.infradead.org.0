Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 123863BAF0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 19:26:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PvoObL1e8dWb0xsso3sYjCraiNfn4xqyfM06bKOqYaY=; b=laR2CPA3fFGGGo
	JsiWsJvwU3kREiy+pngNZhI5P9+76Ph3cjpSsiAwbOeAHCEx0/aBmHLmWJf286h50lu7V1uCqKdEY
	Rt95z69YLZPz3SUmsTKOIXTliEjeUldvfFdldwqtIG5cnuC4R6qviNHn1FfbWOpOskq2CLslKbUxl
	TLwdpkfwEGO+84VKuPrShQYwVuFo0tQPh2p+j2KWsjnIGRjqW0bECWSlVLFUsiVga4Pi4d0PkoYGP
	Nr7vhEwd5WKOCwxIGQVa+FiaBDeukvObQj0o69Nqy7hHMwDG0h2ZZO1zzj8Lj2FZxS59LLbb3yA3q
	wTz3SXs8XdD7F2dL272g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haO41-0005QF-UC; Mon, 10 Jun 2019 17:26:33 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haO3o-0005Ow-8J
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 17:26:21 +0000
Received: by mail-vs1-xe43.google.com with SMTP id d128so5920618vsc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 10:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qSkPLH9vDolbJlk5XvbY4CtX+5a/+fS/moYDl/wZCzc=;
 b=X3Tymq+lxR/tOVHDBtZz1webVwVCP2s2oH0yXtVQRx3F32sM/CMH9jfTJyOBuymJKm
 AbMh0J4rg6ag0Vr4a6szOR3XFKbXYEsuf2pDjpqlniCE88NG1+QgtA+I4bUYf20y6G5j
 qbmJ5YPzUYXwPkWRulV6e89Bz7Yi1Tac77kreGT6csAXiPEOiieFiFQIazrLMFSy6nkR
 os18qdAJHoUPec7y2vIYdi37NRolbTVYeS8VJKE9CK5NgF0+axbk/jMZYOoulIbJ90sY
 M840savZid7ZE8+ALK7/oDvvu4+jmXF3g66cBYskWNvrubs9qRXg+eJjoCiWfwQz2O5u
 SlJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qSkPLH9vDolbJlk5XvbY4CtX+5a/+fS/moYDl/wZCzc=;
 b=YnY3hwrtei8JHGxT9DImNSpVOiCBlK/ltj52gu4U6UEqfsZ2qnCF7VwSj/fouPbGeZ
 lagvvYWIZHjiB7/Vn8GdItFj81a1Gu8+tz1Ui8SlmLgnjodZaQS3qYog+QoEdqBgJYbf
 jchKkc3E491Acu3rHE4CrDGkrjf1fV0Hts/sWX7xsd1EuQI8P+YMPFzKqyyHPAA/nLl8
 ZMC9rVCiW/nCIKSuXa1aRCefEjSTwIDC4/aMsvcsoOi/QjQ/k1y68NPugKr64gKkVfKl
 AleJ+UBsyDu3vPjafPRXu5yiy39Rg/JmFO1lWAdJF9kAqLYwWlpXpKdTqm1r5SPwJId4
 CBaw==
X-Gm-Message-State: APjAAAWXKD1ibOow2MyE072oNFYGfEa2GILSS6Yirj7e148CheoZ6591
 w+ZKxp2xQ6GVriyFF0/qSH3dvw==
X-Google-Smtp-Source: APXvYqzCcBGzDjZnnnKYmBeaeDQFD2Zt4lSSiUrvfHl8DQYI4Et3/NEeN/1OKaheEtva1osez+Nw7w==
X-Received: by 2002:a67:8712:: with SMTP id j18mr28306727vsd.4.1560187578484; 
 Mon, 10 Jun 2019 10:26:18 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id d78sm4039758vke.41.2019.06.10.10.26.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 10:26:17 -0700 (PDT)
Message-ID: <1560187575.6132.70.camel@lca.pw>
Subject: Re: [PATCH -next] arm64/mm: fix a bogus GFP flag in pgd_alloc()
From: Qian Cai <cai@lca.pw>
To: Will Deacon <will.deacon@arm.com>, Mark Rutland <mark.rutland@arm.com>
Date: Mon, 10 Jun 2019 13:26:15 -0400
In-Reply-To: <20190610114326.GF15979@fuggles.cambridge.arm.com>
References: <1559656836-24940-1-git-send-email-cai@lca.pw>
 <20190604142338.GC24467@lakrids.cambridge.arm.com>
 <20190610114326.GF15979@fuggles.cambridge.arm.com>
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_102620_363661_F1D5285D 
X-CRM114-Status: GOOD (  21.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org, mhocko@kernel.org,
 linux-mm@kvack.org, vdavydov.dev@gmail.com, hannes@cmpxchg.org,
 cgroups@vger.kernel.org, akpm@linux-foundation.org, rppt@linux.ibm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyMDE5LTA2LTEwIGF0IDEyOjQzICswMTAwLCBXaWxsIERlYWNvbiB3cm90ZToKPiBP
biBUdWUsIEp1biAwNCwgMjAxOSBhdCAwMzoyMzozOFBNICswMTAwLCBNYXJrIFJ1dGxhbmQgd3Jv
dGU6Cj4gPiBPbiBUdWUsIEp1biAwNCwgMjAxOSBhdCAxMDowMDozNkFNIC0wNDAwLCBRaWFuIENh
aSB3cm90ZToKPiA+ID4gVGhlIGNvbW1pdCAiYXJtNjQ6IHN3aXRjaCB0byBnZW5lcmljIHZlcnNp
b24gb2YgcHRlIGFsbG9jYXRpb24iCj4gPiA+IGludHJvZHVjZWQgZW5kbGVzcyBmYWlsdXJlcyBk
dXJpbmcgYm9vdCBsaWtlLAo+ID4gPiAKPiA+ID4ga29iamVjdF9hZGRfaW50ZXJuYWwgZmFpbGVk
IGZvciBwZ2RfY2FjaGUoMjg1OmNocm9ueWQuc2VydmljZSkgKGVycm9yOgo+ID4gPiAtMiBwYXJl
bnQ6IGNncm91cCkKPiA+ID4gCj4gPiA+IEl0IHR1cm5zIG91dCBfX0dGUF9BQ0NPVU5UIGlzIHBh
c3NlZCB0byBrZXJuZWwgcGFnZSB0YWJsZSBhbGxvY2F0aW9ucwo+ID4gPiBhbmQgdGhlbiBsYXRl
ciBtZW1jZyBmaW5kcyBvdXQgdGhvc2UgZG9uJ3QgYmVsb25nIHRvIGFueSBjZ3JvdXAuCj4gPiAK
PiA+IE1pa2UsIEkgdW5kZXJzdG9vZCBmcm9tIFsxXSB0aGF0IHRoaXMgd2Fzbid0IGV4cGVjdGVk
IHRvIGJlIGEgcHJvYmxlbSwKPiA+IGFzIHRoZSBhY2NvdW50aW5nIHNob3VsZCBieXBhc3Mga2Vy
bmVsIHRocmVhZHMuCj4gPiAKPiA+IFdhcyB0aGF0IGFzc3VtcHRpb24gd3JvbmcsIG9yIGlzIHNv
bWV0aGluZyBkaWZmZXJlbnQgaGFwcGVuaW5nIGhlcmU/Cj4gPiAKPiA+ID4gCj4gPiA+IGJhY2t0
cmFjZToKPiA+ID4gwqAga29iamVjdF9hZGRfaW50ZXJuYWwKPiA+ID4gwqAga29iamVjdF9pbml0
X2FuZF9hZGQKPiA+ID4gwqAgc3lzZnNfc2xhYl9hZGQrMHgxYTgKPiA+ID4gwqAgX19rbWVtX2Nh
Y2hlX2NyZWF0ZQo+ID4gPiDCoCBjcmVhdGVfY2FjaGUKPiA+ID4gwqAgbWVtY2dfY3JlYXRlX2tt
ZW1fY2FjaGUKPiA+ID4gwqAgbWVtY2dfa21lbV9jYWNoZV9jcmVhdGVfZnVuYwo+ID4gPiDCoCBw
cm9jZXNzX29uZV93b3JrCj4gPiA+IMKgIHdvcmtlcl90aHJlYWQKPiA+ID4gwqAga3RocmVhZAo+
ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogUWlhbiBDYWkgPGNhaUBsY2EucHc+Cj4gPiA+IC0t
LQo+ID4gPiDCoGFyY2gvYXJtNjQvbW0vcGdkLmMgfCAyICstCj4gPiA+IMKgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9tbS9wZ2QuYyBiL2FyY2gvYXJtNjQvbW0vcGdkLmMKPiA+ID4gaW5kZXgg
NzY5NTE2Y2I2Njc3Li41M2M0OGY1Yzg3NjUgMTAwNjQ0Cj4gPiA+IC0tLSBhL2FyY2gvYXJtNjQv
bW0vcGdkLmMKPiA+ID4gKysrIGIvYXJjaC9hcm02NC9tbS9wZ2QuYwo+ID4gPiBAQCAtMzgsNyAr
MzgsNyBAQCBwZ2RfdCAqcGdkX2FsbG9jKHN0cnVjdCBtbV9zdHJ1Y3QgKm1tKQo+ID4gPiDCoAlp
ZiAoUEdEX1NJWkUgPT0gUEFHRV9TSVpFKQo+ID4gPiDCoAkJcmV0dXJuIChwZ2RfdCAqKV9fZ2V0
X2ZyZWVfcGFnZShnZnApOwo+ID4gPiDCoAllbHNlCj4gPiA+IC0JCXJldHVybiBrbWVtX2NhY2hl
X2FsbG9jKHBnZF9jYWNoZSwgZ2ZwKTsKPiA+ID4gKwkJcmV0dXJuIGttZW1fY2FjaGVfYWxsb2Mo
cGdkX2NhY2hlLCBHRlBfUEdUQUJMRV9LRVJORUwpOwo+ID4gCj4gPiBUaGlzIGlzIHVzZWQgdG8g
YWxsb2NhdGUgUEdEcyBmb3IgYm90aCB1c2VyIGFuZCBrZXJuZWwgcGFnZXRhYmxlcyAoZS5nLgo+
ID4gZm9yIHRoZSBlZmkgcnVudGltZSBzZXJ2aWNlcyksIHNvIHdoaWxlIHRoaXMgbWF5IGZpeCB0
aGUgcmVncmVzc2lvbiwgSSdtCj4gPiBub3Qgc3VyZSBpdCdzIHRoZSByaWdodCBmaXguCj4gPiAK
PiA+IERvIHdlIG5lZWQgYSBzZXBhcmF0ZSBwZ2RfYWxsb2Nfa2VybmVsKCk/Cj4gCj4gU28gY2Fu
IEkgdGFrZSB0aGUgYWJvdmUgZm9yIC1yYzUsIG9yIGlzIHNvbWVib2R5IGVsc2Ugd29ya2luZyBv
biBhIGRpZmZlcmVudAo+IGZpeCB0byBpbXBsZW1lbnQgcGdkX2FsbG9jX2tlcm5lbCgpPwoKVGhl
IG9mZmVuc2l2ZSBjb21taXQgImFybTY0OiBzd2l0Y2ggdG8gZ2VuZXJpYyB2ZXJzaW9uIG9mIHB0
ZSBhbGxvY2F0aW9uIiBpcyBub3QKeWV0IGluIHRoZSBtYWlubGluZSwgYnV0IG9ubHkgaW4gdGhl
IEFuZHJldydzIHRyZWUgYW5kIGxpbnV4LW5leHQsIGFuZCBJIGRvdWJ0CkFuZHJldyB3aWxsIHB1
c2ggdGhpcyBvdXQgYW55IHRpbWUgc29vbmVyIGdpdmVuIGl0IGlzIGJyb2tlbi4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
