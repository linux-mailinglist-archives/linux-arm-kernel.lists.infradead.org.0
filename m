Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 944FA1C6E32
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 12:18:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AOcUgJqSCjXkA17/692Mdaz9tWlCITOozWiECFd29PU=; b=SNwrkqtxl60QRK
	M7+8G7DkYFKVMH6tcYQbV2tAuZgYDcP75bUkHr051CICFrJ8g9kh4q8l4weUmkoPf91NQpkG1MGZ4
	MXEP9AFIMXJ1TTkCaHhOYTh0vd2iRVTriKuBvPRvEH5w1/HV7QHaBXba32qIwyLtY5HiZWnixEOAB
	Yrpak9+2Cn48nmeuMj+6SNTaaE8Np3NzsO5c89RbJK5/9h7ou+cvX9TSA1kUJAn0Bpq0xUKdzIdVH
	9fI9ytKfWEa1cvBOws/FlT70uvIs7D4XW6ePOaq0GX3JAv5DDreZuxXcfIrTeUYzsSHSMzFGEjPOA
	B0pdb5/XShZXt7TEV2SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWH8I-00084h-6t; Wed, 06 May 2020 10:18:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWH89-000845-BX
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 10:18:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 72ED630E;
 Wed,  6 May 2020 03:18:20 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D58433F71F;
 Wed,  6 May 2020 03:18:19 -0700 (PDT)
Date: Wed, 6 May 2020 11:18:13 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: hugetlb: avoid potential NULL dereference
Message-ID: <20200506101807.GB2878@gaia>
References: <20200505125930.26901-1-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505125930.26901-1-mark.rutland@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_031821_436402_701CA76A 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMDUsIDIwMjAgYXQgMDE6NTk6MzBQTSArMDEwMCwgTWFyayBSdXRsYW5kIHdy
b3RlOgo+IFRoZSBzdGF0aWMgYW5hbHl6ZXIgaW4gR0NDIDEwIHNwb3R0ZWQgdGhhdCBpbiBodWdl
X3B0ZV9hbGxvYygpIHdlIG1heQo+IHBhc3MgYSBOVUxMIHBtZHAgaW50byBwdGVfYWxsb2NfbWFw
KCkgd2hlbiBwbWRfYWxsb2MoKSByZXR1cm5zIE5VTEw6Cj4gCj4gfCAgIENDICAgICAgYXJjaC9h
cm02NC9tbS9wYWdlYXR0ci5vCj4gfCAgIENDICAgICAgYXJjaC9hcm02NC9tbS9odWdldGxicGFn
ZS5vCj4gfCAgICAgICAgICAgICAgICAgIGZyb20gYXJjaC9hcm02NC9tbS9odWdldGxicGFnZS5j
OjEwOgo+IHwgYXJjaC9hcm02NC9tbS9odWdldGxicGFnZS5jOiBJbiBmdW5jdGlvbiDigJhodWdl
X3B0ZV9hbGxvY+KAmToKPiB8IC4vYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9wZ3RhYmxlLXR5cGVz
Lmg6Mjg6MjQ6IHdhcm5pbmc6IGRlcmVmZXJlbmNlIG9mIE5VTEwg4oCYcG1kcOKAmSBbQ1dFLTY5
MF0gWy1XYW5hbHl6ZXItbnVsbC1kZXJlZmVyZW5jZV0KPiB8IC4vYXJjaC9hcm02NC9pbmNsdWRl
L2FzbS9wZ3RhYmxlLmg6NDM2OjI2OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYcG1k
X3ZhbOKAmQo+IHwgYXJjaC9hcm02NC9tbS9odWdldGxicGFnZS5jOjI0MjoxMDogbm90ZTogaW4g
ZXhwYW5zaW9uIG9mIG1hY3JvIOKAmHB0ZV9hbGxvY19tYXDigJkKPiB8ICAgICB8YXJjaC9hcm02
NC9tbS9odWdldGxicGFnZS5jOjIzMjoxMDoKPiB8ICAgICB8Li9hcmNoL2FybTY0L2luY2x1ZGUv
YXNtL3BndGFibGUtdHlwZXMuaDoyODoyNDoKPiB8IC4vYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9w
Z3RhYmxlLmg6NDM2OjI2OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYcG1kX3ZhbOKA
mQo+IHwgYXJjaC9hcm02NC9tbS9odWdldGxicGFnZS5jOjI0MjoxMDogbm90ZTogaW4gZXhwYW5z
aW9uIG9mIG1hY3JvIOKAmHB0ZV9hbGxvY19tYXDigJkKPiAKPiBUaGlzIGNhbiBvbmx5IG9jY3Vy
IHdoZW4gdGhlIGtlcm5lbCBjYW5ub3QgYWxsb2NhdGUgYSBwYWdlLCBhbmQgc28gaXMKPiB1bmxp
a2VseSB0byBoYXBwZW4gaW4gcHJhY3RpY2UgYmVmb3JlIG90aGVyIHN5c3RlbXMgc3RhcnQgZmFp
bGluZy4KPiAKPiBXZSBjYW4gYXZvaWQgdGhpcyBieSBiYWlsaW5nIG91dCBpZiBwbWRfYWxsb2Mo
KSBmYWlscywgYXMgd2UgZG8gZWFybGllcgo+IGluIHRoZSBmdW5jdGlvbiBpZiBwdWRfYWxsb2Mo
KSBmYWlscy4KPiAKPiBGaXhlczogNjZiMzkyM2ExYTBmNzdhNSAoImFybTY0OiBodWdldGxiOiBh
ZGQgc3VwcG9ydCBmb3IgUFRFIGNvbnRpZ3VvdXMgYml0KSIKPiBTaWduZWQtb2ZmLWJ5OiBNYXJr
IFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBhcm0uY29tPgo+IFJlcG9ydGVkLWJ5OiBLeXJpbGwgVGth
Y2hvdiA8a3lyeWxvLnRrYWNob3ZAYXJtLmNvbT4KPiBDYzogQ2F0YWxpbiBNYXJpbmFzIDxjYXRh
bGluLm1hcmluYXNAYXJtLmNvbT4KPiBDYzogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4K
ClF1ZXVlZCBmb3IgNS43LXJjNS4gVGhhbmtzLgoKLS0gCkNhdGFsaW4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
