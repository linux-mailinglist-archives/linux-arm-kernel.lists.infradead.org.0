Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 323B51D955B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 13:34:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hImtIIbPrsFTnVrufdbzdXf5Jsora1NzPK3984SVjRs=; b=lwyfLn4aYZ2uVj
	RsiIu7n3V7aoPW6rAGCBhHTyCy3vugG9G3WZCwpBWzWEYRI+v1poaua+Ntx34FHJO+LdtededmSir
	WLjHiwcqnUo+gEnqcHX+VBCzjRn7obMLrG5AhInAERoQNexYgbK3ydTnyzmcYby4Cftelv7DppWEf
	0bH+CHH0A9FmcYcVZCDvbv1XdPghghJo8l/Shgs6aW8AYMAItRErZL/Th/YhwVdQ7jEEp4Mvhe50L
	t4Gu9m0yT1DDagnuW/Miqpd4tws4lm+xByRd0Tlsw6Vc55cANjbYZ7kLuIrpVmn9g+VezWpS+vY78
	rUV3EI1eQOy53uuRvN/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb0Vt-0002UE-4Y; Tue, 19 May 2020 11:34:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb0Vm-0002Tu-H2
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 11:34:19 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8842C20708;
 Tue, 19 May 2020 11:34:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589888057;
 bh=BEP8VWMoq5SusoSiyvFBYJPJG7B+X7gkfkD9fk/P7Yo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S09NBqnSuZY/yPJK1OG23Z+SN1lhRq3MdMcPD1mCUrzDwbc5jU6G5ufZKK9ZEDz4g
 z8CAhje8psSZ3JAtaYtO6I1fkVsOqm5aCsMnmrKptqRGu0VrR63MmF3eYwpNX1i7jV
 XXSctizQD+eKdVtdRXJ+M8gxbFH/aY0u7kjFpSqk=
Date: Tue, 19 May 2020 12:34:13 +0100
From: Will Deacon <will@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH] arm64: vdso: Fix CFI info in sigreturn.
Message-ID: <20200519113412.GA13430@willie-the-truck>
References: <20200515162020.78169-1-daniel.kiss@arm.com>
 <20200518155926.GA21779@arm.com>
 <AC859EC1-68DE-4E66-9CD6-D4D42F191D1D@arm.com>
 <20200519092934.GC5031@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519092934.GC5031@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_043418_588319_FC3B20D9 
X-CRM114-Status: GOOD (  21.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Tamas Zsoldos <Tamas.Zsoldos@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Daniel Kiss <Daniel.Kiss@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMTksIDIwMjAgYXQgMTA6Mjk6MzdBTSArMDEwMCwgRGF2ZSBNYXJ0aW4gd3Jv
dGU6Cj4gT24gTW9uLCBNYXkgMTgsIDIwMjAgYXQgMDU6MDA6MzJQTSArMDAwMCwgRGFuaWVsIEtp
c3Mgd3JvdGU6Cj4gPiA+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rZXJuZWwvdmRzby9zaWdy
ZXR1cm4uUyBiL2FyY2gvYXJtNjQva2VybmVsL3Zkc28vc2lncmV0dXJuLlMKPiA+ID4+IGluZGV4
IDEyMzI0ODYzZDVjMi4uNWQ1MGVlOTJmYWE0IDEwMDY0NAo+ID4gPj4gLS0tIGEvYXJjaC9hcm02
NC9rZXJuZWwvdmRzby9zaWdyZXR1cm4uUwo+ID4gPj4gKysrIGIvYXJjaC9hcm02NC9rZXJuZWwv
dmRzby9zaWdyZXR1cm4uUwo+ID4gPj4gQEAgLTEzLDEzICsxMywxMyBAQAo+ID4gPj4gCj4gPiA+
PiAJLnRleHQKPiA+ID4+IAo+ID4gPj4gLQlub3AKPiA+ID4+IC1TWU1fRlVOQ19TVEFSVChfX2tl
cm5lbF9ydF9zaWdyZXR1cm4pCj4gPiA+PiAJLmNmaV9zdGFydHByb2MKPiA+ID4+IAkuY2ZpX3Np
Z25hbF9mcmFtZQo+ID4gPj4gCS5jZmlfZGVmX2NmYQl4MjksIDAKPiA+ID4+IAkuY2ZpX29mZnNl
dAl4MjksIDAgKiA4Cj4gPiA+PiAJLmNmaV9vZmZzZXQJeDMwLCAxICogOAo+ID4gPiAKPiA+ID4g
SG1tLCByZWNvdmVyaW5nIHgyOSx4MzAgbGlrZSB0aGlzIHdpbGwgYmUgd3JvbmcgaWYgdGhlIHNp
Z25hbCBoYW5kbGVyCj4gPiA+IG11bmdlcyBzaWdjb250ZXh0IGluIHRoZSBtZWFudGltZSAoc2F5
LCBkb2luZyBzb21lIGtpbmQgb2YgdXNlcnNwYWNlCj4gPiA+IGNvbnRleHQgc3dpdGNoKS4KPiA+
ID4gCj4gPiA+IFRoZXkgc2hvdWxkIGJlIHB1bGxlZCBvdXQgb2Ygc2lnY29udGV4dCBpbnN0ZWFk
IHJlYWxseS4gIEFGQUlLLCB0aGF0J3MKPiA+ID4gd2hhdCAiLmNmaV9zaWduYWxfZnJhbWUiIGlz
IHN1cHBvc2VkIHRvIHRlbGwgdGhlIHVud2luZGVyLiAgSSdtIG5vdCBzdXJlCj4gPiA+IHdoeSB3
ZSBoYXZlIHRoZXNlIGFkZGl0aW9uYWwsIGNvbmZsaWN0aW5nIGFubm90YXRpb25zIGhlcmUuCgpJ
IHRoaW5rIHdlIHNob3VsZCBqdXN0IHJlbW92ZSB0aGUgLmNmaV9kZWZfY2ZhIGFuZCAuY2ZpX29m
ZnNldCBkaXJlY3RpdmVzCmZyb20gdGhpcyBzZXF1ZW5jZS4gRGFuaWVsLCBUYW1hcywgaXMgdGhh
dCBvayB3aXRoIHlvdT8KCj4gPiBUaGUgdW53aW5kZXIgd29u4oCZdCBmaW5kIHRoZSDigJxjZmlf
c2lnbmFsX2ZyYW1l4oCdIHVudGlsIGl0IGZpZ3VyZXMgb3V0IHRoZSB1bndpbmQgZW50cnkuCj4g
PiAKPiA+ID4gQW55IGlkZWFzLCBXaWxsPwo+ID4gPiAKPiA+ID4gVGhpcyBwcm9iYWJseSBpc24n
dCByZWxhdGVkIHRvIHRoZSBidWcgaGVyZSwgYnV0IGl0IHdvdWxkIGJlIGdvb2QgdG8KPiA+ID4g
dW5kZXJzdGFuZC4KPiA+ID4gCj4gPiA+PiArCW5vcCAgLyogcGxhY2Vob2xkZXIgZm9yIGJsIHNp
Z25hbGhhbmRsZXIgKi8KPiA+ID4gCj4gPiA+IFdpbGwgY2FuIGNvcnJlY3QgbWUgb24gdGhpcywg
YnV0IEkgc2VlbSB0byByZW1lbWJlciBzb21ldGhpbmcgYWJvdXQgbm9wCj4gPiA+IGJlaW5nIHRo
ZXJlIGZvciBwYWRkaW5nLCBzbyB0aGF0IHRoZXJlIGlzIGEgZ3VhcmFudGVlZCBnYXAgYmV0d2Vl
bgo+ID4gPiB1bndpbmQgZW50cmllcy4KCkkgdGhpbmsgaXQgaXMgdG8gZG8gd2l0aCB1bndpbmRp
bmcsIHdoZXJlIHNvbWV0aGluZyB3YXMgc3VidHJhY3RpbmcgMQpmcm9tIHRoZSByZXR1cm4gYWRk
cmVzcyB0byBpZGVudGlmeSB0aGUgY2FsbGVyLiBUaGVyZSdzIGFuIG9sZCByZWxpYyBoZXJlCnRo
YXQgc2hlZHMgYSBiaXQgb2YgbGlnaHQgb24gaXQgYWxsICh3ZSBpbmhlcml0ZWQgdGhpcyBmcm9t
IHBwYywgaXQgc2VlbXMpOgoKaHR0cHM6Ly9nY2MuZ251Lm9yZy9idWd6aWxsYS9zaG93X2J1Zy5j
Z2k/aWQ9MjYyMDgjYzE1CgpIb3dldmVyLCBsb29raW5nIGF0IGdkYiBqdXN0IG5vdywgaXQgbG9v
a3MgbGlrZSBpdCB0cmllcyB0byBtYXRjaCB0aGUKaW5zdHJ1Y3Rpb25zIGluIHRoZSB0cmFtcG9s
aW5lIGluIG9yZGVyIHRvIGlkZW50aWZ5IGEgc2lnbmFsIGZyYW1lLiBXZSBqdXN0CmNoYW5nZWQg
dGhhdCB3aXRoIHRoZSBCVEkgcGF0Y2hlcywgc28gSSB0aGluayBpdCdzIG5vdyBicm9rZW4uIEdp
dmVuIHRoYXQgd2UKZG9uJ3QgbmVlZCB0aGUgQlRJIEMgaW4gdGhlcmUgKHdlIG9ubHkgY2FsbCB0
aGUgdGhpbmcgdmlhIFJFVCksIEknbGwgc2VuZCBhCnBhdGNoIHRvIHJlbW92ZSBpdC4KCldpbGwK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
