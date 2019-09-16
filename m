Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80412B3D9F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 17:27:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zip7C13DauLlHdkTn4lj9Ph1BpcRLrBgZA5Ks+LlR8s=; b=cUeFk5N5Nq9EAe
	S3cTb+fLv0XfbZw4sKdSXfEkwRHboRbec+7+e3UQMH/y4J2kqKu6uSkaumHxPGNd6N3h9Tzazr515
	oNjgBmHTVLZvw+gfUu7ku4phfkVBD3thWlvDbhGqE0kV844YNV6A6jUdWWZ13Apy55v79XvC2ZtTg
	n9i66D1u4Nv8mQ++xp8aUxkIWfshHwzWcm8XoSEBJHYpX4kllEvcJ5rywHZ2k8qmadc/4MEpnhwe8
	rHIeZsFi5M70ReUlgJqTS6Krct2AWbU2Wo/Jk+9biuUobiAdFM1Bq/UySQy5++ae8LeGc98+5vy1E
	baJu6DEIzPWWNUjXr+Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9suH-00083W-9x; Mon, 16 Sep 2019 15:27:13 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9stw-00081z-JB
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 15:26:54 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id A8D59719CC43F681D61C;
 Mon, 16 Sep 2019 23:26:32 +0800 (CST)
Received: from [127.0.0.1] (10.177.251.225) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0;
 Mon, 16 Sep 2019 23:26:25 +0800
Subject: Re: [PATCH] arm64: psci: Use udelay() instead of msleep() to reduce
 waiting time
To: David Laight <David.Laight@ACULAB.COM>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will@kernel.org" <will@kernel.org>
References: <e4d42bda-72f2-4002-f319-1cbe2bff74d2@huawei.com>
 <18c9fd22d72d4ea1a11e800e8873dd8d@AcuMS.aculab.com>
From: Yunfeng Ye <yeyunfeng@huawei.com>
Message-ID: <bf4ab998-00af-1638-0ab4-64f3ea02568c@huawei.com>
Date: Mon, 16 Sep 2019 23:26:20 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <18c9fd22d72d4ea1a11e800e8873dd8d@AcuMS.aculab.com>
Content-Language: en-US
X-Originating-IP: [10.177.251.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_082652_824986_0C17CC6D 
X-CRM114-Status: GOOD (  18.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "wuyun.wu@huawei.com" <wuyun.wu@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyMDE5LzkvMTIgMTY6NDgsIERhdmlkIExhaWdodCB3cm90ZToKPiBGcm9tOiBZdW5mZW5n
IFllCj4+IFNlbnQ6IDExIFNlcHRlbWJlciAyMDE5IDA5OjUwCj4+IFdlIHdhbnQgdG8gcmVkdWNl
IHRoZSB0aW1lIG9mIGNwdV9kb3duKCkgZm9yIHNhdmluZyBwb3dlciwgZm91bmQgdGhhdAo+PiBj
cHVfcHNjaV9jcHVfa2lsbCgpIGNvc3QgMTBtcyBhZnRlciBwc2NpX29wcy5hZmZpbml0eV9pbmZv
KCkgZmFpbC4KPj4KPj4gTm9ybWFsbHkgdGhlIHRpbWUgY3B1IGRlYWQgaXMgdmVyeSBzaG9ydCwg
aXQgaXMgbm8gbmVlZCB0byB3YWl0IDEwbXMuCj4+IHNvIHVzZSB1ZGVsYXkgMTB1cyB0byBpbnN0
ZWFkIG1zbGVlcCAxMG1zIGluIGV2ZXJ5IHdhaXRpbmcgbG9vcCwgYW5kIGFkZAo+PiBjb25kX3Jl
c2NoZWQoKSB0byBnaXZlIGEgY2hhbmNlIHRvIHJ1biBhIGhpZ2hlci1wcmlvcml0eSBwcm9jZXNz
Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBZdW5mZW5nIFllIDx5ZXl1bmZlbmdAaHVhd2VpLmNvbT4K
Pj4gLS0tCj4+ICBhcmNoL2FybTY0L2tlcm5lbC9wc2NpLmMgfCA2ICsrKy0tLQo+PiAgMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtNjQva2VybmVsL3BzY2kuYyBiL2FyY2gvYXJtNjQva2VybmVsL3BzY2kuYwo+
PiBpbmRleCA4NWVlN2QwLi45ZTlkOGE2IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2tlcm5l
bC9wc2NpLmMKPj4gKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvcHNjaS5jCj4+IEBAIC04NiwxNSAr
ODYsMTUgQEAgc3RhdGljIGludCBjcHVfcHNjaV9jcHVfa2lsbCh1bnNpZ25lZCBpbnQgY3B1KQo+
PiAgCSAqIHdoaWxlIGl0IGlzIGR5aW5nLiBTbywgdHJ5IGFnYWluIGEgZmV3IHRpbWVzLgo+PiAg
CSAqLwo+Pgo+PiAtCWZvciAoaSA9IDA7IGkgPCAxMDsgaSsrKSB7Cj4+ICsJZm9yIChpID0gMDsg
aSA8IDEwMDAwOyBpKyspIHsKPj4gIAkJZXJyID0gcHNjaV9vcHMuYWZmaW5pdHlfaW5mbyhjcHVf
bG9naWNhbF9tYXAoY3B1KSwgMCk7Cj4+ICAJCWlmIChlcnIgPT0gUFNDSV8wXzJfQUZGSU5JVFlf
TEVWRUxfT0ZGKSB7Cj4+ICAJCQlwcl9pbmZvKCJDUFUlZCBraWxsZWQuXG4iLCBjcHUpOwo+PiAg
CQkJcmV0dXJuIDA7Cj4+ICAJCX0KPj4KPj4gLQkJbXNsZWVwKDEwKTsKPj4gLQkJcHJfaW5mbygi
UmV0cnlpbmcgYWdhaW4gdG8gY2hlY2sgZm9yIENQVSBraWxsXG4iKTsKPj4gKwkJY29uZF9yZXNj
aGVkKCk7Cj4+ICsJCXVkZWxheSgxMCk7Cj4gCj4gWW91IHJlYWxseSBkb24ndCB3YW50IHRvIGJl
IGRvaW5nIDEwMDAwIHVkZWxheSgxMCkgYmVmb3JlIGdpdmluZyB1cC4KPiAKPiBJZiB1ZGVsYXko
MTApIGlzIGxvbmcgZW5vdWdoIGZvciB0aGUgbm9ybWFsIGNhc2UsIHRoZW4gZG8gdGhhdCBvbmNl
Lgo+IEFmdGVyIHRoYXQgdXNlIHVzbGVlcF9yYW5nZSgpLgo+ID4gCURhdmlkCj4gClRoYW5rcyBm
b3IgeW91ciBhZHZpY2UuIHRoZSBkZWxheSBkZXBlbmQgb24gdGhlIG51bSBvZiBjb3JlcywgcmFu
Z2UKZnJvbSA1MHVzIHRvIDUwMHVzLCBJIGhhdmUgdGVzdCB0aGUgdGltZSBvbiB0aGUgMTQwKyBj
b3JlcyBjcHXvvJoKCiAgKDEwdXMgZXZlcnkgdGltZSkKICBbIDExNzcuOTc5NjQyXSBwc2NpOiBD
UFUxIGtpbGxlZC4gdG90YWwgd2FpdCA0IHRpbWVzCiAgWyAxMTc4LjAxMTM2OV0gcHNjaTogQ1BV
MiBraWxsZWQuIHRvdGFsIHdhaXQgNiB0aW1lcwogIFsgMTE3OC4wMzUyNDddIHBzY2k6IENQVTMg
a2lsbGVkLiB0b3RhbCB3YWl0IDMgdGltZXMKICBbIDExNzguMDcxMTM0XSBwc2NpOiBDUFU0IGtp
bGxlZC4gdG90YWwgd2FpdCA4IHRpbWVzCiAgLi4uLi4uCiAgWyAxMTkwLjEyODIwMl0gcHNjaTog
Q1BVMTM5IGtpbGxlZC4gdG90YWwgd2FpdCA1MCB0aW1lcwogIFsgMTE5MC4xNTYyNjZdIHBzY2k6
IENQVTE0MCBraWxsZWQuIHRvdGFsIHdhaXQgNDggdGltZXMKICBbIDExOTAuMTkyMDgyXSBwc2Np
OiBDUFUxNDEga2lsbGVkLiB0b3RhbCB3YWl0IDQ2IHRpbWVzCiAgWyAxMTkwLjIyNDEwNF0gcHNj
aTogQ1BVMTQyIGtpbGxlZC4gdG90YWwgd2FpdCA0NiB0aW1lcwoKQ2FuIEkgYnVzdC13YWl0IDFt
c++8jHdoaWNoIGlzIDEwMCB0aWVtcyB1ZGVsYXkoMTApLCBhZnRlciB0aGF0LCB1c2UKdXNsZWVw
X3JhbmdlKDEwMDAsIDEwMDAwKSA/ICBJIGRvbid0IHdhbnQgb3RoZXIgcHJvY2VzcyBvY2N1cHkg
Y3B1CmZvciBhIGxvbmcgdGltZSB3aGVuIEkgbGV0IG91dCB0aGUgY3B1LiB0aGFua3MuCgo+IC0K
PiBSZWdpc3RlcmVkIEFkZHJlc3MgTGFrZXNpZGUsIEJyYW1sZXkgUm9hZCwgTW91bnQgRmFybSwg
TWlsdG9uIEtleW5lcywgTUsxIDFQVCwgVUsKPiBSZWdpc3RyYXRpb24gTm86IDEzOTczODYgKFdh
bGVzKQo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
