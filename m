Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD691DFC2D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 03:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QqC1i6bJ7Ug0sjVLjoQXat5F4J+gAgGb537Ezy/+rrE=; b=M8PUCnmyZfxcLL
	95CqL+slctiA68x/XcHb2XG90AI3FD5xy7Nkz3AFSM6hvbLE4c902hKqk7hr3SgrpnLwG7P8Ap6np
	FFiJ7TEnPy4zaZV0UUl9bnDktNXHOaLsJZQLpe11J/jRvRNER2qvdaMMJQxMUOSCPCruF5sT/WXsc
	gxVPCAy4JSx/xdQJ/4fXJeEpCmlFiUFlWi8RZ6KkqLFQmrPTyuLbDhJUQqe0S3/MzKJ5XLOuH5LFW
	Jl9pOG/4fHGkTOVXsK0jnMFz9AwDnd/Reikv7nM+1A1WKL0kE2Os7Hn/7mJ91f/2wZ1GxKzZoPnKP
	UFquyW/UJweJBh+XccDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcf90-00013b-MM; Sun, 24 May 2020 01:09:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcf8s-00012w-Dy
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 01:09:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1E38E30E;
 Sat, 23 May 2020 18:09:24 -0700 (PDT)
Received: from [10.163.75.81] (unknown [10.163.75.81])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2763C3F52E;
 Sat, 23 May 2020 18:09:21 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V4 15/17] arm64/cpufeature: Add remaining feature bits in
 ID_AA64DFR0 register
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1589881254-10082-1-git-send-email-anshuman.khandual@arm.com>
 <1589881254-10082-16-git-send-email-anshuman.khandual@arm.com>
 <5bad1e13-e498-b33e-5305-336d855c2c8b@arm.com>
Message-ID: <9e452a85-2ccf-50e6-d807-3f9e528b4072@arm.com>
Date: Sun, 24 May 2020 06:38:42 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <5bad1e13-e498-b33e-5305-336d855c2c8b@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_180930_514026_0F1CA8E6 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 linux-kernel@vger.kernel.org, maz@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwNS8yMC8yMDIwIDA3OjI3IFBNLCBTdXp1a2kgSyBQb3Vsb3NlIHdyb3RlOgo+IE9uIDA1
LzE5LzIwMjAgMTA6NDAgQU0sIEFuc2h1bWFuIEtoYW5kdWFsIHdyb3RlOgo+PiBFbmFibGUgTVRQ
TVUgYW5kIFRSQUNFRklMVCBmZWF0dXJlcyBiaXRzIGluIElEX0FBNjRERlIwIHJlZ2lzdGVyIGFz
IHBlciBBUk0KPj4gRERJIDA0ODdGLmEgc3BlY2lmaWNhdGlvbi4KPj4KPj4gQ2M6IENhdGFsaW4g
TWFyaW5hcyA8Y2F0YWxpbi5tYXJpbmFzQGFybS5jb20+Cj4+IENjOiBXaWxsIERlYWNvbiA8d2ls
bEBrZXJuZWwub3JnPgo+PiBDYzogTWFyayBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4K
Pj4gQ2M6IFN1enVraSBLIFBvdWxvc2UgPHN1enVraS5wb3Vsb3NlQGFybS5jb20+Cj4+IENjOiBs
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4gQ2M6IGxpbnV4LWtlcm5lbEB2
Z2VyLmtlcm5lbC5vcmcKPj4KPj4gU3VnZ2VzdGVkLWJ5OiBXaWxsIERlYWNvbiA8d2lsbEBrZXJu
ZWwub3JnPgo+PiBTaWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBLaGFuZHVhbCA8YW5zaHVtYW4ua2hh
bmR1YWxAYXJtLmNvbT4KPj4gLS0tCj4+IMKgIGFyY2gvYXJtNjQvaW5jbHVkZS9hc20vc3lzcmVn
LmggfCAyICsrCj4+IMKgIGFyY2gvYXJtNjQva2VybmVsL2NwdWZlYXR1cmUuY8KgIHwgMiArKwo+
PiDCoCAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9pbmNsdWRlL2FzbS9zeXNyZWcuaCBiL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20v
c3lzcmVnLmgKPj4gaW5kZXggYTU3MjA2OWNjZjZlLi40YmNkMjFjYzJkNjggMTAwNjQ0Cj4+IC0t
LSBhL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vc3lzcmVnLmgKPj4gKysrIGIvYXJjaC9hcm02NC9p
bmNsdWRlL2FzbS9zeXNyZWcuaAo+PiBAQCAtNzY2LDYgKzc2Niw4IEBACj4+IMKgICNkZWZpbmUg
SURfQUE2NE1NRlIyX0NOUF9TSElGVMKgwqDCoMKgwqDCoMKgIDAKPj4gwqAgwqAgLyogaWRfYWE2
NGRmcjAgKi8KPj4gKyNkZWZpbmUgSURfQUE2NERGUjBfTVRQTVVfU0hJRlTCoMKgwqDCoMKgwqDC
oCA0OAo+PiArI2RlZmluZSBJRF9BQTY0REZSMF9UUkFDRUZJTFRfU0hJRlTCoMKgwqAgNDAKPj4g
wqAgI2RlZmluZSBJRF9BQTY0REZSMF9QTVNWRVJfU0hJRlTCoMKgwqAgMzIKPj4gwqAgI2RlZmlu
ZSBJRF9BQTY0REZSMF9DVFhfQ01QU19TSElGVMKgwqDCoCAyOAo+PiDCoCAjZGVmaW5lIElEX0FB
NjRERlIwX1dSUFNfU0hJRlTCoMKgwqDCoMKgwqDCoCAyMAo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm02NC9rZXJuZWwvY3B1ZmVhdHVyZS5jIGIvYXJjaC9hcm02NC9rZXJuZWwvY3B1ZmVhdHVyZS5j
Cj4+IGluZGV4IDYzMzgxNTFmMjYzYy4uOTg2OTc0YmUwMTc4IDEwMDY0NAo+PiAtLS0gYS9hcmNo
L2FybTY0L2tlcm5lbC9jcHVmZWF0dXJlLmMKPj4gKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvY3B1
ZmVhdHVyZS5jCj4+IEBAIC0zNjYsNiArMzY2LDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBhcm02
NF9mdHJfYml0cyBmdHJfaWRfbW1mcjBbXSA9IHsKPj4gwqAgfTsKPj4gwqAgwqAgc3RhdGljIGNv
bnN0IHN0cnVjdCBhcm02NF9mdHJfYml0cyBmdHJfaWRfYWE2NGRmcjBbXSA9IHsKPj4gK8KgwqDC
oCBTX0FSTTY0X0ZUUl9CSVRTKEZUUl9ISURERU4sIEZUUl9TVFJJQ1QsIEZUUl9MT1dFUl9TQUZF
LCBJRF9BQTY0REZSMF9NVFBNVV9TSElGVCwgNCwgMCksCj4+ICvCoMKgwqAgQVJNNjRfRlRSX0JJ
VFMoRlRSX0hJRERFTiwgRlRSX1NUUklDVCwgRlRSX0xPV0VSX1NBRkUsIElEX0FBNjRERlIwX1RS
QUNFRklMVF9TSElGVCwgNCwgMCksCj4gCj4gV2UgbWFza2UgYm90aCB0aGUgZmllbGRzIGZvciBL
Vk0gaW4gQUFyY2gzMiBJRCByZWdpc3RlcnMuIFdlIHNob3VsZCBkbyB0aGUgc2FtZSBoZXJlLgoK
TVRQTVUgaXMgZGVmaW5lZCBmb3IgQUFyY2gzMiBJRCByZWdpc3RlciBJRF9ERlIxX0VMMSwgZXZl
biB0aG91Z2ggdGhlCmVudGlyZSByZWdpc3RlciBpcyBoaWRkZW4gZnJvbSBLVk0gd2l0aCBJRF9I
SURERU4oKS4KCnN0YXRpYyBjb25zdCBzdHJ1Y3QgYXJtNjRfZnRyX2JpdHMgZnRyX2lkX2RmcjFb
XSA9IHsKICAgICAgICBTX0FSTTY0X0ZUUl9CSVRTKEZUUl9ISURERU4sIEZUUl9TVFJJQ1QsIEZU
Ul9MT1dFUl9TQUZFLCBJRF9ERlIxX01UUE1VX1NISUZULCA0LCAwKSwKICAgICAgICBBUk02NF9G
VFJfRU5ELAp9OwoKU2hvdWxkIHRoZSBJRF9BQTY0REZSMF9FTDEgYmUgaGlkZGVuIGZyb20gS1ZN
IGFzIHdlbGwuIEJ1dCBpdCBoYXMgbWFueQpvdGhlciBleGlzdGluZyBmZWF0dXJlcyBhcGFydCBm
cm9tIE1UUE1VIGFuZCBUUkFDRUZJTFQgd2hpY2ggYXJlIGJlaW5nCmFkZGVkIGhlcmUuCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
