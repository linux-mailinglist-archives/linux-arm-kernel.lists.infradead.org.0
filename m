Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF0E137103
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:22:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iOMnuUuyVRMy1A0GS3NrrUGT/mHJmbiwcdIdZKd3saM=; b=Hcp3Opi0pvTZ9P1YQK01DVznM
	QsNIR6TzcN70dom6KkgXOnLcpY2BKI2dMduXiRTE+4gWHyEWvpwI4ffzeQTSTsA0iNEmo+4A9AswQ
	ZPx5SDqqA6DCadBMiEtCavZXmBgyaTfaBnYEu2GOahdRL//KgCBBUMZfuRegflrwASxcaB5nW2ja/
	5FdDCoVXXzHHEBeXf+UOu2GLFbem2tVU/fSxrM6VOWBjifw5Gvmw/jKoOdV6wEl2zynfUOZ+Nk+EA
	NOmhtk3fwoi80afg2DZcBH8tbxKtkkn1hKDgocHUrchGJuI9dBpUZHYnee9oDXwI4NuFLHVYDBsKq
	9sp8Q198A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipw79-0005Hh-U0; Fri, 10 Jan 2020 15:22:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipw6r-0005Bj-Ns
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:22:03 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2A2762072E;
 Fri, 10 Jan 2020 15:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578669721;
 bh=dM50kEyYri3M6BsZWBRhzpz2Md+9xq+uYd39z3WiZKc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=e7EZ62GZOyNbQDYTIPbL+qXWsWYA1sM+/tAhc+cZIdulup8St0fSewCjzE6VmmD5f
 5OY/OaX3nTZCLh3F02aYj+6IDGOLMVoFMLMGHkW6KT3xQxTAd4AnFT2oPnwQOYd5tA
 2UVmHk1IcYjbrlGclMQOStSIfzo3xrxFG/70/wV4=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1ipw6p-0002e2-G9; Fri, 10 Jan 2020 15:21:59 +0000
MIME-Version: 1.0
Date: Fri, 10 Jan 2020 15:21:59 +0000
From: Marc Zyngier <maz@kernel.org>
To: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v2 7/7] arm64: nofpsmid: Handle TIF_FOREIGN_FPSTATE flag
 cleanly
In-Reply-To: <d5e27bf5-3cc9-c8bd-5699-71658983054e@arm.com>
References: <20191217183402.2259904-1-suzuki.poulose@arm.com>
 <20191217183402.2259904-8-suzuki.poulose@arm.com>
 <94c0bdd9f26c3262ff8a885d13a64d22@www.loen.fr>
 <9e491901-b589-b486-1cad-1bd92a35da95@arm.com>
 <3b30d44c34bc265ce4122396077a1670@www.loen.fr>
 <d5e27bf5-3cc9-c8bd-5699-71658983054e@arm.com>
Message-ID: <e1ba712b42886594fe1095019f2c5813@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: suzuki.poulose@arm.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, will@kernel.org, mark.rutland@arm.com,
 dave.martin@arm.com, catalin.marinas@arm.com, ard.biesheuvel@linaro.org,
 christoffer.dall@arm.com, marc.zyngier@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_072201_873981_FE151E53 
X-CRM114-Status: GOOD (  20.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, ard.biesheuvel@linaro.org,
 Marc Zyngier <marc.zyngier@arm.com>, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, christoffer.dall@arm.com, will@kernel.org,
 dave.martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0xMi0xOCAxMjowMCwgU3V6dWtpIEt1cnVwcGFzc2VyeSBQb3Vsb3NlIHdyb3RlOgo+
IE9uIDE4LzEyLzIwMTkgMTE6NTYsIE1hcmMgWnluZ2llciB3cm90ZToKPj4gT24gMjAxOS0xMi0x
OCAxMTo0MiwgU3V6dWtpIEt1cnVwcGFzc2VyeSBQb3Vsb3NlIHdyb3RlOgo+Pj4gSGkgTWFyYywK
Pj4+IAo+Pj4gT24gMTcvMTIvMjAxOSAxOTowNSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+Pj4+IEhp
IFN1enVraSwKPj4+PiBPbiAyMDE5LTEyLTE3IDE4OjM0LCBTdXp1a2kgSyBQb3Vsb3NlIHdyb3Rl
Ogo+Pj4+PiBXZSBkZXRlY3QgdGhlIGFic2VuY2Ugb2YgRlAvU0lNRCBhZnRlciBhbiBpbmNhcGFi
bGUgQ1BVIGlzIGJyb3VnaHQgCj4+Pj4+IHVwLAo+Pj4+PiBhbmQgYnkgdGhlbiB3ZSBoYXZlIGtl
cm5lbCB0aHJlYWRzIHJ1bm5pbmcgYWxyZWFkeSB3aXRoCj4+Pj4+IFRJRl9GT1JFSUdOX0ZQU1RB
VEUgc2V0Cj4+Pj4+IHdoaWNoIGNvdWxkIGJlIHNldCBmb3IgZWFybHkgdXNlcnNwYWNlIGFwcGxp
Y2F0aW9ucyAoZS5nLCBtb2Rwcm9iZSAKPj4+Pj4gdHJpZ2dlcmVkCj4+Pj4+IGZyb20gaW5pdHJh
bWZzKSBhbmQgaW5pdC4gVGhpcyBjb3VsZCBjYXVzZSB0aGUgYXBwbGljYXRpb25zIHRvIGxvb3AK
Pj4+Pj4gZm9yZXZlciBpbgo+Pj4+PiBkb19ub2ZpdHlfcmVzdW1lKCkgYXMgd2UgbmV2ZXIgY2xl
YXIgdGhlIFRJRiBmbGFnLCBvbmNlIHdlIG5vdyBrbm93IAo+Pj4+PiB0aGF0Cj4+Pj4+IHdlIGRv
bid0IHN1cHBvcnQgRlAuCj4+Pj4+IAo+Pj4+PiBGaXggdGhpcyBieSBtYWtpbmcgc3VyZSB0aGF0
IHdlIGNsZWFyIHRoZSBUSUZfRk9SRUlHTl9GUFNUQVRFIGZsYWcKPj4+Pj4gZm9yIHRhc2tzIHdo
aWNoIG1heSBoYXZlIHRoZW0gc2V0LCBhcyB3ZSB3b3VsZCBoYXZlIGRvbmUgaW4gdGhlIAo+Pj4+
PiBub3JtYWwKPj4+Pj4gY2FzZSwgYnV0IGF2b2lkaW5nIHRvdWNoaW5nIHRoZSBoYXJkd2FyZSBz
dGF0ZSAoc2luY2Ugd2UgZG9uJ3QgCj4+Pj4+IHN1cHBvcnQgYW55KS4KPj4+Pj4gCj4+Pj4+IEFs
c28gdG8gbWFrZSBzdXJlIHdlIGhhbmRsZSB0aGUgY2FzZXMgc2VlbWxlc3NseSB3ZSBjYXRlZ29y
aXNlIHRoZQo+Pj4+PiBoZWxwZXIgZnVuY3Rpb25zIHRvIHR3byA6Cj4+Pj4+IMKgMSkgSGVscGVy
cyBmb3IgY29tbW9uIGNvcmUgY29kZSwgd2hpY2ggY2FsbHMgaW50byB0YWtlIGFwcHJvcHJpYXRl
Cj4+Pj4+IMKgwqDCoCBhY3Rpb25zIHdpdGhvdXQga25vd2luZyB0aGUgY3VycmVudCBGUFNJTUQg
c3RhdGUgb2YgdGhlIAo+Pj4+PiBDUFUvdGFzay4KPj4+Pj4gCj4+Pj4+IMKgwqDCoCBlLmcgZnBz
aW1kX3Jlc3RvcmVfY3VycmVudF9zdGF0ZSgpLCBmcHNpbWRfZmx1c2hfdGFza19zdGF0ZSgpLAo+
Pj4+PiDCoMKgwqDCoMKgwqDCoCBmcHNpbWRfc2F2ZV9hbmRfZmx1c2hfY3B1X3N0YXRlKCkuCj4+
Pj4+IAo+Pj4+PiDCoMKgwqAgV2UgYmFpbCBvdXQgZWFybHkgZm9yIHRoZXNlIGZ1bmN0aW9ucywg
dGFraW5nIGFueSBhcHByb3ByaWF0ZSAKPj4+Pj4gYWN0aW9ucwo+Pj4+PiDCoMKgwqAgKGUuZywg
Y2xlYXJpbmcgdGhlIFRJRiBmbGFnKSB3aGVyZSBuZWNlc3NhcnkgdG8gaGlkZSB0aGUgCj4+Pj4+
IGhhbmRsaW5nCj4+Pj4+IMKgwqDCoCBmcm9tIGNvcmUgY29kZS4KPj4+Pj4gCj4+Pj4+IMKgMikg
SGVscGVycyB1c2VkIHdoZW4gdGhlIHByZXNlbmNlIG9mIEZQL1NJTUQgaXMgYXBwYXJlbnQuCj4+
Pj4+IMKgwqDCoCBpLmUsIHNhdmUvcmVzdG9yZSB0aGUgRlAvU0lNRCByZWdpc3RlciBzdGF0ZSwg
bW9kaWZ5IHRoZSAKPj4+Pj4gQ1BVL3Rhc2sKPj4+Pj4gwqDCoMKgIEZQL1NJTUQgc3RhdGUuCj4+
Pj4+IMKgwqDCoCBlLmcsCj4+Pj4+IAo+Pj4+PiDCoMKgwqAgZnBzaW1kX3NhdmUoKSwgdGFza19m
cHNpbWRfbG9hZCgpIC0gc2F2ZS9yZXN0b3JlIHRhc2sgRlAvU0lNRCAKPj4+Pj4gcmVnaXN0ZXJz
Cj4+Pj4+IAo+Pj4+PiDCoMKgwqAgZnBzaW1kX2JpbmRfdGFza190b19jcHUoKcKgIFwKPj4+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgLSBVcGRhdGUgdGhlICJzdGF0ZSIgbWV0YWRhdGEgZm9yIAo+Pj4+PiBDUFUvdGFzay4K
Pj4+Pj4gwqDCoMKgIGZwc2ltZF9iaW5kX3N0YXRlX3RvX2NwdSgpIC8KPj4+Pj4gCj4+Pj4+IMKg
wqDCoCBmcHNpbWRfdXBkYXRlX2N1cnJlbnRfc3RhdGUoKSAtIFVwZGF0ZSB0aGUgZnAvc2ltZCBz
dGF0ZSBmb3IgCj4+Pj4+IHRoZSBjdXJyZW50Cj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdGFzayBmcm9t
IG1lbW9yeS4KPj4+Pj4gCj4+Pj4+IMKgwqDCoCBUaGVzZSBtdXN0IG5vdCBiZSBjYWxsZWQgaW4g
dGhlIGFic2VuY2Ugb2YgRlAvU0lNRC4gUHV0IGluIGEgCj4+Pj4+IFdBUk5JTkcKPj4+Pj4gwqDC
oMKgIHRvIG1ha2Ugc3VyZSB0aGV5IGFyZSBub3QgaW52b2tlZCBpbiB0aGUgYWJzZW5jZSBvZiBG
UC9TSU1ELgo+Pj4+PiAKPj4+Pj4gS1ZNIGFsc28gdXNlcyB0aGUgVElGX0ZPUkVJR05fRlBTVEFU
RSBmbGFnIHRvIG1hbmFnZSB0aGUgRlAvU0lNRCAKPj4+Pj4gc3RhdGUKPj4+Pj4gb24gdGhlIENQ
VS4gSG93ZXZlciwgd2l0aG91dCBGUC9TSU1EIHN1cHBvcnQgd2UgdHJhcCBhbGwgYWNjZXNzZXMg
Cj4+Pj4+IGFuZAo+Pj4+PiBpbmplY3QgdW5kZWZpbmVkIGluc3RydWN0aW9uLiBUaHVzIHdlIHNo
b3VsZCBuZXZlciAibG9hZCIgZ3Vlc3QgCj4+Pj4+IHN0YXRlLgo+Pj4+PiBBZGQgYSBzYW5pdHkg
Y2hlY2sgdG8gbWFrZSBzdXJlIHRoaXMgaXMgdmFsaWQuCj4+Pj4gWWVzLCBidXQgbm8sIHNlZSBi
ZWxvdy4KPj4+PiAKPj4+Pj4gCj4+Pj4+IEZpeGVzOiA4MmUwMTkxYTFhYTExYWJmICgiYXJtNjQ6
IFN1cHBvcnQgc3lzdGVtcyB3aXRob3V0IEZQL0FTSU1EIikKPj4+Pj4gQ2M6IFdpbGwgRGVhY29u
IDx3aWxsQGtlcm5lbC5vcmc+Cj4+Pj4+IENjOiBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBh
cm0uY29tPgo+Pj4+PiBDYzogQ2F0YWxpbiBNYXJpbmFzIDxjYXRhbGluLm1hcmluYXNAYXJtLmNv
bT4KPj4+Pj4gQ2M6IE1hcmMgWnluZ2llciA8bWFyYy56eW5naWVyQGFybS5jb20+Cj4+Pj4gTm8g
aWRlYSB3aG8gdGhhdCBndXkgaXMuIEl0J3MgYSBmYWtlISA7LSkKPj4+IAo+Pj4gU29ycnkgYWJv
dXQgdGhhdCwgd2lsbCBmaXggaXQuCj4+PiAKPj4+PiAKPj4+Pj4gU2lnbmVkLW9mZi1ieTogU3V6
dWtpIEsgUG91bG9zZSA8c3V6dWtpLnBvdWxvc2VAYXJtLmNvbT4KPj4+Pj4gLS0tCj4+Pj4+IMKg
YXJjaC9hcm02NC9rZXJuZWwvZnBzaW1kLmPCoCB8IDMxICsrKysrKysrKysrKysrKysrKysrKysr
KysrKy0tLS0KPj4+Pj4gwqBhcmNoL2FybTY0L2t2bS9oeXAvc3dpdGNoLmMgfMKgIDkgKysrKysr
KysrCj4+Pj4+IMKgMiBmaWxlcyBjaGFuZ2VkLCAzNiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9u
cygtKQo+Pj4+PiAKPj4+PiBbLi4uXQo+Pj4+IAo+Pj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9rdm0vaHlwL3N3aXRjaC5jIAo+Pj4+PiBiL2FyY2gvYXJtNjQva3ZtL2h5cC9zd2l0Y2guYwo+
Pj4+PiBpbmRleCA3MmZiYmQ4NmViNWUuLjk2OTZlYmI1YzEzYSAxMDA2NDQKPj4+Pj4gLS0tIGEv
YXJjaC9hcm02NC9rdm0vaHlwL3N3aXRjaC5jCj4+Pj4+ICsrKyBiL2FyY2gvYXJtNjQva3ZtL2h5
cC9zd2l0Y2guYwo+Pj4+PiBAQCAtMjgsMTAgKzI4LDE5IEBACj4+Pj4+IMKgLyogQ2hlY2sgd2hl
dGhlciB0aGUgRlAgcmVncyB3ZXJlIGRpcnRpZWQgd2hpbGUgaW4gdGhlIGhvc3Qtc2lkZSAKPj4+
Pj4gcnVuCj4+Pj4+IGxvb3A6ICovCj4+Pj4+IMKgc3RhdGljIGJvb2wgX19oeXBfdGV4dCB1cGRh
dGVfZnBfZW5hYmxlZChzdHJ1Y3Qga3ZtX3ZjcHUgKnZjcHUpCj4+Pj4+IMKgewo+Pj4+PiArwqDC
oMKgIC8qCj4+Pj4+ICvCoMKgwqDCoCAqIFdoZW4gdGhlIHN5c3RlbSBkb2Vzbid0IHN1cHBvcnQg
RlAvU0lNRCwgd2UgY2Fubm90IHJlbHkgb24KPj4+Pj4gK8KgwqDCoMKgICogdGhlIHN0YXRlIG9m
IF9USUZfRk9SRUlHTl9GUFNUQVRFLiBIb3dldmVyLCB3ZSB3aWxsIG5ldmVyCj4+Pj4+ICvCoMKg
wqDCoCAqIHNldCB0aGUgS1ZNX0FSTTY0X0ZQX0VOQUJMRUQsIGFzIHRoZSBGUC9TSU1EIGFjY2Vz
c2VzIAo+Pj4+PiBhbHdheXMKPj4+Pj4gK8KgwqDCoMKgICogaW5qZWN0IGFuIGFib3J0IGludG8g
dGhlIGd1ZXN0LiBUaHVzIHdlIGFsd2F5cyB0cmFwIHRoZQo+Pj4+PiArwqDCoMKgwqAgKiBhY2Nl
c3Nlcy4KPj4+Pj4gK8KgwqDCoMKgICovCj4+Pj4+IMKgwqDCoMKgIGlmICh2Y3B1LT5hcmNoLmhv
c3RfdGhyZWFkX2luZm8tPmZsYWdzICYgX1RJRl9GT1JFSUdOX0ZQU1RBVEUpCj4+Pj4+IMKgwqDC
oMKgwqDCoMKgwqAgdmNwdS0+YXJjaC5mbGFncyAmPSB+KEtWTV9BUk02NF9GUF9FTkFCTEVEIHwK
Pj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgS1ZNX0FS
TTY0X0ZQX0hPU1QpOwo+Pj4+PiAKPj4+Pj4gK8KgwqDCoCBXQVJOX09OKCFzeXN0ZW1fc3VwcG9y
dHNfZnBzaW1kKCkgJiYKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgICh2Y3B1LT5hcmNoLmZsYWdzICYg
S1ZNX0FSTTY0X0ZQX0VOQUJMRUQpKTsKPj4+PiBDYXJlZnVsLCB0aGlzIHdpbGwgcGFuaWMgdGhl
IGhvc3QgaWYgaXQgaGFwcGVucyBvbiBhICFWSEUgaG9zdAo+Pj4+IChjYWxsaW5nIG5vbi1pbmxp
bmUgc3R1ZmYgZnJvbSBhIF9faHlwX3RleHQgZnVuY3Rpb24gaXMgdXN1YWxseQo+Pj4+IG5vdCBh
IGdvb2QgaWRlYSkuCj4+PiAKPj4+IE91Y2ghIFNvcnJ5IGFib3V0IHRoYXQgV0FSTl9PTigpISBJ
IGNvdWxkIGRyb3AgdGhlIHdhcm5pbmcgYW5kCj4+PiBtYWtlIHRoaXMgOgo+Pj4gCj4+PiBpZiAo
IXN5c3RlbV9zdXBwb3J0c19mcHNpbWQoKSB8fAo+Pj4gwqDCoMKgICh2Y3B1LT5hcmNoLmhvc3Rf
dGhyZWFkX2luZm8tPmZsYWdzICYgX1RJRl9GT1JFSUdOX0ZQU1RBVEUpKQo+Pj4gwqDCoMKgwqB2
Y3B1LT5hcmNoLmZsYWdzICY9IH4oS1ZNX0FSTTY0X0ZQX0VOQUJMRUQgfAo+Pj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBLVk1fQVJNNjRfRlBfSE9TVCk7Cj4+PiAKPj4+IHRv
IG1ha2Ugc3VyZSB3ZSBuZXZlciBzYXkgZnAgaXMgZW5hYmxlZC4KPj4+IAo+Pj4gV2hhdCBkbyB5
b3UgdGhpbmsgPwo+PiAKPj4gU3VyZSwgdGhhdCB3b3VsZCB3b3JrLiBJIGNhbid0IHJlYWxseSBz
ZWUgaG93IEtWTV9BUk02NF9GUF9FTkFCTEVECj4gCj4gVGhhbmtzIEkgaGF2ZSBmaXhlZCB0aGlz
IGxvY2FsbHkgbm93Lgo+IAo+PiB3b3VsZCBnZXQgc2V0IHRob3VnaC4gQnV0IGl0IHByb2JhYmx5
IGRvZXNuJ3QgbWF0dGVyIChXVEYgaXMgZ29pbmcKPiAKPiBSaWdodC4gVGhhdCBjYW5ub3QgYmUg
c2V0IHRvIGJlZ2luIHdpdGgsIGFzIHRoZSBmaXJzdCBhY2Nlc3MgdG8gRlAvU0lNRAo+IGluamVj
dHMgYW4gYWJvcnQgYmFjayB0byB0aGUgZ3Vlc3QsIHdoaWNoIGlzIHdoeSBJIGFkZGVkIGEgV0FS
TigpIHRvCj4gYmVnaW4gd2l0aC4KPiAKPiBKdXN0IHdhbnRlZCB0byBiZSBleHRyYSBzYWZlLgo+
IAo+PiB0byBydW4gS1ZNIHdpdGggc3VjaCBicm9rZW4gSFc/KSwgYW5kIGJldHRlciBzYWZlIHRo
YW4gc29ycnkuCj4gCj4gUmlnaHQsIHdpdGggbm8gQ09NUEFUIEtWTSBzdXBwb3J0IGl0IGlzIHJl
YWxseSBoYXJkIHRvIGdldCB0aGlzIGZhci4KClNvIHdpdGggdGhlIGFib3ZlIGZpeDoKCkFja2Vk
LWJ5OiBNYXJjIFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPgoKICAgICAgICAgTS4KLS0gCkphenog
aXMgbm90IGRlYWQuIEl0IGp1c3Qgc21lbGxzIGZ1bm55Li4uCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
