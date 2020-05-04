Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8D01C4852
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 22:31:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=op1bWt0+ktQVDEvd1mO/962MeYCPGwtoocWZlVWZhtA=; b=Rm3I+mG1do5OmX
	INHmMNrbZE6lTmXLcMOG6wvPvBDXW2sllxMqoU2geGyHepa3FZtcxaoMzcC+Hkuam3ZqJd5q5V6f3
	XOfRRBxswTXFWZWQw75AKYsb+a4QjZHycUGnXgq1+XvJjnQrioFfIDMEJuNElD5GkQn1k49kXKb90
	9Itmj/1PCeCUwKWq0q2MaM5nuIq22YNxOQZbnr/oWhsPyi1JYojoF6g1X3cxIiKjXZzE5T9iqhjVJ
	cJ9aVyVX4lNbGBYikepfrLPk+GW0NbJMR1r6yA0PvR39Odud9xpAIUF5tzxsKzJj+5ca42QL+SMRa
	qTrWv9VoWnpAarBLEJQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVhke-0002hF-5n; Mon, 04 May 2020 20:31:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVhkY-0002fZ-Ac
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 20:31:39 +0000
Received: from [192.168.1.11] (cpe-70-114-128-244.austin.res.rr.com
 [70.114.128.244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C1A52073E;
 Mon,  4 May 2020 20:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588624297;
 bh=2jpjfdgahgWa+LXWpYrhDC00GbM3ExlXfvdA5PnWqgw=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=iqNgfUl7vmDkVGUs7UMxTe9hV02EmULz6aWUiGE4u7upEiKeh4UwbzeKGy4EEPY2b
 /vk6wdPsB3VBGZ1i7DNsiWITQrXRJZLvi+EqMI8GJxDKBTAXWXN6fPBN11v0aisJ1U
 D1HloFFcbCvz8OFSahPwItjCrISP4H9YB7gSOOGE=
Subject: Re: [PATCH v3 2/2] ARM: dts: socfpga: Add fpga2hps and fpga2sdram
 bridges
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
References: <20200326095357.23841-1-s.trumtrar@pengutronix.de>
 <20200326095357.23841-2-s.trumtrar@pengutronix.de>
 <87k11s2ipy.fsf@pengutronix.de>
From: Dinh Nguyen <dinguyen@kernel.org>
Autocrypt: addr=dinguyen@kernel.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <555cc2d5-cde3-766d-72ec-3a2cc318176d@kernel.org>
Date: Mon, 4 May 2020 15:31:36 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <87k11s2ipy.fsf@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_133138_410218_28ABEC58 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3RlZmZlbiwKCk9uIDUvNC8yMCAzOjQzIEFNLCBTdGVmZmVuIFRydW10cmFyIHdyb3RlOgo+
IAo+IEhpLAo+IAo+IFN0ZWZmZW4gVHJ1bXRyYXIgPHMudHJ1bXRyYXJAcGVuZ3V0cm9uaXguZGU+
IHdyaXRlczoKPiAKPj4gQWRkIHRoZSByZW1haW5pbmcgdHdvIGJyaWRnZXMgb24gdGhlIEN5Y2xv
bmUtViBTb0NGUEdBIFNvQ3MuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFN0ZWZmZW4gVHJ1bXRyYXIg
PHMudHJ1bXRyYXJAcGVuZ3V0cm9uaXguZGU+Cj4+IC0tLQo+PiDCoGFyY2gvYXJtL2Jvb3QvZHRz
L3NvY2ZwZ2EuZHRzaSB8IDE0ICsrKysrKysrKysrKysrCj4+IMKgMSBmaWxlIGNoYW5nZWQsIDE0
IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3NvY2Zw
Z2EuZHRzaQo+PiBiL2FyY2gvYXJtL2Jvb3QvZHRzL3NvY2ZwZ2EuZHRzaQo+PiBpbmRleCA3ZjA0
ODAzNTRlZTYuLmMyYjU0YWY0MTdhMiAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMv
c29jZnBnYS5kdHNpCj4+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3NvY2ZwZ2EuZHRzaQo+PiBA
QCAtNTQyLDYgKzU0MiwyMCBAQCBmcGdhX2JyaWRnZTE6IGZwZ2FfYnJpZGdlQGZmNTAwMDAwIHsK
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+IMKgwqDC
oMKgwqDCoMKgwqAgfTsKPj4gwqAKPj4gK8KgwqDCoMKgwqDCoMKgIGZwZ2FfYnJpZGdlMjogZnBn
YS1icmlkZ2VAZmY2MDAwMDAgewo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxl
ID0gImFsdHIsc29jZnBnYS1mcGdhMmhwcy1icmlkZ2UiOwo+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCByZWcgPSA8MHhmZjYwMDAwMCAweDEwMDAwMD47Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHJlc2V0cyA9IDwmcnN0IEZQR0EySFBTX1JFU0VUPjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgY2xvY2tzID0gPCZsNF9tYWluX2Nsaz47Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+ICvCoMKgwqDCoMKgwqDCoCB9Owo+PiArCj4+ICvCoMKg
wqDCoMKgwqDCoCBmcGdhX2JyaWRnZTM6IGZwZ2EtYnJpZGdlQGZmYzI1MDgwIHsKPj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJhbHRyLHNvY2ZwZ2EtZnBnYTJzZHJhbS1i
cmlkZ2UiOwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcgPSA8MHhmZmMyNTA4MCAweDQ+
Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+PiArwqDC
oMKgwqDCoMKgwqAgfTsKPj4gKwo+PiDCoMKgwqDCoMKgwqDCoMKgIGZwZ2FtZ3IwOiBmcGdhbWdy
QGZmNzA2MDAwIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAiYWx0
cixzb2NmcGdhLWZwZ2EtbWdyIjsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlZyA9IDww
eGZmNzA2MDAwIDB4MTAwMAo+IAo+IGZyaWVuZGx5IHJlbWluZGVyLgo+IAo+IExhc3QgdGltZSAo
b24gdmVyc2lvbiAyKSB0aGUgZGlzY3Vzc2lvbiBlbmRlZCB3aXRoICJsZWF2ZSBpdCB0byB0aGUK
PiBib2FyZCBmaWxlcywgYmVjYXVzZSBhY2Nlc3NpbmcgdGhlIGJyaWRnZXMgd2l0aG91dCBGUEdB
IGZpcm13YXJlIGlzCj4gYmFkIi4gV2hpY2ggaXMgY29ycmVjdCBvZiBjb3Vyc2UuIEkgc3RpbGwg
ZG9uJ3Qgc2VlIHdoeSB0aGUgYnJpZGdlcwo+IG5vZGVzIHNob3VsZG4ndCBiZSBpbiB0aGUgc29j
ZnBnYS5kdHNpIGFuZCB3aWxsIHRoZW4gYmUganVzdCBlbmFibGVkIGluCj4gdGhlIGJvYXJkIGZp
bGVzIHdpdGhvdXQgaGF2aW5nIHRvIGRlZmluZSB0aGUgcmVzZXRzIGFuZCBhbGwuCj4gCj4gCgpJ
J3ZlIGFwcGxpZWQgYm90aCBwYXRjaGVzLgoKVGhhbmtzLApEaW5oCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
