Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 089861F52E1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 13:10:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9NdQCXshDOE9sv7mUmrLgcWpYtNzZakUKUmWSY1WZ1M=; b=uV2ochiMDstenu
	SZKVukr52dEuqtKoZdgnm9rD8e7VMNecVaP0oeVaGBSCWH09tVnlOtcnNaudWJ/KxpJc9rf+Ll2t5
	/DkQ6be80wGb+Va9bByDAwF2wHReXJQ+5x5qsxt5hZn/18sKECr8ZoCVIJv6rFX64oTmsDm+tfgwy
	NdLCfRMZslEOYMtTfoU9PPT6IivlJ2hwvGLYbWSDuCfbPc1gnDgQyFy2CcPKJ5GmJ5yucb9a/d4sa
	1K1Rcg4vmEH1PCmccyC0OQz/azGxNmmQpglmBjiF4Tp9aH1ltkt36zo/RyPHUzSJljLspmoiASHhY
	2y+tikEghz3jJ8mKnjNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiycc-00010g-9Q; Wed, 10 Jun 2020 11:10:18 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiycN-00088L-Kn
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 11:10:05 +0000
Received: from [192.168.42.142] (unknown [212.29.212.82])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPSA id F3DD544004C;
 Wed, 10 Jun 2020 14:09:54 +0300 (IDT)
Subject: Re: [RFC PATCH] pci: pci-mvebu: setup BAR0 to internal-regs
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20200608144024.1161237-1-sh@tkos.co.il>
 <20200608214335.156baaaa@windsurf>
 <df64c0b9-cba7-c92e-c32d-804a75796f83@tkos.co.il>
 <20200610122750.389c990f@windsurf.home>
From: "Shmuel H." <sh@tkos.co.il>
Message-ID: <ecfaedfb-0176-f321-0427-73dc0cf81110@tkos.co.il>
Date: Wed, 10 Jun 2020 14:09:53 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200610122750.389c990f@windsurf.home>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_041003_918482_DED15234 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: 3.6 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [212.29.212.82 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.115.133.116 listed in list.dnswl.org]
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
Cc: Baruch Siach <baruch@tkos.co.il>, Jason Cooper <jason@lakedaemon.net>,
 linux-pci@vger.kernel.org, =?UTF-8?Q?Marek_Beh=c3=ban?= <marek.behun@nic.cz>,
 Chris ackham <chris.packham@alliedtelesis.co.nz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVGhvbWFzLAoKT24gNi8xMC8yMCAxOjI3IFBNLCBUaG9tYXMgUGV0YXp6b25pIHdyb3RlOgo+
IEhlbGxvLAo+Cj4gT24gVHVlLCA5IEp1biAyMDIwIDE0OjIxOjA3ICswMzAwCj4gIlNobXVlbCBI
LiIgPHNoQHRrb3MuY28uaWw+IHdyb3RlOgo+Cj4+IFVuZm9ydHVuYXRlbHksIHRoZXJlIGlzIGFs
bW9zdCBubyBkb2N1bWVudGF0aW9uIGFib3V0IHRoZSBwdXJwb3NlIG9mCj4+IHRoaXMgcmVnaXN0
ZXIgYXBhcnQgZnJvbSB0aGlzIGNyeXB0aWMgc2VudGVuY2U6Cj4+Cj4+IMKgwqDCoMKgICJCQVIw
IGlzIGRlZGljYXRlZCB0byBpbnRlcm5hbCByZWdpc3RlciBhY2Nlc3MiIChNYXJ2ZWxsIGEzOHgK
Pj4gZnVuY3Rpb25hbCBkb2NzLCBzZWN0aW9uIDE5LjgpLgo+Pgo+PiBJIGNhbiBvbmx5IGFzc3Vt
ZSB0aGF0IG9ubHkgc3BlY2lmaWMgZGV2aWNlcyB0cmlnZ2VyIHRoZSBuZWVkIGZvciB0aGUKPj4g
UENJZSBjb250cm9sbGVyIHRvIGFjY2VzcyB0aGUgU29DJ3MgaW50ZXJuYWwgcmVnaXN0ZXJzIGFu
ZCB0aGVyZWZvcmUKPj4gd2lsbCBmYWlsIHRvIG9wZXJhdGUgcHJvcGVybHkuCj4gSW4gZmFjdCwg
c2VjdGlvbiAxMC4yLjYgb2YgdGhlIEFybWFkYSBYUCBkYXRhc2hlZXQsIGFib3V0IE1TSS9NU0kt
WAo+IHN1cHBvcnQgZ2l2ZXMgYSBoaW50OiBpbiBvcmRlciBmb3IgdGhlIGRldmljZSB0byBkbyBh
IHdyaXRlIHRvIHRoZSBNU0kKPiBkb29yYmVsbCBhZGRyZXNzLCBpdCBuZWVkcyB0byB3cml0ZSB0
byBhIHJlZ2lzdGVyIGluIHRoZSAiaW50ZXJuYWwKPiByZWdpc3RlcnMiIHNwYWNlIi4gU28gaXQg
bWFrZXMgYSBsb3Qgb2Ygc2Vuc2UgdGhhdCB0aGlzIEJBUjAgaGFzIHRvIGJlCj4gY29uZmlndXJl
ZC4KPgo+IENvdWxkIHlvdSB0cnkgdG8gYm9vdCB5b3VyIHN5c3RlbSB3aXRob3V0IHlvdXIgcGF0
Y2gsIGFuZCB3aXRoIHRoZQo+IHBjaT1ub21zaSBhcmd1bWVudCBvbiB0aGUga2VybmVsIGNvbW1h
bmQgbGluZSA/IFRoaXMgd2lsbCBwcmV2ZW50IHRoZQo+IGRyaXZlciBmcm9tIHVzaW5nIE1TSSwg
c28gaXQgc2hvdWxkIGZhbGxiYWNrIHRvIGxlZ2FjeSBJUlFzLiBJZiB0aGF0Cj4gd29ya3MsIHRo
ZW4gd2UgaGF2ZSB0aGUgY29uZmlybWF0aW9uIHRoZSBpc3N1ZSBpcyBNU0kgcmVsYXRlZC4gVGhp
cwo+IHdpbGwgYmUgdXNlZnVsIGp1c3QgdG8gaGF2ZSBhIGdvb2QgY29tbWl0IG1lc3NhZ2UgdGhh
dCBleHBsYWlucyB0aGUKPiBwcm9ibGVtLCBiZWNhdXNlIG90aGVyd2lzZSBJIGFtIGZpbmUgd2l0
aCB5b3VyIHBhdGNoLgoKSSBjYW4gY29uZmlybSB0aGF0IHBjaT1ub21zaSBzZWVtcyB0byBzb2x2
ZSB0aGUgaXNzdWUuIFRoZSB3aWw2MjEwCm9wZXJhdGVzIGFuZCBsb2FkcyBwcm9wZXJseSAod2l0
aG91dCBteSBwYXRjaCksIG5pY2UgY2F0Y2guCgpJIHdpbGwgc2VuZCBhbiB1cGRhdGVkIHBhdGNo
IHNob3J0bHkuCgpUaGFua3MhCgotLSAKLSBTaG11ZWwgSGF6YW4KCm1haWx0bzpzaEB0a29zLmNv
LmlsIHwgdGVsOis5NzItNTIzLTc0Ni00MzUgfCBodHRwOi8vdGtvcy5jby5pbAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
