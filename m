Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52277E9AFA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 12:42:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OBMZRL0FyxQG5lDptG6JY/HX/mlxzmHv3xWNuc+Kx5Q=; b=CK/GnLFpbNSqG3eelv+dNDB0b
	BCEWuIa509Z7eoVViCgIor90y+OiNGMiVNOrhT4aQ1kfRTJoWt5fc/cfwMP/A8/jBVFu3WL/XOFs7
	6mp+0yXBclXq2drifBXZ8ERb4kphcS9foNOsYHTPjnrpy9Gtj+pf8xJ2Txo4ixyBfm1g6Wx/uK6HU
	MnvhkKS3DLrwcnZdNKg35kWsBE2KaHJakxEwbu/Ce2nMCJD0ykFHgrEjeotsUhXXn9xE4Jwxe5iHk
	B9yDgH5b8/7rbB7g8pDENhmIJgKRDtvCVmAEym/BriZRPKDTHv8VUwUA/Xqrupgan/rZn/YCpMQTv
	uMJp/sOLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPmMs-0000Sg-N8; Wed, 30 Oct 2019 11:42:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPmMi-0000SK-21
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 11:42:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E48351F1;
 Wed, 30 Oct 2019 04:42:10 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1F8173F71E;
 Wed, 30 Oct 2019 04:42:10 -0700 (PDT)
Subject: =?UTF-8?Q?Re=3a_=e2=9d=8c_FAIL=3a_Test_report_for_kernel_5=2e4=2e0-?=
 =?UTF-8?Q?rc5-34072e5=2ecki_=28arm-next=29?=
To: Will Deacon <will@kernel.org>, Jan Stancek <jstancek@redhat.com>
References: <cki.B60F5FC773.1FIT7OYFJ2@redhat.com>
 <1219834772.9691319.1572429836705.JavaMail.zimbra@redhat.com>
 <20191030100747.GB17773@willie-the-truck>
 <20191030104520.GC17773@willie-the-truck>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <4c22a384-ce30-8879-19a5-9ec6743268dc@arm.com>
Date: Wed, 30 Oct 2019 11:42:08 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20191030104520.GC17773@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_044216_144864_F5A916FF 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: catalin marinas <catalin.marinas@arm.com>,
 Memory Management <mm-qe@redhat.com>, CKI Project <cki-project@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMzAvMTAvMjAxOSAxMDo0NSwgV2lsbCBEZWFjb24gd3JvdGU6Cj4gWytSb2JpbiBhcyBGWUld
Cj4gCj4gT24gV2VkLCBPY3QgMzAsIDIwMTkgYXQgMTA6MDc6NDdBTSArMDAwMCwgV2lsbCBEZWFj
b24gd3JvdGU6Cj4+IE9uIFdlZCwgT2N0IDMwLCAyMDE5IGF0IDA2OjAzOjU2QU0gLTA0MDAsIEph
biBTdGFuY2VrIHdyb3RlOgo+Pj4+IFdlIHJhbiBhdXRvbWF0ZWQgdGVzdHMgb24gYSByZWNlbnQg
Y29tbWl0IGZyb20gdGhpcyBrZXJuZWwgdHJlZToKPj4+Pgo+Pj4+ICAgICAgICAgS2VybmVsIHJl
cG86Cj4+Pj4gICAgICAgICBnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5l
bC9naXQvYXJtNjQvbGludXguZ2l0Cj4+Pj4gICAgICAgICAgICAgIENvbW1pdDogMzQwNzJlNTJh
M2ZjIC0gTWVyZ2UgcmVtb3RlLXRyYWNraW5nIGJyYW5jaAo+Pj4+ICAgICAgICAgICAgICAnYXJt
NjQvZm9yLW5leHQvbWVtb3J5LWhvdHJlbW92ZScgaW50byBmb3Ita2VybmVsY2kKPj4+Pgo+Pj4+
IFRoZSByZXN1bHRzIG9mIHRoZXNlIGF1dG9tYXRlZCB0ZXN0cyBhcmUgcHJvdmlkZWQgYmVsb3cu
Cj4+Pj4KPj4+PiAgICAgIE92ZXJhbGwgcmVzdWx0OiBGQUlMRUQgKHNlZSBkZXRhaWxzIGJlbG93
KQo+Pj4+ICAgICAgICAgICAgICAgTWVyZ2U6IE9LCj4+Pj4gICAgICAgICAgICAgQ29tcGlsZTog
T0sKPj4+PiAgICAgICAgICAgICAgIFRlc3RzOiBGQUlMRUQKPj4+Pgo+Pj4+IEFsbCBrZXJuZWwg
YmluYXJpZXMsIGNvbmZpZyBmaWxlcywgYW5kIGxvZ3MgYXJlIGF2YWlsYWJsZSBmb3IgZG93bmxv
YWQgaGVyZToKPj4+Pgo+Pj4+ICAgIGh0dHBzOi8vYXJ0aWZhY3RzLmNraS1wcm9qZWN0Lm9yZy9w
aXBlbGluZXMvMjU1MzYyCj4+Pj4KPj4+PiBPbmUgb3IgbW9yZSBrZXJuZWwgdGVzdHMgZmFpbGVk
Ogo+Pj4+Cj4+Pj4gICAgICBhYXJjaDY0Ogo+Pj4+ICAgICAgIOKdjCBMVFAgbGl0ZQo+Pj4KPj4+
IFdoYXQncyBmYWlsaW5nIGlzIHByZWFkdjIvcmVhZHYgb3ZlciBQUk9UX05PTkUgbWFwcGluZzoK
Pj4+Cj4+PiBbcGlkICAyNDI0XSBtbWFwKE5VTEwsIDEsIFBST1RfTk9ORSwgTUFQX1BSSVZBVEV8
TUFQX0FOT05ZTU9VUywgMCwgMCkgPSAweDNmZjdmOGIwMDAwCj4+PiBbcGlkICAyNDI0XSBwcmVh
ZHYyKDMsIFt7aW92X2Jhc2U9MHgzZmY3ZjhiMDAwMCwgaW92X2xlbj02NH1dLCAxLCAwLCAwKSA9
IDE2Cj4+Pgo+Pj4gVGVzdCBleHBlY3RzIEVGQVVMVC4KPj4+Cj4+PiBJdCBzZWVtcyBzcGVjaWZp
YyB0byBhcm02NC9saW51eC5naXQgYXMgSSBkbyBub3Qgc2VlIGl0IGZhaWwgb24KPj4+IExpbnVz
JyBtYXN0ZXIgKHY1LjQtcmM1LTM0LWcyM2ZkYjE5OGFlODEpLgo+Pgo+PiBBaGEsIG91ciBlbWFp
bHMgY3Jvc3NlZCBwYXRocy4gVGhhbmtzLCBJJ2xsIHRyeSB0byByZXByb2R1Y2UgdGhlIGZhaWx1
cmUKPj4gbG9jYWxseS4KPiAKPiBMb29rcyBsaWtlIHRoZSByZXdyaXRlIG9mIG91ciBzdHJpbmcg
cm91dGluZXMgaGFzIGJyb2tlbiB0aGUgcmV0dXJuIHZhbHVlCj4gZm9yIHNvbWUgc3lzY2FsbHM6
CgpVcmdoLi4uIFRoYW5rcyBmb3IgdGhlIHJlcG9ydC4gSSB3YXMgcHJldHR5IHN1cmUgd2UgaGFk
IHRoZSBmYXVsdCAKaGFuZGxlciBjb3JyZWN0LCBzbyBJJ2xsIGZpcmUgdXAgdGhlIGRlYnVnZ2Vy
IGFuZCB0cnkgdG8gZmlndXJlIG91dCAKd2hhdCdzIHVwLgoKUm9iaW4uCgo+IHJlYWR2MDIgICAg
IDIgIFRGQUlMICA6ICByZWFkdjAyLmM6MTQ1OiBFcnJvcjogcmVhZHYgcmV0dXJuZWQgYSBwb3Np
dGl2ZSB2YWx1ZQo+IHByZWFkdjIwMi5jOjg3OiBGQUlMOiBwcmVhZHYyKCkgZmFpbGVkIHVuZXhw
ZWN0ZWRseSwgZXhwZWN0ZWQgRUZBVUxUOiBTVUNDRVNTICgwKQo+IHByZWFkdjIwMi5jOjg3OiBG
QUlMOiBwcmVhZHYyKCkgZmFpbGVkIHVuZXhwZWN0ZWRseSwgZXhwZWN0ZWQgRUZBVUxUOiBTVUND
RVNTICgwKQo+IAo+IFdlJ2xsIGRyb3AgdGhlIGZvci1uZXh0L2NvcnRleC1zdHJpbmdzIGJyYW5j
aCBmb3Igbm93Lgo+IAo+IFRoYW5rcywKPiAKPiBXaWxsCj4gCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
