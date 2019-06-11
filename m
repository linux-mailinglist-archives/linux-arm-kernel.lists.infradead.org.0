Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFA53D0AC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 17:23:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8MQpl0GY0zjmPz47BLj4vxZfLEADSy7HREA4ZwJVnFo=; b=HZqpLB4zKAg3FA
	PthK+MENzCWZjh3tsNr/cPlq3+FptbKkOzsEoozjt2y6ahGr4jpuAkGmsQ58w6cujL8baEFvgGCTt
	HuCmwJb7WGBSqI7Reo31WM3/IumKketJoUMx2j0ghVz5zI/03Ke7en4Hx1Au0R8gAg904QixiMLQP
	ae4pmEudhimfMrBfNZY/Hj3C2VTtE2jPakBMwA3He5hVT1gafmTgc8VqARSlpeerlW6WOuBV9OpbR
	tf1Hkv8g8PUchHU3rl2WxMYF+HF4AUtZ48Z0QD9dBCj4QEWujsW1ZCTTr0xqVSId3hAHmvLyaaL3R
	3DjB5atNOnxfJVoqOBIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haicY-0006GS-J5; Tue, 11 Jun 2019 15:23:34 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haicK-0006Fd-Vh
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 15:23:22 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 7DB43F5E42106CD2EB1F;
 Tue, 11 Jun 2019 23:23:11 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Tue, 11 Jun 2019
 23:23:09 +0800
Subject: Re: [PATCH] arm64: tlbflush: Ensure start/end of address range are
 aligned to stride
To: Will Deacon <will.deacon@arm.com>, <linux-arm-kernel@lists.infradead.org>
References: <20190611121928.19253-1-will.deacon@arm.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <ef079778-2111-2672-129d-b2876496a9d8@huawei.com>
Date: Tue, 11 Jun 2019 23:23:04 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20190611121928.19253-1-will.deacon@arm.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_082321_262907_810A953D 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgV2lsbCwKCk9uIDIwMTkvNi8xMSAyMDoxOSwgV2lsbCBEZWFjb24gd3JvdGU6Cj4gU2luY2Ug
Y29tbWl0IDNkNjViNmJiYzAxZSAoImFybTY0OiB0bGJpOiBTZXQgTUFYX1RMQklfT1BTIHRvCj4g
UFRSU19QRVJfUFRFIiksIHdlIHJlc29ydCB0byBwZXItQVNJRCBpbnZhbGlkYXRpb24gd2hlbiBh
dHRlbXB0aW5nIHRvCj4gcGVyZm9ybSBtb3JlIHRoYW4gUFRSU19QRVJfUFRFIGludmFsaWRhdGlv
biBpbnN0cnVjdGlvbnMgaW4gYSBzaW5nbGUKPiBjYWxsIHRvIF9fZmx1c2hfdGxiX3JhbmdlKCku
IFdoaWxzdCB0aGlzIGlzIGJlbmVmaWNpYWwsIHRoZSBtbXVfZ2F0aGVyCj4gY29kZSBkb2VzIG5v
dCBlbnN1cmUgdGhhdCB0aGUgZW5kIGFkZHJlc3Mgb2YgdGhlIHJhbmdlIGlzIHJvdW5kZWQtdXAK
PiB0byB0aGUgc3RyaWRlIHdoZW4gZnJlZWluZyBpbnRlcm1lZGlhdGUgcGFnZSB0YWJsZXMgaW4g
cFhYX2ZyZWVfdGxiKCksCj4gd2hpY2ggZGVmZWF0cyBvdXIgcmFuZ2UgY2hlY2tpbmcuCj4gCj4g
QWxpZ24gdGhlIGJvdW5kcyBwYXNzZWQgaW50byBfX2ZsdXNoX3RsYl9yYW5nZSgpLgo+IAo+IENj
OiBDYXRhbGluIE1hcmluYXMgPGNhdGFsaW4ubWFyaW5hc0Bhcm0uY29tPgo+IENjOiBQZXRlciBa
aWpsc3RyYSA8cGV0ZXJ6QGluZnJhZGVhZC5vcmc+Cj4gUmVwb3J0ZWQtYnk6IEhhbmp1biBHdW8g
PGd1b2hhbmp1bkBodWF3ZWkuY29tPgoKVGhhbmtzIGZvciB0aGUgcGF0Y2jvvIxJIHdpbGwgdGVz
dCB0aGUgcGF0Y2ggdG9tb3Jyb3cgbXkgbG9jYWwgdGltZQphcyBpdCdzIGxhdGUgaGVyZSwgYW5k
IHdpbGwgdXBkYXRlIHlvdSB3aGVuIEkgZ2V0IHRoZSByZXN1bHRzLgoKVGhhbmtzCkhhbmp1bgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
