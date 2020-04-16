Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D87D11AB578
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 03:29:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xtk0D9olb6i+hP42VmqAPPU6GSDFgAYMEiJ6Qmfs2zI=; b=BBT16wHR5282yevlZO/nOe3UI
	B4f/qzAlBvreUxbLtfZI385h442qxAh/CfAI28jUG5rCqm5uVr/+vMIpPXZ6e5lI6lXAb21fXYB4C
	n+e4sFLPO6MtW4YuN0/IaSJfORERbpncDtE5VYBPDfCXEVBe3mBIXVZeVwKeHjEXrY744TSeHelLY
	7VhwXL8pZeBadJojDtUa8eCtM8Le6BNgRnvWwy7Zj1eFmbiiFGGVtFY02nA98XID1+e/gN925PrR1
	uiRcWMPEpHXyC2mkbJp+yVSwavPFtIbmqDzbVupwf20F/o4OJquh7qedDPTxApn4qsE7ymMkZc2zx
	kO2nnfN+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOtKw-0004xh-4W; Thu, 16 Apr 2020 01:29:02 +0000
Received: from cmccmta3.chinamobile.com ([221.176.66.81])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOtKp-0004ww-1b
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 01:28:56 +0000
Received: from spf.mail.chinamobile.com (unknown[172.16.121.9]) by
 rmmx-syy-dmz-app10-12010 (RichMail) with SMTP id 2eea5e97b4baf69-741fe;
 Thu, 16 Apr 2020 09:28:26 +0800 (CST)
X-RM-TRANSID: 2eea5e97b4baf69-741fe
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from [172.20.146.139] (unknown[112.25.154.146])
 by rmsmtp-syy-appsvr05-12005 (RichMail) with SMTP id 2ee55e97b4b9bad-0444d;
 Thu, 16 Apr 2020 09:28:26 +0800 (CST)
X-RM-TRANSID: 2ee55e97b4b9bad-0444d
Subject: Re: [PATCH] i2c: drivers: Avoid unnecessary check inefm32_i2c_probe()
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <20200415140640.19948-1-tangbin@cmss.chinamobile.com>
 <20200415143133.qwbes5whbqx5jf2j@pengutronix.de>
From: Tang Bin <tangbin@cmss.chinamobile.com>
Message-ID: <20cc01b8-2661-7b3e-3dbc-38f7e282679b@cmss.chinamobile.com>
Date: Thu, 16 Apr 2020 09:30:22 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200415143133.qwbes5whbqx5jf2j@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_182855_579791_0BA08B94 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [221.176.66.81 listed in list.dnswl.org]
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

SGkgVXdlOgoKT24gMjAyMC80LzE1IDIyOjMxLCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90ZToKPiBT
YW1lIHRoaW5ncyBhcHBseSBhcyBpbiB0aGUgcHJldmlvdXMgcGF0Y2guIChzcGFjZSBhZnRlciBw
dW5jdHVhdGlvbiwKPiBTb2Igb2Ygc2VuZGVyIHNob3VsZCBiZSBsYXN0KQpJIHdpbGwgbm90aWNl
IHRoaXMgcHJvYmxlbSBuZXh0IHRpbWUsIHRoYW5rcy4KPj4gLS0tCj4+ICAgZHJpdmVycy9pMmMv
YnVzc2VzL2kyYy1lZm0zMi5jIHwgMyAtLS0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMyBkZWxldGlv
bnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtZWZtMzIuYyBi
L2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtZWZtMzIuYwo+PiBpbmRleCA0ZGUzMWZhZTcuLjQ3ODZl
ZjZiMiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1lZm0zMi5jCj4+ICsr
KyBiL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtZWZtMzIuYwo+PiBAQCAtMzEyLDkgKzMxMiw2IEBA
IHN0YXRpYyBpbnQgZWZtMzJfaTJjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
Cj4+ICAgCWludCByZXQ7Cj4+ICAgCXUzMiBjbGtkaXY7Cj4+ICAgCj4+IC0JaWYgKCFucCkKPj4g
LQkJcmV0dXJuIC1FSU5WQUw7Cj4+IC0KPiBJIGRvbid0IGNhcmUgbXVjaCBhYm91dCB0aGlzIGNo
YW5nZS4gV2hpbGUgdGhlIHN0YXRlbWVudCB0aGF0IHRoaXMKPiBkcml2ZXIgaXMgb25seSBpbnN0
YW50aWF0ZWQgb24gZHQgcGxhdGZvcm1zIGlzIHByb2JhYmx5IHJpZ2h0LAo+IGV4cGxpY2l0bHkg
Y2hlY2tpbmcgZm9yIGl0IG1pZ2h0IHN0aWxsIHByZXZlbnQgc3VycHJpc2VzIGxhdGVyLCBzZXJ2
ZXMKPiBhcyBleHBsaWNpdCBzdGF0ZW1lbnQgZm9yIHRoZSBkcml2ZXIgcmVhZGVyIHRoYXQgbm9u
LWR0IGlzbid0IHN1cHBvc2VkCj4gdG8gd29yayBhbmQgZ2l2ZW4gdGhhdCB0aGUgY2hlY2sgaXMg
Y2hlYXAgSSB0ZW5kIHNsaWdodGx5IHRvIGp1c3Qga2VlcAo+IGl0Lgo+CkluIHRoaXMgZHJpdmVy
LCB0aGUgZnVuY3Rpb24gZWZtMzJfaTJjX3Byb2JlKCkgY2FuIGJlIHRyaWdnZXJlZCBvbmx5IGlm
IAp0aGUgcGxhdGZvcm1fZGV2aWNlIGFuZCBwbGF0Zm9ybV9kcml2ZXIgbWF0Y2hlcyzCoCBhbmQg
dGhlIG1hdGNoaW5nIApjb25kaXRpb24gaXMgRFRTLiBJdCdzIG15IG9waW5pb24uCgpUbmFua3Ms
CgpUYW5nIEJpbgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
