Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1FB6D0331
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 00:03:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YgYl7lhJRVqXXdsKZdcNBYV+y4RWFUqTqisNlNZ/W3k=; b=aG5N1xdwfHNu9d
	jNzT+bUHzFPKkV8jY+2H/v2HHwZGOeYiK/JlngGKpPUV/AkY3yFqlG1KUUROOy4hp0v8KXtZCMChE
	lcI5l651zmWTz1+cPz3Gg8EbAdL/cXA+o0ch+DOEIR/Jy0zaC/Kyf7FvAaRa/cwNtRaNkhBybD2cB
	y/9T0KkNh81OQ2R+nPnrN99N6ghEnV/zZzjO9CfxQKCACGcPBnZ5K9pHE4V0fSmUYiVCAxKzHQj/t
	18tiKwqcmkD+SDVbsOAyfm4El3Dp8wZ3qAuc2yvrd+j1qhP6ifOQkO+VsoeXYoLXYkXXIy25/VLKa
	pUg4Chjz87R8MwHXBc4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHxZF-0006xr-Jv; Tue, 08 Oct 2019 22:02:53 +0000
Received: from chamillionaire.breakpoint.cc ([2a0a:51c0:0:12e:520::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHxZ8-0006x8-5M
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 22:02:47 +0000
Received: from bigeasy by Chamillionaire.breakpoint.cc with local (Exim 4.92)
 (envelope-from <sebastian@breakpoint.cc>)
 id 1iHxZ0-0006au-IM; Wed, 09 Oct 2019 00:02:38 +0200
Date: Wed, 9 Oct 2019 00:02:38 +0200
From: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [RFC PATCH 0/3] Queued spinlocks/RW-locks for ARM
Message-ID: <20191008220238.neuy5iwrgbkum6m3@flow>
References: <20191007214439.27891-1-sebastian@breakpoint.cc>
 <CAK8P3a13AOKm1epqAtP9329Ai2Bh+H18fOfsqO+deCLTHoYRwA@mail.gmail.com>
 <56004687-af3e-3b8b-c9b5-21cd653db12b@redhat.com>
 <CAK8P3a0UH8_pSPbEd7fRjws-TZ=+q-gLQZXvEOtoX9YtZY9tmA@mail.gmail.com>
 <20191008194724.evlk3bnomcz3kxwg@flow>
 <CAK8P3a182o64NfheNEYixDsi=mSZCNVSgg=_EDnwy+fZ1hrzLw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a182o64NfheNEYixDsi=mSZCNVSgg=_EDnwy+fZ1hrzLw@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_150246_202419_42EF5D57 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:520:0:0:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Peter Zijlstra <peterz@infradead.org>, Russell King <linux@armlinux.org.uk>,
 Ingo Molnar <mingo@redhat.com>, Waiman Long <longman@redhat.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0xMC0wOCAyMzo0NzozMSBbKzAyMDBdLCBBcm5kIEJlcmdtYW5uIHdyb3RlOgrigKYK
PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9hc20tZ2VuZXJpYy9xc3BpbmxvY2suaCBiL2luY2x1ZGUv
YXNtLWdlbmVyaWMvcXNwaW5sb2NrLmgKPiBpbmRleCBmZGU5NDNkMTgwZTAuLjNjNDU2YWQxNjYx
YiAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2FzbS1nZW5lcmljL3FzcGlubG9jay5oCj4gKysrIGIv
aW5jbHVkZS9hc20tZ2VuZXJpYy9xc3BpbmxvY2suaArigKYKPiBAQCAtNzUsNiArNzksMTEgQEAg
c3RhdGljIF9fYWx3YXlzX2lubGluZSB2b2lkIHF1ZXVlZF9zcGluX2xvY2soc3RydWN0Cj4gcXNw
aW5sb2NrICpsb2NrKQo+ICB7Cj4gICAgICAgICB1MzIgdmFsID0gMDsKPiAKPiArICAgICAgIGlm
ICghc21wX2VuYWJsZWQoKSkgewo+ICsgICAgICAgICAgICAgICBhdG9taWNfc2V0KCZsb2NrLT52
YWwsIF9RX0xPQ0tFRF9WQUwpOwo+ICsgICAgICAgICAgICAgICByZXR1cm47Cj4gKyAgICAgICB9
Cj4gKwo+ICAgICAgICAgaWYgKGxpa2VseShhdG9taWNfdHJ5X2NtcHhjaGdfYWNxdWlyZSgmbG9j
ay0+dmFsLCAmdmFsLCBfUV9MT0NLRURfVkFMKSkpCj4gICAgICAgICAgICAgICAgIHJldHVybjsK
PiAKPiBUaGUgYWJvdmUgaXMgbGlrZWx5IGluY29ycmVjdCwgbm9uLWlkaW9tYXRpYyBvciBpbmVm
ZmljaWVudCwgYnV0IHRoaXMKPiBpcyBhIHdheSB0bwo+IGF2b2lkIGJvdGggYSBydW50aW1lIGNo
ZWNrIGFuZCB0aGUgY21weGNoZygpIGluIGVhY2ggc3BpbmxvY2suCgpZb3Ugd291bGQgaGF2ZSB0
byBwdXQgdGhpcyBpbiBhcmNoX3NwaW5fdHJ5bG9jaygpIGJ1dCBJIGdldCB0aGUgaWRlYS4KVGhl
IGN1cnJlbnQgaW1wbGVtZW50YXRpb24gZG9lcyBjbXB4Y2hnKCkgaW4gdGhlIHRyeS1sb2NrIGNh
c2Ugc28gYnkKc3dpdGNoaW5nIHRvIHEtbG9ja3MgYXJlIG5vdCBnZXR0aW5nIHdvcnNlIGluIHRo
ZSBVUCBjYXNlLiBUaGVyZWZvcmUgSQp0aGlzIGlzIG1vcmUgb2YgYW4gb3B0aW1pc2F0aW9uIGZv
ciB0aG9zZSB0aGF0IHJ1biBTTVAga2VybmVscyBvbiBVUAptYWNoaW5lcy4KCj4gICAgICAgQXJu
ZAoKU2ViYXN0aWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
