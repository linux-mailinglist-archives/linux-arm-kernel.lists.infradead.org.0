Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80406FC161
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 09:19:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eb+9M7FbI4rO10p/7HoOC+Q2nXBF/VVqkY27zRmNBkM=; b=ENXhN7Aa+2Fx0V
	Cjd+vVhwk7/wRQGz2dMkyfkkuyY+nSFv9WgTf+KICOn488dTbIDPXCsXX8MqcRCKGSuR7/iAPc/8G
	4MXgpyVP2m2bqJpw3oehVQrfkrwukCXQrKMm4wUb7ChwM7ss30Dxct9LcX0wbixxwXxu2WMATQzUh
	sGN1LrefpjgFPElqqtkE5LC63GIVSOO68c58TzXd/UCtPzK43cLOllVQyaIkBxuA3hUIW+83jrUEI
	ICir1OCy+Gu0VPuAjXtynZa8/Qnm3F15r+eIKJmGwoC70/CqGvFss32BmwFHcJL+nDDcUqFDsmz9x
	2InC7504srQ/lL1qW9Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVALN-0000tL-ME; Thu, 14 Nov 2019 08:19:09 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVALD-0000t0-Pq
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 08:19:01 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1iVAL8-0007Iv-LK; Thu, 14 Nov 2019 09:18:54 +0100
Date: Thu, 14 Nov 2019 08:18:53 +0000
From: Marc Zyngier <maz@kernel.org>
To: Rong Chen <rong.a.chen@intel.com>
Subject: Re: [kbuild-all] Re: [arm-platforms:kvm-arm64/vcpu-xarray 42/49]
 arch/powerpc/kvm/powerpc.c:792:29: error: 'kvmppc_decrementer_wakeup'
 defined but not used
Message-ID: <20191114081853.39e64fc5@why>
In-Reply-To: <5f2c6f45-1607-c77a-ab08-9723701e9901@intel.com>
References: <201911140103.uQVAr0CN%lkp@intel.com>
 <c11fdfaa843e2d0131680c864d061950@www.loen.fr>
 <5f2c6f45-1607-c77a-ab08-9723701e9901@intel.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: rong.a.chen@intel.com, lkp@intel.com,
 sean.j.christopherson@intel.com, kbuild-all@lists.01.org,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_001859_990285_79526264 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: linux-arm-kernel@lists.infradead.org, kbuild-all@lists.01.org,
 kbuild test robot <lkp@intel.com>,
 Sean Christopherson <sean.j.christopherson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAxNCBOb3YgMjAxOSAwODo1ODoxMCArMDgwMApSb25nIENoZW4gPHJvbmcuYS5jaGVu
QGludGVsLmNvbT4gd3JvdGU6Cgo+IE9uIDExLzE0LzE5IDI6MDIgQU0sIE1hcmMgWnluZ2llciB3
cm90ZToKPiA+IE9uIDIwMTktMTEtMTMgMTc6NTEsIGtidWlsZCB0ZXN0IHJvYm90IHdyb3RlOiAg
Cj4gPj4gdHJlZToKPiA+PiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2Vy
bmVsL2dpdC9tYXovYXJtLXBsYXRmb3Jtcy5naXQKPiA+PiBrdm0tYXJtNjQvdmNwdS14YXJyYXkK
PiA+PiBoZWFkOsKgwqAgMTQ4NzQ4MDk5MzYzMzI3ZDhjYjU2YWFmZDM4NmI3MGFjOGM2ODgzNwo+
ID4+IGNvbW1pdDogNjRlNjk5MWMyMjM0YzNiYTFlMzZmOTkxMzAyYjFiYmUxYmI3OTFmMSBbNDIv
NDldIEtWTTogUFBDOgo+ID4+IE1vdmUgYWxsIHZjcHUgaW5pdCBjb2RlIGludG8ga3ZtX2FyY2hf
dmNwdV9jcmVhdGUoKQo+ID4+IGNvbmZpZzogcG93ZXJwYy1kZWZjb25maWcgKGF0dGFjaGVkIGFz
IC5jb25maWcpCj4gPj4gY29tcGlsZXI6IHBvd2VycGM2NC1saW51eC1nY2MgKEdDQykgNy40LjAK
PiA+PiByZXByb2R1Y2U6Cj4gPj4gwqDCoMKgwqDCoMKgwqAgd2dldAo+ID4+Cj4gPj4gaHR0cHM6
Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2ludGVsL2xrcC10ZXN0cy9tYXN0ZXIvc2Jpbi9t
YWtlLmNyb3NzCj4gPj4gLU8gfi9iaW4vbWFrZS5jcm9zcwo+ID4+IMKgwqDCoMKgwqDCoMKgIGNo
bW9kICt4IH4vYmluL21ha2UuY3Jvc3MKPiA+PiDCoMKgwqDCoMKgwqDCoCBnaXQgY2hlY2tvdXQg
NjRlNjk5MWMyMjM0YzNiYTFlMzZmOTkxMzAyYjFiYmUxYmI3OTFmMQo+ID4+IMKgwqDCoMKgwqDC
oMKgICMgc2F2ZSB0aGUgYXR0YWNoZWQgLmNvbmZpZyB0byBsaW51eCBidWlsZCB0cmVlCj4gPj4g
wqDCoMKgwqDCoMKgwqAgR0NDX1ZFUlNJT049Ny40LjAgbWFrZS5jcm9zcyBBUkNIPXBvd2VycGMK
PiA+Pgo+ID4+IElmIHlvdSBmaXggdGhlIGlzc3VlLCBraW5kbHkgYWRkIGZvbGxvd2luZyB0YWcK
PiA+PiBSZXBvcnRlZC1ieToga2J1aWxkIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+ICAKPiA+
Cj4gPiBXZWxsLCB0aGlzIGJyYW5jaCB3YXMgbm90IHN1cHBvc2VkIHRvIGJlIHRlc3RlZCBhdCBh
bGwuLi4KPiA+IEkgZ3Vlc3MgaXQgaXMgdG9vIGxhdGUgdG8gdGFrZSBpdCBkb3duIDotKAo+ID4K
PiA+IMKgwqDCoMKgwqDCoMKgIE0uICAKPiAKPiBIaSBNYXJjLAo+IAo+IFRoYW5rcyBmb3IgdGhl
IGV4cGxhbmF0aW9uLCB3ZSdsbCBibGFja2xpc3QgdGhpcyBicmFuY2ggdG8gYXZvaWRpbmcgdGVz
dCBpdCBhZ2Fpbi4KClRoYW5rcyBSb25nLgoKRm9yIG15IG93biBlZHVjYXRpb24sIGlzIHRoZXJl
IGFuIG9mZmljaWFsIHdheSB0byBwcmV2ZW50IHRoZSBrYnVpbGQKcm9ib3QgZnJvbSB0ZXN0aW5n
IGNlcnRhaW4gYnJhbmNoZXM/IE9yIGZhaWxpbmcgdGhhdCwgYSB3YXkgdG8gdGVsbCBpdAp0byBv
bmx5IHNlbmQgcmVwb3J0cyB0byBhIGNlcnRhaW4gZW1haWwgYWRkcmVzcyBpbnN0ZWFkIG9mIHNw
YW1taW5nCm1haWxpbmcgbGlzdHMgZm9yIGNvZGUgdGhhdCBpcyBleHBlY3RlZCB0byBiZSBwcm9i
bGVtYXRpYz8KCkNoZWVycywKCglNLgotLSAKSmF6eiBpcyBub3QgZGVhZC4gSXQganVzdCBzbWVs
bHMgZnVubnkuLi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
