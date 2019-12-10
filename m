Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 295AD11927B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 21:54:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tLRHK9RZ191tf9BHizQSBOWtnTzCgoTrjPR5iVRCAWo=; b=G0CQfigxcsKixq
	MAmAJSxrk+HptYbRfENEzKk82nWb+UgoqnKQyqHZUJfF6TC+MIOgpxpdR8dXQdUcjsJliEKIzDbjN
	tR1A55WgEtd8edfObbceeYZgdrKqijB5d9bX8tvTE7oF5w93XPMQtujV696Olq+MWJ7Ghd1hnIwFG
	S7opRxtF2Jx5G48cGo25bYAwIC+rrDw1lclKvcJkYP0ngCWb+Nx1+mz88kWkKGGBu9NkdxajWZD4F
	iydvBWBU2NegYU12cylP7h8RDZCwwSdsI0YM3IPVE0waXj4ghLWt+PwBETKYfE4IypjtEvyes5vT/
	cA7/e8EAVewLCEq5gJUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iemW9-0002wU-LY; Tue, 10 Dec 2019 20:54:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iemVz-0002w1-0y
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 20:53:52 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 29D62206EC;
 Tue, 10 Dec 2019 20:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576011230;
 bh=fkev4MRGf9Lhg8tjRG4U3dQfBAMe6/SLbFZByzfr46g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MJ+yXHaw9iREFbIOuodzq9CaRUiVqEoOvWrbIbVYlqase9BSf1E/o1d2VepJuxPi7
 HpJGb0VaGyHQqtvI3TkQSv9hCyYi13p0TSkCuatWGyaC+Em5K+XQyZQTbrlDOSL+by
 yWHyMPXWVUIXKnQdNnauCUuUp64VlKwmpHHt09r4=
Date: Tue, 10 Dec 2019 21:53:48 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH 2/3] x86 cpuinfo: implement sysfs nodes for x86
Message-ID: <20191210205348.GA4080658@kroah.com>
References: <20191206162421.15050-1-trenn@suse.de>
 <20191206162421.15050-3-trenn@suse.de>
 <20191206163656.GC86904@kroah.com>
 <87sglroqix.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87sglroqix.fsf@nanos.tec.linutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_125351_092845_1BD457F1 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, Felix Schnizlein <fschnizlein@suse.de>,
 Felix Schnizlein <fschnizlein@suse.com>, x86@kernel.org, will.deacon@arm.com,
 linux@armlinux.org.uk, Thomas Renninger <trenn@suse.com>,
 linux-kernel@vger.kernel.org, fschnitzlein@suse.de,
 Thomas Renninger <trenn@suse.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBEZWMgMTAsIDIwMTkgYXQgMDk6NDg6NTRQTSArMDEwMCwgVGhvbWFzIEdsZWl4bmVy
IHdyb3RlOgo+IEdyZWcgS0ggPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPiB3cml0ZXM6Cj4g
PiBPbiBGcmksIERlYyAwNiwgMjAxOSBhdCAwNToyNDoyMFBNICswMTAwLCBUaG9tYXMgUmVubmlu
Z2VyIHdyb3RlOgo+ID4+IEZyb206IEZlbGl4IFNjaG5pemxlaW4gPGZzY2huaXpsZWluQHN1c2Uu
ZGU+Cj4gPj4gPT0+IGZsYWdzIDw9PQo+ID4+IGZwdSB2bWUgZGUgcHNlIHRzYyBtc3IgcGFlIG1j
ZSBjeDggYXBpYyBzZXAgbXRyciBwZ2UgbWNhIGNtb3YgcGF0IHBzZTM2IGNsZmx1c2ggbW14IGZ4
c3Igc3NlIHNzZTIgc3Mgc3lzY2FsbCBueCBwZHBlMWdiIHJkdHNjcCBsbSBjb25zdGFudF90c2Mg
cmVwX2dvb2Qgbm9wbCB4dG9wb2xvZ3kgY3B1aWQgdHNjX2tub3duX2ZyZXEgcG5pIHBjbG11bHFk
cSBzc3NlMyBmbWEgY3gxNiBwY2lkIHNzZTRfMSBzc2U0XzIgeDJhcGljIG1vdmJlIHBvcGNudCB0
c2NfZGVhZGxpbmVfdGltZXIgYWVzIHhzYXZlIGF2eCBmMTZjIHJkcmFuZCBoeXBlcnZpc29yIGxh
aGZfbG0gYWJtIGNwdWlkX2ZhdWx0IGludnBjaWRfc2luZ2xlIHB0aSBzc2JkIGlicnMgaWJwYiBm
c2dzYmFzZSB0c2NfYWRqdXN0IGJtaTEgYXZ4MiBzbWVwIGJtaTIgZXJtcyBpbnZwY2lkIHhzYXZl
b3B0IGFyYXQgdW1pcAo+ID4KPiA+IE9uZSBmaWxlIHdpdGggYWxsIG9mIHRoYXQ/ICBXZSBhcmUg
Z29pbmcgdG8gcnVuIGludG8gcHJvYmxlbXMKPiA+IGV2ZW50dWFsbHksIHRoYXQgc2hvdWxkIGJl
IHNwbGl0IHVwLgo+ID4KPiA+IEp1c3QgbGlrZSBidWdzLCB0aGF0J3MgZ29pbmcgdG8ganVzdCBn
cm93IG92ZXIgdGltZSBhbmQgZXZlbnR1YWxseQo+ID4gb3ZlcmZsb3cgUEFHRV9TSVpFIDooCj4g
Pgo+ID4gTWFrZSB0aGlzOgo+ID4gICDilJzilIDilIAgZmxhZ3MKPiA+ICAg4pSCwqDCoCDilJzi
lIDilIAgZnB1Cj4gPiAgIOKUgsKgwqAg4pSc4pSA4pSAIHZtZQo+ID4gLi4uCj4gPgo+ID4gTXVj
aCBzaW1wbGVyIHRvIHBhcnNlLCByaWdodD8KPiAKPiBXZWxsLCBJJ20gbm90IHJlYWxseSBzdXJl
IHdoZXRoZXIgMTAwKyBmaWxlcyBhcmUgc2ltcGxlciB0byBwYXJzZS4KPiAKPiBBc2lkZSBvZiB0
aGF0IEkgcmVhbGx5IGRvbid0IHNlZSB0aGUgdmFsdWUgZm9yIDEwMCsgZmlsZXMgcGVyIENQVSB3
aGljaAo+IGFyZSBqdXN0IHJldHVybmluZyAxIG9yIFRydWUgb3Igd2hhdGV2ZXIgYXMgbG9uZyBh
cyB5b3UgYXJlIG5vdAo+IHN1Z2dlc3RpbmcgdG8gcHJvdmlkZSByZWFsIGZlYXR1cmUgZmlsZXMg
d2hpY2ggaGF2ZSAwLzEgb3IgVHJ1ZS9GYWxzZQo+IGNvbnRlbnQuCj4gCj4gQnV0IEkgc3RpbGwg
ZG9uJ3QgZ2V0IHRoZSB3aG9sZSB0aGluZy4gVGhlIG9ubHkgImFyZ3VtZW50IiBJJ3ZlIHNlZW4g
c28KPiBmYXIgaXMgdGhlICdwcm9jIG1vdmVzIHRvIHN5cycgbWFudHJhLCBidXQgdGhhdCBkb2Vz
IG5vdCBtYWtlIGl0IGFueQo+IGJldHRlci4KClRoYXQgaXMgbm90IGEgdmFsaWQgbWFudHJhLCBh
cyBJIHRyaWVkIHRvIGV4cGxhaW4gbGF0ZXIgaW4gdGhpcyB0aHJlYWQuCgpJIGRvbid0IHVuZGVy
c3RhbmQgdGhlIG5lZWQgZm9yIHRoaXMgcGF0Y2hzZXQgZWl0aGVyLCBhbGwgSSB3YXMgdHJ5aW5n
CnRvIGRvIHdhcyB0byBhdCBsZWFzdCBtYWtlIGl0IHNhbmUgZnJvbSBhIHN5c2ZzLXBvaW50LW9m
LXZpZXcgaWYgcGVvcGxlCnJlYWxseSB3YW50ZWQgdG8gZG8gdGhpcyB0eXBlIG9mIHRoaW5nLgoK
PiBXZSB3b24ndCBnZXQgcmlkIG9mIC9wcm9jL2NwdWluZm8gZm9yIGEgdmVyeSBsb25nIHRpbWUg
c2ltcGx5IGJlY2F1c2UKPiB0b28gbXVjaCB1c2Vyc3BhY2UgdXNlcyBpdC4gSW50cm9kdWNpbmcg
YSBtZXNzIGluIC9zeXMvIGluIHBhcmFsbGVsIGp1c3QKPiBmb3IgZm9sbG93aW5nIHRoZSBtYW50
cmEgZG9lcyBub3QgaGVscCBtdWNoLgoKQWdhaW4sIGludmFsaWQgbWFudHJhLCBub3QgYSB2YWxp
ZCByZWFzb24gOikKCkkgdGhpbmsgdGhpcyBpcyBhIHBhdGNoc2V0IGluIHNlYXJjaCBvZiBhIHBy
b2JsZW0sIHdoaWNoIGlzIHdoeSBpdCB3YXMKZHJvcHBlZCBhbGwgdGhvc2UgeWVhcnMgYWdvLi4u
Cgp0aGFua3MsCgpncmVnIGstaAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
