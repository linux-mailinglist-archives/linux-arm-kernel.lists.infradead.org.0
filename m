Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD6115DB58
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 16:45:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L1J2Eezu8EypWhkLy/JlQCQb6lhskrTNlIpGM22yrXI=; b=i3xZwWjZ6JpqXH
	IKyBp73MSaAC0zML8HK4Q+CRb+aHrlWl/gSZjsUpOHrP4JeXCi++I9m5qzqh1yNFU6bDFZyusTuoM
	xD/tueZspVh887HK6RH2BrK642nJrsDPbmLYBDHKXJ7Je5xRZ1pMGr1/cnvt97S7L65yWcD+wp4cr
	yZirWXVSLvS+u6HGvO0Z7+xY5/cgRbV5YPCJlkAmYJMSkksM/L05dkf9QXRBWaD36mk9uUa6AsCvp
	Bt/0VivmB3i4qJD5qA4DJ5Z7Wkvama0uJoiG71FV8L/rZOvZo+mW4y3MGAIBfbpl1dpvz1pSc7rd0
	IfysFe68ouYH/6aEH+aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2d9t-0000DA-G6; Fri, 14 Feb 2020 15:45:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2d9k-000081-V4
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 15:45:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CA4AC328;
 Fri, 14 Feb 2020 07:45:26 -0800 (PST)
Received: from localhost (e108754-lin.cambridge.arm.com [10.1.198.52])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6B5D83F68E;
 Fri, 14 Feb 2020 07:45:26 -0800 (PST)
Date: Fri, 14 Feb 2020 15:45:25 +0000
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH v3 7/7] clocksource/drivers/arm_arch_timer: validate
 arch_timer_rate
Message-ID: <20200214154525.GA21875@arm.com>
References: <20200211184542.29585-1-ionela.voinescu@arm.com>
 <20200211184542.29585-8-ionela.voinescu@arm.com>
 <87mu9mgg41.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87mu9mgg41.fsf@nanos.tec.linutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_074529_049120_F8C75E75 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, maz@kernel.org, suzuki.poulose@arm.com,
 peterz@infradead.org, catalin.marinas@arm.com, linux-pm@vger.kernel.org,
 linux-doc@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 mingo@redhat.com, viresh.kumar@linaro.org,
 linux-arm-kernel@lists.infradead.org, sudeep.holla@arm.com, will@kernel.org,
 valentin.schneider@arm.com, lukasz.luba@arm.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVGhvbWFzLAoKT24gRnJpZGF5IDE0IEZlYiAyMDIwIGF0IDAxOjM1OjU4ICgrMDEwMCksIFRo
b21hcyBHbGVpeG5lciB3cm90ZToKPiBJb25lbGEgVm9pbmVzY3UgPGlvbmVsYS52b2luZXNjdUBh
cm0uY29tPiB3cml0ZXM6Cj4gCj4gPiBGcm9tOiBWYWxlbnRpbiBTY2huZWlkZXIgPHZhbGVudGlu
LnNjaG5laWRlckBhcm0uY29tPgo+ID4KPiA+IFVzaW5nIGFuIGFyY2ggdGltZXIgd2l0aCBhIGZy
ZXF1ZW5jeSBvZiBsZXNzIHRoYW4gMU1IeiBjYW4gcmVzdWx0IGluIGFuCj4gPiBpbmNvcnJlY3Qg
ZnVuY3Rpb25hbGl0eSBvZiB0aGUgc3lzdGVtIHdoaWNoIGFzc3VtZXMgYSByZWFzb25hYmxlIHJh
dGUuCj4gPgo+ID4gT25lIGV4YW1wbGUgaXMgdGhlIHVzZSBvZiBhY3Rpdml0eSBtb25pdG9ycyBm
b3IgZnJlcXVlbmN5IGludmFyaWFuY2UKPiA+IHdoaWNoIHVzZXMgdGhlIHJhdGUgb2YgdGhlIGFy
Y2ggdGltZXIgYXMgdGhlIGtub3duIHJhdGUgb2YgdGhlIGNvbnN0YW50Cj4gPiBjeWNsZSBjb3Vu
dGVyIGluIGNvbXB1dGluZyBpdHMgcmF0aW8gY29tcGFyZWQgdG8gdGhlIG1heGltdW0gZnJlcXVl
bmN5Cj4gPiBvZiBhIENQVS4gRm9yIGFyY2ggdGltZXIgZnJlcXVlbmNpZXMgbGVzcyB0aGFuIDFN
SHogdGhpcyByYXRpbyBjb3VsZAo+ID4gZW5kIHVwIGJlaW5nIDAgd2hpY2ggaXMgYW4gaW52YWxp
ZCB2YWx1ZSBmb3IgaXRzIHVzZS4KPiA+Cj4gPiBUaGVyZWZvcmUsIHdhcm4gaWYgdGhlIGFyY2gg
dGltZXIgcmF0ZSBpcyBiZWxvdyAxTUh6IHdoaWNoIGNvbnRyYXZlbmVzCj4gPiB0aGUgcmVjb21t
ZW5kZWQgYXJjaGl0ZWN0dXJlIGludGVydmFsIG9mIDEgdG8gNTBNSHouCj4gPgo+ID4gU2lnbmVk
LW9mZi1ieTogSW9uZWxhIFZvaW5lc2N1IDxpb25lbGEudm9pbmVzY3VAYXJtLmNvbT4KPiAKPiBT
byB0aGlzIHBhdGNoIGlzIGZyb20gVmFsZW50aW4uIFdoZXJlIGlzIGhpcyBTaWduZWQtb2ZmLWJ5
Pwo+IAoKWWVzLCBzb3JyeSBhYm91dCB0aGlzLiBUaGlzIHdhcyBiYXNlZCBvbiBhIGRpZmYgdGhh
dCBWYWxlbnRpbiBwcm92aWRlZAppbiB2Mi4gSSdsbCBjaGFuZ2UgdGhlIGF1dGhvciBhcyBhZ3Jl
ZWQgYXQ6Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyMDAyMTIxMDMyNDkuR0ExOTA0
MUBhcm0uY29tLwoKPiA+ICAKPiA+ICtzdGF0aWMgaW50IHZhbGlkYXRlX3RpbWVyX3JhdGUodm9p
ZCkKPiA+ICt7Cj4gPiArCWlmICghYXJjaF90aW1lcl9yYXRlKQo+ID4gKwkJcmV0dXJuIC1FSU5W
QUw7Cj4gPiArCj4gPiArCS8qIEFyY2ggdGltZXIgZnJlcXVlbmN5IDwgMU1IeiBjYW4gY2F1c2Ug
dHJvdWJsZSAqLwo+ID4gKwlXQVJOX09OKGFyY2hfdGltZXJfcmF0ZSA8IDEwMDAwMDApOwo+IAo+
IFRoaXMgZG9lcyBub3QgbWFrZSBzZW5zZSB0byBtZS4gSWYgdGhlIHJhdGUgaXMgb3V0IG9mIGJv
dW5kcyB0aGVuIHdoeQo+IHdhcm4gYW4ganVzdCBjb250aW51ZSBpbnN0ZWFkIG9mIG1ha2luZyBp
dCBmYWlsPwo+IAoKQmVjYXVzZSBpdCdzIG5vdCBhIGhhcmQgcmVzdHJpY3Rpb24sIGl0J3MganVz
dCBhdHlwaWNhbCBmb3IgdGhlIHJhdGUgdG8KYmUgYmVsb3cgMU1oei4gVGhlIHNwZWMgb25seSBt
ZW50aW9ucyBhIHR5cGljYWwgcmFuZ2Ugb2YgMSB0byA1ME1IeiBhbmQKdGhlIHdhcm5pbmcgaXMg
b25seSBoZXJlIHRvIGZsYWcgYSBwb3RlbnRpYWxseSBwcm9ibGVtYXRpYyByYXRlLCBiZWxvdwp3
aGF0IGlzIGFzc3VtZWQgdHlwaWNhbCBpbiB0aGUgc3BlYy4KCkluIFsxXSwgd2hlcmUgSSdtIGFj
dHVhbGx5IHJlbHlpbmcgb24gYXJjaF90aW1lcl9yYXRlIGJlaW5nIGhpZ2hlciB0aGFuCnRoYW4g
MS9TQ0hFRF9DQVBBQ0lUWV9TQ0FMRcKyIG9mIHRoZSBtYXhpbXVtIGZyZXF1ZW5jeSwgSSBhbSBt
YWtpbmcgaXQKZmFpbCwgYXMsIGZvciB0aGF0IHNjZW5hcmlvLCBpdCBpcyBhIGhhcmQgcmVzdHJp
Y3Rpb24uCgoKKwkgKiBXZSB1c2UgYSBmYWN0b3Igb2YgMiAqIFNDSEVEX0NBUEFDSVRZX1NISUZU
IC0+IFNDSEVEX0NBUEFDSVRZX1NDQUxFwrIKKwkgKiBpbiBvcmRlciB0byBlbnN1cmUgYSBnb29k
IHJlc29sdXRpb24gZm9yIGFyY2hfbWF4X2ZyZXFfc2NhbGUgZm9yCisJICogdmVyeSBsb3cgYXJj
aCB0aW1lciBmcmVxdWVuY2llcyAodXAgdG8gdGhlIEtIeiByYW5nZSB3aGljaCBzaG91bGQgYmUK
KwkgKiB1bmxpa2VseSkuCisJICovCisJcmF0aW8gPSAodTY0KWFyY2hfdGltZXJfZ2V0X3JhdGUo
KSA8PCAoMiAqIFNDSEVEX0NBUEFDSVRZX1NISUZUKTsKKwlyYXRpbyA9IGRpdjY0X3U2NChyYXRp
bywgbWF4X2ZyZXFfaHopOworCWlmICghcmF0aW8pIHsKKwkJcHJfZXJyKCJTeXN0ZW0gdGltZXIg
ZnJlcXVlbmN5IHRvbyBsb3cuXG4iKTsKKwkJcmV0dXJuIC1FSU5WQUw7CisJfQorCgpbMV0gaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC84OTMzOTUwMS01ZWU0LWU4NzEtMzA3Ni1jOGIwMmM2
ZmJmNmVAYXJtLmNvbS8KClRoYW5rcywKSW9uZWxhLgoKPiBUaGFua3MsCj4gCj4gICAgICAgICB0
Z2x4CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
