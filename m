Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC1F14CFEA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 18:52:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rtfm/nywsXsAp8P4COZdivGneDZ161sC4v2hZYXE5bE=; b=csQrG4IDhFRCD9
	iM0loFQ8/SVQrFjD/E7uQ/Q8gXhQ7/ZpoBbM4MiErBg0SbNzXJ0aztdMDoqhtgxxNPfSs4Xq5Hkzs
	3pPxhWGj929Pd1wNUksIbHz7FjH8F+DutJvkpU8NAkQFq6T0IrqwlD47X1GtudOBIEsfQ5XEJqI+6
	35PUZGcEWiMn3Fa6DooQtSIilV5LhNox/MwY6NL+PaWfnGawbEY74LCP6cAUXRUYTqyPpo77iNTzM
	k25N1CuSOPKeiHFRoYcppvbR2hhL73yINT3H1bfklet54sDM70iN2SLeFsAAZLj6QJ+FFQhXaevpy
	V/hhHzbTba9WR+8eCr9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwrW2-00080G-2W; Wed, 29 Jan 2020 17:52:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwrVr-0007zX-8M
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 17:52:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0EFCC328;
 Wed, 29 Jan 2020 09:52:25 -0800 (PST)
Received: from localhost (unknown [10.1.198.81])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A465B3F67D;
 Wed, 29 Jan 2020 09:52:24 -0800 (PST)
Date: Wed, 29 Jan 2020 17:52:23 +0000
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: Valentin Schneider <valentin.schneider@arm.com>
Subject: Re: [PATCH v2 6/6] arm64: use activity monitors for frequency
 invariance
Message-ID: <20200129175223.GA26494@arm.com>
References: <20191218182607.21607-1-ionela.voinescu@arm.com>
 <20191218182607.21607-7-ionela.voinescu@arm.com>
 <96fdead6-9896-5695-6744-413300d424f5@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <96fdead6-9896-5695-6744-413300d424f5@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_095227_385772_F32EF4C1 
X-CRM114-Status: GOOD (  24.37  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, maz@kernel.org, suzuki.poulose@arm.com,
 peterz@infradead.org, catalin.marinas@arm.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, ggherdovich@suse.cz,
 sudeep.holla@arm.com, will@kernel.org, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVmFsZW50aW4sCgpPbiBXZWRuZXNkYXkgMjkgSmFuIDIwMjAgYXQgMTc6MTM6NTMgKCswMDAw
KSwgVmFsZW50aW4gU2NobmVpZGVyIHdyb3RlOgo+IE9ubHkgY29tbWVudGluZyBvbiB0aGUgYml0
cyB0aGF0IHNob3VsZCBiZSB0aGVyZSByZWdhcmRsZXNzIG9mIHVzaW5nIHRoZQo+IHdvcmtxdWV1
ZXMgb3Igbm90Owo+IAo+IE9uIDE4LzEyLzIwMTkgMTg6MjYsIElvbmVsYSBWb2luZXNjdSB3cm90
ZToKPiA+ICtzdGF0aWMgdm9pZCBjcHVfYW11X2ZpZV9pbml0X3dvcmtmbihzdHJ1Y3Qgd29ya19z
dHJ1Y3QgKndvcmspCj4gPiArewo+ID4gKwl1NjQgY29yZV9jbnQsIGNvbnN0X2NudCwgcmF0aW87
Cj4gPiArCXN0cnVjdCBjcHVfYW11X3dvcmsgKmFtdV93b3JrOwo+ID4gKwlpbnQgY3B1ID0gc21w
X3Byb2Nlc3Nvcl9pZCgpOwo+ID4gKwo+ID4gKwlpZiAoIWNwdV9oYXNfYW11X2ZlYXQoKSkgewo+
ID4gKwkJcHJfZGVidWcoIkNQVSVkOiBjb3VudGVycyBhcmUgbm90IHN1cHBvcnRlZC5cbiIsIGNw
dSk7Cj4gPiArCQlyZXR1cm47Cj4gPiArCX0KPiA+ICsKPiA+ICsJY29yZV9jbnQgPSByZWFkX3N5
c3JlZ19zKFNZU19BTUVWQ05UUjBfQ09SRV9FTDApOwo+ID4gKwljb25zdF9jbnQgPSByZWFkX3N5
c3JlZ19zKFNZU19BTUVWQ05UUjBfQ09OU1RfRUwwKTsKPiA+ICsKPiA+ICsJaWYgKHVubGlrZWx5
KCFjb3JlX2NudCB8fCAhY29uc3RfY250KSkgewo+ID4gKwkJcHJfZXJyKCJDUFUlZDogY3ljbGUg
Y291bnRlcnMgYXJlIG5vdCBlbmFibGVkLlxuIiwgY3B1KTsKPiA+ICsJCXJldHVybjsKPiA+ICsJ
fQo+ID4gKwo+ID4gKwlhbXVfd29yayA9IGNvbnRhaW5lcl9vZih3b3JrLCBzdHJ1Y3QgY3B1X2Ft
dV93b3JrLCBjcHVfd29yayk7Cj4gPiArCWlmICh1bmxpa2VseSghKGFtdV93b3JrLT5jcHVpbmZv
X21heF9mcmVxKSkpIHsKPiA+ICsJCXByX2VycigiQ1BVJWQ6IGludmFsaWQgbWF4aW11bSBmcmVx
dWVuY3kuXG4iLCBjcHUpOwo+ID4gKwkJcmV0dXJuOwo+ID4gKwl9Cj4gPiArCj4gPiArCS8qCj4g
PiArCSAqIFByZS1jb21wdXRlIHRoZSBmaXhlZCByYXRpbyBiZXR3ZWVuIHRoZSBmcmVxdWVuY3kg
b2YgdGhlCj4gPiArCSAqIGNvbnN0YW50IGNvdW50ZXIgYW5kIHRoZSBtYXhpbXVtIGZyZXF1ZW5j
eSBvZiB0aGUgQ1BVIChoeikuCj4gCj4gSSBjYW4ndCByZXNpc3Q6IHMvaHovSHovCj4gCj4gPiAr
CSAqLwo+ID4gKwlyYXRpbyA9ICh1NjQpYXJjaF90aW1lcl9nZXRfcmF0ZSgpIDw8ICgyICogU0NI
RURfQ0FQQUNJVFlfU0hJRlQpOwo+ID4gKwlyYXRpbyA9IGRpdjY0X3U2NChyYXRpbywgYW11X3dv
cmstPmNwdWluZm9fbWF4X2ZyZXEgKiAxMDAwKTsKPiAKPiBOaXQ6IHdlJ3JlIG1pc3NpbmcgYSBj
b21tZW50IHNvbWV3aGVyZSB0aGF0IHRoZSB1bml0IG9mIHRoaXMgaXMgaW4ga0h6Cj4gKHdoaWNo
IGV4cGxhaW5zIHRoZSAqIDEwMDApLgo+IAoKV2lsbCBkbyEgVGhlIHByZXZpb3VzIGNvbW1lbnQg
dGhhdCBleHBsYWluZWQgdGhpcyB3YXMgIi4uIHdoaWxlCmVuc3VyaW5nIG1heF9mcmVxIGlzIGNv
bnZlcnRlZCB0byBIWi4iLCBidXQgSSBiZWxpZXZlZCBpdCBhcyB0b28KY2xlYXIgYW5kIHJlcGxh
Y2VkIGl0IHdpdGggdGhlIG9ic2N1cmUgIihoeikiLiBJJ2xsIHJldmVydCA6KS4KCj4gPiArCXRo
aXNfY3B1X3dyaXRlKGFyY2hfbWF4X2ZyZXFfc2NhbGUsICh1bnNpZ25lZCBsb25nKXJhdGlvKTsK
PiA+ICsKPiAKPiBPa2F5IHNvIHdoYXQgd2UgZ2V0IGluIHRoZSB0aWNrIGlzOgo+IAo+ICAgL1wg
Y29yZQo+ICAgLS0tLS0tLS0KPiAgIC9cIGNvbnN0Cj4gCj4gQW5kIHdlIHdhbnQgdGhhdCB0byBi
ZSBTQ0hFRF9DQVBBQ0lUWV9TQ0FMRSB3aGVuIHJ1bm5pbmcgYXQgbWF4IGZyZXEuIElPVyB3ZQo+
IHdhbnQgdG8gdHVybgo+IAo+ICAgbWF4X2ZyZXEKPiAgIC0tLS0tLS0tLS0KPiAgIGNvbnN0X2Zy
ZXEKPiAKPiBpbnRvIFNDSEVEX0NBUEFDSVRZX1NDQUxFLCBzbyB3ZSBjYW4ganVzdCBtdWx0aXBs
eSB0aGF0IGJ5Ogo+IAo+ICAgY29uc3RfZnJlcQo+ICAgLS0tLS0tLS0tLSAqIFNDSEVEX0NBUEFD
SVRZX1NDQUxFCj4gICBtYXhfZnJlcQo+IAo+IEJ1dCB3aGF0IHRoZSByYXRpbyB5b3UgYXJlIHN0
b3JpbmcgaGVyZSBpcyAKPiAKPiAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0X2ZyZXEK
PiAgIGFyY2hfbWF4X2ZyZXFfc2NhbGUgPSAgIC0tLS0tLS0tLS0gKiBTQ0hFRF9DQVBBQ0lUWV9T
Q0FMRcKyCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgbWF4X2ZyZXEKPiAKPiAoYmVjYXVz
ZSB4IDw8IDIgKiBTQ0hFRF9DQVBBQ0lUWV9TSElGVCA9PSB4IDw8IDIwKQo+IAo+IAo+IEluIHRv
cG9sb2d5X2ZyZXFfc2NhbGVfdGljaygpIHlvdSBlbmQgdXAgZG9pbmcKPiAKPiAgIC9cIGNvcmUg
ICBhcmNoX21heF9mcmVxX3NjYWxlCj4gICAtLS0tLS0tICogLS0tLS0tLS0tLS0tLS0tLS0tLS0K
PiAgIC9cIGNvbnN0ICBTQ0hFRF9DQVBBQ0lUWV9TQ0FMRQo+IAo+IHdoaWNoIGdpdmVzIHVzIHdo
YXQgd2Ugd2FudCAoU0NIRURfQ0FQQUNJVFlfU0NBTEUgYXQgbWF4IGZyZXEpLgo+IAo+IAo+IE5v
dywgdGhlIHJlYXNvbiB3aHkgd2UgbXVsdGlwbHkgb3VyIHJhdGlvIGJ5IHRoZSBzcXVhcmUgb2YK
PiBTQ0hFRF9DQVBBQ0lUWV9TQ0FMRSB3YXMgbm90IG9idmlvdXMgdG8gbWUsIGJ1dCB5b3UgcG9p
bnRlZCBtZSBvdXQgdGhhdCB0aGUKPiBmcmVxdWVuY3kgb2YgdGhlIGFyY2ggdGltZXIgY2FuIGJl
ICpyZWFsbHkqIGxvdyBjb21wYXJlZCB0byB0aGUgbWF4IENQVSBmcmVxLgo+IAo+IEZvciBpbnN0
YW5jZSBvbiBoOTYwOgo+IAo+ICAgWyAgICAwLjAwMDAwMF0gYXJjaF90aW1lcjogY3AxNSB0aW1l
cihzKSBydW5uaW5nIGF0IDEuOTJNSHogKHBoeXMpCj4gCj4gICAkIHJvb3RAdmFsc2NoLWg5NjA6
fiMgY2F0IC9zeXMvZGV2aWNlcy9zeXN0ZW0vY3B1L2NwdWZyZXEvcG9saWN5NC9jcHVpbmZvX21h
eF9mcmVxIAo+ICAgMjM2MjAwMAo+IAo+IFNvIG91ciByYXRpbyB3b3VsZCBiZQo+IAo+ICAgMSc5
MjAnMDAwICogMTAyNAo+ICAgLS0tLS0tLS0tLS0tLS0tLQo+ICAgICAyJzM2MicwMDAnMDAwCj4g
Cj4gV2hpY2ggaXMgfjAuODMsIHNvIHRoYXQgYmVjb21lcyBzaW1wbHkgMC4uLgo+IAo+IAo+IEkg
aGFkIGEgYnJpZWYgbG9vayBhdCB0aGUgQXJtIEFSTSwgZm9yIHRoZSBhcmNoIHRpbWVyIGl0IHNh
eXMgaXQgaXMKPiAidHlwaWNhbGx5IGluIHRoZSByYW5nZSAxLTUwTUh6IiwgYnV0IHRoZW4gYWxz
byBnaXZlcyBhbiBleGFtcGxlIHdpdGggMjBLSHoKPiBpbiBhIGxvdy1wb3dlciBtb2RlLgo+IAo+
IElmIHdlIHRha2Ugc2F5IDVHSHogbWF4IENQVSBmcmVxdWVuY3ksIG91ciBsb3dlciBib3VuZCBm
b3IgdGhlIGFyY2ggdGltZXIKPiAod2l0aCB0aGF0IFNDSEVEX0NBUEFDSVRZX1NDQUxFwrIgdHJp
Y2spIGlzIGFib3V0IH40Ljc2OEtIei4gSXQncyBub3QgKnRvbyoKPiBmYXIgZnJvbSB0aGF0IDIw
S0h6LCBidXQgSSdtIG5vdCBzdXJlIHdlIHdvdWxkIGFjdHVhbGx5IGJlIGV4ZWN1dGluZyBzdHVm
Zgo+IGluIHRoYXQgbG93LXBvd2VyIG1vZGUuCj4gCj4gTG9uZyBzdG9yeSBzaG9ydCwgd2UncmUg
cHJvYmFibHkgZmluZSwgYnV0IGl0IHdvdWxkIG5pY2UgdG8gc2hvdmUgc29tZSBvZgo+IHRoZSBh
Ym92ZSBpbnRvIGNvbW1lbnRzIChlc3BlY2lhbGx5IHRoZSBTQ0hFRF9DQVBBQ0lUWV9TQ0FMRcKy
IHRyaWNrKQoKT2theSwgSSdsbCBhZGQgc29tZSBvZiB0aGlzIGRvY3VtZW50YXRpb24gYXMgY29t
bWVudHMgaW4gdGhlIHBhdGNoZXMuIEkKdGhvdWdodCBhYm91dCBkb2luZyBpdCBidXQgSSB3YXMg
bm90IHN1cmUgaXQganVzdGlmaWVkIHRoZSBsaW5lIGNvdW50LgpCdXQgaWYgaXQgc2F2ZXMgcGVv
cGxlIGF0IGxlYXN0IHRoZSBoYXNzbGUgdG8gdW5wYWNrIHRoaXMgY29tcHV0YXRpb24gdG8KdW5k
ZXJzdGFuZCB0aGUgbG9naWMsIGl0IHdpbGwgYmUgd29ydGggaXQuCgpUaGFuayB5b3UgZm9yIHRo
ZSB0aG9yb3VnaCByZXZpZXcsCklvbmVsYS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
