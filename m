Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACD1D9F1F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 00:09:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xDYJ8o2yn9fLH8E9qw/kMZja2ji1UHqjwAhKThL0SA4=; b=YyUTiUTmYDXzP9
	vEj+7Nxa9ilboBHfbeI3y0faXMpW/5UU2+GD8Z+XHudZxzmftrv1dDhvqATPtCVCkHMCp+u1Svn/s
	7ag/qFXg0VUn71STMBB6oYZKpzmQLReQ0Qe9u7c0s+oX0wuaARP38UMbo9opUKNJSQ3gEIdFiygcm
	fsv5qkOh2Ar5KSk+A7OzM8zTsAw9QGKKz1GhOoYMnuCfxiVhtrhSciVzbgpOun0nuH+nu6/SNS7rr
	PRqO9VgIqBTnKRZE2lA2U7jHa2UPZ4ditJf1dKkBY4tskra9cONcfT6YQiJG1OKYsODZnnUChQsUr
	CB7S9PooqN/ZXrIDQk1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKrUL-00046m-25; Wed, 16 Oct 2019 22:09:49 +0000
Received: from chamillionaire.breakpoint.cc ([2a0a:51c0:0:12e:520::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKrU9-00045b-Ae
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 22:09:38 +0000
Received: from bigeasy by Chamillionaire.breakpoint.cc with local (Exim 4.92)
 (envelope-from <sebastian@breakpoint.cc>)
 id 1iKrU3-0007hZ-Oh; Thu, 17 Oct 2019 00:09:32 +0200
Date: Thu, 17 Oct 2019 00:09:31 +0200
From: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
To: Will Deacon <will@kernel.org>
Subject: Re: [RFC PATCH 0/6 v2] Queued spinlocks/RW-locks for ARM
Message-ID: <20191016220927.54ptu5etl3la3pdb@flow>
References: <20191013221310.30748-1-sebastian@breakpoint.cc>
 <20191016155755.66ges3ybn3awx45l@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016155755.66ges3ybn3awx45l@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_150937_369064_48098327 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:520:0:0:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 Russell King <linux@armlinux.org.uk>, Ingo Molnar <mingo@redhat.com>,
 Waiman Long <longman@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0xMC0xNiAxNjo1Nzo1NiBbKzAxMDBdLCBXaWxsIERlYWNvbiB3cm90ZToKPiBIaSBT
ZWJhc3RpYW4sCkhpIFdpbGwsCgo+IFRvIGJlIGhvbmVzdCB3aXRoIHlvdSwgSSdtIHN1cnByaXNl
ZCB0aGF0IHFzcGlubG9jayBpcyB3b3J0aCBpdCBmb3IgMzItYml0Cj4gQXJtLiBxcndsb2NrIG1h
a2VzIHNlbnNlIGJlY2F1c2Ugb2YgZmFpcm5lc3MgYW5kIHN0YXJ2YXRpb24gaXNzdWVzLCBidXQg
aW4KPiBteSBiZW5jaG1hcmtzIG9uIGFybTY0IHRpY2tldHMgdGVuZGVkIHRvIHBlcmZvcm0gYXQg
bGVhc3QgYXMgd2VsbCBmb3Igc21hbGwKPiBjb3JlIGNvdW50cywgYW5kIEkgdGhpbmsgdGhhdCdz
IGxhcmdlbHkgZ29pbmcgdG8gYmUgdHJ1ZSBmb3Igc3lzdGVtcwo+IHJ1bm5pbmcgYSAzMi1iaXQg
a2VybmVsLgoKV2FpbWFuIGhhZCBudW1iZXJzIG9uIHg4NiBvbiBob3cgZ29vZCB0aGlzIHEtbG9j
ayB0aGluZ3kgaXMgYW5kIHg4Ngptb3ZlZCB0byB0aGlzLiBBUk02NCBkaWRuJ3Qgc3RhdGUgYSBy
ZWFzb24gaW4gcGFydGljdWxhciBvbmx5IHNheWluZwoiaXQgc2VydmVkIHVzIHdlbGwgYnV0IHdl
IGRvIHEtbG9ja3Mgbm93IiAodGhpcyBpcyBob3cgSSByZW1lbWJlciBpdAphZnRlciBJIHdlbnQg
b3ZlciB0aGUgZ2l0IGxvZ3Mgc29tZSB0aW1lIGFnbykuCk5vdCBrbm93aW5nIGFueXRoaW5nIGFi
b3V0IHFzcGluIHZzIHRpY2tldCBsb2NraW5nIEkgbG9va2VkIG9uIGhvdyBoYXJkCndpbGwgYmUg
dG8gc3dpdGNoLiBUaGVuIEkgbG9va2VkIHdpdGggaGFja2JlbmNoIGF0IGl0IHRvIHNlZSBpZiBp
dCB3YXMKd29ydGggaXQgYW5kIGl0IGRpZG4ndCBsb29rIHRoYXQgYmFkLiBQbHVzIHRoZSBkaWZm
c3RhdCB3YXMgbmVnYXRpdmUgc2/igKYKCj4gSSd2ZSB1cGxvYWRlZCBteSAoY3J1ZGUsIHdhcyBu
ZXZlciBtZWFudCB0byBiZSBzaGFyZWQhKSBiZW5jaG1hcmsgaGFybmVzcwo+IGhlcmU6Cj4gCj4g
ICBodHRwczovL21pcnJvcnMuZWRnZS5rZXJuZWwub3JnL3B1Yi9saW51eC9rZXJuZWwvcGVvcGxl
L3dpbGwvc3BpbmJlbmNoCj4gCj4gd2hpY2ggSSB1c2VkIHRvIGdlbmVyYXRlIGdyYXBocyBsaWtl
Ogo+IAo+ICAgaHR0cHM6Ly9taXJyb3JzLmVkZ2Uua2VybmVsLm9yZy9wdWIvbGludXgva2VybmVs
L3Blb3BsZS93aWxsL3NsaWRlcy9hcm02NC1zcGlubG9ja3MucGRmCj4gCj4gTWF5YmUgeW91IGNv
dWxkIHBvcnQgaXQgdG8gMzItYml0IGFuZCBzZWUgd2hhdCB0aGUgbnVtYmVycyBsb29rIGxpa2U/
IFRoZQo+IHFzcGlubG9jayBjb2RlIHByb2JhYmx5IG5lZWRzIHJlLXN5bmNpbmcgd2l0aCBtYWlu
bGluZSB0b28sIGJ1dCBzZWUgaG93IHlvdQo+IGdvLiBJZiBpdCBlbmRzIHVwIGJlaW5nIHVzZWZ1
bCBtYXliZSBJJ2xsIGhvc3QgaXQgaW4gYSBnaXQgdHJlZS4KCk9rYXkuIExldCBtZSBzZWUgd2hh
dCBJIGNhbiBkby4KCj4gV2lsbAoKU2ViYXN0aWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
