Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 759F216431D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 12:15:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K6L+qaGWTHN/N45yq7zqBfPxg05wU1JjoFB+k/9YZEo=; b=su+z7FXXQL0jOuiuVZvkZxzJE
	nMuD51CjfQRURKe/y8uXZeSaKyWpUN4szTlZ8naFcxVeJLWKle7NHgvqWv6kwFn4U8y6RR5uymhPN
	6TKA48KPvDvPXuBGaeykO5DdQ5tyi3xYsGMxqMRXQxMev/7VydhzgYwX6a4uW1ocIK+Kitbk/FZzi
	QI5VLooWzl5g4sucrnWGNnl7PIGwycrolFC76CL9qNIRer43Yl9StCo/HRFvqF+iuF1M7yxcS/i21
	y1IELWUvZGH5Nfw37atihFRwbtCIb6nS3KFTyS2CaAWs6lBp+dwjQKBo9pd8OVzOI+Qm5q2rJyE+y
	Kpq6qwbBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4NJd-0004RO-EL; Wed, 19 Feb 2020 11:14:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4NJS-0004Qr-Vd
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 11:14:44 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6951D24658;
 Wed, 19 Feb 2020 11:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582110882;
 bh=t4vzpweClqjBcv8dfE7UQXkgRAqeUVPdgkwMN4FVeg0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=EK4/zBLpN2Xq0bcVNbO+o/rj59zbrufMthyreklPzIrj8cSI8s0564Ksfw2oidBY3
 KgznGxD07C86IQalFv6CpZhpI5y6vQmkbOnKMCwOictJJaUaDDNukIPALdp3hEbEeM
 YgiPWlcfva2qKdv6d8hjBH7dqi/QrIzd/2YsxfTk=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j4NJQ-006UOX-Ds; Wed, 19 Feb 2020 11:14:40 +0000
MIME-Version: 1.0
Date: Wed, 19 Feb 2020 11:14:40 +0000
From: Marc Zyngier <maz@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 3/5] kvm: arm64: Limit PMU version to ARMv8.1
In-Reply-To: <ed7f31d5-9a2b-6ea0-85f8-74fcd7d9ac61@arm.com>
References: <20200216185324.32596-1-maz@kernel.org>
 <20200216185324.32596-4-maz@kernel.org>
 <eb0294ef-5ad2-9940-2d59-b92220948ffc@arm.com>
 <c0a848e3ababff4ee9ecaa4b246d5875@kernel.org>
 <ed7f31d5-9a2b-6ea0-85f8-74fcd7d9ac61@arm.com>
Message-ID: <89155997285a33615093210d6c4de26d@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: james.morse@arm.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, peter.maydell@linaro.org,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_031443_072535_F1A1AF24 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peter Maydell <peter.maydell@linaro.org>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wMi0xOSAxMDoxOCwgSmFtZXMgTW9yc2Ugd3JvdGU6Cj4gSGkgTWFyYywKPiAKPiBP
biAyLzE5LzIwIDk6NDYgQU0sIE1hcmMgWnluZ2llciB3cm90ZToKPj4gT24gMjAyMC0wMi0xOCAx
Nzo0MywgSmFtZXMgTW9yc2Ugd3JvdGU6Cj4+PiBIaSBNYXJjLAo+Pj4gCj4+PiBPbiAxNi8wMi8y
MDIwIDE4OjUzLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4+Pj4gT3VyIFBNVSBjb2RlIGlzIG9ubHkg
aW1wbGVtZW50aW5nIHRoZSBBUk12OC4xIGZlYXR1cmVzLCBzbyBsZXQncwo+Pj4+IHN0aWNrIHRv
IHRoaXMgd2hlbiByZXBvcnRpbmcgdGhlIGZlYXR1cmUgc2V0IHRvIHRoZSBndWVzdC4KPj4+IAo+
Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2t2bS9zeXNfcmVncy5jIGIvYXJjaC9hcm02NC9r
dm0vc3lzX3JlZ3MuYwo+Pj4+IGluZGV4IDY4MmZlZGQ3NzAwZi4uMDZiMmQwZGM2YzczIDEwMDY0
NAo+Pj4+IC0tLSBhL2FyY2gvYXJtNjQva3ZtL3N5c19yZWdzLmMKPj4+PiArKysgYi9hcmNoL2Fy
bTY0L2t2bS9zeXNfcmVncy5jCj4+Pj4gQEAgLTEwOTMsNiArMTA5MywxMSBAQCBzdGF0aWMgdTY0
IHJlYWRfaWRfcmVnKGNvbnN0IHN0cnVjdCBrdm1fdmNwdQo+Pj4+ICp2Y3B1LAo+Pj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRkVBVFVSRShJRF9BQTY0SVNBUjFfR1BBKSB8
Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBGRUFUVVJFKElEX0FBNjRJ
U0FSMV9HUEkpKTsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgIGJyZWFrOwo+Pj4+ICvCoMKgwqAgY2Fz
ZSBTWVNfSURfQUE2NERGUjBfRUwxOgo+Pj4+ICvCoMKgwqDCoMKgwqDCoCAvKiBMaW1pdCBQTVUg
dG8gQVJNdjguMSAqLwo+Pj4gCj4+PiBOb3QganVzdCBsaW1pdCwgYnV0IHVwZ3JhZGUgdG9vISAo
Zm9yY2U/KQo+Pj4gVGhpcyBsb29rcyBzYWZlIGJlY2F1c2UgQVJNVjhfUE1VX0VWVFlQRV9FVkVO
VCBhbHdheXMgaW5jbHVkZXMgdGhlCj4+PiBleHRyYSBiaXRzIHRoaXMgYWRkZWQsIGFuZCB0aGUg
cmVnaXN0ZXIgaXMgYWx3YXlzIHRyYXBwZWQuCj4+IAo+PiBUaGF0J3MgZGVmaW5pdGVseSBub3Qg
d2hhdCBJIGludGVuZGVkISBMZXQgbWUgZml4IHRoYXQgb25lLgo+IAo+IFdoYXQgZ29lcyB3cm9u
Zz8KPiAKPiBUaGUgcmVnaXN0ZXIgZGVzY3JpcHRpb24gc2F5cyB0byBzdXBwb3J0IHY4LjEgeW91
IG5lZWQ6Cj4gfCBFeHRlbmRlZCAxNi1iaXQgUE1FVlRZUEVSPG4+X0VMMC5ldnRDb3VudCBmaWVs
ZAo+IHwgSWYgRUwyIGlzIGltcGxlbWVudGVkLCB0aGUgTURDUl9FTDIuSFBNRCBjb250cm9sIGJp
dAo+IAo+IEl0IGxvb2tzIGxpa2UgdGhlIGV4dGVuZGVkIFBNRVZUWVBFUiB3b3VsZCB3b3JrIHZp
YSB0aGUgZW11bGF0aW9uLCBhbmQKPiBFTDIgZ3Vlc3RzIGFyZSB0b3RhbGx5IGNyYXp5Lgo+IAo+
IElzIHRoZSBTVEFMTF8qIGJpdHMgaW4gQVJNdjguMS1QTVUgdGhlIHByb2JsZW0sIC4uLiBvciB0
aGUgZXh0cmEgd29yawo+IGZvciBOVj8KCldoYXQgZ29lcyB3cm9uZyBpcyB0aGF0IG9uIGEgdjgu
MCBzeXN0ZW0sIHRoZSBndWVzdCBjb3VsZCBiZSB0ZW1wdGVkIHRvCnVzZSBldmVudHMgaW4gdGhl
IDB4MDQwMC0weGZmZmYgcmFuZ2UuIEl0IHdvdWxkbid0IGJyZWFrIGFueXRoaW5nLCBidXQKaXQg
d291bGRuJ3QgZ2l2ZSB0aGUgZXhwZWN0ZWQgcmVzdWx0LgoKSSBkb24ndCBjYXJlIG11Y2ggZm9y
IFBNVSBzdXBwb3J0IGluIEVMMiBndWVzdHMgYXQgdGhpcyBzdGFnZS4KCj4+PiBUaGUgUE1VIHZl
cnNpb24gaXMgYWxzbyByZWFkYWJsZSB2aWEgSURfREZSMF9FTDEuUGVyZk1vbiwgc2hvdWxkIHRo
YXQKPj4+IGJlIHNhbml0aXNlZCB0byBiZSB0aGUgc2FtZT8gKEkgZG9uJ3QgdGhpbmsgd2UndmUg
aGlkZGVuIGFuIGFhcmNoNjQKPj4+IGZlYXR1cmUgdGhhdCBhbHNvIGV4aXN0ZWQgaW4gYWFyY2gz
MiBiZWZvcmUpLgo+PiAKPj4gSW5kZWVkLCB5ZXQgYW5vdGhlciBvdmVyc2lnaHQuIEknbGwgZml4
IHRoYXQgdG9vLgo+IAo+IChXZWlyZCB2YXJpYXRpb24gaW4gdGhlIGFhcmNoMzIgYW5kIGFhcmNo
NjQgSUQgcmVnaXN0ZXJzIGlzbid0IAo+IHNvbWV0aGluZwo+IEkgY2FyZSBhYm91dCAuLi4gd2hv
IHdvdWxkIGV2ZXIgbG9vayBhdCBib3RoPykKCkEgNjRiaXQgZ3Vlc3QgcnVubmluZyBhIDMyYml0
IEVMMD8KCiAgICAgICAgIE0uCi0tIApKYXp6IGlzIG5vdCBkZWFkLiBJdCBqdXN0IHNtZWxscyBm
dW5ueS4uLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
