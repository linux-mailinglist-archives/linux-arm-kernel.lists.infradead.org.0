Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D97511DA68A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 02:28:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q4nRoxVySzDiIvSVk/+cdyXmSxAE4p+dwi90sDXT1Us=; b=HSPHc0kR2KcL19
	G5/EcYprXl28Ghe1yPUOHIfpXsewWgk+zhRzq8+rM1GxMMu/lrUw28PChqAfj8V/PGHwGO4UtTNPp
	aCxMfx5QVBE3jrJYhrEccTGMEXxOO/e6kihu9RWj2PZXJEAklhdLrG3aJ8pUMz14j53rZgOABL5lc
	TqCzg+aG+G9EHGqZ+2qSad1OYBdq7+7I2gEL3mVveJmwO/S+3V/N7vspAe9LWwGotM3qg0PuT57K/
	DFGSKobq7rxIulhx7HLUCj4IrV2Q5F7zYfFCynQE9hgWzPxSs1YeJKERTbo425LUkK10geBznunUD
	uBH3YdLTvPdcg3UzS5SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbCbA-0007zw-R4; Wed, 20 May 2020 00:28:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbCb2-0007zH-MQ
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 00:28:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 52EC631B;
 Tue, 19 May 2020 17:28:30 -0700 (PDT)
Received: from [10.163.75.101] (unknown [10.163.75.101])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 833363F68F;
 Tue, 19 May 2020 17:28:27 -0700 (PDT)
Subject: Re: [PATCH V2] arm64/cpuinfo: Move HWCAP name arrays alongside their
 bit definitions
To: Will Deacon <will@kernel.org>
References: <1588858150-26823-1-git-send-email-anshuman.khandual@arm.com>
 <20200513150405.GS21779@arm.com>
 <0999fa28-3ee7-3f02-4def-a0c6013ec6dd@arm.com>
 <20200514073613.GB4280@willie-the-truck>
 <8ddd0ca5-07c9-3a99-2ec6-4a201725ebe8@arm.com>
 <20200518223506.GA5866@willie-the-truck>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <f3f3836c-42bb-9745-88ee-a6fe6f653cc5@arm.com>
Date: Wed, 20 May 2020 05:57:52 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200518223506.GA5866@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_172832_818939_BDA79F2F 
X-CRM114-Status: GOOD (  16.95  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwNS8xOS8yMDIwIDA0OjA1IEFNLCBXaWxsIERlYWNvbiB3cm90ZToKPiBPbiBGcmksIE1h
eSAxNSwgMjAyMCBhdCAwODo1ODowNUFNICswNTMwLCBBbnNodW1hbiBLaGFuZHVhbCB3cm90ZToK
Pj4gT24gMDUvMTQvMjAyMCAwMTowNiBQTSwgV2lsbCBEZWFjb24gd3JvdGU6Cj4+PiBXaHkgaXMg
aXQgYSBjaGFuZ2U/IFdlJ3ZlIG5ldmVyIHJlcG9ydGVkIGUuZy4gImphdmEiIG9uIGFuIGFybTY0
IGtlcm5lbCwgc28KPj4KPj4gV2UgYWxyZWFkeSBoYXZlICJqYXZhIiBkZWZpbmVkIGluIGV4aXN0
aW5nIGNvbXBhdF9od2NhcF9zdHJbXSBhcnJheSBldmVuCj4+IHRob3VnaCBpdCBtaWdodCBuZXZl
ciBnZXQgc2V0IGluIGNvbXBhdF9lbGZfaHdjYXAuIEFGQUlDUywgY29tcGF0X2VsZl9od2NhcAo+
PiB3aWxsIGhhdmUgdGhlIGZvbGxvd2luZyBjYXBhYmlsaXRpZXMgc2V0IChhdCB0aGUgbW9zdCku
Cj4+Cj4+IFZpYSBDT01QQVRfRUxGX0hXQ0FQX0RFRkFVTFQKPj4KPj4gMDEuICBDT01QQVRfSFdD
QVBfSEFMRgo+PiAwMi4gIENPTVBBVF9IV0NBUF9USFVNQgo+PiAwMy4gIENPTVBBVF9IV0NBUF9G
QVNUX01VTFQKPj4gMDQuICBDT01QQVRfSFdDQVBfRURTUAo+PiAwNS4gIENPTVBBVF9IV0NBUF9U
TFMKPj4gMDYuICBDT01QQVRfSFdDQVBfSURJVgo+PiAwNy4gIENPTVBBVF9IV0NBUF9MUEFFCj4+
Cj4+IFZpYSBzZXR1cF9lbGZfaHdjYXBzKGNvbXBhdF9lbGZfaHdjYXBzKSA8LS0gc2V0dXBfY3B1
X2ZlYXR1cmVzKCkKPj4KPj4gOC4gIENPTVBBVF9IV0NBUF9ORU9OCj4+IDkuICBDT01QQVRfSFdD
QVBfVkZQdjQKPj4gMTAuIENPTVBBVF9IV0NBUF9WRlAKPj4gMTEuIENPTVBBVF9IV0NBUF9WRlB2
Mwo+Pgo+PiBWaWEgYXJjaF90aW1lcl9zZXRfZXZ0c3RybV9mZWF0dXJlKCkKPj4KPj4gMTIuIENP
TVBBVF9IV0NBUF9FVlRTVFJNCj4+Cj4+IFRoZSBjb2RlIGV4aXN0cyBmb3IgImphdmEiIHN0cmlu
ZyB0byBiZSBkaXNwbGF5ZWQgd2l0aCAvcHJvYy9jcHVpbmZvIGJ1dCBpdAo+PiBtYXkgbmV2ZXIg
Z2V0IHRyaWdnZXJlZCBhcyBjb21wYXRfZWxmX2h3Y2FwIHdpbGwgbmV2ZXIgaGF2ZSBKQVZBIGNh
cGFiaWxpdHkKPj4gdW5sZXNzIHRoZXJlIGlzIGEgYnVnIGFzIHlvdSBoYWQgcmlnaHRseSBtZW50
aW9uZWQuCj4gCj4gRmFpciBlbm91Z2gsIGJ1dCBhcHBseWluZyB0aGlzIHBhdGNoIGNhdXNlcyBh
ICp0b25uZSogb2Ygd2FybmluZ3MgZnJvbQo+IGFpYWlhaToKPiAKPiArSW4gZmlsZSBpbmNsdWRl
ZCBmcm9tIGFyY2gvYXJtNjQvaW5jbHVkZS9hc20vY3B1ZmVhdHVyZS5oOjExLAo+ICsgICAgICAg
ICAgICAgICAgIGZyb20gYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9wdHJhY2UuaDoxMSwKPiArICAg
ICAgICAgICAgICAgICBmcm9tIGFyY2gvYXJtNjQvaW5jbHVkZS9hc20vaXJxZmxhZ3MuaDoxMCwK
PiArICAgICAgICAgICAgICAgICBmcm9tIGluY2x1ZGUvbGludXgvaXJxZmxhZ3MuaDoxNiwKPiAr
ICAgICAgICAgICAgICAgICBmcm9tIGluY2x1ZGUvbGludXgvc3BpbmxvY2suaDo1NCwKPiArICAg
ICAgICAgICAgICAgICBmcm9tIGluY2x1ZGUvbGludXgvc2VxbG9jay5oOjM2LAo+ICsgICAgICAg
ICAgICAgICAgIGZyb20gaW5jbHVkZS9saW51eC90aW1lLmg6NiwKPiArICAgICAgICAgICAgICAg
ICBmcm9tIGFyY2gvYXJtNjQvaW5jbHVkZS9hc20vc3RhdC5oOjEyLAo+ICsgICAgICAgICAgICAg
ICAgIGZyb20gaW5jbHVkZS9saW51eC9zdGF0Lmg6NiwKPiArICAgICAgICAgICAgICAgICBmcm9t
IGluY2x1ZGUvbGludXgvbW9kdWxlLmg6MTMsCj4gKyAgICAgICAgICAgICAgICAgZnJvbSBkcml2
ZXJzL21lZGlhL3JjL2tleW1hcHMvcmMtaW1vbi1tY2UubW9kLmM6MToKPiArYXJjaC9hcm02NC9p
bmNsdWRlL2FzbS9od2NhcC5oOjE4OToyNjogd2FybmluZzog4oCYY29tcGF0X2h3Y2FwMl9zdHLi
gJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KPiArICAx
ODkgfCBzdGF0aWMgY29uc3QgY2hhciAqY29uc3QgY29tcGF0X2h3Y2FwMl9zdHJbXSA9IHsKPiAr
ICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn4KCk5hdGl2
ZSBkZWZhdWx0IGJ1aWxkIChkZWZjb25maWcpIG9uIGFybTY0IGRvZXMgbm90IHRocm93IHRoaXMg
d2FybmluZy4KSSBndWVzcyB0aGlzIGNhbWUgdXAgd2l0aCAnbWFrZSBXPW4nIG9yIHNvbWV0aGlu
Zy4gQW55d2F5cyBpZiB0aGlzIGlzCmluZGVlZCBhbiBpc3N1ZSwgd2Ugd2lsbCBoYXZlIHRvIGFk
ZCBpbiBoZWxwZXJzIGZvciBlYWNoIEhXQ0FQIGFycmF5cwp3aGljaCB3aWxsIGZldGNoIGEgZmVh
dHVyZSBzdHJpbmcgb24gaW5kZXggdmFsdWUgdG8gYmUgdXNlZCBpbiBjX3Nob3cKKGFyY2gvYXJt
NjQva2VybmVsL2NwdWluZm8uYykuIEkgd2FudGVkIHRvIGF2b2lkIHRoaXMgdG8gcmVkdWNlIGNv
ZGUuIAoKPiAKPiBzbyBJJ20gZHJvcHBpbmcgdGhpcyBmb3Igbm93LgoKU3VyZSwgd2lsbCByZXNw
aW4gdGhpcyBsYXRlciBwcm9iYWJseSBhZnRlciA1LjgtcmMxLgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
