Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 800DDE46B4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 11:08:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=En2WEea9mCxHpx29w5zSK+VAJ2A47a4igZOSbJwCQD8=; b=cfof071qz2KXN8kLum2GKNDLm
	aQ/C9mGYuXg+74jK+Cabd//uZZ27gJyyKMwCwsy+6XChCbLk1vtm4FpR1eMelNaoDO/RhbDRF7Z3L
	2TrXbwr16aZbCg2WeFugXjBsIuQ/+sJHGhXUAwylIQjV2ysl2vPyktj08RtV8g7tcfiUG0FXtZfNy
	7bwJdW1EK3aqFSlw9lpWjGsCoa8RQDLFULv+q0zTN4TQTrz7J7DIuPzXVSU6VlFr/EtNZiV3rUOuu
	GpA7/hfU4lrRvTUvzp+TZqbSCNsm6nKO73qSJyfoOmxXkRPg1pwdrF5sSghGl/Y/gOO3vDzBgtYke
	pTdl7RZ1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNvaF-0000S2-Ie; Fri, 25 Oct 2019 09:08:35 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNvZr-0000DT-Nv
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 09:08:14 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 718267F90D984722DF34;
 Fri, 25 Oct 2019 17:08:03 +0800 (CST)
Received: from [127.0.0.1] (10.184.12.158) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0; Fri, 25 Oct 2019
 17:07:55 +0800
Subject: Re: [PATCH v2] irqchip/gic-v3-its: Use the exact ITSList for VMOVP
To: Marc Zyngier <maz@kernel.org>
References: <1571802386-2680-1-git-send-email-yuzenghui@huawei.com>
 <0f99f6a4ea567f53d38fb3bc0e6f59e4@www.loen.fr>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <6bc4a648-4308-3ff8-8e73-d90040e74c99@huawei.com>
Date: Fri, 25 Oct 2019 17:06:30 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:64.0) Gecko/20100101
 Thunderbird/64.0
MIME-Version: 1.0
In-Reply-To: <0f99f6a4ea567f53d38fb3bc0e6f59e4@www.loen.fr>
Content-Language: en-US
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_020812_040486_7FFF36F1 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: jason@lakedaemon.net, jiayanlei@huawei.com,
 LKML <linux-kernel@vger.kernel.org>, wanghaibin.wang@huawei.com,
 tglx@linutronix.de, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS8xMC8yNSAxNjoyNCwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IE9uIDIwMTktMTAtMjMg
MDQ6NDYsIFplbmdodWkgWXUgd3JvdGU6Cj4+IE9uIGEgc3lzdGVtIHdpdGhvdXQgU2luZ2xlIFZN
T1ZQIHN1cHBvcnQgKHNheSBHSVRTX1RZUEVSLlZNT1ZQID09IDApLAo+PiB3ZSB3aWxsIG1hcCB2
UEVzIG9ubHkgb24gSVRTcyB0aGF0IHdpbGwgYWN0dWFsbHkgY29udHJvbCBpbnRlcnJ1cHRzCj4+
IGZvciB0aGUgZ2l2ZW4gVk0uwqAgQW5kIHdoZW4gbW92aW5nIGEgdlBFLCB0aGUgVk1PVlAgY29t
bWFuZCB3aWxsIGJlCj4+IGlzc3VlZCBvbmx5IGZvciB0aG9zZSBJVFNzLgo+Pgo+PiBCdXQgd2hl
biBpc3N1aW5nIFZNT1ZQcyB3ZSBzZWVtZWQgZmFpbCB0byBwcmVzZW50IHRoZSBleGFjdCBJVFNM
aXN0Cj4+IHRvIElUU3Mgd2hvIGFyZSBhY3R1YWxseSBpbmNsdWRlZCBpbiB0aGUgc3luY2hyb25p
emF0aW9uIG9wZXJhdGlvbi4KPj4gVGhlIGl0c19saXN0X21hcCB3ZSdyZSBjdXJyZW50bHkgdXNp
bmcgaW5jbHVkZXMgYWxsIElUU3MgaW4gdGhlIHN5c3RlbSwKPj4gZXZlbiB0aG91Z2ggc29tZSBv
ZiB0aGVtIGRvbid0IGhhdmUgdGhlIGNvcnJlc3BvbmRpbmcgdlBFIG1hcHBpbmcgYXQgYWxsLgo+
Pgo+PiBJbnRyb2R1Y2UgZ2V0X2l0c19saXN0KCkgdG8gZ2V0IHRoZSBwZXItVk0gaXRzX2xpc3Rf
bWFwLCB0byBpbmRpY2F0ZQo+PiB3aGljaCBJVFNzIGhhdmUgdlBFIG1hcHBpbmdzIGZvciB0aGUg
Z2l2ZW4gVk0sIGFuZCB1c2UgdGhpcyBtYXAgYXMKPj4gdGhlIGV4cGVjdGVkIElUU0xpc3Qgd2hl
biBidWlsZGluZyBWTU9WUC4gVGhpcyBpcyBob3BlZnVsbHkgYSBwZXJmb3JtYW5jZQo+PiBnYWlu
IG5vdCB0byBkbyBzb21lIHN5bmNocm9uaXphdGlvbiB3aXRoIHRob3NlIHVuc3VzcGVjdGluZyBJ
VFNzLgo+PiBBbmQgaW5pdGlhbGl6ZSB0aGUgd2hvbGUgY29tbWFuZCBkZXNjcmlwdG9yIHRvIHpl
cm8gYXQgYmVnaW5uaW5nLCBzaW5jZQo+PiB0aGUgc2VxX251bSBhbmQgaXRzX2xpc3Qgc2hvdWxk
IGJlIFJFUzAgd2hlbiBHSVRTX1RZUEVSLlZNT1ZQID09IDEuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6
IFplbmdodWkgWXUgPHl1emVuZ2h1aUBodWF3ZWkuY29tPgo+IAo+IEkndmUgYXBwbGllZCB0aGlz
IGFzIGEgZml4IGZvciA1LjQuIEluIHRoZSBmdXR1cmUsIHBsZWFzZSBjYyBMS01MIG9uIGFsbAo+
IElSUS1yZWxhdGVkIHBhdGNoZXMgKGFzIGRvY3VtZW50ZWQgaW4gTUFJTlRBSU5FUlMpLgoKSSBn
b3QgaXQsIHRoYW5rcy4KCgpaZW5naHVpCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
