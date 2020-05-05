Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B32431C568C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 15:16:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RW6ZQqXZTCMCCDoU4OSRFLWSFz+od1IhFJF3/hIRsD4=; b=I+W/RebadOAI4a
	qsVuqvls63Ri7lx7cI/S2d4FDeor9t9phsH2PWZjvx48wN1eXFv/sGZhcTnTngoP8dATmxA2GZ2Wn
	rDZ9AztyC7t4JUEbK3b8vmJIQW38zB7i//e7JnONwEBucsOSob+ikEmBRzlIvFgBft9vZYzf8Jv9l
	StoLEcZjwTUKsH/WGfFFcj5BD7xkQVYA1ugljXLtk0xkqCJ42LiHMMxrA4Xl+AGkth13uvs77GsU/
	CjW4vYTMsykgp0AXqhIMOqpuTPu2EtjuAQ7A3HxXczqpeVNT0KN+19pgCURGe+Fkh9gJhmWZwsfge
	dVwfXO6ewS1RO4469OTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVxR9-0000ZL-IC; Tue, 05 May 2020 13:16:39 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVxR3-0000XN-63
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 13:16:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MB282HLZkeyYhgLoz3UzvjWBjtseuypJMoQRy7x6wmU=; b=1uVH8dV30INpdk9iqTu+UxJiJ
 ApkVzBDRp1hvwrn1MEk70bp0j+d5oqaTrdBJ62gec4/5fN7BzLR5xD6gCdG+lZO1FWDB5r7X3Rof6
 veb6S7/h86xM6xQEpIGOYHVW8Bl0S8VjUHKY9chFQ7mnjAx7CWTlWjeR+Qxl9OLnUYKI9iwA2Dqgf
 kn1gYq1vQIK1VufPto2p/wbwVobs88Z39Msi8Vinde2ujrHbb47O/5eQDGwEitDNqXOhR5M0ZMrWg
 eqpUIgwt4+wWF6Wd3xld/RFuWc1LY0W8VW3ik4aKyW7XyOCsR9sc/317qMD3vC5EVxoJce7n34mKW
 8YSpJA3OA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:54034)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jVxQr-0002Yl-H2; Tue, 05 May 2020 14:16:21 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jVxQp-0007BJ-Ro; Tue, 05 May 2020 14:16:19 +0100
Date: Tue, 5 May 2020 14:16:19 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Will Deacon <will@kernel.org>
Subject: Re: RFC: Adding arch-specific user ABI documentation in linux-man
Message-ID: <20200505131619.GG1551@shell.armlinux.org.uk>
References: <20200504153214.GH30377@arm.com>
 <20200505104454.GC19710@willie-the-truck>
 <20200505124351.GF1551@shell.armlinux.org.uk>
 <20200505130629.GK19710@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505130629.GK19710@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_061633_229601_91C9E066 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMDUsIDIwMjAgYXQgMDI6MDY6MzBQTSArMDEwMCwgV2lsbCBEZWFjb24gd3Jv
dGU6Cj4gT24gVHVlLCBNYXkgMDUsIDIwMjAgYXQgMDE6NDM6NTFQTSArMDEwMCwgUnVzc2VsbCBL
aW5nIC0gQVJNIExpbnV4IGFkbWluIHdyb3RlOgo+ID4gT24gVHVlLCBNYXkgMDUsIDIwMjAgYXQg
MTE6NDQ6NTVBTSArMDEwMCwgV2lsbCBEZWFjb24gd3JvdGU6Cj4gPiA+IE1pY2hhZWwgaGFzIGJl
ZW4gbmFnZ2luZyBtZSBvbiBhbmQgb2ZmIGFib3V0IHRoYXQgZm9yLCB3aGF0LCAxMCB5ZWFycyBu
b3c/Cj4gPiA+IEkgd291bGQgdGhlcmVmb3JlIGJlIHZlcnkgbXVjaCBpbiBmYXZvdXIgb2YgaGF2
aW5nIG91ciBwdHJhY2UgZXh0ZW5zaW9ucwo+ID4gPiBkb2N1bWVudGVkIQo+ID4gPiAKPiA+ID4g
V2UgY291bGQgZXZlbiBwdXQgdGhpcyBzdHVmZiB1bmRlciBEb2N1bWVudGF0aW9uL2FybTY0L21h
bi8gaWYgaXQncyBkZWVtZWQKPiA+ID4gdG9vIENQVS1zcGVjaWZpYyBmb3IgdGhlIG1hbi1wYWdl
cyBwcm9qZWN0LCBidXQgbXkgcHJlZmVyZW5jZSB3b3VsZCBzdGlsbAo+ID4gPiBiZSBmb3IgaXQg
dG8gYmUgaG9zdGVkIHRoZXJlIGFsb25nc2lkZSBhbGwgdGhlIG90aGVyIG1hbiBwYWdlcy4KPiA+
IAo+ID4gU3R1ZmZpbmcgcmFuZG9tIHRoaW5ncyBpbnRvIHRoZSBrZXJuZWwgdHJlZSBpcyBwYWlu
ZnVsIGZvciBzb21lIHBlb3BsZS4KPiA+IAo+ID4gRm9yIGV4YW1wbGUsIGlmIHlvdSBjcm9zcy1i
dWlsZCB5b3VyIGtlcm5lbCwgdGhlbiB0aGUgc3R1ZmYgaW4gdGhlCj4gPiB0b29scy8gc3ViZGly
ZWN0b3J5IGlzIHRvdGFsbHkgdXNlbGVzcyAoSSB0aGluayBldmVyeXRoaW5nIGV4Y2VwdAo+ID4g
cGVyZikgYmVjYXVzZSB5b3UgY2FuJ3QgYnVpbGQgaXQuCj4gPiAKPiA+IExldCdzIHN0b3AgbWFr
aW5nIHRoZSBtaXN0YWtlIG9mIGNvbnN0YW50bHkgc2hvdmluZyBzdHVmZiBpbnRvIHRoZQo+ID4g
a2VybmVsIHNvdXJjZSB0cmVlLgo+IAo+IEZvciB1c2Vyc3BhY2UgdG9vbHMsIEknbSBpbmNsaW5l
ZCB0byBhZ3JlZSwgYnV0IHRoaXMgaXMganVzdCBkb2N1bWVudGF0aW9uCj4gc28gaXQgc2hvdWxk
bid0IGNhdXNlIGFueSBpc3N1ZXMgd2l0aCBjcm9zcyBidWlsZGluZy4gQnV0IHRvIGJlIGNsZWFy
OiBJJ2QKPiBzdGlsbCBwcmVmZXIgaXQgdG8gYmUgcGFydCBvZiB0aGUgbWFuLXBhZ2VzIHByb2pl
Y3QsIGFuZCB3b3VsZCBvbmx5IGNvbnNpZGVyCj4gaXQgZm9yIGluY2x1c2lvbiBpbiB0aGUga2Vy
bmVsIHRyZWUgaWYgaXQgd2FzIHJlamVjdGVkIGZvciBiZWluZyB0b28KPiBDUFUtc3BlY2lmaWMu
CgpJIGRvbid0IHRoaW5rIHRoYXQgc2hvdWxkIGJlIGEgY29uY2VybjsgdGhlIG1hbi1wYWdlcyBw
cm9qZWN0IGFscmVhZHkKY29udGFpbnMgZG9jdW1lbnRhdGlvbiB0aGF0IGlzIHNwZWNpZmljIHRv
IGtlcm5lbCB2ZXJzaW9ucywgaW5jbHVkaW5nCmRvY3VtZW50YXRpb24gZm9yIGludGVyZmFjZXMg
dGhhdCBhcmUgYXJjaGl0ZWN0dXJlIHNwZWNpZmljIChzdWNoIGFzCnByY3RsIGlzIGEgYmlnIG9u
ZSwgcHRyYWNlIHRvIGEgbGVzc2VyIGV4dGVudC4pICBzeXNjYWxsKDIpIGNvbnRhaW5zCmEgd2hv
bGUgYnVuY2ggb2YgYXJjaGl0ZWN0dXJlIHN0dWZmIGFib3V0IHRoZSBjYWxsaW5nIGNvbnZlbnRp
b24gZm9yCnN5c2NhbGxzLgoKSW50ZXJlc3RpbmdseSwgSSBub3RpY2UgdGhhdCBzeXNjYWxsKDIp
IGlzIHdyb25nIGZvciBhcm0vT0FCSS4gSSBhbQpub3Qgc3VycHJpc2VkLCBiZWNhdXNlIHRoYXQg
ZG9jdW1lbnRhdGlvbiBuZXZlciBjYW1lIG15IHdheSwgYW5kIEkgYW0KdGhlIGF1dGhvciBvZiB0
aGUga2VybmVsJ3MgT0FCSSBzeXNjYWxsIGludGVyZmFjZS4KCkl0IGNsYWltczoKCiAgICAgICBh
cmNoL0FCSSAgICAgIGFyZzEgIGFyZzIgIGFyZzMgIGFyZzQgIGFyZzUgIGFyZzYgIGFyZzcgIE5v
dGVzCiAgICAgICDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIAKICAgICAgIGFybS9PQUJJICAgICAgYTEgICAgYTIg
ICAgYTMgICAgYTQgICAgdjEgICAgdjIgICAgdjMKCndoZXJlYXMsIGF0IHRoZSB0aW1lIEkgaW52
ZW50ZWQgaXQsIEkgZGVjaWRlZCB0aGF0IGl0IHNoYWxsIHBhc3MKYXJndW1lbnRzIGluIHIwIHRv
IHI2LiAgVGhhdCdzIHIwIHRvIHI2LiAgTm90IHRoZSBBUENTIHJlZ2lzdGVyCm5hbWVzIHRoYXQg
dGhpcyBkb2N1bWVudCBjbGFpbXMuICBOb3QgZXZlcnl0aGluZyBpbiBPQUJJIGlzIEFQQ1MsCmFz
IGlsbHVzdHJhdGVkIGhlcmUgLSBBUENTIHBhc3NlcyB0aGUgZmlyc3QgZm91ciBhcmd1bWVudHMg
aW4gYTEKdG8gYTQsIGFuZCB0aGVuIHRoZSByZXN0IG9uIHRoZSBzdGFjay4gIFRoZSBPQUJJIHN5
c2NhbGwgaW50ZXJmYWNlCmRvZXNuJ3QgZG8gdGhhdC4KCkkgZ3Vlc3MgdGhhdCdzIHdoYXQgaGFw
cGVucyB3aGVuIHNvbWVvbmUgZWxzZSB3cml0ZXMgaW50ZXJmYWNlCmRvY3VtZW50YXRpb24gYW5k
IGRvZXNuJ3QgYm90aGVyIHRvIGdldCBpdCByZXZpZXdlZCBieSB0aG9zZSB3aG8KY3JlYXRlZCB0
aGUgaW50ZXJmYWNlIGluIHRoZSBmaXJzdCBwbGFjZS4KCi0tIApSTUsncyBQYXRjaCBzeXN0ZW06
IGh0dHBzOi8vd3d3LmFybWxpbnV4Lm9yZy51ay9kZXZlbG9wZXIvcGF0Y2hlcy8KRlRUQyBicm9h
ZGJhbmQgZm9yIDAuOG1pbGUgbGluZSBpbiBzdWJ1cmJpYTogc3luYyBhdCAxMC4yTWJwcyBkb3du
IDU4N2ticHMgdXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
