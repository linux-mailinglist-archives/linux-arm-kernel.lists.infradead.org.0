Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E28061E03D5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 01:09:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kYjhkXbAolrR6SGT0ftWAzh3CV+PDe/CAq6vzSK4lVI=; b=LDMTO14CeORG4H
	tbkyCD/aa6Q/TODRPpP25F50f4vXnYtZ2b0R9xIQRAy3v3qCu/81HjByzE6R19dn0HyIuQ84pH+bR
	RY01TTzwN/O6TbTAl8osyc4btN3jjhhJZUm/79EBSuh+oTtLAFwIyH/d042nt6CjGlPUKpQ8O55S9
	0ERcLTwYfAVJUXrvX3ka9NdZgDknT62RBurBbYCoyoDMu0T/wRr2W9JuUy0QHxSZ9+P6KGOTFDSLx
	kFjS/LuhLiEZkkIMTgguwzkH5mp/BefqPpqAB05fwbohKW6tg0o+2tj1yeHsxjh+3xawWN+CPlJC0
	1YZJnTTn0oLhwa/nL5Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jczjz-0000B5-BO; Sun, 24 May 2020 23:09:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jczjq-00009s-LO
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 23:09:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D171230E;
 Sun, 24 May 2020 16:08:55 -0700 (PDT)
Received: from [192.168.0.129] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 351073F52E;
 Sun, 24 May 2020 16:08:52 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V4 12/17] arm64/cpufeature: Add remaining feature bits in
 ID_AA64MMFR0 register
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1589881254-10082-1-git-send-email-anshuman.khandual@arm.com>
 <1589881254-10082-13-git-send-email-anshuman.khandual@arm.com>
 <aab025fd-a9aa-0f1a-783b-eb5d3b40a327@arm.com>
Message-ID: <4df6059d-baad-0f21-ec0d-cbb972bfabdf@arm.com>
Date: Mon, 25 May 2020 04:38:13 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <aab025fd-a9aa-0f1a-783b-eb5d3b40a327@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_160902_743343_3B6C6209 
X-CRM114-Status: GOOD (  14.45  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 linux-kernel@vger.kernel.org, maz@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwNS8xOS8yMDIwIDA3OjAyIFBNLCBTdXp1a2kgSyBQb3Vsb3NlIHdyb3RlOgo+IE9uIDA1
LzE5LzIwMjAgMTA6NDAgQU0sIEFuc2h1bWFuIEtoYW5kdWFsIHdyb3RlOgo+PiBFbmFibGUgRVZD
LCBGR1QsIEVYUywgVEdSQU40XzIsIFRHUkFONjRfMiBhbmQgVEdSQU4xNl8yIGZlYXR1cmVzIGJp
dHMgaW4KPj4gSURfQUE2NE1NRlIwIHJlZ2lzdGVyIGFzIHBlciBBUk0gRERJIDA0ODdGLmEgc3Bl
Y2lmaWNhdGlvbi4KPj4KPj4gQ2M6IENhdGFsaW4gTWFyaW5hcyA8Y2F0YWxpbi5tYXJpbmFzQGFy
bS5jb20+Cj4+IENjOiBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwub3JnPgo+PiBDYzogTWFyayBS
dXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4KPj4gQ2M6IFN1enVraSBLIFBvdWxvc2UgPHN1
enVraS5wb3Vsb3NlQGFybS5jb20+Cj4+IENjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKPj4gQ2M6IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKPj4KPj4gU3VnZ2Vz
dGVkLWJ5OiBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwub3JnPgo+PiBTaWduZWQtb2ZmLWJ5OiBB
bnNodW1hbiBLaGFuZHVhbCA8YW5zaHVtYW4ua2hhbmR1YWxAYXJtLmNvbT4KPiAKPj4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQva2VybmVsL2NwdWZlYXR1cmUuYyBiL2FyY2gvYXJtNjQva2VybmVs
L2NwdWZlYXR1cmUuYwo+PiBpbmRleCBkMTQzM2Y5OTY3MTAuLjdjZTE5Zjk3YmE3MyAxMDA2NDQK
Pj4gLS0tIGEvYXJjaC9hcm02NC9rZXJuZWwvY3B1ZmVhdHVyZS5jCj4+ICsrKyBiL2FyY2gvYXJt
NjQva2VybmVsL2NwdWZlYXR1cmUuYwo+PiBAQCAtMjY3LDYgKzI2NywxMCBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IGFybTY0X2Z0cl9iaXRzIGZ0cl9pZF9hYTY0emZyMFtdID0gewo+PiDCoCB9Owo+
PiDCoCDCoCBzdGF0aWMgY29uc3Qgc3RydWN0IGFybTY0X2Z0cl9iaXRzIGZ0cl9pZF9hYTY0bW1m
cjBbXSA9IHsKPj4gKwo+IAo+IG1pbm9yIG5pdDogc3B1cmlvdXMgbmV3IGxpbmUuCj4gCj4+ICvC
oMKgwqAgQVJNNjRfRlRSX0JJVFMoRlRSX0hJRERFTiwgRlRSX1NUUklDVCwgRlRSX0xPV0VSX1NB
RkUsIElEX0FBNjRNTUZSMF9FQ1ZfU0hJRlQsIDQsIDApLAo+PiArwqDCoMKgIEFSTTY0X0ZUUl9C
SVRTKEZUUl9ISURERU4sIEZUUl9TVFJJQ1QsIEZUUl9MT1dFUl9TQUZFLCBJRF9BQTY0TU1GUjBf
RkdUX1NISUZULCA0LCAwKSwKPj4gK8KgwqDCoCBBUk02NF9GVFJfQklUUyhGVFJfSElEREVOLCBG
VFJfU1RSSUNULCBGVFJfTE9XRVJfU0FGRSwgSURfQUE2NE1NRlIwX0VYU19TSElGVCwgNCwgMCks
Cj4+IMKgwqDCoMKgwqAgLyoKPj4gwqDCoMKgwqDCoMKgICogV2UgYWxyZWFkeSByZWZ1c2UgdG8g
Ym9vdCBDUFVzIHRoYXQgZG9uJ3Qgc3VwcG9ydCBvdXIgY29uZmlndXJlZAo+PiDCoMKgwqDCoMKg
wqAgKiBwYWdlIHNpemUsIHNvIHdlIGNhbiBvbmx5IGRldGVjdCBtaXNtYXRjaGVzIGZvciBhIHBh
Z2Ugc2l6ZSBvdGhlcgo+PiBAQCAtMjc0LDYgKzI3OCw5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
YXJtNjRfZnRyX2JpdHMgZnRyX2lkX2FhNjRtbWZyMFtdID0gewo+PiDCoMKgwqDCoMKgwqAgKiBl
eGlzdCBpbiB0aGUgd2lsZCBzbywgZXZlbiB0aG91Z2ggd2UgZG9uJ3QgbGlrZSBpdCwgd2UnbGwg
aGF2ZSB0byBnbwo+PiDCoMKgwqDCoMKgwqAgKiBhbG9uZyB3aXRoIGl0IGFuZCB0cmVhdCB0aGVt
IGFzIG5vbi1zdHJpY3QuCj4+IMKgwqDCoMKgwqDCoCAqLwo+PiArwqDCoMKgIFNfQVJNNjRfRlRS
X0JJVFMoRlRSX0hJRERFTiwgRlRSX05PTlNUUklDVCwgRlRSX0xPV0VSX1NBRkUsIElEX0FBNjRN
TUZSMF9UR1JBTjRfMl9TSElGVCwgNCwgSURfQUE2NE1NRlIwX1RHUkFONF8yX05JKSwKPj4gK8Kg
wqDCoCBTX0FSTTY0X0ZUUl9CSVRTKEZUUl9ISURERU4sIEZUUl9OT05TVFJJQ1QsIEZUUl9MT1dF
Ul9TQUZFLCBJRF9BQTY0TU1GUjBfVEdSQU42NF8yX1NISUZULCA0LCBJRF9BQTY0TU1GUjBfVEdS
QU42NF8yX05JKSwKPj4gK8KgwqDCoCBTX0FSTTY0X0ZUUl9CSVRTKEZUUl9ISURERU4sIEZUUl9O
T05TVFJJQ1QsIEZUUl9MT1dFUl9TQUZFLCBJRF9BQTY0TU1GUjBfVEdSQU4xNl8yX1NISUZULCA0
LCBJRF9BQTY0TU1GUjBfVEdSQU4xNl8yX05JKSwKPiAKPiBUaGVzZSBhcmUgbm90IFNJR05FRCBh
cyB0aGV5IGRvbid0IGhhdmUgMGIxMTExIGRlZmluZWQgdG8gcmVwcmVzZW50Cj4gc29tZXRoaW5n
ICJsb3dlciIgdGhhbiAnMGIwJy4gSXQgd2FzIHNpZ25lZCBmb3IgNEsgYW5kIDY0Sywgc2luY2UK
PiAKPiAwYjAwMDAgPT4gc3VwcG9ydGVkCj4gMGIxMTExID0+IE5vdCBzdXBwb3J0ZWQuCj4gCj4g
QWxzbyBQbGVhc2Ugbm90ZSwgS1ZNLU5WIHBhdGNoZXMgYXJlIGFkZGluZyB0aGVzZSwgc28geW91
IG1heSBhcyB3ZWxsIGRyb3AgdGhlbS4KClN1cmUsIHdpbGwgZHJvcCBhbGwgSURfQUE2NE1NRlIw
X1RHUkFOIGNoYW5nZXMgYWxvbmcgd2l0aCByZWxhdGVkCm1hY3JvcyBmcm9tIGFyY2gvYXJtNjQv
aW5jbHVkZS9hc20vc3lzcmVnLmguCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
