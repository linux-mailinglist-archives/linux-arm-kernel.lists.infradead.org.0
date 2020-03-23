Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7A418F0D0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 09:25:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3dnAIvImrhV6HhMmtxt3XzsC2CM1SUux7d9LPynSjzM=; b=gogqc4l9SDAxt9Y28k2+BPNAm
	Elj9YypnpbSF3yncZmopVjXwwYnXS3r4fZs4p6RiqWo/rJn3ii1or/TOtXRI0QyDD4Ze+vNdDD1/n
	sowGi6IAXEVhRv3JQ+C0O5j2r8HAVZNBsxaAHtjCa6JifZx40e4wDAP7H90TiWylIC68JVORq2sXr
	CqgcKu1O399m+rHBu/th8LHw8G+wI2QUTo8indYQ95rq13NV/Ttezs1DX286Hm8+v5d8sHAQvduU9
	k4I9qJueW8TOfxTR6BUeLdvOZCUn39g00b2dZ1u3aNpb7v74PwfwgBBqQjIGrdihC6KKJ8fR6w5gY
	Im7xz2Hmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGIP1-0004vB-8z; Mon, 23 Mar 2020 08:25:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGIOn-0004ib-R2
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 08:25:31 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D447F2072E;
 Mon, 23 Mar 2020 08:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584951929;
 bh=tqQ8PlsQArzeFElGfgu0kJhz7Czy0eqAc18ZQGW6JD8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=tZ4grYy2alHlUvPC7sxjJFVOb1mrLYtqyhRfBHfGnbDbVuviyeian+drdS/c1uww+
 6ZKBvhncRTZ8u0v/xdXoKvOz3n5fT6bjzdUDR4GPsILVepol0jbF2YhVx4JwV9nDtv
 5UaxhARaZQ4WTIaDKxaZmT0MmNSNNhz2LBe5rROs=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jGIOl-00Etsi-6T; Mon, 23 Mar 2020 08:25:27 +0000
MIME-Version: 1.0
Date: Mon, 23 Mar 2020 08:25:27 +0000
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH v5 20/23] KVM: arm64: GICv4.1: Plumb SGI implementation
 selection in the distributor
In-Reply-To: <cf5d7cf3-076f-47a7-83cf-717a619dc13e@huawei.com>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-21-maz@kernel.org>
 <72832f51-bbde-8502-3e03-189ac20a0143@huawei.com>
 <4a06fae9c93e10351276d173747d17f4@kernel.org>
 <1c9fdfc8-bdb2-88b6-4bdc-2b9254dfa55c@huawei.com>
 <256b58a9679412c96600217f316f424f@kernel.org>
 <cf5d7cf3-076f-47a7-83cf-717a619dc13e@huawei.com>
Message-ID: <1c10593ac5b75f37c6853fbc74daa481@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, lorenzo.pieralisi@arm.com, jason@lakedaemon.net,
 rrichter@marvell.com, tglx@linutronix.de, eric.auger@redhat.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_012529_971087_CA05A07B 
X-CRM114-Status: GOOD (  16.38  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Eric Auger <eric.auger@redhat.com>, Robert Richter <rrichter@marvell.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgWmVuZ2h1aSwKClsuLi5dCgo+PiBBbmQgYWN0dWFsbHksIG1heWJlIHdlIGNhbiBoYW5kbGUg
dGhhdCBwcmV0dHkgY2hlYXBseS4gSWYgdXNlcnNwYWNlCj4+IHRyaWVzIHRvIHJlc3RvcmUgR0lD
RF9UWVBFUjIgdG8gYSB2YWx1ZSB0aGF0IGlzbid0IHdoYXQgS1ZNIGNhbgo+PiBvZmZlciwgd2Ug
anVzdCByZXR1cm4gYW4gZXJyb3IuIEV4YWN0bHkgbGlrZSB3ZSBkbyBmb3IgR0lDRF9JSURSLgo+
PiBIZW5jZSB0aGUgZm9sbG93aW5nIHBhdGNoOgo+PiAKPj4gZGlmZiAtLWdpdCBhL3ZpcnQva3Zt
L2FybS92Z2ljL3ZnaWMtbW1pby12My5jIAo+PiBiL3ZpcnQva3ZtL2FybS92Z2ljL3ZnaWMtbW1p
by12My5jCj4+IGluZGV4IDI4YjYzOWZkMWFiYy4uZTcyZGNjNDU0MjQ3IDEwMDY0NAo+PiAtLS0g
YS92aXJ0L2t2bS9hcm0vdmdpYy92Z2ljLW1taW8tdjMuYwo+PiArKysgYi92aXJ0L2t2bS9hcm0v
dmdpYy92Z2ljLW1taW8tdjMuYwo+PiBAQCAtMTU2LDYgKzE1Niw3IEBAIHN0YXRpYyBpbnQgdmdp
Y19tbWlvX3VhY2Nlc3Nfd3JpdGVfdjNfbWlzYyhzdHJ1Y3QgCj4+IGt2bV92Y3B1ICp2Y3B1LAo+
PiAgwqDCoMKgwqAgc3RydWN0IHZnaWNfZGlzdCAqZGlzdCA9ICZ2Y3B1LT5rdm0tPmFyY2gudmdp
YzsKPj4gCj4+ICDCoMKgwqDCoCBzd2l0Y2ggKGFkZHIgJiAweDBjKSB7Cj4+ICvCoMKgwqAgY2Fz
ZSBHSUNEX1RZUEVSMjoKPj4gIMKgwqDCoMKgIGNhc2UgR0lDRF9JSURSOgo+PiAgwqDCoMKgwqDC
oMKgwqDCoCBpZiAodmFsICE9IHZnaWNfbW1pb19yZWFkX3YzX21pc2ModmNwdSwgYWRkciwgbGVu
KSkKPj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVJTlZBTDsKPj4gCj4+IEJl
aW5nIGEgUk8gcmVnaXN0ZXIsIHdyaXRpbmcgc29tZXRoaW5nIHRoYXQgaXNuJ3QgY29tcGF0aWJs
ZSB3aXRoIHRoZQo+PiBwb3NzaWJsZSBiZWhhdmlvdXIgb2YgdGhlIGh5cGVydmlzb3Igd2lsbCBq
dXN0IHJldHVybiBhbiBlcnJvci4KPiAKPiBUaGlzIGlzIHJlYWxseSBhIG5pY2UgcG9pbnQgdG8g
YWRkcmVzcyBteSBjb25jZXJuISBJJ20gaGFwcHkgdG8gc2VlCj4gdGhpcyBpbiB2NiBub3cuCj4g
Cj4+IAo+PiBXaGF0IGRvIHlvdSB0aGluaz8KPiAKPiBJIGFncmVlZCB3aXRoIHlvdSwgd2l0aCBh
IGJpdCBuZXJ2b3VzIHRob3VnaC4gU29tZSBvbGQgZ3Vlc3RzICh3aGljaAo+IGhhdmUgbm8ga25v
d2xlZGdlIGFib3V0IEdJQ3Y0LjEgdlNHSXMgYW5kIGRvbid0IGNhcmUgYWJvdXQgbkFTU0dJY2Fw
Cj4gYXQgYWxsKSB3aWxsIGFsc28gZmFpbCB0byBtaWdyYXRlIGZyb20gQSB0byBCLCBqdXN0IGJl
Y2F1c2Ugbm93IHdlCj4gcHJlc2VudCB0d28gZGlmZmVyZW50ICh1bnVzZWQpIEdJQ0RfVFlQRVIy
IHJlZ2lzdGVycyB0byB0aGVtLgo+IAo+IElzIGl0IGEgbGl0dGxlIHVuZmFpciB0byB0aGVtIDot
KSA/CgpJIG5ldmVyIHByZXRlbmRlZCB0byBiZSBmYWlyISA7LSkKCkknbSBoYXBweSB0byBwcmV2
ZW50IG1pZ3JhdGluZyBmcm9tIGEgdjQuMSBzeXN0ZW0gKEEpIHRvIGEgdjQuMApzeXN0ZW0gKEIp
LiBBcyBzb29uIGFzIHRoZSBndWVzdCBoYXMgcnVuLCBpdCBpc24ndCBzYWZlIHRvIGRvIHNvCihp
dCBtYXkgaGF2ZSByZWFkIFRZUEVSMiwgYW5kIG5vdyBrbm93cyBhYm91dCB2U0dJcykuIFdlICpj
b3VsZCoKdHJhY2sgdGhpcyBhbmQgZmluZCB3YXlzIHRvIG1pZ3JhdGUgdGhpcyBzdGF0ZSBhcyB3
ZWxsLCBidXQgaXQKZmVlbHMgZnJhZ2lsZS4KCk1pZ3JhdGluZyBmcm9tIEIgdG8gQSBpcyBtb3Jl
IGFwcGVhbGluZy4gSXQgc2hvdWxkIGJlIHBvc3NpYmxlIHRvCmRvIHNvIHdpdGhvdXQgbXVjaCBk
aWZmaWN1bHR5IChqdXN0IGNoZWNrIHRoYXQgdGhlIG5BU1NHSWNhcCBiaXQKaXMgZWl0aGVyIDAg
b3IgZXF1YWwgdG8gS1ZNJ3MgdmlldyBvZiB0aGUgY2FwYWJpbGl0eSkuCgpCdXQgb3ZlcmFsbCBJ
IHNlcmlvdXNseSBkb3VidCB3ZSBjYW4gZWFzaWx5IG1pZ3JhdGUgZ3Vlc3RzIGFjcm9zcwp2ZXJ5
IGRpZmZlcmVudCBIVy4gV2UndmUgYmVlbiB0YWxraW5nIGFib3V0IHRoaXMgZm9yIHllYXJzLCBh
bmQKd2Ugc3RpbGwgZG9uJ3QgaGF2ZSBhIGdvb2Qgc29sdXRpb24gZm9yIGl0IGdpdmVuIHRoZSBk
aXZlcnNpdHkKb2YgdGhlIGVjb3N5c3RlbS4uLiA6LS8KClRoYW5rcywKCiAgICAgICAgIE0uCi0t
IApKYXp6IGlzIG5vdCBkZWFkLiBJdCBqdXN0IHNtZWxscyBmdW5ueS4uLgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
