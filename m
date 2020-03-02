Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB11F175A0E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 13:09:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kOeq4QqWG8tqwQi9izXVZ6ufVxDT8TiAf3BixHVpu3Y=; b=kakhABjm7f+YcQ4zzsHMGA3Fh
	FXmLsMXeOopZqj29BMSGw77hnuzsYLsHeYQH2FM4uXtLIogsGWWTj7UKbYZDzpiqN6tO50NqMd2q6
	4cNvmgMAqX86vUAVqFfxxj5Y94W8gohgwQiwc2UPDIQlg3zX9O3IHA0IQjjyjlVu8mzcXEFD/ybYA
	IEbvMt5W06zR/zabRe5NvQWTp5RN1Em6v64hhnVaGxFqv6/fTPcSHmU63bCBzbjSQK2vqjX9ukaht
	5JPRgEAKJHG1NBjNOvRHLr7B+1DOIAn3WvHHXNyypDCUCd/DK1AzU/nShOWSw7VC28oDp25wyFUVA
	POp+Z7vaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8jtK-0000Z5-G8; Mon, 02 Mar 2020 12:09:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8jtA-0000YU-7o
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 12:09:37 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A63412173E;
 Mon,  2 Mar 2020 12:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583150975;
 bh=/kKqSL1/BQ+dOVDuB+J6MXMNhp46sJ9EIoVg6zdqQ0k=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=UnW9k+By/DJjzanJO2aiRSCSCFKWrDOefChvcbg6RBUFUzBw2gsqv1/BH1n5DulSX
 qfg5Vv7O8iWGhLzFd2FAYgd2CPUhZ+uf4XUhRoHa8TO67Mtp1lPlt1CTcubTRy9nX6
 +wwCEHHTAub0pmgm1s4geTfluo33PLANPc6F94W8=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j8jt7-009N70-ST; Mon, 02 Mar 2020 12:09:34 +0000
MIME-Version: 1.0
Date: Mon, 02 Mar 2020 12:09:33 +0000
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH v4 08/20] irqchip/gic-v4.1: Plumb get/set_irqchip_state
 SGI callbacks
In-Reply-To: <4f8f3958-2976-b0a7-8d17-440ecaba0fc8@huawei.com>
References: <20200214145736.18550-1-maz@kernel.org>
 <20200214145736.18550-9-maz@kernel.org>
 <4b7f71f1-5e7f-e6af-f47d-7ed0d3a8739f@huawei.com>
 <75597af0d2373ac4d92d8162a1338cbb@kernel.org>
 <19a7c193f0e4b97343e822a35f0911ed@kernel.org>
 <3d725ede-6631-59fb-1a10-9fb9890f3df6@huawei.com>
 <dd9f1224b3b21ad793862406bd8855ba@kernel.org>
 <54c52057161f925c818446953050c951@kernel.org>
 <4f8f3958-2976-b0a7-8d17-440ecaba0fc8@huawei.com>
Message-ID: <db819547d4be8daa458bcd56aac2efcd@kernel.org>
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
X-CRM114-CacheID: sfid-20200302_040936_319944_4368F25C 
X-CRM114-Status: GOOD (  16.98  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

SGkgWmVuZ2h1aSwKCk9uIDIwMjAtMDMtMDIgMDg6MTgsIFplbmdodWkgWXUgd3JvdGU6Cj4gT24g
MjAyMC8zLzIgMzowMCwgTWFyYyBaeW5naWVyIHdyb3RlOgo+PiBPbiAyMDIwLTAyLTI4IDE5OjM3
LCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4+PiBPbiAyMDIwLTAyLTIwIDAzOjExLCBaZW5naHVpIFl1
IHdyb3RlOgo+PiAKPj4+PiBEbyB3ZSByZWFsbHkgbmVlZCB0byBncmFiIHRoZSB2cGVfbG9jayBm
b3IgdGhvc2Ugd2hpY2ggYXJlIGJlbG9uZyB0bwo+Pj4+IHRoZSBzYW1lIGlycWNoaXAgd2l0aCBp
dHNfdnBlX3NldF9hZmZpbml0eSgpPyBUaGUgSVJRIGNvcmUgY29kZSAKPj4+PiBzaG91bGQKPj4+
PiBhbHJlYWR5IGVuc3VyZSB0aGUgbXV0dWFsIGV4Y2x1c2lvbiBhbW9uZyB0aGVtLCB3cm9uZz8K
Pj4+IAo+Pj4gSSd2ZSBiZWVuIHRyeWluZyB0byB0aGluayBhYm91dCB0aGF0LCBidXQgamV0LWxh
ZyBrZWVwcyBnZXR0aW5nIGluIAo+Pj4gdGhlIHdheS4KPj4+IEkgZW1waXJpY2FsbHkgdGhpbmsg
dGhhdCB5b3UgYXJlIHJpZ2h0LCBidXQgSSBuZWVkIHRvIGdvIGFuZCBjaGVjayAKPj4+IHRoZSB2
YXJpb3VzCj4+PiBjb2RlIHBhdGhzIHRvIGJlIHN1cmUuIEhvcGVmdWxseSBJJ2xsIGhhdmUgYSBi
aXQgbW9yZSBicmFpbiBzcGFjZSAKPj4+IG5leHQgd2Vlay4KPj4gCj4+IFNvIEkgc2xlcHQgb24g
aXQgYW5kIGNhbWUgYmFjayB0byBteSBzZW5zZXMuIFRoZSBvbmx5IGNhc2Ugd2UgYWN0dWFsbHkg
Cj4+IG5lZWQKPj4gdG8gZGVhbCB3aXRoIGlzIHdoZW4gYW4gYWZmaW5pdHkgY2hhbmdlIGltcGFj
dHMgKmFub3RoZXIqIGludGVycnVwdC4KPj4gCj4+IFRoZXJlIGlzIG9ubHkgdHdvIGluc3RhbmNl
cyBvZiB0aGlzIGlzc3VlOgo+PiAKPj4gLSB2TFBJcyBoYXZlIHRoZWlyICpwaHlzaWNhbCogYWZm
aW5pdHkgaW1wYWN0ZWQgYnkgdGhlIGFmZmluaXR5IG9mIHRoZQo+PiAgwqAgdlBFLiBUaGVpciB2
aXJ0dWFsIGFmZmluaXR5IGlzIG9mIGNvdXJzZSB1bmNoYW5nZWQsIGJ1dCB0aGUgCj4+IHBoeXNp
Y2FsCj4+ICDCoCBvbmUgYmVjb21lcyBpbXBvcnRhbnQgd2l0aCBkaXJlY3QgaW52YWxpZGF0aW9u
LiBUYWtpbmcgYSBwZXItVlBFIAo+PiBsb2NrCj4+ICDCoCBpbiBzdWNoIGNvbnRleHQgc2hvdWxk
IGFkZHJlc3MgdGhlIGlzc3VlLgo+PiAKPj4gLSB2U0dJcyBoYXZlIHRoZSBleGFjdCBzYW1lIGlz
c3VlLCBwbHVzIHRoZSBtYXR0ZXIgb2YgcmVxdWlyaW5nIHNvbWUKPj4gIMKgICpleHRyYSogb25l
IHdoZW4gcmVhZGluZyB0aGUgcGVuZGluZyBzdGF0ZSwgd2hpY2ggcmVxdWlyZXMgYSBSTVcKPj4g
IMKgIG9uIHR3byBkaWZmZXJlbnQgcmVnaXN0ZXJzLiBUaGlzIHJlcXVpcmVzIGFuIGV4dHJhIHBl
ci1SRCBsb2NrLgo+IAo+IEFncmVlZCB3aXRoIGJvdGghCj4gCj4+IAo+PiBNeSBvcmlnaW5hbCBw
YXRjaCB3YXMgc3R1cGlkbHkgY29tcGxleCwgYW5kIHRoZSBpcnFfZGVzYyBsb2NrIGlzCj4+IHBl
cmZlY3RseSBlbm91Z2ggdG8gZGVhbCB3aXRoIGFueXRoaW5nIHRoYXQgb25seSBhZmZlY3RzIHRo
ZSBpbnRlcnJ1cHQKPj4gc3RhdGUgaXRzZWxmLgo+PiAKPj4gR0lDdjQgKyBkaXJlY3QgaW52YWxp
ZGF0aW9uIGZvciB2TFBJcyBicmVha3MgdGhpcyBieSBieXBhc3NpbmcgdGhlCj4+IHNlcmlhbGl6
YXRpb24gaW5pdGlhbGx5IHByb3ZpZGVkIGJ5IHRoZSBJVFMsIGFzIHRoZSBSRCBpcyBjb21wbGV0
ZWx5Cj4+IG91dCBvZiBiYW5kLiBUaGUgcGVyLXZQRSBsb2NrIGJyaW5ncyBiYWNrIHRoaXMgc2Vy
aWFsaXphdGlvbi4KPj4gCj4+IEkndmUgdXBkYXRlZCB0aGUgYnJhbmNoLCB3aGljaCBzZWVtcyB0
byBydW4gT0sgb24gRDA1LiBJIHN0aWxsIG5lZWQKPj4gdG8gcnVuIHRoZSB1c3VhbCB0ZXN0cyBv
biB0aGUgRlZQIG1vZGVsIHRob3VnaC4KPiAKPiBJIGhhdmUgcHVsbGVkIHRoZSBsYXRlc3QgYnJh
bmNoIGFuZCBpdCBsb29rcyBnb29kIHRvIG1lLCBleGNlcHQgZm9yCj4gb25lIHJlbWFpbmluZyBj
b25jZXJuOgo+IAo+IEdJQ1JfSU5We0xQSSwgQUxMfVIgKyBHSUNSX1NZTkNSIGNhbiBhbHNvIGJl
IGFjY2Vzc2VkIGNvbmN1cnJlbnRseQo+IGJ5IG11bHRpcGxlIGRpcmVjdCBpbnZhbGlkYXRpb24s
IHNob3VsZCB3ZSBhbHNvIHVzZSB0aGUgcGVyLVJEIGxvY2sKPiB0byBlbnN1cmUgbXV0dWFsIGV4
Y2x1c2lvbj8gIEl0IGxvb2tzIG5vdCBzbyBoYXJtZnVsIHRob3VnaCwgYXMgdGhpcwo+IHdpbGwg
b25seSBpbmNyZWFzZSBvbmUncyBwb2xsaW5nIHRpbWUgYWdhaW5zdCB0aGUgQnVzeSBiaXQgKGlu
IG15IAo+IHZpZXcpLgo+IAo+IEJ1dCBJIHBvaW50IGl0IG91dCBhZ2FpbiBmb3IgY29uZmlybWF0
aW9uLgoKSSB3YXMgYWJvdXQgdG8gc2F5IHRoYXQgaXQgZG9lc24ndCByZWFsbHkgbWF0dGVyIGJl
Y2F1c2UgaXQgaXMgb25seSBhCnBlcmZvcm1hbmNlIG9wdGltaXNhdGlvbiAoYW5kIHdlJ3JlIG5v
dHkgcXVpdGUgdGhlcmUgeWV0KSwgdW50aWwgSSAKc3BvdHRlZAp0aGlzIGdyZWF0IG51Z2dldCBp
biB0aGUgc3BlYzoKCjxxdW90ZT4KV3JpdGluZyBHSUNSX0lOVkxQSVIgb3IgR0lDUl9JTlZBTExS
IHdoZW4gR0lDUl9TWU5DUi5CdXN5PT0xIGlzIApDT05TVFJBSU5FRApVTlBSRURJQ1RBQkxFOgot
IFRoZSB3cml0ZSBpcyBJR05PUkVEIC4KLSBUaGUgaW52YWxpZGF0ZSBzcGVjaWZpZWQgYnkgdGhl
IHdyaXRlIGlzIHBlcmZvcm1lZC4KPC9xdW90ZT4KClNvIHdlIHJlYWxseSBuZWVkIHNvbWUgZm9y
bSBvZiBtdXR1YWwgZXhjbHVzaW9uIG9uIGEgcGVyLVJEIGJhc2lzIHRvIAplbnN1cmUKdGhhdCBu
byB0d28gaW52YWxpZGF0aW9ucyBvY2N1ciBhdCB0aGUgc2FtZSB0aW1lLCBlbnN1cmluZyB0aGF0
IEJ1c3kgCmNsZWFycwpiZXR3ZWVuIHRoZSB0d28uCgpUaGFua3MgZm9yIHRoZSBoZWFkcyB1cCwK
CiAgICAgICAgIE0uCi0tIApKYXp6IGlzIG5vdCBkZWFkLiBJdCBqdXN0IHNtZWxscyBmdW5ueS4u
LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
