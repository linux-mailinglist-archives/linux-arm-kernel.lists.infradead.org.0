Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E052E12F6B1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 11:23:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CTgEABGZF2HSDyHLiJ/2A5MP27jF27cCzl9ECez0LB8=; b=Q2TuRHsrHsC1AK
	NI9yHxuLdmHaMNT1NxyL+5LMs4QKzHrx5gfD1XrK0YF/8MmbR6Xkq/lSX2kWRLxKkdK4b2lR+vyji
	B5XRL4BfGdU8XTHu9fEoGYhgJ61fPwFtU2OuiUotC1gaNbSsvpaHBP4L+HTocqpaLFx7QYSyvRw+R
	7JV9O5bkJDKmK/lrT5Wjjhzp3Fy4y5lCIJCyyBjUcOoRjk1JzeZElPW6w7Afmhtg6zhzljqe9QUXw
	QfLxjFgDqp0VOINto6eBha2QUXJ3gWTylxJ7SIGzTWdPg6StAXJjJeB9tST8krcR5pnwWkyoc06n9
	FI5HYN5Xt5kJr1qKGw4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inK77-0004mg-Jn; Fri, 03 Jan 2020 10:23:29 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inK70-0004m9-S3
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 10:23:24 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id DE4739F734ABD3D7E3F7;
 Fri,  3 Jan 2020 18:23:15 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Fri, 3 Jan 2020
 18:23:06 +0800
Subject: Re: [PATCH v1] ACPI/IORT: Workaround for IORT ID count "minus one"
 issue
To: John Garry <john.garry@huawei.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, "Rafael J.
 Wysocki" <rafael@kernel.org>, Pankaj Bansal <pankaj.bansal@nxp.com>
References: <1577708824-4873-1-git-send-email-guohanjun@huawei.com>
 <639f61ab-e692-caaf-9b4e-b848b05caee2@huawei.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <963352e6-8ee1-6a8b-d098-9625ad2c980c@huawei.com>
Date: Fri, 3 Jan 2020 18:20:44 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <639f61ab-e692-caaf-9b4e-b848b05caee2@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_022323_071351_19099906 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Robert Richter <rrichter@marvell.com>, Linuxarm <linuxarm@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC8xLzIgMTk6MTgsIEpvaG4gR2Fycnkgd3JvdGU6Cj4gKwo+IAo+IE9uIDMwLzEyLzIw
MTkgMTI6MjcsIEd1b2hhbmp1biAoSGFuanVuIEd1bykgd3JvdGU6Cj4+IFRoZSBJT1JUIHNwZWMg
WzBdIHNheXMgTnVtYmVyIG9mIElEcyA9IFRoZSBudW1iZXIgb2YgSURzIGluIHRoZSByYW5nZSBt
aW51cwo+PiBvbmUsIGl0IGlzIGNvbmZ1c2luZyBidXQgaXQgd2FzIHdyaXR0ZW4gZG93biBpbiB0
aGUgZmlyc3QgdmVyc2lvbiBvZiB0aGUKPj4gSU9SVCBzcGVjLiBCdXQgdGhlIElPUlQgSUQgbWFw
cGluZyBmdW5jdGlvbiBpb3J0X2lkX21hcCgpIGRpZCBzb21ldGhpbmcKPj4gd3JvbmcgZnJvbSB0
aGUgc3RhcnQsIHdoaWNoIGJhaWxzIG91dCBpZjoKPj4KPj4gdGhlIHJlcXVlc3QgSUQgPj0gdGhl
IGlucHV0IGJhc2UgKyBudW1iZXIgb2YgSURzCj4+Cj4+IFRoaXMgaXMgd3JvbmcgYmVjYXVzZSBp
dCBpZ25vcmVkIHRoZSAibWludXMgb25lIiwgYW5kIGJyZWFrcyBzb21lIHZhbGlkCj4+IHVzZWNh
c2VzIHN1Y2ggYXMgSUQgbWFwcGluZyB0byBjb250YWluIHNpbmdsZSBkZXZpY2UgbWFwcGluZyB3
aXRob3V0Cj4+IHNpbmdsZSBtYXBwaW5nIGZsYWcgc2V0Lgo+Pgo+PiBQYW5rYWogQmFuc2FsIHBy
b3Bvc2VkIGEgc29sdXRpb24gdG8gZml4IHRoZSBpc3N1ZSBbMV0sIHdoaWNoIGJhaWxzCj4+IG91
dCBpZjoKPj4KPj4gdGhlIHJlcXVlc3QgSUQgPiB0aGUgaW5wdXQgYmFzZSArIG51bWJlciBvZiBJ
RHMKPj4KPj4gVGhpcyB3b3JrcyBhcyB0aGUgc3BlYyBkZWZpbmVkLCB1bmZvcnR1bmF0ZWx5IHNv
bWUgZmlybXdhcmUgZGlkbid0Cj4+IG1pbnVzIG9uZSBmb3IgdGhlIG51bWJlciBvZiBJRHMgaW4g
dGhlIHJhbmdlLCBhbmQgdGhlIHByb3BvYXNlZAo+PiBzb2x1dGlvbiB3aWxsIGJyZWFrIHRob3Nl
IHN5c3RlbXMgaW4gdGhpcyB3YXk6Cj4+Cj4+IFBDSSBob3N0YnJpZGdlIG1hcHBpbmcgZW50cnkg
MToKPj4gSW5wdXQgYmFzZTrCoCAweDEwMDAKPj4gSUQgQ291bnQ6wqDCoMKgIDB4MTAwCj4+IE91
dHB1dCBiYXNlOiAweDEwMDAKPj4gT3V0cHV0IHJlZmVyZW5jZTogMHhDNMKgIC8vSVRTIHJlZmVy
ZW5jZQo+Pgo+PiBQQ0kgaG9zdGJyaWRnZSBtYXBwaW5nIGVudHJ5IDI6Cj4+IElucHV0IGJhc2U6
wqAgMHgxMTAwCj4+IElEIENvdW50OsKgwqDCoCAweDEwMAo+PiBPdXRwdXQgYmFzZTogMHgyMDAw
Cj4+IE91dHB1dCByZWZlcmVuY2U6IDB4RDTCoCAvL0lUUyByZWZlcmVuY2UKPj4KPj4gVHdvIG1h
cHBpbmcgZW50cmllcyB3aGljaCB0aGUgc2Vjb25kIGVudHJ5J3MgSW5wdXQgYmFzZSA9IHRoZSBm
aXJzdAo+PiBlbnRyeSdzIElucHV0IGJhc2UgKyBJRCBjb3VudCwgc28gZm9yIHJlcXVlc3RlciBJ
RCAweDExMDAgd2lsbCBtYXAKPj4gdG8gSVRTIDB4QzQgbm90IDB4RDQgaWYgd2UgdXBkYXRlICc+
PScgdG8gJz4nLgo+Pgo+PiBTbyBpbnRyb2R1Y2UgYSB3b3JrYXJvdW5kIHRvIG1hdGNoIHRoZSBJ
T1JUJ3MgT0VNIGluZm9ybWF0aW9uIGZvcgo+PiB0aGUgYnJva2VuIGZpcm13YXJlLCBhbHNvIHVw
ZGF0ZSB0aGUgbG9naWMgb2YgdGhlIElEIG1hcHBpbmcgZm9yCj4+IGZpcm13YXJlcyByZXBvcnQg
dGhlIG51bWJlciBvZiBJRHMgYXMgdGhlIElPUlQgc3BlYyBkZWZpbmVkLCB0bwo+PiBtYWtlIHRo
ZSBjb2RlIGNvbXBhdGlibGUgZm9yIGJvdGgga2luZHMgb2Ygc3lzdGVtLgo+Pgo+PiBJIGNoZWNr
ZWQgdGhlIEFDUEkgdGFibGVzIGluIHRoZSB0aWFub2NvcmUvZWRrMi1wbGF0Zm9ybXMgWzJdLCAK
PiAKPiBIaSBIYW5qdW4sCj4gCj4gb25seQo+PiBIaVNpbGljb24gSElQMDcvMDggZGlkIHdyb25n
LCBzbyBqdXN0IGFkZCBISVAwNy8wOCB0byB0aGUgd29ya2Fyb3VuZAo+PiBpbmZvIHRhYmxlLCAK
PiAKPiBBcmUgeW91IGFzc2VydGluZyB0aGF0IG90aGVyIHBsYXRmb3JtcyBhcmUgb2sgb24gdGhl
IGJhc2lzIHRoYXQgTnVtSWRzID0gbGFyZ2UgcG93ZXIgb2YgMiAtIDEsIGUuZy4gMHhmZmZmPyBJ
cyB0aGlzIHN0cmljdGx5IHByb3Blcj8KCk5vLCBzb21lIHBsYXRmb3JtcyB3aXRoIG5vIG9wZW5z
b3VyY2UgQUNQSSB0YWJsZXMsIGFyZQpub3QgY292ZXJlZC4KCj4gCj4gaWYgd2UgYnJlYWsgb3Ro
ZXIgcGxhdGZvcm1zLCB3ZSBjYW4gYWRkIHRoYXQgbGF0ZXIuCj4+Cj4gCj4gSSB0aGluayB0aGF0
IGl0IHdvdWxkIGJlIGJldHRlciB0byBhdWRpdCBvdGhlcnMgbm93IGFzIHdlbGwgYXMgYmVzdCBh
cyByZWFzb25hYmx5IHBvc3NpYmxlLiBUaGVyZSBpcyBzb21ld2hhdCBsaW1pdGVkIGNvdmVyYWdl
IGluIFsyXS4KCkkgd2lsbCBDYyBwZW9wbGUgZm9ybSBNYXZlbGwsIEFtcGVyZSwgYW5kIEFyZCB3
aG8gaXMga25vdyBTb2Npb25leHQgdmVyeSB3ZWxsLAp0aGF0J3MgdGhlIGJlc3QgSSBjYW4gZG8u
CgpUaGFua3MKSGFuanVuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
