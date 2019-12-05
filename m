Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 676AB11409B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 13:10:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sz+9cI3csNHkyYdLtiaH0TADg3Zx++9KYPfjlLG/PvE=; b=uEGj8qM5gMdXDNWIdLubGPiZC
	TQOEOQfL3EMiqIpEj46c3mBJShoV2lhwckNv+OZ2zlPFh7npreAVxgwWklXbpI0bgzNPcwW1OzS2W
	7jSOTmwo+UarhFn3mfPkIjnI4eRjXOPstL/plkkRoRLGWD0SRg9fQTcDgPqBxRsBcI77OumWMoP+s
	jgnqkSiTCnYbN2WXxrQYjdeX3SoSiast6qCENpXr3ssBXycZHnNP6Vb7i265IC0PWlgRjntek0mKS
	CslDd76Lu4wsNIGJ0qHQeSEuj5bJ/27WDqPuV6MaUG4cbaMMuudcUAZ+iksarwOWTsnOz2ijT21vm
	LJCqWmL6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icpy6-0000pK-1i; Thu, 05 Dec 2019 12:10:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icpxv-0000oN-LB; Thu, 05 Dec 2019 12:10:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B4C7A31B;
 Thu,  5 Dec 2019 04:10:38 -0800 (PST)
Received: from [192.168.1.124] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2BF4C3F68E;
 Thu,  5 Dec 2019 04:10:36 -0800 (PST)
Subject: Re: [PATCH 2/2] arm64: dts: realtek: Add RTD1319 SoC and Realtek
 PymParticle EVB
To: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>,
 James Tai <james.tai@realtek.com>
References: <20191205082555.22633-1-james.tai@realtek.com>
 <20191205082555.22633-3-james.tai@realtek.com>
 <4040ffcf-5c54-fb44-b0a8-ce0c8c21b93f@suse.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <c2703787-2d0b-4d78-f4e3-8b77ba636bb4@arm.com>
Date: Thu, 5 Dec 2019 12:10:35 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <4040ffcf-5c54-fb44-b0a8-ce0c8c21b93f@suse.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_041040_068045_1A1A9397 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0xMi0wNSAxMDo1OCBhbSwgQW5kcmVhcyBGw6RyYmVyIHdyb3RlOgpbLi4uXQo+PiAr
CWFybV9wbXU6IHBtdSB7Cj4+ICsJCWNvbXBhdGlibGUgPSAiYXJtLGFybXY4LXBtdXYzIjsKPj4g
KwkJaW50ZXJydXB0cyA9IDxHSUNfUFBJIDcgSVJRX1RZUEVfTEVWRUxfTE9XPjsKPj4gKwkJaW50
ZXJydXB0LWFmZmluaXR5ID0gPCZjcHUwPiwgPCZjcHUxPiwgPCZjcHUyPiwKPj4gKwkJCTwmY3B1
Mz47Cj4+ICsJfTsKPiAKPiBAUm9iaW4sIGlzIHRoaXMgc2luZ2xlIFBQSSBpbnRlcnJ1cHQgYmV0
dGVyIHRoYW4gcHJldmlvdXMgc2luZ2xlIFNQST8KClllcywgYSBQUEkgaXMgaWRlYWwgKHNpbmNl
IGl0IGFsbG93cyBjb3JlIHRvIHNlZSBpdHMgb3duIGxvY2FsIGludGVycnVwdCkuCgo+IElzICJh
cm0sYXJtdjgtcG11djMiIHRoZSBjb3JyZWN0IG9uZSB0byB1c2UgZm9yIENvcnRleC1BNTU/IFRo
ZXJlJ3Mgbm8KPiAiYXJtLGNvcnRleC1hNTUtcG11IiBiaW5kaW5nIC0gaXMgdGhhdCBzdGlsbCBp
biB0aGUgd29ya3M/CgpIbW0sIEkgaGFkIHRob3VnaHQgdGhhdCBoYWQgYmVlbiBkb25lIGFscmVh
ZHksIGJ1dCBhcHBhcmVudGx5IG5vdC4gTG9va3MgCmxpa2UgaXQncyBoaWdoIHRpbWUgZm9yIGFu
b3RoZXIgcm91bmQgb2YgZXZlbnQgbWFwIHVwZGF0ZXMgZm9yIHRoZSAKbGF0ZXN0IENvcnRleCBh
bmQgTmVvdmVyc2UgY29yZXMsIHNvIEkgZ3Vlc3MgSSdsbCBhZGQgdGhhdCB0byBvdXIgCmJhY2ts
b2cgaW50ZXJuYWxseSAtIGFsdGhvdWdoIHRoZSBQTVUgZXZlbnRzIHNob3VsZCBiZSBpbiB0aGUg
cHVibGljIApUUk1zIHNvIGlmIGFueW9uZSBlbHNlICpkaWQqIGZhbmN5IHBsb3VnaGluZyB0aHJv
dWdoIHRoZW0gdG8gc3BpbiAKcGF0Y2hlcyB0aGV5J3JlIGFsd2F5cyB3ZWxjb21lIHRvIDopCgpJ
biB0aGUgbWVhbnRpbWUgdGhlIGdlbmVyaWMgUE1VdjMgY29tcGF0aWJsZSB3aWxsIGF0IGxlYXN0
IGV4cG9zZSB0aGUgCnN1YnNldCBvZiBtYW5kYXRvcnkgYXJjaGl0ZWN0dXJhbCBldmVudHMsIHdo
aWNoIGlzIGFyZ3VhYmx5IG1vcmUgdXNlZnVsIAp0aGFuIG5vdGhpbmcuCgo+PiArCj4+ICsJcHNj
aSB7Cj4+ICsJCWNvbXBhdGlibGUgPSAiYXJtLHBzY2ktMS4wIjsKPiAKPiBATG9yZW56bzogU2Ft
ZSBxdWVzdGlvbiBhcyBsZWZ0IHVuYW5zd2VyZWQgZm9yIFJURDE2MTk6Cj4gU2hvdWxkIHRoaXMg
YmUgImFybSxwc2NpLTEuMCIsICJhcm0tcHNjaS0wLjIiPwo+IAo+IFRoZSBZQU1MIHNjaGVtYSBh
bGxvd3MgYm90aCwgd2l0aG91dCBjbGVhcmx5IGRvY3VtZW50aW5nIHdoaWNoIG9uZSBzaGFsbAo+
IGJlIHVzZWQgaW4gbmV3IERUcywgYW5kIHRoZXJlJ3Mgbm8gcHNjaS0xLjAgZXhhbXBsZSBlaXRo
ZXIuCgpGV0lXIHRoZSBhZ2Ugb2YgdGhlIERUIHNob3VsZG4ndCByZWFsbHkgYmUgcmVsZXZhbnQg
LSBpdCdzIGEgcXVlc3Rpb24gb2YgCndoZXRoZXIgdGhlIHBsYXRmb3JtJ3MgRUwzIGZpcm13YXJl
IGFjdHVhbGx5IGltcGxlbWVudHMgdGhlIFBTQ0kgMS4wIChvciAKbGF0ZXIpIHNwZWMsIG9yIGlz
IHNvbWUgZm9zc2lsaXNlZCBiaW5hcnkgYmFzZWQgb24gdGhlIG9sZGVyIHZlcnNpb24uCgpSb2Jp
bi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
