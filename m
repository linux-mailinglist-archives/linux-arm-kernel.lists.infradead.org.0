Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7574218C96C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 10:02:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DtaswS0FtVKHFzg3KpGVDVFM9EO4uQp9G8Avrwdke+c=; b=B58bd+BT/fm7gCb8PfpZAG55n
	Wy71nu8mN5UbKicr2p3XHy7Obf82lh7UPsq7mQpYNcAeKJSAp8sWvornLp7X9MCl+uZjBdC3rmn5S
	rd6ZR/TlbsF9gYm9RHhQ0tM6Anu619XPJFSegyvS4EytfPn5owh5F7Bzn1yHK94Q6/NTuQRM1V4Qm
	sUx03rxcQO3yBArn68SRSvJ6ezZiLHs9YZChGDdshNzxXVM/NyYAbSTMY/1g5GPHZZsIO+YrRzPU+
	WX5TzLVGa6rDE+mxhTMxkCET89Si4NZKfeRNPxE8EWQwznTNE1CYvz4dyZO81gCSQLExBnEM38PPJ
	MBa5xwVUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFDXM-0003qK-KB; Fri, 20 Mar 2020 09:01:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFDXF-0003pY-TW
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 09:01:47 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1E46520752;
 Fri, 20 Mar 2020 09:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584694903;
 bh=5GzmaNdbQWq4mwgMPIV3aDUnqAewqh/ptfOGOHCK+xw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jYCIgVPLeSi75fxMO5TZ8B5x9GAI/akoG5C2R9NKp2C++xG9c/7L59CgHOC3bQ/KK
 kxFbkaBZ/58TE5YR3tosXwXXhILQr5LeIR5nykEBB/cPR+MxWI5ff+pta1Dvp7u55A
 a0/KdFglc2/CRpBetrGMRzDIrczZ3ze842l/MkGE=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jFDXA-00EBob-Vl; Fri, 20 Mar 2020 09:01:41 +0000
MIME-Version: 1.0
Date: Fri, 20 Mar 2020 09:01:40 +0000
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH v5 20/23] KVM: arm64: GICv4.1: Plumb SGI implementation
 selection in the distributor
In-Reply-To: <1c9fdfc8-bdb2-88b6-4bdc-2b9254dfa55c@huawei.com>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-21-maz@kernel.org>
 <72832f51-bbde-8502-3e03-189ac20a0143@huawei.com>
 <4a06fae9c93e10351276d173747d17f4@kernel.org>
 <1c9fdfc8-bdb2-88b6-4bdc-2b9254dfa55c@huawei.com>
Message-ID: <256b58a9679412c96600217f316f424f@kernel.org>
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
X-CRM114-CacheID: sfid-20200320_020145_993835_84648EA3 
X-CRM114-Status: GOOD (  21.36  )
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
 Eric Auger <eric.auger@redhat.com>, Robert Richter <rrichter@marvell.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgWmVuZ2h1aSwKCk9uIDIwMjAtMDMtMjAgMDM6NTMsIFplbmdodWkgWXUgd3JvdGU6Cj4gSGkg
TWFyYywKPiAKPiBPbiAyMDIwLzMvMTkgMjA6MTAsIE1hcmMgWnluZ2llciB3cm90ZToKPj4+IEJ1
dCBJIHdvbmRlciB0aGF0IHNob3VsZCB3ZSB1c2UgbmFzc2dpcmVxIHRvICpvbmx5KiBrZWVwIHRy
YWNrIHdoYXQKPj4+IHRoZSBndWVzdCBoYWQgd3JpdHRlbiBpbnRvIHRoZSBHSUNEX0NUTFIubkFT
U0dJcmVxLsKgIElmIG5vdCwgd2UgbWF5Cj4+PiBsb3NlIHRoZSBndWVzdC1yZXF1ZXN0IGJpdCBh
ZnRlciBtaWdyYXRpb24gYW1vbmcgaG9zdHMgd2l0aCBkaWZmZXJlbnQKPj4+IGhhc19naWN2NF8x
IHNldHRpbmdzLgo+PiAKPj4gSSdtIHVuc3VyZSBvZiB3aGF0IHlvdSdyZSBzdWdnZXN0aW5nIGhl
cmUuIElmIHVzZXJzcGFjZSB0cmllcyB0byBzZXQKPj4gR0lDRF9DVExSLm5BU1NHSXJlcSBvbiBh
IG5vbi00LjEgaG9zdCwgdGhpcyBiaXQgd2lsbCBub3QgbGF0Y2guCj4gCj4gVGhpcyBpcyBleGFj
dGx5IHdoYXQgSSAqd2FzKiBjb25jZXJuaW5nIGFib3V0Lgo+IAo+PiBVc2Vyc3BhY2UgY2FuIGNo
ZWNrIHRoYXQgYXQgcmVzdG9yZSB0aW1lLiBPciB3ZSBjb3VsZCBmYWlsIHRoZQo+PiB1c2Vyc3Bh
Y2Ugd3JpdGUsIHdoaWNoIGlzIGEgYml0IG9kZCAodGhlIGJpdCBpcyBvdGhlcndpc2UgUkVTMCku
Cj4+IAo+PiBDb3VsZCB5b3UgY2xhcmlmeSB5b3VyIHByb3Bvc2FsPwo+IAo+IExldCdzIGFzc3Vt
ZSB0d28gaG9zdHMgYmVsb3cuICdoYXNfZ2ljdjRfMScgaXMgdHJ1ZSBvbiBob3N0LUEgd2hpbGUK
PiBpdCBpcyBmYWxzZSBvbiBob3N0LUIgYmVjYXVzZSBvZiBsYWNrIG9mIEhXIHN1cHBvcnQgb3Ig
dGhlIGtlcm5lbAo+IHBhcmFtZXRlciAia3ZtLWFybS52Z2ljX3Y0X2VuYWJsZT0wIi4KPiAKPiBJ
ZiB3ZSBtaWdyYXRlIGd1ZXN0IHRocm91Z2ggQS0+Qi0+QSwgd2UgbWF5IGVuZC11cCBsb3NlIHRo
ZSBpbml0aWFsCj4gZ3Vlc3QtcmVxdWVzdCAibkFTU0dJcmVxPTEiIGFuZCBkb24ndCB1c2UgZGly
ZWN0IHZTR0kgZGVsaXZlcnkgZm9yCj4gdGhpcyBndWVzdCB3aGVuIGl0J3MgbWlncmF0ZWQgYmFj
ayB0byBob3N0LUEuCgpNeSBwb2ludCBhYm92ZSBpcyB0aGF0IHdlIHNob3VsZG4ndCBhbGxvdyB0
aGUgQS0+QiBtaWdyYXRpb24gdGhlIGZpcnN0CnBsYWNlLCBhbmQgZmFpbCBpdCBhcyBxdWlja2x5
IGFzIHBvc3NpYmxlLiBXZSBkb24ndCBrbm93IHdoYXQgdGhlIGd1ZXN0CmhhcyBvYnNlcnZlZCBp
biB0ZXJtcyBvZiBHSUMgY2FwYWJpbGl0eSwgYW5kIGl0IG1heSBub3QgaGF2ZSBlbmFibGVkIHRo
ZQpuZXcgZmxhdm91ciBvZiBTR0lzIGp1c3QgeWV0LgoKPiBUaGlzIGNhbiBiZSAiZml4ZWQiIGJ5
IGtlZXAgdHJhY2sgb2Ygd2hhdCBndWVzdCBoYWQgd3JpdHRlbiBpbnRvCj4gbkFTU0dJcmVxLiBB
bmQgd2UgbmVlZCB0byBldmFsdWF0ZSB0aGUgbmVlZCBmb3IgdXNpbmcgZGlyZWN0IHZTR0kKPiBm
b3IgYSBzcGVjaWZpZWQgZ3Vlc3QgYnkgJ2hhc19naWN2NF8xICYmIG5hc3NnaXJlcScuCgpJdCBm
ZWVscyBvZGQuIEl0IG1lYW5zIHdlIGhhdmUgbW9yZSBzdGF0ZSB0aGFuIHRoZSBIVyBub3JtYWxs
eSBoYXMuCkkgaGF2ZSBhbiBhbHRlcm5hdGl2ZSBwcm9wb3NhbCwgc2VlIGJlbG93LgoKPiBCdXQg
aWYgaXQncyBleHBlY3RlZCB0aGF0ICJpZiB1c2Vyc3BhY2UgdHJpZXMgdG8gc2V0IG5BU1NHSXJl
cSBvbgo+IGEgbm9uLTQuMSBob3N0LCB0aGlzIGJpdCB3aWxsIG5vdCBsYXRjaCIsIHRoZW4gdGhp
cyBzaG91bGRuJ3QgYmUKPiBhIHByb2JsZW0gYXQgYWxsLgoKV2VsbCwgdGhhdCBpcyB0aGUgc2Vt
YW50aWNzIG9mIHRoZSBSRVMwIGJpdC4gSXQgYXBwbGllcyBmcm9tIGJvdGgKZ3Vlc3QgYW5kIHVz
ZXJzcGFjZS4KCkFuZCBhY3R1YWxseSwgbWF5YmUgd2UgY2FuIGhhbmRsZSB0aGF0IHByZXR0eSBj
aGVhcGx5LiBJZiB1c2Vyc3BhY2UKdHJpZXMgdG8gcmVzdG9yZSBHSUNEX1RZUEVSMiB0byBhIHZh
bHVlIHRoYXQgaXNuJ3Qgd2hhdCBLVk0gY2FuCm9mZmVyLCB3ZSBqdXN0IHJldHVybiBhbiBlcnJv
ci4gRXhhY3RseSBsaWtlIHdlIGRvIGZvciBHSUNEX0lJRFIuCkhlbmNlIHRoZSBmb2xsb3dpbmcg
cGF0Y2g6CgpkaWZmIC0tZ2l0IGEvdmlydC9rdm0vYXJtL3ZnaWMvdmdpYy1tbWlvLXYzLmMgCmIv
dmlydC9rdm0vYXJtL3ZnaWMvdmdpYy1tbWlvLXYzLmMKaW5kZXggMjhiNjM5ZmQxYWJjLi5lNzJk
Y2M0NTQyNDcgMTAwNjQ0Ci0tLSBhL3ZpcnQva3ZtL2FybS92Z2ljL3ZnaWMtbW1pby12My5jCisr
KyBiL3ZpcnQva3ZtL2FybS92Z2ljL3ZnaWMtbW1pby12My5jCkBAIC0xNTYsNiArMTU2LDcgQEAg
c3RhdGljIGludCB2Z2ljX21taW9fdWFjY2Vzc193cml0ZV92M19taXNjKHN0cnVjdCAKa3ZtX3Zj
cHUgKnZjcHUsCiAgCXN0cnVjdCB2Z2ljX2Rpc3QgKmRpc3QgPSAmdmNwdS0+a3ZtLT5hcmNoLnZn
aWM7CgogIAlzd2l0Y2ggKGFkZHIgJiAweDBjKSB7CisJY2FzZSBHSUNEX1RZUEVSMjoKICAJY2Fz
ZSBHSUNEX0lJRFI6CiAgCQlpZiAodmFsICE9IHZnaWNfbW1pb19yZWFkX3YzX21pc2ModmNwdSwg
YWRkciwgbGVuKSkKICAJCQlyZXR1cm4gLUVJTlZBTDsKCkJlaW5nIGEgUk8gcmVnaXN0ZXIsIHdy
aXRpbmcgc29tZXRoaW5nIHRoYXQgaXNuJ3QgY29tcGF0aWJsZSB3aXRoIHRoZQpwb3NzaWJsZSBi
ZWhhdmlvdXIgb2YgdGhlIGh5cGVydmlzb3Igd2lsbCBqdXN0IHJldHVybiBhbiBlcnJvci4KCldo
YXQgZG8geW91IHRoaW5rPwoKPiBBbnl3YXkgdGhpcyBpcyBub3QgYSBiaWcgZGVhbCB0byBtZSBh
bmQgSSB3b24ndCBjb21wbGFpbiBhYm91dCBpdAo+IGluIHRoZSBmdXR1cmUgOy0pIEVpdGhlciB3
YXksIGZvciB0aGlzIHBhdGNoOgo+IAo+IFJldmlld2VkLWJ5OiBaZW5naHVpIFl1IDx5dXplbmdo
dWlAaHVhd2VpLmNvbT4KClRoYW5rcyBhIGxvdCEKCiAgICAgICAgIE0uCi0tIApKYXp6IGlzIG5v
dCBkZWFkLiBJdCBqdXN0IHNtZWxscyBmdW5ueS4uLgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
