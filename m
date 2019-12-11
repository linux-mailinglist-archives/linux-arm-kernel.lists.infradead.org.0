Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3219A11A92C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 11:42:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kOPKonH99FiY5hzUXgLL8CW1RZ551kC6rQnwGLyvuXM=; b=ML7gvlzefBp1Yt
	JejtE/5mRKn7Hu3erw8FSjRQo1TyOgFmoUzNPZRnJwIpcBbkKeC45KnKmfZRyfGuT5lh9OqzwK3Qp
	r0eGEgjwb8KWNKzKDMgSYRMee0dfd3fwZbWBUh6yaWiloiVmZPAztGviTe1W3ST9l3mrki5ZJwbp/
	SnYgNu8hycS5brOQSYEv1MGiaTaqS1teL0DLfu80v8Fb7NLb1HJEPM5QVgwAmNEdVDSf7BgVzsPC+
	pybxlUYJe067+8muddjoophS/OvPqGVeHBrRE1nvAD1Cjxlbi9o9VnuqQg5OoyKP2TyJUeBwWqdwq
	bFB7X7vj/8vwPDiXy6eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iezSH-0006Oj-LD; Wed, 11 Dec 2019 10:42:53 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iezS2-0006Jw-2M
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 10:42:40 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 376F6B13E;
 Wed, 11 Dec 2019 10:42:36 +0000 (UTC)
From: Thomas Renninger <trenn@suse.de>
To: Thomas Gleixner <tglx@linutronix.de>,
 Felix Schnizlein <fschnizlein@suse.com>
Subject: Re: [PATCH 2/3] x86 cpuinfo: implement sysfs nodes for x86
Date: Wed, 11 Dec 2019 11:42:35 +0100
Message-ID: <4737004.4U1sY2OxSp@skinner.arch.suse.de>
In-Reply-To: <87sglroqix.fsf@nanos.tec.linutronix.de>
References: <20191206162421.15050-1-trenn@suse.de>
 <20191206163656.GC86904@kroah.com> <87sglroqix.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_024238_428371_4637F3CD 
X-CRM114-Status: GOOD (  19.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Felix Schnizlein <fschnizlein@suse.de>,
 Greg KH <gregkh@linuxfoundation.org>, x86@kernel.org, will.deacon@arm.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlc2RheSwgRGVjZW1iZXIgMTAsIDIwMTkgOTo0ODo1NCBQTSBDRVQgVGhvbWFzIEdsZWl4
bmVyIHdyb3RlOgo+IEdyZWcgS0ggPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPiB3cml0ZXM6
Cj4gPiBPbiBGcmksIERlYyAwNiwgMjAxOSBhdCAwNToyNDoyMFBNICswMTAwLCBUaG9tYXMgUmVu
bmluZ2VyIHdyb3RlOgo+ID4+IEZyb206IEZlbGl4IFNjaG5pemxlaW4gPGZzY2huaXpsZWluQHN1
c2UuZGU+Cj4gPj4gPT0+IGZsYWdzIDw9PQo+ID4+IGZwdSB2bWUgZGUgcHNlIHRzYyBtc3IgcGFl
IG1jZSBjeDggYXBpYyBzZXAgbXRyciBwZ2UgbWNhIGNtb3YgcGF0IHBzZTM2Cj4gPj4gY2xmbHVz
aCBtbXggZnhzciBzc2Ugc3NlMiBzcyBzeXNjYWxsIG54IHBkcGUxZ2IgcmR0c2NwIGxtIGNvbnN0
YW50X3RzYwo+ID4+IHJlcF9nb29kIG5vcGwgeHRvcG9sb2d5IGNwdWlkIHRzY19rbm93bl9mcmVx
IHBuaSBwY2xtdWxxZHEgc3NzZTMgZm1hCj4gPj4gY3gxNiBwY2lkIHNzZTRfMSBzc2U0XzIgeDJh
cGljIG1vdmJlIHBvcGNudCB0c2NfZGVhZGxpbmVfdGltZXIgYWVzIHhzYXZlCj4gPj4gYXZ4IGYx
NmMgcmRyYW5kIGh5cGVydmlzb3IgbGFoZl9sbSBhYm0gY3B1aWRfZmF1bHQgaW52cGNpZF9zaW5n
bGUgcHRpCj4gPj4gc3NiZCBpYnJzIGlicGIgZnNnc2Jhc2UgdHNjX2FkanVzdCBibWkxIGF2eDIg
c21lcCBibWkyIGVybXMgaW52cGNpZAo+ID4+IHhzYXZlb3B0IGFyYXQgdW1pcD4gCj4gPiBPbmUg
ZmlsZSB3aXRoIGFsbCBvZiB0aGF0PyAgV2UgYXJlIGdvaW5nIHRvIHJ1biBpbnRvIHByb2JsZW1z
Cj4gPiBldmVudHVhbGx5LCB0aGF0IHNob3VsZCBiZSBzcGxpdCB1cC4KPiA+IAo+ID4gSnVzdCBs
aWtlIGJ1Z3MsIHRoYXQncyBnb2luZyB0byBqdXN0IGdyb3cgb3ZlciB0aW1lIGFuZCBldmVudHVh
bGx5Cj4gPiBvdmVyZmxvdyBQQUdFX1NJWkUgOigKPiA+IAo+ID4gTWFrZSB0aGlzOgo+ID4gICDi
lJzilIDilIAgZmxhZ3MKPiA+ICAg4pSCICAg4pSc4pSA4pSAIGZwdQo+ID4gICDilIIgICDilJzi
lIDilIAgdm1lCj4gPiAKPiA+IC4uLgo+ID4gCj4gPiBNdWNoIHNpbXBsZXIgdG8gcGFyc2UsIHJp
Z2h0Pwo+IAo+IFdlbGwsIEknbSBub3QgcmVhbGx5IHN1cmUgd2hldGhlciAxMDArIGZpbGVzIGFy
ZSBzaW1wbGVyIHRvIHBhcnNlLgo+IAo+IEFzaWRlIG9mIHRoYXQgSSByZWFsbHkgZG9uJ3Qgc2Vl
IHRoZSB2YWx1ZSBmb3IgMTAwKyBmaWxlcyBwZXIgQ1BVIHdoaWNoCj4gYXJlIGp1c3QgcmV0dXJu
aW5nIDEgb3IgVHJ1ZSBvciB3aGF0ZXZlciBhcyBsb25nIGFzIHlvdSBhcmUgbm90Cj4gc3VnZ2Vz
dGluZyB0byBwcm92aWRlIHJlYWwgZmVhdHVyZSBmaWxlcyB3aGljaCBoYXZlIDAvMSBvciBUcnVl
L0ZhbHNlCj4gY29udGVudC4KCkkgYWxzbyBkbyBub3QgbGlrZSB0aGUgb25lIGZpbGUgcGVyIGNw
dSBmbGFnIGFwcHJvYWNoLgpUaGlzIHN0aWxsIGlzIG9uZSAiZGF0YSIvImluZm8iIHBlciBzeXNm
cyBmaWxlLgpTaW1pbGFyIHRvOgpjcHUvY3B1ZnJlcS9wb2xpY3kxL3NjYWxpbmdfYXZhaWxhYmxl
X2dvdmVybm9ycwphbmQgcHJvYmFibHkgYSBsb3Qgb3RoZXJzLiBJZiBQQUdFX1NJWkUgb3ZlcmZs
b3cgaGFzIHRvIGJlIGNhcmVkIGZvciwgdGhlbiBiZSAKaXQuCiAKPiBCdXQgSSBzdGlsbCBkb24n
dCBnZXQgdGhlIHdob2xlIHRoaW5nLiBUaGUgb25seSAiYXJndW1lbnQiIEkndmUgc2VlbiBzbwo+
IGZhciBpcyB0aGUgJ3Byb2MgbW92ZXMgdG8gc3lzJyBtYW50cmEsIGJ1dCB0aGF0IGRvZXMgbm90
IG1ha2UgaXQgYW55Cj4gYmV0dGVyLgo+IAo+IFdlIHdvbid0IGdldCByaWQgb2YgL3Byb2MvY3B1
aW5mbyBmb3IgYSB2ZXJ5IGxvbmcgdGltZSBzaW1wbHkgYmVjYXVzZQo+IHRvbyBtdWNoIHVzZXJz
cGFjZSB1c2VzIGl0LgoKVGhlIHJlYXNvbiB3ZSB3aWxsIG5ldmVyIGdldCByaWQgb2YgaXQgaXM6
Ck5ld2x5IHdyaXR0ZW4gdXNlcnNwYWNlIHRvb2xzIHN0aWxsIChoYXZlIHRvKSBtYWtlIHVzZSBp
dC4KVGhpcyBpcyBiZWNhdXNlIG9mIGEgc21hbGwgc2V0IG9mIHJlbWFpbmluZyBpbmZvIHdoaWNo
IGlzIGNvbnZlbmllbnQKdG8gaGF2ZSBpbiB1c2Vyc3BhY2UgYnV0IHdoaWNoIGlzIG5vdCBhdmFp
bCBpbiBzeXNmcyB5ZXQuCgpUaGVyZWZvcmUgb25seSB4IG9mIHRoZSAyNiAvcHJvYy9jcHVpbmZv
IGRhdGEgaGFzIGJlZW4gcGlja2VkIHVwLgoKRm9yIGRlY2FkZXMgdW51c2VkIGluZm8gbGlrZToK
ZnB1ICAgICAgICAgICAgIDogeWVzCmZwdV9leGNlcHRpb24gICA6IHllcwpjcHVpZCBsZXZlbCAg
ICAgOiAxMwp3cCAgICAgICAgICAgICAgOiB5ZXMKcG93ZXIgbWFuYWdlbWVudDoKCnNoYWxsIGRp
ZSBhdCAobG9uZyBidXQpIHNvbWUgcG9pbnQgb2YgdGltZS4KCkl0J3MgcXVpdGUgc29tZSB5ZWFy
cyBhZ28gd2hlbiBhY3BpIGFuZCBjcHVmcmVxIHByb2MgaW5mbyBmaXJzdCBnb3QKZGVwcmVjYXRl
ZCBhbmQgZHVwbGljYXRlZCBpbiBzeXMuCkl0IGhhcyBiZWVuIHNhaWQgdGhhdCBpdCBuZWVkcyB5
ZWFycyBvZiBkZXByZWNhdGlvbiB0aGF0IHRoZSBldmVudCBmaWxlCm9uIHdoaWNoIGRhbW9ucyB3
ZXJlIGxpc3RlbmluZyBmb3IgYWNwaSBldmVudHMgY2FuIGV2ZXIgYmUgcmVtb3ZlZC4uLgpJdCBo
YXMgYmVlbiAyMDEzIHdoZW4gdGhlIHJlbW92YWwgaGFzIGJlZW4gZG9uZSwgbW9yZSB0aGFuIDUg
eWVhcnMgYWdvOgoxNjk2ZDlkYzU3ZTA2MmNlNTIwMGY2YTQyYTZhYWFkYTE1YjQzNGJiCkFDUEk6
IFJlbW92ZSB0aGUgb2xkIC9wcm9jL2FjcGkvZXZlbnQgaW50ZXJmYWNlCgovcHJvYy9jcHVpbmZv
IG1heSBuZWVkIHNvbWUgeWVhcnMgbW9yZSwgYnV0IHRoZXJlIHNob3VsZCBiZSBubwpyZWFzb24g
aXQgaXMgc3RpbGwgZ2V0dGluZyB1c2VkLgoKPiBJbnRyb2R1Y2luZyBhIG1lc3MgaW4gL3N5cy8g
aW4gcGFyYWxsZWwganVzdAo+IGZvciBmb2xsb3dpbmcgdGhlIG1hbnRyYSBkb2VzIG5vdCBoZWxw
IG11Y2guCiAKPiBBbHNvIElGIHdlIGV2ZXIgZXhwb3NlIGZlYXR1cmUgZmxhZ3MgaW4gc3lzIHRo
ZW4gdGhpcyBuZWVkcyB0byBiZSBhCj4gc3BsaXQgaW5vCj4gCj4gICBjcHUvY29tbW9uX2ZlYXR1
cmVzCj4gCj4gYW5kCj4gCj4gICBjcHUvQ1BVJE4vdW5pcXVlX2ZlYXR1cmVzCgpNYWtlcyBzZW5z
ZS4KZmVhdHVyZSAod2l0aG91dCBjb21tb24vdW5pcXVlKSBpcyBhbHNvIGEgYmV0dGVyIG5hbWlu
ZyB0aGFuIGZsYWdzLgoKSWYgR3JlZyAoYW5kIG90aGVycykgYXJlIG9rLCBJIHdvdWxkIGFkZCAi
cGFnZSBzaXplIGV4Y2VlZGluZyIgaGFuZGxpbmcuCkhtLCBxdWljayBzZWFyY2hpbmcgZm9yIGFu
IGV4YW1wbGUgSSByZWFsaXplIHRoYXQgZGVidWdmcyBjYW4gZXhjZWVkIHBhZ2UgCnNpemUuIElz
IGl0IHRoYXQgaGFyZCB0byBleHBvc2UgYSBzeXNmcyBmaWxlIGxhcmdlciB0aGFuIHBhZ2Ugc2l6
ZT8KCj4gT24gbW9zdCBzeXN0ZW1zIHVuaXF1ZV9mZWF0dXJlcyB3b250IGV4aXN0LCBidXQgdGhl
cmUgaXMgc3VjaCBzdHVmZiBvbgo+IHRoZSBob3Jpem9uLgoKSSBzdGlsbCB3YWl0IGEgYml0IGJl
Zm9yZSBkb2luZyB3b3JrIGZvciBub3RoaW5nLgpJIGhvcGUgZXZlcnlib2R5IGFncmVlcywgdGhh
dCByZW1haW5pbmcgdXNlZnVsIGluZm8gaW4gL3Byb2MvY3B1aW5mbyBzaG91bGQKc2hvdyB1cCBp
biAvc3lzIGlmIHRoYXQgZGlkIG5vdCBoYXBwZW4geWV0LiBBbmQgdGhhdCB1c2Vyc3BhY2UgdG9v
bHMgc2hvdWxkCm5vdCAobmVlZCB0bykgbWFrZSB1c2Ugb2YgL3Byb2MvY3B1aW5mbyBhbnltb3Jl
LgoKICAgIFRob21hcwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
