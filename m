Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE8E199A12
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:45:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J7e3W/SG9ELejaGnqheBNLDGTpUdJ7h5OVHhNSX/bgs=; b=HzCEoy5B7ViVTL
	qBZLbmKDRS67Ola1uytGfBhZWpItm5aMpMEWMreUzpThkZ/BqwMGVXTY79tpnJUE3JNxbVPgjGNSG
	phnJyxNYIScXEF9SPesnza8Z1zZdp72tTZtHd7uWf8wxLan7xnOk5E4gFcg+9Dl1+Z9o7nJ6rvZ1W
	FVbkMP3R5TM+Cywg2tGscyD9hfSh5jbrCiF2GLQM/CggskLedforlgTqlGRNbZXW8BUHmxonptToK
	noSFUDwjrDbNN2Nm2r3wxnJnEJQeNUIrWu0xvIFU6Q60G/FSONH6v90dr1mlmdPMl85nGTEiNekNE
	/t83DiEFkXUxuFWbA0PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJ4U-0001Hg-5p; Tue, 31 Mar 2020 15:44:58 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJ1l-0007s6-Iy
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 15:42:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=wqSUg0VSVU8JS/rSJwuAtWAHJJ47FkixA4i855kc7eg=; b=tV48LRJeQhXky1u6CT8Ss0Eqft
 nBXUJggsnoQE4H3+vhbYSNCKf9wUKsrjm3jaR+YDdtwpuFNeT2qdns7QoxYlOZSzDuv3QFLHfG1CB
 23qm1Y/5e3XZJNwO1npMaNx4NCYFlglCcPTIgg81PCbUtS1hUunyB2xIh0icljXvmn9xJIo3VMdgg
 xCA7fLVNOGTlCefpEv1mfDAVnmHMoXvakFIrRB4azdVOugmY0VzX2annCIRxeWK2BjIRyS3bELutd
 eYwpvk1/+VEHLVCagpLrLnBoS/VPTMMQSSbcOcePFU9MQyTJUF3ctaFrFQpsVTZnq2Z1cYR9978Qm
 b9yYBgxg==;
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJHAc-00028A-Ph
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 13:43:13 +0000
Received: from bigeasy by Galois.linutronix.de with local (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1jJHAH-00038x-K6; Tue, 31 Mar 2020 15:42:49 +0200
Date: Tue, 31 Mar 2020 15:42:49 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH 6/9] lockdep: Introduce wait-type checks
Message-ID: <20200331134249.kf3zyf27xtspmlif@linutronix.de>
References: <20200313174701.148376-1-bigeasy@linutronix.de>
 <20200313174701.148376-7-bigeasy@linutronix.de>
 <CAMuHMdU6s1F=DnaguZXrV4sWzEO-EqTaGQ=N7zyhgGq1M+Q1Ug@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdU6s1F=DnaguZXrV4sWzEO-EqTaGQ=N7zyhgGq1M+Q1Ug@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_144311_112517_872EA340 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
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
Cc: "Paul E . McKenney" <paulmck@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Joel Fernandes <joel@joelfernandes.org>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wMy0zMSAxNToyNToyMSBbKzAyMDBdLCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6
Cj4gSGkgYWxsLApIaSBHZWVydCwKCj4gT24gYXJtNjQgKGUuZy4gUi1DYXIgSDMgRVMyLjApOgo+
IAo+ICs9PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+ICtbIEJVRzogSW52YWxpZCB3YWl0
IGNvbnRleHQgXQo+ICs1LjYuMC1zYWx2YXRvci14LTA5NDIzLWdiMjk1MTRiYTEzYTljNDU5LWRp
cnR5ICM2NzkgTm90IHRhaW50ZWQKPiArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAr
c3dhcHBlci81LzAgaXMgdHJ5aW5nIHRvIGxvY2s6Cj4gK2ZmZmZmZjg2ZmY3NmYzOTggKCZwb29s
LT5sb2NrKXsuLi0ufS17MzozfSwgYXQ6IF9fcXVldWVfd29yaysweDEzNC8weDQzMAoKVGhlIHBv
b2wtPmxvY2sgaXMgbm90IHlldCBjb252ZXJ0ZWQuCuKApgo+IE9uIGFybTMyIChlLmcgU0gtTW9i
aWxlIEFHNSwgdXNpbmcgQ29ydGV4LUE5IFRXRCk6Cj4gCj4gKz09PT09PT09PT09PT09PT09PT09
PT09PT09PT09Cj4gK1sgQlVHOiBJbnZhbGlkIHdhaXQgY29udGV4dCBdCj4gKzUuNi4wLWt6bTln
LTA5NDI0LWcyNjk4NzE5YjRjNGYzNWRiLWRpcnR5ICMyNTMgTm90IHRhaW50ZWQKPiArLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiArc3dhcHBlci8wLzAgaXMgdHJ5aW5nIHRvIGxvY2s6
Cj4gK2RmYmM1MjUwICgmcG9vbC0+bG9jayl7Li4tLn0tezM6M30sIGF0OiBfX3F1ZXVlX3dvcmsr
MHgxNGMvMHg0ZDAKCnNhbWUgaXNzdWUuCgo+IEkgYWxzbyBzZWUgaXQgb24gb3RoZXIgYXJtMzIg
cGxhdGZvcm1zIHVzaW5nIFJlbmVzYXMtc3BlY2lmaWMgdGltZXJzLAo+IGJ1dCBJJ2xsIGlnbm9y
ZSB0aG9zZSB1bnRpbCB0aGUgaXNzdWVzIHdpdGggInN0YW5kYXJkIiBBUk0gdGltZXJzIGhhdmUK
PiBiZWVuIHJlc29sdmVkIDstKQoKVGhlcmUgYXJlIHNvbWUga25vd24gY3VscHJpdHMsIGxpa2Ug
dGhlIHdvcmsgaW5mcmFzdHJ1Y3R1cmUuIFRoZSBwcmludGsKaXMgYW5vdGhlciBvbmUuIEZyb20g
S2NvbmZpZzoKCnwgICBOT1RFOiBUaGVyZSBhcmUga25vd24gbmVzdGluZyBwcm9ibGVtcy4gU28g
aWYgeW91IGVuYWJsZSB0aGlzCnwgICBvcHRpb24gZXhwZWN0IGxvY2tkZXAgc3BsYXRzIHVudGls
IHRoZXNlIHByb2JsZW1zIGhhdmUgYmVlbiBmdWxseQp8ICAgYWRkcmVzc2VkIHdoaWNoIGlzIHdv
cmsgaW4gcHJvZ3Jlc3MuIFRoaXMgY29uZmlnIHN3aXRjaCBhbGxvd3MgdG8KfCAgIGlkZW50aWZ5
IGFuZCBhbmFseXplIHRoZXNlIHByb2JsZW1zLiBJdCB3aWxsIGJlIHJlbW92ZWQgYW5kIHRoZQp8
ICAgY2hlY2sgcGVybWFuZW50ZWx5IGVuYWJsZWQgb25jZSB0aGUgbWFpbiBpc3N1ZXMgaGF2ZSBi
ZWVuIGZpeGVkLgoKCj4gVGhhbmtzIQo+IAo+IEdye29ldGplLGVldGluZ31zLAo+IAo+ICAgICAg
ICAgICAgICAgICAgICAgICAgIEdlZXJ0Cj4gCj4gCgpTZWJhc3RpYW4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
