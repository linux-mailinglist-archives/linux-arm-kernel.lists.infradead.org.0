Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6991265665
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 14:12:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=clYR6gPnkMyXkkMOBchU9HweJnSS0A1nLt1d96of4MM=; b=Q1InVgjtzO/6gTmdc2aXN2Hl+
	8/71kh1+9Aj2g1nw2dMII7zSxwXd+VXu0JoKy0Az13yoOcJaYwDu8Rmr/g5OjZa+nZn7LKndNQg2N
	cSN+J2OxjfIqLuKVclklKK+o8C1dOiQeX0CaXBupcByLH6Jnk4Dnlfkv2UrSg4hetKzPHBhc+gxod
	JjL9muk62PeHiMjF1Aop4p9P77hnnU+xEcGmKAxkhMdeM9YYS1Cr4wjD5INYsijVaX9NUSY7VfoO8
	DInyNGSkijevfHPZJLOHsxMHLnRmiRtpTdlTo7tDhq2P7iC2xmZrMJRSuFwkjBbCkKhgH1lwjja+4
	SrkNqC+1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlXve-00054v-6E; Thu, 11 Jul 2019 12:12:02 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlXvW-00054F-Mc
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 12:11:56 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 8DABBFC10B8E287E9B5B;
 Thu, 11 Jul 2019 20:11:45 +0800 (CST)
Received: from [127.0.0.1] (10.74.223.225) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Thu, 11 Jul 2019
 20:11:36 +0800
Subject: Re: [hisi:next/drivers 5/6] drivers/bus/hisi_lpc.c:656:3: error:
 implicit declaration of function 'hisi_lpc_acpi_remove'; did you mean
 'hisi_lpc_acpi_probe'?
To: kbuild test robot <lkp@intel.com>
References: <201907011247.Iu9WNSKb%lkp@intel.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <4744d849-1460-b7a9-7d16-44282bb1eee0@huawei.com>
Date: Thu, 11 Jul 2019 20:11:32 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <201907011247.Iu9WNSKb%lkp@intel.com>
X-Originating-IP: [10.74.223.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_051155_032706_CCDC3AF6 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: olof@lixom.net, Wei Xu <xuwei5@hisilicon.com>, arnd@arndb.de,
 kbuild-all@01.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

5ZyoIDAxLzA3LzIwMTkgMTI6MjMsIGtidWlsZCB0ZXN0IHJvYm90IOWGmemBkzoKPiB0cmVlOiAg
IGh0dHBzOi8vZ2l0aHViLmNvbS9oaXNpbGljb24vbGludXgtaGlzaSBuZXh0L2RyaXZlcnMKPiBo
ZWFkOiAgIDA3YzgxMWFmMWMwMGQ3YjQyMTJlYWM4NjkwMGIwMjNiNjQwNWE5NTQKPiBjb21taXQ6
IDBjNDIyMmJiYmE0NWU0NzVkNjgwMDM3YmJkOTM5ODQyMGNlNWQ5YzYgWzUvNl0gYnVzOiBoaXNp
X2xwYzogQWRkIC5yZW1vdmUgbWV0aG9kIHRvIGF2b2lkIGRyaXZlciB1bmJpbmQgY3Jhc2gKPiBj
b25maWc6IGFybTY0LWFsbHllc2NvbmZpZyAoYXR0YWNoZWQgYXMgLmNvbmZpZykKPiBjb21waWxl
cjogYWFyY2g2NC1saW51eC1nY2MgKEdDQykgNy40LjAKPiByZXByb2R1Y2U6Cj4gICAgICAgICAg
d2dldCBodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vaW50ZWwvbGtwLXRlc3RzL21h
c3Rlci9zYmluL21ha2UuY3Jvc3MgLU8gfi9iaW4vbWFrZS5jcm9zcwo+ICAgICAgICAgIGNobW9k
ICt4IH4vYmluL21ha2UuY3Jvc3MKPiAgICAgICAgICBnaXQgY2hlY2tvdXQgMGM0MjIyYmJiYTQ1
ZTQ3NWQ2ODAwMzdiYmQ5Mzk4NDIwY2U1ZDljNgo+ICAgICAgICAgICMgc2F2ZSB0aGUgYXR0YWNo
ZWQgLmNvbmZpZyB0byBsaW51eCBidWlsZCB0cmVlCj4gICAgICAgICAgR0NDX1ZFUlNJT049Ny40
LjAgbWFrZS5jcm9zcyBBUkNIPWFybTY0Cj4gCj4gSWYgeW91IGZpeCB0aGUgaXNzdWUsIGtpbmRs
eSBhZGQgZm9sbG93aW5nIHRhZwo+IFJlcG9ydGVkLWJ5OiBrYnVpbGQgdGVzdCByb2JvdCA8bGtw
QGludGVsLmNvbT4KPiAKPiBBbGwgZXJyb3JzIChuZXcgb25lcyBwcmVmaXhlZCBieSA+Pik6Cj4g
Cj4gICAgIGRyaXZlcnMvYnVzL2hpc2lfbHBjLmM6IEluIGZ1bmN0aW9uICdoaXNpX2xwY19yZW1v
dmUnOgo+Pj4gZHJpdmVycy9idXMvaGlzaV9scGMuYzo2NTY6MzogZXJyb3I6IGltcGxpY2l0IGRl
Y2xhcmF0aW9uIG9mIGZ1bmN0aW9uICdoaXNpX2xwY19hY3BpX3JlbW92ZSc7IGRpZCB5b3UgbWVh
biAnaGlzaV9scGNfYWNwaV9wcm9iZSc/IFstV2Vycm9yPWltcGxpY2l0LWZ1bmN0aW9uLWRlY2xh
cmF0aW9uXQo+ICAgICAgICBoaXNpX2xwY19hY3BpX3JlbW92ZShkZXYpOwo+ICAgICAgICBefn5+
fn5+fn5+fn5+fn5+fn5+fgo+ICAgICAgICBoaXNpX2xwY19hY3BpX3Byb2JlCj4gICAgIGNjMTog
c29tZSB3YXJuaW5ncyBiZWluZyB0cmVhdGVkIGFzIGVycm9ycwo+IAo+IHZpbSArNjU2IGRyaXZl
cnMvYnVzL2hpc2lfbHBjLmMKClRoaXMgY29kZSBzZWVtcyB0byBiZSBpbiBsaW51eC1uZXh0LCBi
dXQgT2xvZiBzYWlkIHRoYXQgaGUgZHJvcHBlZCB0aGUgCmJyYW5jaCBjb250YWluaW5nIHRoZSBw
YXRjaHNldC4KCkpvaG4KCj4gCj4gICAgIDY0NwkKPiAgICAgNjQ4CXN0YXRpYyBpbnQgaGlzaV9s
cGNfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAgIDY0OQl7Cj4gICAg
IDY1MAkJc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKPiAgICAgNjUxCQlzdHJ1Y3Qg
YWNwaV9kZXZpY2UgKmFjcGlfZGV2aWNlID0gQUNQSV9DT01QQU5JT04oZGV2KTsKPiAgICAgNjUy
CQlzdHJ1Y3QgaGlzaV9scGNfZGV2ICpscGNkZXYgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKPiAg
ICAgNjUzCQlzdHJ1Y3QgbG9naWNfcGlvX2h3YWRkciAqcmFuZ2UgPSBscGNkZXYtPmlvX2hvc3Q7
Cj4gICAgIDY1NAkKPiAgICAgNjU1CQlpZiAoYWNwaV9kZXZpY2UpCj4gICA+IDY1NgkJCWhpc2lf
bHBjX2FjcGlfcmVtb3ZlKGRldik7Cj4gICAgIDY1NwkJZWxzZQo+ICAgICA2NTgJCQlvZl9wbGF0
Zm9ybV9kZXBvcHVsYXRlKGRldik7Cj4gICAgIDY1OQkKPiAgICAgNjYwCQlsb2dpY19waW9fdW5y
ZWdpc3Rlcl9yYW5nZShyYW5nZSk7Cj4gICAgIDY2MQkKPiAgICAgNjYyCQlyZXR1cm4gMDsKPiAg
ICAgNjYzCX0KPiAgICAgNjY0CQo+IAo+IC0tLQo+IDAtREFZIGtlcm5lbCB0ZXN0IGluZnJhc3Ry
dWN0dXJlICAgICAgICAgICAgICAgIE9wZW4gU291cmNlIFRlY2hub2xvZ3kgQ2VudGVyCj4gaHR0
cHM6Ly9saXN0cy4wMS5vcmcvcGlwZXJtYWlsL2tidWlsZC1hbGwgICAgICAgICAgICAgICAgICAg
SW50ZWwgQ29ycG9yYXRpb24KPiAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
