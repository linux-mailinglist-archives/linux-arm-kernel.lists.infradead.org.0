Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C46D18CAA2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 10:47:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N7+PicSSrzwP7ltMuqIquWUXsPYuIqiPPKb//hinTec=; b=RssS7+K9j1md98F4NNrAGKkCx
	9Wc8ar2dlEWX9ZdL4BNfHjfYnrYGNF6mtuntEgkK35aKrYb8d2BlNnMV3TSnDOr0pGY8n8VUJwMDG
	4RGIoBLlKQzyvxc0qXK9CETFpSFj/F0QVU2beuE4oVgoGb4owtYZB1f+xf5ACPDLaj4KFncSk/6Se
	XxySdXQjI1fQWIpVKl3n96gNRjoFTRAZ+tM/w2fvqSW2YPpFQ3KQNw9AKxFEc1TTYjoSj5aZtXz4B
	OtXtVBwxP/5GE1vlqO/2b1szKT9uP+dcD6IxxYj2ADYPTZAkCOgk0a2gY8vxHwNgdifs48wOlieUs
	nLzwLlyDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFEEv-0008Hg-V2; Fri, 20 Mar 2020 09:46:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFEEl-0008H5-Ig
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 09:46:44 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1465B20722;
 Fri, 20 Mar 2020 09:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584697603;
 bh=sH00fgk3RsESsOzjD0MUh1sZMoSY4NuqAFqEGyvk7e0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ItI1QpzyKSVUkFN7wa/i/V45ewgZpp3DClIR0InqIMZkVG+EK7K0pAmfLrqHF4Q8J
 /SS89IRYjdwgTYFXEFX+noGtt2gjTx+ON+a+YTUI98bq9b3jN92UQezsjndwCXQU+F
 CQVQp/L7o6zEDC/1uCi6hANuXAqBro9utoN1iB0w=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jFEEj-00ECaQ-Cs; Fri, 20 Mar 2020 09:46:41 +0000
MIME-Version: 1.0
Date: Fri, 20 Mar 2020 09:46:41 +0000
From: Marc Zyngier <maz@kernel.org>
To: Auger Eric <eric.auger@redhat.com>
Subject: Re: [PATCH v5 20/23] KVM: arm64: GICv4.1: Plumb SGI implementation
 selection in the distributor
In-Reply-To: <e60578b5-910c-0355-d231-29322900679d@redhat.com>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-21-maz@kernel.org>
 <72832f51-bbde-8502-3e03-189ac20a0143@huawei.com>
 <4a06fae9c93e10351276d173747d17f4@kernel.org>
 <49995ec9-3970-1f62-5dfc-118563ca00fc@redhat.com>
 <b98855a1-6300-d323-80f6-82d3b9854290@huawei.com>
 <e60578b5-910c-0355-d231-29322900679d@redhat.com>
Message-ID: <dfaf8a1b7c7fd8b769a244a8a779d952@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: eric.auger@redhat.com, yuzenghui@huawei.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, linux-kernel@vger.kernel.org, lorenzo.pieralisi@arm.com,
 jason@lakedaemon.net, rrichter@marvell.com, tglx@linutronix.de,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_024643_661524_2E6B4A9E 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wMy0yMCAwNzo1OSwgQXVnZXIgRXJpYyB3cm90ZToKPiBIaSBaZW5naHVpLAo+IAo+
IE9uIDMvMjAvMjAgNDowOCBBTSwgWmVuZ2h1aSBZdSB3cm90ZToKPj4gT24gMjAyMC8zLzIwIDQ6
MzgsIEF1Z2VyIEVyaWMgd3JvdGU6Cj4+PiBIaSBNYXJjLAo+Pj4gT24gMy8xOS8yMCAxOjEwIFBN
LCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4+Pj4gSGkgWmVuZ2h1aSwKPj4+PiAKPj4+PiBPbiAyMDIw
LTAzLTE4IDA2OjM0LCBaZW5naHVpIFl1IHdyb3RlOgo+Pj4+PiBIaSBNYXJjLAo+Pj4+PiAKPj4+
Pj4gT24gMjAyMC8zLzUgNDozMywgTWFyYyBaeW5naWVyIHdyb3RlOgo+Pj4+Pj4gVGhlIEdJQ3Y0
LjEgYXJjaGl0ZWN0dXJlIGdpdmVzIHRoZSBoeXBlcnZpc29yIHRoZSBvcHRpb24gdG8gbGV0Cj4+
Pj4+PiB0aGUgZ3Vlc3QgY2hvb3NlIHdoZXRoZXIgaXQgd2FudHMgdGhlIGdvb2Qgb2xkIFNHSXMg
d2l0aCBhbgo+Pj4+Pj4gYWN0aXZlIHN0YXRlLCBvciB0aGUgbmV3LCBIVy1iYXNlZCBvbmVzIHRo
YXQgZG8gbm90IGhhdmUgb25lLgo+Pj4+Pj4gCj4+Pj4+PiBGb3IgdGhpcywgcGx1bWIgdGhlIGNv
bmZpZ3VyYXRpb24gb2YgU0dJcyBpbnRvIHRoZSBHSUN2MyBNTUlPCj4+Pj4+PiBoYW5kbGluZywg
cHJlc2VudCB0aGUgR0lDRF9UWVBFUjIubkFTU0dJY2FwIHRvIHRoZSBndWVzdCwKPj4+Pj4+IGFu
ZCBoYW5kbGUgdGhlIEdJQ0RfQ1RMUi5uQVNTR0lyZXEgc2V0dGluZy4KPj4+Pj4+IAo+Pj4+Pj4g
SW4gb3JkZXIgdG8gYmUgYWJsZSB0byBkZWFsIHdpdGggdGhlIHJlc3RvcmUgb2YgYSBndWVzdCwg
YWxzbwo+Pj4+Pj4gYXBwbHkgdGhlIEdJQ0RfQ1RMUi5uQVNTR0lyZXEgc2V0dGluZyBhdCBmaXJz
dCBydW4gc28gdGhhdCB3ZQo+Pj4+Pj4gY2FuIG1vdmUgdGhlIHJlc3RvcmVkIFNHSXMgdG8gdGhl
IEhXIGlmIHRoYXQncyB3aGF0IHRoZSBndWVzdAo+Pj4+Pj4gaGFkIHNlbGVjdGVkIGluIGEgcHJl
dmlvdXMgbGlmZS4KPj4+Pj4gCj4+Pj4+IEknbSBva2F5IHdpdGggdGhlIHJlc3RvcmUgcGF0aC7C
oCBCdXQgaXQgc2VlbXMgdGhhdCB3ZSBzdGlsbCBmYWlsIHRvCj4+Pj4+IHNhdmUgdGhlIHBlbmRp
bmcgc3RhdGUgb2YgdlNHSSAtIHNvZnR3YXJlIHBlbmRpbmdfbGF0Y2ggb2YgSFctYmFzZWQKPj4+
Pj4gdlNHSXMgd2lsbCBub3QgYmUgdXBkYXRlZCAoYW5kIGFsd2F5cyBiZSBmYWxzZSkgYmVjYXVz
ZSB3ZSBkaXJlY3RseQo+Pj4+PiBpbmplY3QgdGhlbSB0aHJvdWdoIElUUywgc28gdmdpY192M191
YWNjZXNzX3JlYWRfcGVuZGluZygpIGNhbid0Cj4+Pj4+IHRlbGwgdGhlIGNvcnJlY3QgcGVuZGlu
ZyBzdGF0ZSB0byB1c2VyLXNwYWNlICh0aGUgY29ycmVjdCBvbmUgCj4+Pj4+IHNob3VsZAo+Pj4+
PiBiZSBsYXRjaGVkIGluIEhXKS4KPj4+Pj4gCj4+Pj4+IEl0IHdvdWxkIGJlIGdvb2QgaWYgd2Ug
Y2FuIHN5bmMgdGhlIGhhcmR3YXJlIHN0YXRlIGludG8gCj4+Pj4+IHBlbmRpbmdfbGF0Y2gKPj4+
Pj4gYXQgYW4gYXBwcm9wcmlhdGUgdGltZSAoanVzdCBiZWZvcmUgc2F2ZSksIGJ1dCBub3Qgc3Vy
ZSBpZiB3ZSAKPj4+Pj4gY2FuLi4uCj4+Pj4gCj4+Pj4gVGhlIHByb2JsZW0gaXMgdG8gZmluZCB0
aGUgImFwcHJvcHJpYXRlIHRpbWUiLiBJdCB3b3VsZCByZXF1aXJlIHRvCj4+Pj4gZGVmaW5lCj4+
Pj4gYSBwb2ludCBpbiB0aGUgc2F2ZSBzZXF1ZW5jZSB3aGVyZSB3ZSB0cmFuc2l0aW9uIHRoZSBz
dGF0ZSBmcm9tIEhXIAo+Pj4+IHRvCj4+Pj4gU1cuIEknbSBub3Qga2VlbiBvbiBhZGRpbmcgbW9y
ZSBzdGF0ZSB0aGFuIHdlIGFscmVhZHkgaGF2ZS4KPj4+IAo+Pj4gbWF5IGJlIHdlIGNvdWxkIHVz
ZSBhIGRlZGljYXRlZCBkZXZpY2UgZ3JvdXAvYXR0ciBhcyB3ZSBoYXZlIGZvciB0aGUgCj4+PiBJ
VFMKPj4+IHNhdmUgdGFibGVzPyB0aGUgdXNlciBzcGFjZSB3b3VsZCBjaG9vc2UuCj4+IAo+PiBJ
dCBtZWFucyB0aGF0IHVzZXJzcGFjZSB3aWxsIGJlIGF3YXJlIG9mIHNvbWUgZm9ybSBvZiBHSUN2
NC4xIGRldGFpbHMKPj4gKGUuZy4sIGdldC9zZXQgdlNHSSBzdGF0ZSBhdCBIVyBsZXZlbCkgdGhh
dCBLVk0gaGFzIGltcGxlbWVudGVkLgo+PiBJcyBpdCBzb21ldGhpbmcgdGhhdCB1c2Vyc3BhY2Ug
cmVxdWlyZWQgdG8ga25vdz8gSSdtIG9wZW4gdG8gdGhpcyA7LSkKPiBOb3Qgc3VyZSB3ZSB3b3Vs
ZCBiZSBvYmxpZ2VkIHRvIGV4cG9zZSBmaW5lIGRldGFpbHMuIFRoaXMgY291bGQgYmUgYQo+IGdl
bmVyaWMgc2F2ZS9yZXN0b3JlIGRldmljZSBncm91cC9hdHRyIHdob3NlIGltcGxlbWVudGF0aW9u
IGF0IEtWTSAKPiBsZXZlbAo+IGNvdWxkIGRpZmZlciBkZXBlbmRpbmcgb24gdGhlIHZlcnNpb24g
YmVpbmcgaW1wbGVtZW50ZWQsIG5vPwoKV2hhdCBwcmV2ZW50cyB1cyBmcm9tIGhvb2tpbmcgdGhp
cyBzeW5jaHJvbml6YXRpb24gdG8gdGhlIGN1cnJlbnQgCmJlaGF2aW91cgpvZiBLVk1fREVWX0FS
TV9WR0lDX1NBVkVfUEVORElOR19UQUJMRVM/IEFmdGVyIGFsbCwgdGhpcyBpcyBhbHJlYWR5IHRo
ZSAKcG9pbnQKd2hlcmUgd2Ugc3luY2hyb25pemUgdGhlIEtWTSB2aWV3IG9mIHRoZSBwZW5kaW5n
IHN0YXRlIHdpdGggdXNlcnNwYWNlLgpIZXJlLCBpdCdzIGp1c3QgYSBtYXR0ZXIgb2YgcGlja2lu
ZyB0aGUgaW5mb3JtYXRpb24gZnJvbSBzb21lIG90aGVyIApwbGFjZQooaS5lLiB0aGUgaG9zdCdz
IHZpcnR1YWwgcGVuZGluZyB0YWJsZSkuCgpUaGUgdGhpbmcgd2UgbmVlZCB0aG91Z2ggaXMgdGhl
IGd1YXJhbnRlZSB0aGF0IHRoZSBndWVzdCBpc24ndCBnb2luZyB0bwpnZXQgbW9yZSB2TFBJcyBh
dCB0aGF0IHN0YWdlLCBhcyB0aGV5IHdvdWxkIGJlIGxvc3QuIFRoaXMgZWZmZWN0aXZlbHkKYXNz
dW1lcyB0aGF0IHdlIGNhbiBhbHNvIHNhdmUvcmVzdG9yZSB0aGUgc3RhdGUgb2YgdGhlIHNpZ25h
bGxpbmcgCmRldmljZXMsCmFuZCBJIGRvbid0IGtub3cgaWYgd2UncmUgcXVpdGUgdGhlcmUgeWV0
LgoKVGhhbmtzLAoKICAgICAgICAgTS4KLS0gCkphenogaXMgbm90IGRlYWQuIEl0IGp1c3Qgc21l
bGxzIGZ1bm55Li4uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
