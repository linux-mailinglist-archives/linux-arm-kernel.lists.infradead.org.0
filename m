Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C7618CB84
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 11:23:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k7rHuht/InwzPwgumeqbKhrLOic1AxwtpZIXeklC8Zs=; b=JWOoSyYeGZcbb2jWEqsotXgeP
	Nofd9Qpdyrgqc8Mps+7axvzsaREAjjfK0c3cb9FDk62LW7tvl/pcOJS12IkfH8BJIsAXDrxpcI6xu
	w5SVo+WVMgf+h0Sf3tFDl79AQ0dFcW4ut0IHqsobP4hbbXN5z0bTSZ6WDkzc3G7U+OFaoIHDMOdZo
	SNUI3R6PCVsiVZNWw6A02a5W8zGZBEGXpHED2OQpEyabv5CNH+upfnLcGDsJl8jmjdU7Tt5Rqo3fS
	AIVHtborGD4BGWgCBQHQNGwa7F1cYeSzSsxUbQkn6iaDydy8ZIw7BjPFvD79zns6yMYxpBYYvo0VR
	HQ0MIb7nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFEoC-0005uP-9M; Fri, 20 Mar 2020 10:23:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFEo4-0005ti-85
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 10:23:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BF43131B;
 Fri, 20 Mar 2020 03:23:09 -0700 (PDT)
Received: from [10.37.12.158] (unknown [10.37.12.158])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0B3393F305;
 Fri, 20 Mar 2020 03:23:07 -0700 (PDT)
Subject: Re: [PATCH 2/2] perf: arm_dsu: Support DSU ACPI devices.
To: tuanphan@amperemail.onmicrosoft.com
References: <1584491323-31436-1-git-send-email-tuanphan@os.amperecomputing.com>
 <a571cf7e-c2a5-e8f8-e782-8087249143b0@arm.com>
 <64AE7BB3-F2A9-4A62-82FD-FFF2D6B7101C@amperemail.onmicrosoft.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <ba33d1fa-1afb-941b-0961-dc2394af03c6@arm.com>
Date: Fri, 20 Mar 2020 10:27:51 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <64AE7BB3-F2A9-4A62-82FD-FFF2D6B7101C@amperemail.onmicrosoft.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_032312_333568_4FD50C90 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, tuanphan@os.amperecomputing.com,
 linux-kernel@vger.kernel.org, sudeep.holla@arm.com,
 patches@amperecomputing.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVHVhbgoKT24gMDMvMTkvMjAyMCAxMDo0OSBQTSwgVHVhbiBQaGFuIHdyb3RlOgo+IEhpIFN1
enVraSwKPiAKPj4gT24gTWFyIDE4LCAyMDIwLCBhdCA1OjQ1IFBNLCBTdXp1a2kgSyBQb3Vsb3Nl
IDxzdXp1a2kucG91bG9zZUBhcm0uY29tPiB3cm90ZToKPj4KPj4gSGVsbG8sCj4+Cj4+Cj4+IFBs
ZWFzZSBmaW5kIG15IGNvbW1lbnRzIGJlbG93Lgo+Pgo+PiBPbiAwMy8xOC8yMDIwIDEyOjI4IEFN
LCBUdWFuIFBoYW4gd3JvdGU6Cj4+PiBBZGQgc3VwcG9ydCBmb3IgcHJvYmluZyBkZXZpY2UgZnJv
bSBBQ1BJIG5vZGUuCj4+PiBFYWNoIERTVSBBQ1BJIG5vZGUgZGVmaW5lcyAiY3B1cyIgcGFja2Fn
ZSB3aGljaAo+Pj4gZWFjaCBlbGVtZW50IGlzIHRoZSBNUElEUiBvZiBhc3NvY2lhdGVkIGNwdS4K
Pj4+IFNpZ25lZC1vZmYtYnk6IFR1YW4gUGhhbiA8dHVhbnBoYW5Ab3MuYW1wZXJlY29tcHV0aW5n
LmNvbT4KCi4uLgoKPj4+ICsjZWxzZSAvKiBDT05GSUdfQUNQSSAqLwo+Pj4gKwlpbnQgaSwgY3B1
LCByZXQ7Cj4+PiArCWNvbnN0IHVuaW9uIGFjcGlfb2JqZWN0ICpvYmo7Cj4+PiArCXN0cnVjdCBh
Y3BpX2RldmljZSAqYWRldiA9IEFDUElfQ09NUEFOSU9OKCZwZGV2LT5kZXYpOwo+Pj4gKwlzdHJ1
Y3QgZHN1X3BtdSAqZHN1X3BtdSA9Cj4+PiArCQkoc3RydWN0IGRzdV9wbXUgKikgcGxhdGZvcm1f
Z2V0X2RydmRhdGEocGRldik7Cj4+PiArCj4+Cj4+PiArCXJldCA9IGFjcGlfZGV2X2dldF9wcm9w
ZXJ0eShhZGV2LCAiY3B1cyIsIEFDUElfVFlQRV9BTlksICZvYmopOwo+Pgo+PiBJcyB0aGUgYmlu
ZGluZyBkb2N1bWVudGVkIHNvbWV3aGVyZSA/Cj4+Cj4+Cj4+IG5pdDogQWxzbywgd2h5IG5vdCA6
Cj4+IAlyZXQgPSBhY3BpX2Rldl9nZXRfcHJvcGVydChhZGV2LCAiY3B1cyIsIEFDUElfVFlQRV9Q
QUNLQUdFLCAmb2JqKTsKPj4gCWlmIChyZXQgPCAwKQo+PiAJCXJldHVybiByZXQ7Cj4+ID8KPiA9
PiBJIGNvdWxkbuKAmXQgZmluZCB0aGUgZGV2aWNlIHRyZWUgYmluZGluZyBkb2N1bWVudCBvZiBE
U1UgYW55d2hlcmUuIElzIEl0IGVub3VnaAoKVGhlIERUIGJpbmRpbmdzIGFyZSBoZXJlIDoKCkRv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vYXJtLWRzdS1wbXUudHh0Cgo+IHRv
IHB1dCBhIGNvbW1lbnQgZGVzY3JpYmluZyB0aGUgYWNwaSBiaW5kaW5nIGluIHRoZSBjb2RlIG9y
IG5lZWQgc29tZXdoZXJlIGVsc2U/CgpUaGUgY29uY2VybiBoZXJlIGlzIHRoYXQgd2UgYXJlIHNp
bXBseSB0cnlpbmcgdG8gcmVwbGljYXRlIHRoZSBEVApiaW5kaW5nIGhlcmUsIGVzcGVjaWFsbHkg
cmVwbGFjaW5nIHRoZSBDUFUgcGhhbmRsZXMgd2l0aCBNUElEUnMuCkkgYW0gbm90IGFuIGV4cGVy
dCBpbiB0aGUgQUNQSSBiaW5kaW5ncywgYnV0IEkgcHJlZmVyIEFDUEkKcGhhbmRsZSByZWZlcmVu
Y2UgdG8gdGhlIENQVXMgKHdoaWNoIGlzIG11Y2ggc2ltcGxlcikgdG8KTVBJRFJzICh3aGljaCBp
cyBub3QgdGhhdCBpbnR1aXRpdmUpLiBBbmQgdGhpcyBpcyB0aGUgc2FtZSBtZXNzYWdlCnRoYXQg
SSBnb3QgZnJvbSBvdXIgQUNQSSBmb2xrcy4KCklycmVzcGVjdGl2ZSBvZiB3aGF0IHdlIGVuZCB1
cCB3aXRoLCB0aGlzIG11c3QgYmUgcGFydCBvZiB0aGUgIkFDUEkgCmJpbmRpbmdzIiBkb2N1bWVu
dCBoZXJlIDoKCkRFTjAwOTMgLSBHZW5lcmljIEFDUEkgZm9yIEFybSBDb21wb25lbnRzIHgueSBQ
bGF0Zm9ybSBEZXNpZ24gRG9jdW1lbnQKClNvIHRoYXQgZXZlcnlib2R5IHVzZXMgdGhlIHNhbWUg
YmluZGluZ3MgaXJyZXNwZWN0aXZlIG9mIHRoZSBPUy4KWW91IGRvbid0IG5lZWQgdG8gZG9jdW1l
bnQgdGhlIGJpbmRpbmdzIGhlcmUgd2l0aCB0aGUgTGludXgga2VybmVsIGNvZGUuCgoKS2luZCBy
ZWdhcmRzClN1enVraQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
