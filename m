Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74EC814BEF1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 18:52:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cThIGFEAhbeGtNLSZYlxV+nAfeuQwIXc2Ve8s7HAUsQ=; b=QNM1F2+4SnC5m0
	Rh7+Z4e2AFvyvf5+rHsItNDG5nW5p4oDWTIz8Q+KO6oEmbLYZa8oZAsyppa+dO+5Joyd22UYnoK+b
	sFqMKcnURBSQ9M1Vs+vmJGX6Ws1WzJsX9ZfuOCHmRUT66B9Lh7oy6llRGcUfiHeeJDxCzOqzqxT+S
	lmyh3ycogJFAHv+DuMo43Et9oGCJzy9/FR+WxM5OB8S/c04K9VwRS05z+Zh9kGy0mnr8NtOn7HLca
	/qID+SbsutsfM9dR3S2t71WpWCYRKk/BVbe1QfbGgrc/WOSWSATgkx3TQB7+5u1iNr+lvY8BwoEZX
	zemXy1K8ocpObOYLWf2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwV2R-0003nZ-SV; Tue, 28 Jan 2020 17:52:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwV2I-0003n2-9f
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 17:52:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C69B1FEC;
 Tue, 28 Jan 2020 09:52:25 -0800 (PST)
Received: from localhost (unknown [10.1.198.81])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 683E73F52E;
 Tue, 28 Jan 2020 09:52:25 -0800 (PST)
Date: Tue, 28 Jan 2020 17:52:23 +0000
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: Valentin Schneider <valentin.schneider@arm.com>
Subject: Re: [PATCH v2 3/6] arm64/kvm: disable access to AMU registers from
 kvm guests
Message-ID: <20200128175223.GA31241@arm.com>
References: <20191218182607.21607-1-ionela.voinescu@arm.com>
 <20191218182607.21607-4-ionela.voinescu@arm.com>
 <bc3f582c-9aed-8052-d0cb-b39c76c8ce73@arm.com>
 <0690745f-fa38-f623-30a5-42d0eadfb668@arm.com>
 <5de3d3c7-2d78-9d18-f3ca-7cb6cf9ce36c@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5de3d3c7-2d78-9d18-f3ca-7cb6cf9ce36c@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_095226_380397_094B8654 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, maz@kernel.org,
 Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>, peterz@infradead.org,
 catalin.marinas@arm.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, ggherdovich@suse.cz,
 Julien Thierry <julien.thierry.kdev@gmail.com>, sudeep.holla@arm.com,
 James Morse <james.morse@arm.com>, will@kernel.org, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlc2RheSAyOCBKYW4gMjAyMCBhdCAxNzozNzowNCAoKzAwMDApLCBWYWxlbnRpbiBTY2hu
ZWlkZXIgd3JvdGU6Cj4gSGkgU3V6dWtpLAo+IAo+IE9uIDI4LzAxLzIwMjAgMTc6MjYsIFN1enVr
aSBLdXJ1cHBhc3NlcnkgUG91bG9zZSB3cm90ZToKPiA+PiBTbywgcHJvdmlkaW5nIEkgZGlkbid0
IGdldCBjb21wbGV0ZWx5IGxvc3Qgb24gdGhlIHdheSwgSSBoYXZlIHRvIGFzazoKPiA+PiB3aHkg
ZG8gd2UgdXNlIENQQUNSX0VMMSBoZXJlPyBDb3VsZG4ndCB3ZSB1c2UgQ1BUUl9FTDIgZGlyZWN0
bHk/Cj4gPiAKPiA+IFBhcnQgb2YgdGhlIHJlYXNvbiBpcywgQ1BUUl9FTDIgaGFzIGRpZmZlcmVu
dCBsYXlvdXQgZGVwZW5kaW5nIG9uCj4gPiB3aGV0aGVyIEhDUl9FTDIuRTJIID09IDEuIGUuZywg
Q1BUUl9FTDIuVFRBIG1vdmUgZnJvbSBCaXRbMjhdIHRvIEJpdFsyMF0uCj4gPiAKPiA+IFNvLCB0
byBrZWVwIGl0IHNpbXBsZSwgQ1BUUl9FTDIgaXMgdXNlZCBmb3Igbm9uLVZIRSBjb2RlIHdpdGgg
dGhlIHNoaWZ0cwo+ID4gYXMgZGVmaW5lZCBieSB0aGUgIkNQVFJfRUwyIHdoZW4gRTJIPTAiCj4g
PiAKPiA+IGlmIEUySCA9PSAxLCBDUFRSX0VMMiB0YWtlcyB0aGUgbGF5b3V0IG9mIENQQUNSX0VM
MSBhbmQgIm92ZXJyaWRlcyIgc29tZQo+ID4gb2YgdGhlIFJFUzAgYml0cyBpbiBDUEFDUl9FTDEg
d2l0aCBFTDIgY29udHJvbHMgKGUuZzogVEFNLCBUQ1BBQykuCj4gPiBUaHVzIHdlIHVzZSBDUEFD
Ul9FTDEgdG8ga2VlcCB0aGUgInNoaWZ0cyIgbm9uLWNvbmZsaWN0aW5nIChlLmcsIFpFTikKPiA+
IGFuZCBpcyB0aGUgcmlnaHQgdGhpbmcgdG8gZG8uCj4gPiAKPiA+IEl0IGlzIGEgYml0IGNvbmZ1
c2luZywgYnV0IHdlIGFyZSBkb2luZyB0aGUgcmlnaHQgdGhpbmcuIE1heSBiZSB3ZSBjb3VsZCBp
bXByb3ZlIHRoZSBjb21tZW50IGxpa2UgOgo+ID4gCj4gPiDCoMKgwqDCoC8qCj4gPiDCoMKgwqDC
oCAqIFdpdGggVkhFIChIQ1IuRTJIID09IDEpLCBDUFRSX0VMMiBoYXMgdGhlIHNhbWUgbGF5b3V0
IGFzCj4gPiDCoMKgwqDCoCAqIENQQUNSX0VMMSwgZXhjZXB0IGZvciBzb21lIG1pc3NpbmcgY29u
dHJvbHMsIHN1Y2ggYXMgVEFNLgo+ID4gwqDCoMKgwqAgKiBBbmQgYWNjZXNzZXMgdG8gQ1BBQ1Jf
RUwxIGFyZSByb3V0ZWQgdG8gQ1BUUl9FTDIuCj4gPiDCoMKgwqDCoCAqIEFsc28gQ1BUUl9FTDIu
VEFNIGhhcyB0aGUgc2FtZSBwb3NpdGlvbiB3aXRoIG9yIHdpdGhvdXQKPiA+IMKgwqDCoMKgICog
SENSLkUySCA9PSAxLiBUaGVyZWZvcmUsIHVzZSBDUFRSX0VMMi5UQU0gaGVyZSBmb3IKPiA+IMKg
wqDCoMKgICogdHJhcHBpbmcgdGhlIEFNVSBhY2Nlc3Nlcy4KPiA+IMKgwqDCoMKgICovCj4gPgoK
VGhhbmtzIFN1enVraSwgdGhpcyBtYWtlcyBzZW5zZSEKCklvbmVsYS4KCj4gCj4gVGhhbmtzIGZv
ciBjbGVhcmluZyB0aGlzIHVwISBJIGFsc28gYm90aGVyZWQgTWFyY1ogaW4gdGhlIG1lYW50aW1l
IHdobwo+IGFsc28gY2xlYXJlZCB1cCBzb21lIG9mIG15IGNvbmZ1c2lvbiAoaW5jbHVkaW5nIHdo
aWNoIGxheW91dCB0YWtlcyBlZmZlY3QpLgo+IAo+IFNvIHllYWgsIEkgdGhpbmsgd2hhdCB3ZSB3
YW50IGhlcmUgaXMgdG8ga2VlcCB1c2luZyBDUFRSX0VMMl9UQU0gYnV0IGhhdmUgYQo+IGNvbW1l
bnQgdGhhdCBleHBsYWlucyB3aHkgKHdoaWNoIHlvdSBqdXN0IHByb3ZpZGVkISkuCj4gCj4gPiBT
dXp1a2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
