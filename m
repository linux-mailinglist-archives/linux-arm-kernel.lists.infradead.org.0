Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7AAC1EE1A1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 11:43:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D4ykgy0MB+OaTkrBzwaKtH2XsOuw5gg7Y69tFO9edYk=; b=rDTx1EoXiv1zKVAzqHCRguZ7R
	jKQJEQMYbJ0FLb2q86f0VKmbM1U1hK7ArtWXvZECLVhT5CWG/KObqqLvomIC68gD8BYEZnFqI6dWF
	tI2kTDWF+lb20RdRVQ93s7Cw47F2B2QFVnAaptbbkhRJc/zJpjRnuyQu1qtB3NA7E9Uo/GZXwmD4i
	3m0O0m81dIwWwztI+N/L8tBaOSwMz8Rp+VWHzt1miweCH6HDYb7+V2PLvP4fDQt5V5yM56ofEupmq
	Tb79kGlzYjJSp5Y1HYRRapumjv6NdSTodglfeUmoAnfWXP8EJBh6atTrsOaTAEiT9MqH5lBa6teqK
	FwnVIxHWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgmPH-0006ju-Qo; Thu, 04 Jun 2020 09:43:27 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgmP7-0006j6-8z
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 09:43:18 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 04 Jun 2020 18:43:14 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 4CA2318009F;
 Thu,  4 Jun 2020 18:43:14 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Thu, 4 Jun 2020 18:43:14 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by kinkan.css.socionext.com (Postfix) with ESMTP id E9F061A01BB;
 Thu,  4 Jun 2020 18:43:12 +0900 (JST)
Received: from [10.213.31.56] (unknown [10.213.31.56])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 3637F12041F;
 Thu,  4 Jun 2020 18:43:12 +0900 (JST)
Subject: Re: [PATCH v3 1/6] PCI: dwc: Add msi_host_isr() callback
To: Marc Zyngier <maz@kernel.org>
References: <1591174481-13975-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1591174481-13975-2-git-send-email-hayashi.kunihiko@socionext.com>
 <95bb3ffbfab4923854e20266c6b0b098@kernel.org>
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Message-ID: <6926b2da-5d00-b582-7d25-a8a0d7014570@socionext.com>
Date: Thu, 4 Jun 2020 18:43:11 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <95bb3ffbfab4923854e20266c6b0b098@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_024317_435360_E2741C44 
X-CRM114-Status: GOOD (  23.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, Jingoo Han <jingoohan1@gmail.com>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDIwMjAvMDYvMDMgMjA6MTUsIE1hcmMgWnluZ2llciB3cm90ZToKPiBPbiAy
MDIwLTA2LTAzIDA5OjU0LCBLdW5paGlrbyBIYXlhc2hpIHdyb3RlOgo+PiBUaGlzIGFkZHMgbXNp
X2hvc3RfaXNyKCkgY2FsbGJhY2sgZnVuY3Rpb24gc3VwcG9ydCB0byBkZXNjcmliZQo+PiBTb0Mt
ZGVwZW5kZW50IHNlcnZpY2UgdHJpZ2dlcmVkIGJ5IE1TSS4KPj4KPj4gRm9yIGV4YW1wbGUsIHdo
ZW4gQUVSIGludGVycnVwdCBpcyB0cmlnZ2VyZWQgYnkgTVNJLCB0aGUgY2FsbGJhY2sgZnVuY3Rp
b24KPj4gcmVhZHMgU29DLWRlcGVuZGVudCByZWdpc3RlcnMgYW5kIGRldGVjdHMgdGhhdCB0aGUg
aW50ZXJydXB0IGlzIGZyb20gQUVSLAo+PiBhbmQgaW52b2tlIEFFUiBpbnRlcnJ1cHRzIHJlbGF0
ZWQgdG8gTVNJLgo+Pgo+PiBDYzogTWFyYyBaeW5naWVyIDxtYXpAa2VybmVsLm9yZz4KPj4gQ2M6
IEppbmdvbyBIYW4gPGppbmdvb2hhbjFAZ21haWwuY29tPgo+PiBDYzogR3VzdGF2byBQaW1lbnRl
bCA8Z3VzdGF2by5waW1lbnRlbEBzeW5vcHN5cy5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IEt1bmlo
aWtvIEhheWFzaGkgPGhheWFzaGkua3VuaWhpa29Ac29jaW9uZXh0LmNvbT4KPj4gLS0tCj4+IMKg
ZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLWhvc3QuYyB8IDggKysr
Ky0tLS0KPj4gwqBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUuaMKg
wqDCoMKgwqAgfCAxICsKPj4gwqAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNCBk
ZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdj
L3BjaWUtZGVzaWdud2FyZS1ob3N0LmMKPj4gYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9w
Y2llLWRlc2lnbndhcmUtaG9zdC5jCj4+IGluZGV4IDBhNGE1YWEuLjliNjI4YTIgMTAwNjQ0Cj4+
IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS1ob3N0LmMK
Pj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLWhvc3Qu
Ywo+PiBAQCAtMTEyLDEzICsxMTIsMTMgQEAgaXJxcmV0dXJuX3QgZHdfaGFuZGxlX21zaV9pcnEo
c3RydWN0IHBjaWVfcG9ydCAqcHApCj4+IMKgc3RhdGljIHZvaWQgZHdfY2hhaW5lZF9tc2lfaXNy
KHN0cnVjdCBpcnFfZGVzYyAqZGVzYykKPj4gwqB7Cj4+IMKgwqDCoMKgIHN0cnVjdCBpcnFfY2hp
cCAqY2hpcCA9IGlycV9kZXNjX2dldF9jaGlwKGRlc2MpOwo+PiAtwqDCoMKgIHN0cnVjdCBwY2ll
X3BvcnQgKnBwOwo+PiArwqDCoMKgIHN0cnVjdCBwY2llX3BvcnQgKnBwID0gaXJxX2Rlc2NfZ2V0
X2hhbmRsZXJfZGF0YShkZXNjKTsKPj4KPj4gLcKgwqDCoCBjaGFpbmVkX2lycV9lbnRlcihjaGlw
LCBkZXNjKTsKPj4gK8KgwqDCoCBpZiAocHAtPm9wcy0+bXNpX2hvc3RfaXNyKQo+PiArwqDCoMKg
wqDCoMKgwqAgcHAtPm9wcy0+bXNpX2hvc3RfaXNyKHBwKTsKPiAKPiBXaHkgaXMgdGhpcyBjYWxs
IG91dHNpZGUgb2YgdGhlIGVudGVyL2V4aXQgZ3VhcmRzPwo+IERvIHlvdSBzdGlsbCBuZWVkIHRv
IGV4ZWN1dGUgdGhlIHN0YW5kYXJkIGhhbmRsZXI/CgpJIGFzc3VtZSB0aGF0IHRoZSBtc2lfaG9z
dF9pc3IoKSBjb250YWlucyBjaGFpbmVkIGludGVycnVwdHMgaW4KdGhlIHNlY29uZCBwYXRjaCBh
bmQgbm8gbmVlZCB0byB0cmVhdCBhcyB0aGUgc3RhbmRhcmQgaGFuZGxlciwKc28gdGhpcyBzaG91
bGQgYmUgY2FsbGVkIGluIHRoZSBndWFyZHMuCkknbGwgbW92ZSB0aGlzIGNhbGwgdG8gdGhlIHRv
cCBvZiBkd19jaGFpbmVkX21zaV9pc3IoKS4KClRoYW5rIHlvdSwKCi0tLQpCZXN0IFJlZ2FyZHMK
S3VuaWhpa28gSGF5YXNoaQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
