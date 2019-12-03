Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D841E10F446
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 01:56:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xi7PQN3Ex8vb56dPiT6vxdDsSaSEdst8AaS/LIoqJJ4=; b=DLN2Gf0jAv4IfLEOjzTOr4OcV
	NXRo9tDS2cA08vpu0ARi9Gkt38+9KJttQeWNtbNFqmufMeH3FCQgKdPycCq4G+YS9hnkq4iFvIu+l
	UdwJz7skaLMpbQTfbZoeeDnHSP1JSxqIQ/4bh2ZFdaHbH2Iadb+S/PzajbIEhxW/EDSgnmPHEoTHd
	dY+df6jRzGptCxBFI8ewq7EqLjxxTazsHys/i6GHvbSM9Zw5bd6/LCKWcTP35Ajtyx5eFc8lwnO2N
	pQx8+fmLS/dZZDr+te7wG7CKiVM/LTsvMKIyCmXUkYc2RzH5hwdXWlHhblTxJXVmDWqf3wEk0z5a+
	ISEIqmHtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibwUA-0000Lr-7N; Tue, 03 Dec 2019 00:56:14 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibwU3-0000Kz-Od
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 00:56:09 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 4CB75DCF05BEBA1F926F;
 Tue,  3 Dec 2019 08:56:00 +0800 (CST)
Received: from [127.0.0.1] (10.133.216.73) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0; Tue, 3 Dec 2019
 08:55:54 +0800
Subject: Re: [PATCH] arm64/kernel/entry: refine comment of stack overflow check
To: Mark Rutland <mark.rutland@arm.com>
References: <20191202113702.34158-1-guoheyi@huawei.com>
 <20191202123319.GA25809@lakrids.cambridge.arm.com>
From: Guoheyi <guoheyi@huawei.com>
Message-ID: <0aee0354-5153-940c-bf72-7bd6bccce490@huawei.com>
Date: Tue, 3 Dec 2019 08:55:53 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191202123319.GA25809@lakrids.cambridge.arm.com>
X-Originating-IP: [10.133.216.73]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_165607_965322_DBD2D271 
X-CRM114-Status: GOOD (  14.79  )
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
Cc: wanghaibin.wang@huawei.com, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CtTaIDIwMTkvMTIvMiAyMDozMywgTWFyayBSdXRsYW5kINC0tcA6Cj4gT24gTW9uLCBEZWMgMDIs
IDIwMTkgYXQgMDc6Mzc6MDJQTSArMDgwMCwgSGV5aSBHdW8gd3JvdGU6Cj4+IFN0YWNrIG92ZXJm
bG93IGNoZWNraW5nIGNhbiBiZSBkb25lIGJ5IHRlc3RpbmcKPj4gc3AgJiAoMSA8PCBUSFJFQURf
U0hJRlQpCj4+IG9ubHkgZm9yIHRoZSBzdGFja3MgYXJlIGFsaWduZWQgdG8gKDIgPDwgVEhSRUFE
X1NISUZUKSB3aXRoIHNpemUgb2YKPj4gKDEgPDwgVEhSRUFEX1NJWkUpLCBhbmQgdGhpcyBpcyB0
aGUgY2FzZSB3aGVuIENPTkZJR19WTUFQX1NUQUNLIGlzCj4+IHNldC4KPiBHb29kIHBvaW50LCBJ
IHdhcyBzbG9wcHkgd2l0aCB0aGlzIGNvbW1lbnQuCj4KPj4gRml4IHRoZSBjb2RlIGNvbW1lbnQg
dG8gYXZvaWQgY29uZnVzaW9uLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBIZXlpIEd1byA8Z3VvaGV5
aUBodWF3ZWkuY29tPgo+PiBDYzogQ2F0YWxpbiBNYXJpbmFzIDxjYXRhbGluLm1hcmluYXNAYXJt
LmNvbT4KPj4gQ2M6IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+Cj4+IC0tLQo+PiAgIGFy
Y2gvYXJtNjQva2VybmVsL2VudHJ5LlMgfCAzICsrLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
a2VybmVsL2VudHJ5LlMgYi9hcmNoL2FybTY0L2tlcm5lbC9lbnRyeS5TCj4+IGluZGV4IGNmM2Jk
Mjk3NmU1Ny4uOWU4YmE1MDcwOTBmIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2tlcm5lbC9l
bnRyeS5TCj4+ICsrKyBiL2FyY2gvYXJtNjQva2VybmVsL2VudHJ5LlMKPj4gQEAgLTc2LDcgKzc2
LDggQEAgYWx0ZXJuYXRpdmVfZWxzZV9ub3BfZW5kaWYKPj4gICAjaWZkZWYgQ09ORklHX1ZNQVBf
U1RBQ0sKPj4gICAJLyoKPj4gICAJICogVGVzdCB3aGV0aGVyIHRoZSBTUCBoYXMgb3ZlcmZsb3dl
ZCwgd2l0aG91dCBjb3JydXB0aW5nIGEgR1BSLgo+PiAtCSAqIFRhc2sgYW5kIElSUSBzdGFja3Mg
YXJlIGFsaWduZWQgdG8gKDEgPDwgVEhSRUFEX1NISUZUKS4KPj4gKwkgKiBUYXNrIGFuZCBJUlEg
c3RhY2tzIGFyZSBhbGlnbmVkIHRvICgyIDw8IFRIUkVBRF9TSElGVCkgd2l0aCBzaXplIG9mCj4+
ICsJICogKDEgPDwgVEhSRUFEX1NISUZUKS4KPj4gICAJICovCj4gQ2FuIHdlIG1ha2UgdGhhdDoK
Pgo+IAlUYXNrIGFuZCBJUlEgc3RhY2tzIGFyZSBhbGlnbmVkIHNvIHRoYXQgU1AgJiAoMSA8PCBU
SFJFQURfU0hJRlQpCj4gCXNob3VsZCBhbHdheXMgYmUgemVyby4KPgo+IC4uLiB3aGljaCBJIHRo
aW5rIGlzIGEgYml0IGNsZWFyZXIuCgpTdXJlIDopCgpUaGFua3MsCgpIZXlpCgo+Cj4gV2l0aCB0
aGF0IHdvcmRpbmc6Cj4KPiBBY2tlZC1ieTogTWFyayBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJt
LmNvbT4KPgo+IE1hcmsuCj4KPj4gICAJYWRkCXNwLCBzcCwgeDAJCQkvLyBzcCcgPSBzcCArIHgw
Cj4+ICAgCXN1Ygl4MCwgc3AsIHgwCQkJLy8geDAnID0gc3AnIC0geDAgPSAoc3AgKyB4MCkgLSB4
MCA9IHNwCj4+IC0tIAo+PiAyLjE5LjEKPj4KPiAuCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
