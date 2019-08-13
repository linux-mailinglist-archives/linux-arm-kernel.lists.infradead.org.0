Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A10298BFA6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 19:31:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+D7UDqOMajLUySv0zMlJ2ro6mEn4v5rSO8Uh4LPT4ds=; b=ItcunleiMJ86Vf
	ZbirH46emtojebz7CIJ+zBfpN9VTBLZ+9QldT1r22RunL5k8TOx6DfyEMV4MEBYHu/+J6w8nsJ1NI
	beDKmaCGtoC44w6z8x1h305CPJ+JKQC+S0bJ4jVpu+7pYrgjtGc3oKSMylFxT9VsLFejjPQdNvbtd
	VOQdyxCYc+Y9I1PIObuwixQYDeMLFRuBQcHtynW0SHPrvW1Fn3k74RuxyYJlbW0xM/tLu/TwByYb1
	kP70ZclF8bs/6pJ1oNTZATmkyJ4r7MpQC0IsYwCr05ifjU2gIkdWqPNlzRTeTwQVNz7AH5dzzp4dW
	52pf/TahzkH1rczba0FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxadu-0006VK-M2; Tue, 13 Aug 2019 17:31:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxadj-0006Uu-Ct
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 17:31:20 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A5DE620663;
 Tue, 13 Aug 2019 17:31:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565717479;
 bh=VX8Z2lloO6l5GDML3vLgzlVdObVx93RSyJ7TafutxOg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Tn8d5Q/fIY4PODBCqR+sIAz5un/FsWAS5Ky8s12p4cV7/Cf8Z2dpD1EaMiLRtOuhZ
 nDoJG/qtaKMBCWd69mYTHLRPMOn4vj3Hjvz1Ha0rDIXxIg7jv/ia1ngjzCLDEdIbgT
 M6gjrOqtlxY8OGQDlwgiYYDZe7g+/ErZ4VlmjSpg=
Date: Tue, 13 Aug 2019 18:31:14 +0100
From: Will Deacon <will@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH 1/2 v2] tracing/arm64: Have max stack tracer handle the
 case of return address after data
Message-ID: <20190813173114.himeal2ublebx7ea@willie-the-truck>
References: <20190807172826.352574408@goodmis.org>
 <20190807172907.155165959@goodmis.org>
 <20190808162825.7klpu3ffza5zxwrt@willie-the-truck>
 <20190808123632.0dd1a58c@gandalf.local.home>
 <20190808171153.6j56h4hlcpcl5trz@willie-the-truck>
 <20190808132455.5fa2c660@gandalf.local.home>
 <21530ce5-3847-c669-2a64-7c59ffb45f35@windriver.com>
 <20190808222440.2f99c50e@oasis.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808222440.2f99c50e@oasis.local.home>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_103119_463975_E55E3505 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jiping Ma <Jiping.Ma2@windriver.com>, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, mingo@redhat.com,
 Joel Fernandes <joel@joelfernandes.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3RldmUsCgpPbiBUaHUsIEF1ZyAwOCwgMjAxOSBhdCAxMDoyNDo0MFBNIC0wNDAwLCBTdGV2
ZW4gUm9zdGVkdCB3cm90ZToKPiBPbiBGcmksIDkgQXVnIDIwMTkgMTA6MTc6MTkgKzA4MDAKPiBK
aXBpbmcgTWEgPEppcGluZy5NYTJAd2luZHJpdmVyLmNvbT4gd3JvdGU6Cj4gPiBPbiAyMDE55bm0
MDjmnIgwOeaXpSAwMToyNCwgU3RldmVuIFJvc3RlZHQgd3JvdGU6Cj4gPiA+IE9uIFRodSwgOCBB
dWcgMjAxOSAxODoxMTo1MyArMDEwMAo+ID4gPiBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwub3Jn
PiB3cm90ZToKPiA+ID4gIAo+ID4gPj4+IFdlIGNvdWxkIG1ha2UgaXQgbW9yZSBkZXNjcmlwdGl2
ZSBvZiB3aGF0IGl0IHdpbGwgZG8gYW5kIG5vdCB0aGUgcmVhc29uCj4gPiA+Pj4gZm9yIHdoeSBp
dCBpcyBkb25lLi4uCj4gPiA+Pj4KPiA+ID4+Pgo+ID4gPj4+ICAgIEFSQ0hfRlRSQUNFX1NISUZU
X1NUQUNLX1RSQUNFUiAgCj4gPiA+PiBBY2tlZC1ieTogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVs
Lm9yZz4gIAo+ID4gPiBUaGFua3MgV2lsbCEKPiA+ID4KPiA+ID4gSGVyZSdzIHRoZSBvZmZpY2lh
bCBwYXRjaC4KPiA+ID4KPiA+ID4gRnJvbTogIlN0ZXZlbiBSb3N0ZWR0IChWTXdhcmUpIiA8cm9z
dGVkdEBnb29kbWlzLm9yZz4KPiA+ID4KPiA+ID4gTW9zdCBhcmNocyAod2VsbCBhdCBsZWFzdCB4
ODYpIHN0b3JlIHRoZSBmdW5jdGlvbiBjYWxsIHJldHVybiBhZGRyZXNzIG9uIHRoZQo+ID4gPiBz
dGFjayBiZWZvcmUgc3RvcmluZyB0aGUgbG9jYWwgdmFyaWFibGVzIGZvciB0aGUgZnVuY3Rpb24u
IFRoZSBtYXggc3RhY2sKPiA+ID4gdHJhY2VyIGRlcGVuZHMgb24gdGhpcyBpbiBpdHMgYWxnb3Jp
dGhtIHRvIGRpc3BsYXkgdGhlIHN0YWNrIHNpemUgb2YgZWFjaAo+ID4gPiBmdW5jdGlvbiBpdCBm
aW5kcyBpbiB0aGUgYmFjayB0cmFjZS4KPiA+ID4KPiA+ID4gU29tZSBhcmNocyAoYXJtNjQpLCBt
YXkgc3RvcmUgdGhlIHJldHVybiBhZGRyZXNzIChmcm9tIGl0cyBsaW5rIHJlZ2lzdGVyKQo+ID4g
PiBqdXN0IGJlZm9yZSBjYWxsaW5nIGEgbmVzdGVkIGZ1bmN0aW9uLiBUaGVyZSdzIG5vIHJlYXNv
biB0byBzYXZlIHRoZSBsaW5rCj4gPiA+IHJlZ2lzdGVyIG9uIGxlYWYgZnVuY3Rpb25zLCBhcyBp
dCB3b250IGJlIHVwZGF0ZWQuIFRoaXMgYnJlYWtzIHRoZSBhbGdvcml0aG0KPiA+ID4gb2YgdGhl
IG1heCBzdGFjayB0cmFjZXIuCj4gPiA+Cj4gPiA+IEFkZCBhIG5ldyBkZWZpbmUgQVJDSF9SRVRf
QUREUl9BRlRFUl9MT0NBTF9WQVJTIHRoYXQgYW4gYXJjaGl0ZWN0dXJlIG1heSBzZXQgIAo+ID4g
Cj4gPiBBUkNIX0ZUUkFDRV9TSElGVF9TVEFDS19UUkFDRVIgaXMgdXNlZCBpbiB0aGUgY29kZS4K
PiAKPiBBaCwgSSBkaWQgYSBzL3gveS8gdG8gdGhlIGRpZmYgb2YgdGhlIHBhdGNoLCBidXQgbm90
IHRoZSBjaGFuZ2UgbG9nLgo+IFRoYW5rcyBmb3IgcG9pbnRpbmcgdGhhdCBvdXQuIEkgYWxzbyBu
ZWVkIHRvIHVwZGF0ZSB0aGUgY29tbWVudCBpbiAyLzIuCgpBcmUgeW91IGdvaW5nIHRvIHBvc3Qg
YW5vdGhlciB2ZXJzaW9uIG9mIHRoaXMgb3IgaGF2ZSB5b3UgcXVldWVkIGl0IGFscmVhZHk/Ckp1
c3Qgd2FudCB0byBtYWtlIHN1cmUgaXQgZG9lc24ndCBzbGlwIHRocm91Z2ggdGhlIGNyYWNrcy4K
CkNoZWVycywKCldpbGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
