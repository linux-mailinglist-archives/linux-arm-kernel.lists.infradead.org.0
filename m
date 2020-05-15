Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B861D4AAE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 12:15:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a2pxYAvZv4LLQKWKeY2y4GMf9f/2+PPFMQV+/CjoHFk=; b=R0Mjmkwd+j2b5lhL68ZeeQLmK
	q4vW4y718XzM1TzEYW/bi7rKqR6GAST1jSPiKe76jbMQtnkXtgrf7ZvQKeRHmdAlAXsQp3t2pNgkc
	V7Ha/KCr2HtERXE7WRKmFKRk/MGUHrftRTlck8sZ1Wyvxidt6NKpdAJAodbah9kU65S8CFrCgZ+41
	tIEvc7Ny5BpFxp0G0gHsI6ijLdJbSiNApde1UyXoiAoB4aSwPsq9dNrsmpuTem6r512QXpyegsgyp
	VYLNyeZ10Z9VVhglg7GcnLgYmrdyApRh5aPg/J408qzVpZuJRE5E+HSdR333H7fbRzdsJ6wES+k8G
	ZfaD4/lQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZXMq-0001Ry-Ia; Fri, 15 May 2020 10:15:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZXMZ-0001K1-It
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 10:14:45 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E861720709;
 Fri, 15 May 2020 10:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589537682;
 bh=Rm55P1g29RzmulH7WYu/+UpeNv0RkBorxUspG69nAe8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=rtJvRrplSZRXulBMsWFJ2z53lp+Vt9sScf22YYTzJM2E+tIbzZAekmbAo4K5rYiof
 0HjEReDOAa08syurR0BYOBW8JAqgLwUIrufxJM2zIJ28vDYge9S2D9xGqx2H2oQ6BG
 4Nng4SJJbR/CAp/9TOi3RMt+aHBWlL3c31tGBgKA=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jZXMW-00CX9a-1u; Fri, 15 May 2020 11:14:40 +0100
MIME-Version: 1.0
Date: Fri, 15 May 2020 11:14:39 +0100
From: Marc Zyngier <maz@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v3 0/2] irqchip/gic-v3-its: Balance LPI affinity across
 CPUs
In-Reply-To: <7c05b08b-2edc-7f97-0175-898e9772673e@huawei.com>
References: <20200316115433.9017-1-maz@kernel.org>
 <9171c554-50d2-142b-96ae-1357952fce52@huawei.com>
 <80b673a7-1097-c5fa-82c0-1056baa5309d@huawei.com>
 <f2971d1c-50f8-bf5a-8b16-8d84a631b0ba@huawei.com>
 <7c05b08b-2edc-7f97-0175-898e9772673e@huawei.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <668f819c8747104814245cd6faebdd9a@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: john.garry@huawei.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, jason@lakedaemon.net,
 chenxiang66@hisilicon.com, robin.murphy@arm.com, luojiaxing@huawei.com,
 ming.lei@redhat.com, wangzhou1@hisilicon.com, tglx@linutronix.de,
 will@kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_031443_680868_AF374724 
X-CRM114-Status: GOOD (  32.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Jason Cooper <jason@lakedaemon.net>, chenxiang <chenxiang66@hisilicon.com>,
 Will Deacon <will@kernel.org>, luojiaxing@huawei.com,
 linux-kernel@vger.kernel.org, Ming Lei <ming.lei@redhat.com>,
 Zhou Wang <wangzhou1@hisilicon.com>, Thomas Gleixner <tglx@linutronix.de>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSm9obiwKCk9uIDIwMjAtMDUtMTQgMTM6MDUsIEpvaG4gR2Fycnkgd3JvdGU6Cj4+IAo+PiAr
wqDCoMKgwqDCoMKgIGl0c19pbmNfbHBpX2NvdW50KGQsIGNwdSk7Cj4+ICsKPj4gIMKgwqDCoMKg
wqDCoMKgIHJldHVybiBJUlFfU0VUX01BU0tfT0tfRE9ORTsKPj4gIMKgfQo+PiAKPj4gUmVzdWx0
cyBsb29rIG9rOgo+PiAgwqDCoMKgwqBudm1lLnVzZV90aHJlYWRlZF9pbnRlcnJ1cHRzPTHCoMKg
wqAgPTAqCj4+IEJlZm9yZcKgwqDCoCA5NTBLIElPUHPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDEw
MDBLIElPUHMKPj4gQWZ0ZXLCoMKgwqAgMTEwMEsgSU9Qc8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
MTE1MEsgSU9Qcwo+PiAKPj4gKiBhcyBtZW50aW9uZWQgYmVmb3JlLCB0aGlzIGlzIHF1aXRlIHVu
c3RhYmxlIGFuZCBjYXVzZXMgbG9ja3Vwcy4gCj4+IEpGWUksIHRoZXJlIHdhcyBhbiBhdHRlbXB0
IHRvIGZpeCB0aGlzOgo+PiAKPj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbnZtZS8y
MDE5MTIwOTE3NTYyMi4xOTY0LTEta2J1c2NoQGtlcm5lbC5vcmcvCj4+IAo+IAo+IEhpIE1hcmMs
Cj4gCj4gSnVzdCB3b25kZXJpbmcgaWYgd2UgY2FuIHRyeSB0byBnZXQgdGhpcyBzZXJpZXMgb3Zl
ciB0aGUgbGluZT8KCkFic29sdXRlbHkuIExpZmUgaGFzIGdvdCBpbiB0aGUgd2F5LCBzbyBsZXQg
bWUgcGFnZSBpdCBiYWNrIGluLi4uCgo+IFNvIEkgdGVzdGVkIHRoZSBwYXRjaGVzIG9uIHY1Ljct
cmM1LCBhbmQgZ2V0IHNpbWlsYXIgcGVyZm9ybWFuY2UKPiBpbXByb3ZlbWVudCB0byBhYm92ZS4K
PiAKPiBJIGRpZCBhcHBseSBhIGNvdXBsZSBvZiBwYXRjaGVzLCBiZWxvdywgdG8gcmVtZWR5IHRo
ZSBpc3N1ZXMgSQo+IGV4cGVyaWVuY2VkIGZvciBteSBEMDZDUy4KCkNvbW1lbnRzIG9uIHRoYXQg
YmVsb3cuCgo+IAo+IFRoYW5rcywKPiBKb2huCj4gCj4gCj4gLS0tLT44Cj4gCj4gCj4gW1BBVENI
IDEvMl0gaXJxY2hpcC9naWMtdjMtaXRzOiBEb24ndCBkb3VibGUgYWNjb3VudCBmb3IgdGFyZ2V0
IENQVQo+ICBhc3NpZ25tZW50Cj4gCj4gSW4gaXRzX3NldF9hZmZpbml0eSgpLCB3aGVuIGEgbWFu
YWdlZCBpcnEgaXMgYWxyZWFkeSBhc3NpZ25lZCB0byBhIENQVSwKPiB3ZSBtYXkgbmVlZGxlc3Ns
eSByZWFzc2lnbiB0aGUgaXJxIHRvIGFub3RoZXIgQ1BVLgo+IAo+IFRoaXMgaXMgYmVjYXVzZSB3
aGVuIHNlbGVjdGluZyB0aGUgdGFyZ2V0IENQVSwgYmVpbmcgdGhlIGxlYXN0IGxvYWRlZAo+IENQ
VSBpbiB0aGUgbWFzaywgd2UgYWNjb3VudCBvZiB0aGF0IGlycSBzdGlsbCBiZWluZyBhc3NpZ25l
ZCB0byBhIENQVTsKPiB0aGVyZWJ5IHdlIG1heSB1bmZhaXJseSBzZWxlY3QgYW5vdGhlciBDUFUu
Cj4gCj4gTW9kaWZ5IHRoaXMgYmVoYXZpb3VyIHRvIHByZS1kZWNyZW1lbnQgdGhlIGN1cnJlbnQg
dGFyZ2V0IENQVSBMUEkgY291bnQKPiB3aGVuIGZpbmRpbmcgdGhlIGxlYXN0IGxvYWRlZCBDUFUu
Cj4gCj4gQWx0ZXJuYXRpdmVseSB3ZSBtYXkgYmUgYWJsZSB0byBqdXN0IGJhaWwgb3V0IGVhcmx5
IHdoZW4gdGhlIGN1cnJlbnQKPiB0YXJnZXQgQ1BVIGFscmVhZHkgZmFsbHMgd2l0aGluIHRoZSBy
ZXF1ZXN0ZWQgbWFzay4KPiAKPiAtLS0KPiAgZHJpdmVycy9pcnFjaGlwL2lycS1naWMtdjMtaXRz
LmMgfCA2ICsrKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lycWNoaXAvaXJxLWdpYy12My1pdHMu
YyAKPiBiL2RyaXZlcnMvaXJxY2hpcC9pcnEtZ2ljLXYzLWl0cy5jCj4gaW5kZXggNzNmNWMxMi4u
MmIxOGZlYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2lycWNoaXAvaXJxLWdpYy12My1pdHMuYwo+
ICsrKyBiL2RyaXZlcnMvaXJxY2hpcC9pcnEtZ2ljLXYzLWl0cy5jCj4gQEAgLTE2MzYsNiArMTYz
Niw4IEBAIHN0YXRpYyBpbnQgaXRzX3NldF9hZmZpbml0eShzdHJ1Y3QgaXJxX2RhdGEgKmQsCj4g
Y29uc3Qgc3RydWN0IGNwdW1hc2sgKm1hc2tfdmFsLAo+ICAJaWYgKGlycWRfaXNfZm9yd2FyZGVk
X3RvX3ZjcHUoZCkpCj4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4gCj4gKwlpdHNfZGVjX2xwaV9jb3Vu
dChkLCBpdHNfZGV2LT5ldmVudF9tYXAuY29sX21hcFtpZF0pOwo+ICsKPiAgCWlmICghZm9yY2Up
Cj4gIAkJY3B1ID0gaXRzX3NlbGVjdF9jcHUoZCwgbWFza192YWwpOwo+ICAJZWxzZQo+IEBAIC0x
NjQ2LDE0ICsxNjQ4LDE0IEBAIHN0YXRpYyBpbnQgaXRzX3NldF9hZmZpbml0eShzdHJ1Y3QgaXJx
X2RhdGEKPiAqZCwgY29uc3Qgc3RydWN0IGNwdW1hc2sgKm1hc2tfdmFsLAo+IAo+ICAJLyogZG9u
J3Qgc2V0IHRoZSBhZmZpbml0eSB3aGVuIHRoZSB0YXJnZXQgY3B1IGlzIHNhbWUgYXMgY3VycmVu
dCBvbmUgCj4gKi8KPiAgCWlmIChjcHUgIT0gaXRzX2Rldi0+ZXZlbnRfbWFwLmNvbF9tYXBbaWRd
KSB7Cj4gLQkJaXRzX2luY19scGlfY291bnQoZCwgY3B1KTsKPiAtCQlpdHNfZGVjX2xwaV9jb3Vu
dChkLCBpdHNfZGV2LT5ldmVudF9tYXAuY29sX21hcFtpZF0pOwo+ICAJCXRhcmdldF9jb2wgPSAm
aXRzX2Rldi0+aXRzLT5jb2xsZWN0aW9uc1tjcHVdOwo+ICAJCWl0c19zZW5kX21vdmkoaXRzX2Rl
diwgdGFyZ2V0X2NvbCwgaWQpOwo+ICAJCWl0c19kZXYtPmV2ZW50X21hcC5jb2xfbWFwW2lkXSA9
IGNwdTsKPiAgCQlpcnFfZGF0YV91cGRhdGVfZWZmZWN0aXZlX2FmZmluaXR5KGQsIGNwdW1hc2tf
b2YoY3B1KSk7Cj4gIAl9Cj4gCj4gKwlpdHNfaW5jX2xwaV9jb3VudChkLCBjcHUpOwo+ICsKCkkn
bSBPSyB3aXRoIHRoYXQgY2hhbmdlLCBhcyBpdCByZW1vdmVzIHVubmVjZXNzYXJ5IGNodXJuLgoK
PiAgCXJldHVybiBJUlFfU0VUX01BU0tfT0tfRE9ORTsKPiAgfQo+IAo+IC0tLQo+IAo+IAo+IFtQ
QVRDSCAyLzJdIGlycWNoaXAvZ2ljLXYzLWl0czogSGFuZGxlIG5vIG92ZXJsYXAgb2Ygbm9uLW1h
bmFnZWQgaXJxCj4gIGFmZmluaXR5IG1hc2sKPiAKPiBJbiBzZWxlY3RpbmcgdGhlIHRhcmdldCBD
UFUgZm9yIGEgbm9uLW1hbmFnZWQgaW50ZXJydXB0LCB3ZSBtYXkgc2VsZWN0IAo+IGEKPiB0YXJn
ZXQgQ1BVIG91dHNpZGUgdGhlIHJlcXVlc3RlZCBhZmZpbml0eSBtYXNrLgo+IAo+IFRoaXMgaXMg
YmVjYXVzZSB0aGVyZSBtYXkgYmUgbm8gb3ZlcmxhcCBvZiB0aGUgSVRTIG5vZGUgbWFzayBhbmQg
dGhlCj4gcmVxdWVzdGVkIENQVSBhZmZpbml0eSBtYXNrLiBUaGUgcmVxdWVzdGVkIGFmZmluaXR5
IG1hc2sgbWF5IGJlIGNvbWluZwo+IGZyb20gdXNlcnNwYWNlIG9yIHNvbWUgZHJpdmVycyB3aGlj
aCB0cnkgdG8gc2V0IGlycSBhZmZpbml0eSwgc2VlIFswXS4KPiAKPiBJbiB0aGlzIGNhc2UsIGp1
c3QgaWdub3JlIHRoZSBJVFMgbm9kZSBjcHVtYXNrLiBUaGlzIGlzIGEgZGV2aWF0aW9uIAo+IGZy
b20KPiB3aGF0IFRob21hcyBkZXNjcmliZWQuIEhhdmluZyBzYWlkIHRoYXQsIEkgYW0gbm90IHN1
cmUgaWYgdGhlCj4gaW50ZXJydXB0IGlzIGV2ZXIgYm91bmQgdG8gYSBub2RlIGZvciB1cy4KPiAK
PiBbMF0gCj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQv
dG9ydmFsZHMvbGludXguZ2l0L3RyZWUvZHJpdmVycy9wZXJmL2hpc2lsaWNvbi9oaXNpX3VuY29y
ZV9wbXUuYyNuNDE3Cj4gCj4gLS0tCj4gIGRyaXZlcnMvaXJxY2hpcC9pcnEtZ2ljLXYzLWl0cy5j
IHwgNCAtLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2lycWNoaXAvaXJxLWdpYy12My1pdHMuYyAKPiBiL2RyaXZlcnMvaXJxY2hp
cC9pcnEtZ2ljLXYzLWl0cy5jCj4gaW5kZXggMmIxOGZlYi4uMTJkNWQ0YjQgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9pcnFjaGlwL2lycS1naWMtdjMtaXRzLmMKPiArKysgYi9kcml2ZXJzL2lycWNo
aXAvaXJxLWdpYy12My1pdHMuYwo+IEBAIC0xNTg0LDEwICsxNTg0LDYgQEAgc3RhdGljIGludCBp
dHNfc2VsZWN0X2NwdShzdHJ1Y3QgaXJxX2RhdGEgKmQsCj4gIAkJCWNwdW1hc2tfYW5kKHRtcG1h
c2ssIGNwdW1hc2tfb2Zfbm9kZShub2RlKSwgYWZmX21hc2spOwo+ICAJCQljcHVtYXNrX2FuZCh0
bXBtYXNrLCB0bXBtYXNrLCBjcHVfb25saW5lX21hc2spOwo+IAo+IC0JCQkvKiBJZiB0aGF0IGRv
ZXNuJ3Qgd29yaywgdHJ5IHRoZSBub2RlbWFzayBpdHNlbGYgKi8KPiAtCQkJaWYgKGNwdW1hc2tf
ZW1wdHkodG1wbWFzaykpCj4gLQkJCQljcHVtYXNrX2FuZCh0bXBtYXNrLCBjcHVtYXNrX29mX25v
ZGUobm9kZSksIGNwdV9vbmxpbmVfbWFzayk7Cj4gLQo+ICAJCQljcHUgPSBjcHVtYXNrX3BpY2tf
bGVhc3RfbG9hZGVkKGQsIHRtcG1hc2spOwo+ICAJCQlpZiAoY3B1IDwgbnJfY3B1X2lkcykKPiAg
CQkJCWdvdG8gb3V0OwoKSSdtIHJlYWxseSBub3Qgc3VyZS4gU2hvdWxkbid0IHdlIHRoZW4gZHJv
cCB0aGUgd2lkZXIgc2VhcmNoIG9uCmNwdV9pbmxpbmVfbWFzaywgYmVjYXVzZSB1c2Vyc3BhY2Ug
Y291bGQgaGF2ZSBnaXZlbiB1cyBzb21ldGhpbmcKdGhhdCB3ZSBjYW5ub3QgZGVhbCB3aXRoPwoK
V2hhdCB5b3UgYXJlIGFkdm9jYXRpbmcgZm9yIGlzIGEgc3RyaWN0IGFkaGVyZW5jZSB0byB0aGUg
cHJvdmlkZWQKbWFzaywgYW5kIGl0IGRvZXNuJ3Qgc2VlbSB0byBiZSB3aGF0IG90aGVyIGFyY2hp
dGVjdHVyZXMgYXJlIHByb3ZpZGluZy4KSSBjb25zaWRlciB0aGUgdXNlcnNwYWNlLXByb3ZpZGVk
IGFmZmluaXR5IGFzIGEgaGludCBtb3JlIHRoYXQgYW55dGhpbmcKZWxzZSwgYXMgaW4gdGhpcyBj
YXNlIHRoZSBrZXJuZWwgZG9lcyBrbm93IGJldHRlciAocm91dGluZyB0aGUgaW50ZXJydXB0CnRv
IGEgZm9yZWlnbiBub2RlIG1pZ2h0IGJlIGNvc3RseSwgb3IgZXZlbiBpbXBvc3NpYmxlLCBzZWUg
dGhlIFRYMQplcnJhdHVtKS4KCiBGcm9tIHdoYXQgSSByZW1lbWJlciBvZiB0aGUgZWFybGllciBk
aXNjdXNzaW9uLCB5b3Ugc2F3IGFuIGlzc3VlIG9uCmEgc3lzdGVtIHdpdGggdHdvIHNvY2tldHMg
YW5kIGEgc2luZ2xlIElUUywgd2l0aCB0aGUgbm9kZSBtYXNrIGxpbWl0ZWQKdG8gdGhlIGZpcnN0
IHNvY2tldC4gSXMgdGhhdCBjb3JyZWN0PwoKSSdsbCByZXNwaW4gdGhlIHNlcmllcyB0b2RheSBh
bmQgcmVwb3J0IGl0IHdpdGggeW91IGZpcnN0IHBhdGNoCnNxdWFzZWQgaW4uCgpUaGFua3MsCgog
ICAgICAgICBNLgotLSAKSmF6eiBpcyBub3QgZGVhZC4gSXQganVzdCBzbWVsbHMgZnVubnkuLi4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
