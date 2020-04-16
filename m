Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1FF1AB53E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 03:11:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=glZ3nnXrDS9FnMnEB/kmMbbg/81j8bRPVqvbJzCJswY=; b=H9rRdXyBGBPQd39+h7JbOJz5D
	qCNIzaBuJgsP33zHh9K/HLzX6CukuuKQ093Wwp2G04sohVay0AFjIhGk9AMjoXC+ktjsvZfQIVUiV
	74arbsEb2iE+XIGKcMeTK+Wyb7mz0m8QNW0z17i9ojda2CwDL6gVzNPL6BQ3mVmPCh5WGOBuuizTg
	DTZC8leRK+Ei1gCHECOf7Xd5Qb9UXb81l47OZUNyye0/73XRzfo/W5M1pgjqjKdn8jHrdlmzX/pEQ
	Cw8oGcRS919ZeCXO0xSdPo8ZMdKqIucyM3596ouX/LWMFSBrx6Hs0xLmjAheJbUsXVSOvlsTFM3nh
	xGWYw4EYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOt3Z-0002JF-0O; Thu, 16 Apr 2020 01:11:05 +0000
Received: from cmccmta1.chinamobile.com ([221.176.66.79])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOt3Q-0002IS-Pc
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 01:10:59 +0000
Received: from spf.mail.chinamobile.com (unknown[172.16.121.11]) by
 rmmx-syy-dmz-app04-12004 (RichMail) with SMTP id 2ee45e97b0824dd-737b4;
 Thu, 16 Apr 2020 09:10:26 +0800 (CST)
X-RM-TRANSID: 2ee45e97b0824dd-737b4
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from [172.20.146.139] (unknown[112.25.154.146])
 by rmsmtp-syy-appsvr06-12006 (RichMail) with SMTP id 2ee65e97b08104b-9e65a;
 Thu, 16 Apr 2020 09:10:26 +0800 (CST)
X-RM-TRANSID: 2ee65e97b08104b-9e65a
Subject: Re: [PATCH] i2c: drivers: Omit superfluous error message
 inefm32_i2c_probe()
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <20200415135734.14660-1-tangbin@cmss.chinamobile.com>
 <20200415142225.pxstqwyqvj7ayd6m@pengutronix.de>
From: Tang Bin <tangbin@cmss.chinamobile.com>
Message-ID: <9948c5c2-fbdd-4782-8fae-1eccb03e5c85@cmss.chinamobile.com>
Date: Thu, 16 Apr 2020 09:12:21 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200415142225.pxstqwyqvj7ayd6m@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_181057_318185_47886726 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [221.176.66.79 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: wsa@the-dreams.de, linux-kernel@vger.kernel.org, o.rempel@pengutronix.de,
 linux-i2c@vger.kernel.org, ardb@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVXdlOgoKT24gMjAyMC80LzE1IDIyOjIyLCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90ZToKPiBI
ZWxsbywKPgo+IE9uIFdlZCwgQXByIDE1LCAyMDIwIGF0IDA5OjU3OjM0UE0gKzA4MDAsIFRhbmcg
QmluIHdyb3RlOgo+PiBJbiB0aGUgZnVuY3Rpb24gZWZtMzJfaTJjX3Byb2JlKCksd2hlbiBnZXQg
aXJxIGZhaWxlZCx0aGUgZnVuY3Rpb24KPj4gcGxhdGZvcm1fZ2V0X2lycSgpIGxvZ3MgYW4gZXJy
b3IgbWVzc2FnZSxzbyByZW1vdmUgcmVkdW5kYW50IG1lc3NhZ2UKPj4gaGVyZS4KPiBhZGRpbmcg
YSBzcGFjZSBhZnRlciBlYWNoIGNvbW1hIHNlZW1zIHVzdWFsIHN0eWxlLgpHb3QgaXQsIEkgd2ls
bCBub3RpY2UuIFdoZXRoZXIgc2hvdWxkIEkgc3VibWl0IHYyIGZvciB0aGlzIHByb2JsZW1zPyBU
aGFua3MuCj4KPj4gU2lnbmVkLW9mZi1ieTogVGFuZyBCaW4gPHRhbmdiaW5AY21zcy5jaGluYW1v
YmlsZS5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IFNoZW5nanUgWmhhbmcgPHpoYW5nc2hlbmdqdUBj
bXNzLmNoaW5hbW9iaWxlLmNvbT4KPiBVc3VhbGx5IHRoZSBTaWduLW9mZiBvZiB0aGUgc2VuZGVy
IGNvbWVzIGxhc3QuIEhvdyBpcyBTaGVuZ2p1IFpoYW5nCj4gaW52b2x2ZWQgd2l0aCB0aGlzIHBh
dGNoPwpHb3QgaXQsIEkgd2lsbCBub3RpY2UgbmV4dCB0aW1lLiBUaGFua3MuCj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLWVmbTMyLmMgYi9kcml2ZXJzL2kyYy9idXNzZXMv
aTJjLWVmbTMyLmMKPj4gaW5kZXggYThjNjMyM2U3Li40ZGUzMWZhZTcgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtZWZtMzIuYwo+PiArKysgYi9kcml2ZXJzL2kyYy9idXNz
ZXMvaTJjLWVmbTMyLmMKPj4gQEAgLTM1Miw3ICszNTIsNiBAQCBzdGF0aWMgaW50IGVmbTMyX2ky
Y19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+PiAgIAo+PiAgIAlyZXQgPSBw
bGF0Zm9ybV9nZXRfaXJxKHBkZXYsIDApOwo+PiAgIAlpZiAocmV0IDw9IDApIHsKPj4gLQkJZGV2
X2VycigmcGRldi0+ZGV2LCAiZmFpbGVkIHRvIGdldCBpcnEgKCVkKVxuIiwgcmV0KTsKPiBUaGUg
Y2hhbmdlIGxvb2tzIGZpbmUuCgpUaGFua3MsCgpUYW5nIEJpbgoKPgoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
