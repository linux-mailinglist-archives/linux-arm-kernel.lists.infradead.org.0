Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BE61EFD3A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 18:07:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wr8fycmGY1QvKxbNd0UVEpai490Qq08vO3EH0enKWKk=; b=BVblp5yZ+ubqPsb5MYg8V7TWF
	SaG5WdS0NF4H8tBU4H24IS/rZ2mBRf42xwaJlFXrsc/mq9dqIaHOuIaUfJif1yre4DM3T82ZTiwmB
	SXD3/9iitscNJDfNLWLnqBpA39jSXADd//xuqHPEtV37aYTyJe8rYfFTkJrUp/g0JWJDhOcqXakLu
	HVCCQvCXZe4ztts6QPP0XYIpogWSaIgAGKb+hnSrO2t8TpzDwjeeNQy49GOW+KMAdvyvUd4xAL43c
	0aVprEH3aLKZgJo0QZI503jfD5jQFZrK/uyvKKXKSpLXLDqEs6kcABd9kF4zHwATCAMQWyj5Hw3Sb
	8+V5TXYhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhEsB-0001HN-6D; Fri, 05 Jun 2020 16:07:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhEs4-0001Gm-Fr
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 16:07:05 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BAE20206DB;
 Fri,  5 Jun 2020 16:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591373223;
 bh=qa+Dbbe426FjY6ZEs9ap2ICeUIcuX0jwcMsPaK3q2YE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=kAwlBp93mN6NwiDuXYv+VJtn9c8N7Gzvb7Qay6MkUATRUPrR6teC7MUIHDIiyHq6Q
 Ue7HBovTAItWuhX4c6I3uJo4mRjERrcqC1GP1UCtiVKFxf/sbgraVOtBubQfDSpEcF
 SaL0wLDDwTWQ7gdoz7y7YGdCJXMhZhAUo0Kf+Anw=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jhEs2-000Ype-2Q; Fri, 05 Jun 2020 17:07:02 +0100
MIME-Version: 1.0
Date: Fri, 05 Jun 2020 17:07:02 +0100
From: Marc Zyngier <maz@kernel.org>
To: Alexandru Elisei <alexandru.elisei@arm.com>
Subject: Re: [kvmtool][PATCH] arm64: Obtain text offset from kernel image
In-Reply-To: <e9045c9e-f1c1-a6aa-9a19-37dc7ea02038@arm.com>
References: <20200605104907.1307967-1-maz@kernel.org>
 <e9045c9e-f1c1-a6aa-9a19-37dc7ea02038@arm.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <8eeb07b54718d83de6262434c08774fa@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: alexandru.elisei@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, will@kernel.org, ardb@kernel.org,
 julien.thierry.kdev@gmail.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_090704_563166_E646D9A3 
X-CRM114-Status: GOOD (  19.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, Ard Biesheuvel <ardb@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQWxleCwKCk9uIDIwMjAtMDYtMDUgMTM6MTYsIEFsZXhhbmRydSBFbGlzZWkgd3JvdGU6Cj4g
SGkgTWFyYywKPiAKPiBPbiA2LzUvMjAgMTE6NDkgQU0sIE1hcmMgWnluZ2llciB3cm90ZToKPj4g
UmVjZW50IGNoYW5nZXMgbWFkZSB0byBMaW51eCA1LjggaGF2ZSBvdXRsaW5lZCB0aGF0IGt2bXRv
b2wKPj4gaGFyZGNvZGVzIHRoZSB0ZXh0IG9mZnNldCBpbnN0ZWFkIG9mIHJlYWRpbmcgaXQgZnJv
bSB0aGUgYXJtNjQKPj4gaW1hZ2UgaXRzZWxmLgo+PiAKPj4gVG8gYWRkcmVzcyB0aGlzLCBpbXBv
cnQgdGhlIGltYWdlIGhlYWRlciBzdHJ1Y3R1cmUgaW50byBrdm10b29sCj4+IGFuZCBkbyB0aGUg
cmlnaHQgdGhpbmcuIDMyYml0IGd1ZXN0cyBhcmUgc3RpbGwgbG9hZGVkIHRvIHRoZWlyCj4+IHVz
dWFsIGxvY2F0aW9ucy4KPj4gCj4+IFJlcG9ydGVkLWJ5OiBBcmQgQmllc2hldXZlbCA8YXJkYkBr
ZXJuZWwub3JnPgo+PiBTaWduZWQtb2ZmLWJ5OiBNYXJjIFp5bmdpZXIgPG1hekBrZXJuZWwub3Jn
Pgo+PiAtLS0KPj4gIE1ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMSArCj4+
ICBhcm0vYWFyY2gzMi9pbmNsdWRlL2t2bS9rdm0tYXJjaC5oIHwgIDIgKy0KPj4gIGFybS9hYXJj
aDY0L2luY2x1ZGUvYXNtL2ltYWdlLmggICAgfCA1OSAKPj4gKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrCj4+ICBhcm0vYWFyY2g2NC9pbmNsdWRlL2t2bS9rdm0tYXJjaC5oIHwgIDUgKy0t
Cj4+ICBhcm0vYWFyY2g2NC9rdm0uYyAgICAgICAgICAgICAgICAgIHwgMzAgKysrKysrKysrKysr
KysrCj4+ICBhcm0va3ZtLmMgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDIgKy0KPj4gIDYg
ZmlsZXMgY2hhbmdlZCwgOTQgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPj4gIGNyZWF0
ZSBtb2RlIDEwMDY0NCBhcm0vYWFyY2g2NC9pbmNsdWRlL2FzbS9pbWFnZS5oCj4+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgYXJtL2FhcmNoNjQva3ZtLmMKPj4gCj4+IFsuLl0KPiAKPiBUaGlzIGlzIGEg
Z3JlYXQgYWRkaXRpb24gdG8ga3ZtdG9vbCwgdGhhbmsgeW91ISBCZWZvcmUgSSBkbyBhIG1vcmUg
Cj4gaW4tZGVwdGgKPiByZXZpZXcsIEkgaGF2ZSBzb21lIGdlbmVyYWwgcXVlc3Rpb25zLgo+IAo+
IFJlZ2FyZGluZyB0aGUgYWN0dWFsIHZhbHVlIG9mIHRleHRfb2Zmc2V0LCB0aGUgYm9vdGluZy5y
c3QgZG9jdW1lbnQgCj4gc2F5czoKPiAKPiAiUHJpb3IgdG8gdjMuMTcsIHRoZSBlbmRpYW5uZXNz
IG9mIHRleHRfb2Zmc2V0IHdhcyBub3Qgc3BlY2lmaWVkLsKgIEluCj4gdGhlc2UgY2FzZXMKPiBp
bWFnZV9zaXplIGlzIHplcm8gYW5kIHRleHRfb2Zmc2V0IGlzIDB4ODAwMDAgaW4gdGhlIGVuZGlh
bm5lc3Mgb2YgdGhlIAo+IGtlcm5lbC7CoAo+IFdoZXJlIGltYWdlX3NpemUgaXMgbm9uLXplcm8g
aW1hZ2Vfc2l6ZSBpcyBsaXR0bGUtZW5kaWFuIGFuZCBtdXN0IGJlIAo+IHJlc3BlY3RlZC7CoAo+
IFdoZXJlIGltYWdlX3NpemUgaXMgemVybywgdGV4dF9vZmZzZXQgY2FuIGJlIGFzc3VtZWQgdG8g
YmUgMHg4MDAwMCIuCj4gCj4gQWxsIGhlYWRlciBmaWVsZHMgYXJlIGRlY2xhcmVkIGxpdHRsZS1l
bmRpYW4sIHdoaWNoIGxvb2tzIHRvIG1lIGxpa2UgaXQgCj4gd291bGQKPiBicmVhayBrZXJuZWxz
IG9sZGVyIHRoYW4gMy4xNy4gSWYgdGhhdCB3YXMgaW50ZW50aW9uYWwsIEkgdGhpbmsgaXQncyAK
PiB3b3J0aAo+IGRvY3VtZW50aW5nIHNvbWV3aGVyZSwgb3IgYXQgbGVhc3QgYSBjb21tZW50IGZv
ciB0aGUgCj4ga3ZtX19hcmNoX2dldF9rZXJuX29mZnNldAo+IGZ1bmN0aW9uLgoKVEJILCBJIGRp
ZG4ndCBnaXZlIHByZS0zLjE3ICpiaWctZW5kaWFuKiBtdWNoIHRob3VnaHQuIEhhcHB5IHRvIGRv
Y3VtZW50Cml0IHRob3VnaC4KCj4gCj4gTm93IHRoYXQgd2UgYXJlIHBhcnNpbmcgdGhlIGtlcm5l
bCBoZWFkZXIsIGhhdmUgeW91IGNvbnNpZGVyZWQKPiBjaGVja2luZyB0aGUgbWFnaWMKPiBudW1i
ZXIgdG8gbWFrZSBzdXJlIHRoZSB1c2VyIHNwZWNpZmllZCBhIHZhbGlkIGtlcm5lbCBpbWFnZT8g
SXQgbWlnaHQKPiBzYXZlIHNvbWVvbmUKPiBzb21lIHRpbWUgZGVidWdnaW5nIHdoeSB0aGUga2Vy
bmVsIGlzbid0IGJvb3RpbmcsIGlmLCBmb3IgZXhhbXBsZSwgdGhleSAKPiBhcmUKPiBib290aW5n
IGFuIGFybXY3IGtlcm5lbCwgYnV0IHRoZXkgZm9yZ290IHRvIHNwZWNpZnkgLS1hYXJjaDMyLgoK
VGhhdCdkIGJlIGludGVyZXN0aW5nLiBJJ2QgYmUgcmVsdWN0YW50IHRvIHByZXZlbnQgaXQgZnJv
bSBib290aW5nCmFsdG9nZXRoZXIsIGJ1dCBJIGNhbiBkZWZpbml0ZWx5IGRldGVjdCB0aGUgbGFj
ayBvZiBzaWduYXR1cmUgYW5kCnByaW50IGEgd2FybmluZy4KClRoYW5rcywKCiAgICAgICAgIE0u
Ci0tIApKYXp6IGlzIG5vdCBkZWFkLiBJdCBqdXN0IHNtZWxscyBmdW5ueS4uLgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
