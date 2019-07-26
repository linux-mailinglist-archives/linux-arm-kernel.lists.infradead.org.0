Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7610876FD2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 19:25:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C+0WCAe1LaIW0LRsA+/1x9vhh3AO8rf6t1r5NH6edos=; b=GI4mYW6G+vnncNuqIJuBW2THG
	fUnCa5pbVbmT1FIFtaNl1vTqbfj9t3D2EBKxZwMmLw+zeHBgMlTvTZYi1CJ+YFG6NQhPJGs1+VoFG
	4AejUxMxg6XhcS3XZaSlzpPqYrBRLUSqYtk7FwYUgjPoPOQm+O4mJWtxySGXazqwhzFFMvg4pPxhi
	wgffN/A9iJx+kS/7s+wvpd0he9qfw6nKzmiji0/U28kYFv6qF805DXkNzFS/xEZVAjkUFL19sHDIV
	I3t9nU6Lre2brBkAXJbPnQEkC4wz953/vXCCH6qDFM5W2vnncieY+2y/Rq28C0qdQopNjJ5XIB/cq
	QhGlDeldQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr3xh-0007nB-Hi; Fri, 26 Jul 2019 17:24:57 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr3xV-0007lz-VR
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 17:24:47 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 10:24:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,311,1559545200"; d="scan'208";a="369603426"
Received: from haiyuewa-mobl.ccr.corp.intel.com (HELO [10.255.31.18])
 ([10.255.31.18])
 by fmsmga005.fm.intel.com with ESMTP; 26 Jul 2019 10:24:43 -0700
Subject: Re: [RFC PATCH 14/17] ipmi: kcs: Finish configuring ASPEED KCS device
 before enable
From: "Wang, Haiyue" <haiyue.wang@linux.intel.com>
To: Andrew Jeffery <andrew@aj.id.au>, linux-aspeed@lists.ozlabs.org
References: <20190726053959.2003-1-andrew@aj.id.au>
 <20190726053959.2003-15-andrew@aj.id.au>
 <29a2d999-23bd-8e95-a1b8-f00e25a11df5@linux.intel.com>
Message-ID: <b4d60d12-0a1f-906a-1f3a-da0cfdd06be3@linux.intel.com>
Date: Sat, 27 Jul 2019 01:24:43 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <29a2d999-23bd-8e95-a1b8-f00e25a11df5@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_102446_021427_F680C0B7 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -3.4 (---)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 1.0 HK_RANDOM_FROM         From username looks random
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Corey Minyard <minyard@acm.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, joel@jms.id.au, openipmi-developer@lists.sourceforge.net,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CuWcqCAyMDE5LTA3LTI3IDAxOjA0LCBXYW5nLCBIYWl5dWUg5YaZ6YGTOgo+IOWcqCAyMDE5LTA3
LTI2IDEzOjM5LCBBbmRyZXcgSmVmZmVyeSDlhpnpgZM6Cj4+IFRoZSBjdXJyZW50bHkgaW50ZXJy
dXB0cyBhcmUgY29uZmlndXJlZCBhZnRlciB0aGUgY2hhbm5lbCB3YXMgZW5hYmxlZC4KPj4KPj4g
Q2M6IEhhaXl1ZSBXYW5nPGhhaXl1ZS53YW5nQGxpbnV4LmludGVsLmNvbT4KPj4gQ2M6IENvcmV5
IE1pbnlhcmQ8bWlueWFyZEBhY20ub3JnPgo+PiBDYzogQXJuZCBCZXJnbWFubjxhcm5kQGFybmRi
LmRlPgo+PiBDYzogR3JlZyBLcm9haC1IYXJ0bWFuPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3Jn
Pgo+PiBDYzpvcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cj4+IFNpZ25l
ZC1vZmYtYnk6IEFuZHJldyBKZWZmZXJ5PGFuZHJld0Bhai5pZC5hdT4KPj4gLS0tCj4+IMKgIGRy
aXZlcnMvY2hhci9pcG1pL2tjc19ibWNfYXNwZWVkLmMgfCA3ICsrKystLS0KPj4gwqAgMSBmaWxl
IGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvY2hhci9pcG1pL2tjc19ibWNfYXNwZWVkLmMgCj4+IGIvZHJpdmVycy9jaGFy
L2lwbWkva2NzX2JtY19hc3BlZWQuYwo+PiBpbmRleCAzYzk1NTk0NmU2NDcuLmUzZGQwOTAyMjU4
OSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9jaGFyL2lwbWkva2NzX2JtY19hc3BlZWQuYwo+PiAr
KysgYi9kcml2ZXJzL2NoYXIvaXBtaS9rY3NfYm1jX2FzcGVlZC5jCj4+IEBAIC0yNjgsMTMgKzI2
OCwxNCBAQCBzdGF0aWMgaW50IGFzcGVlZF9rY3NfcHJvYmUoc3RydWN0IAo+PiBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCj4+IMKgwqDCoMKgwqAga2NzX2JtYy0+aW9faW5wdXRiID0gYXNwZWVkX2tj
c19pbmI7Cj4+IMKgwqDCoMKgwqAga2NzX2JtYy0+aW9fb3V0cHV0YiA9IGFzcGVlZF9rY3Nfb3V0
YjsKPj4gwqAgK8KgwqDCoCByYyA9IGFzcGVlZF9rY3NfY29uZmlnX2lycShrY3NfYm1jLCBwZGV2
KTsKPj4gK8KgwqDCoCBpZiAocmMpCj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmM7Cj4+ICsK
Pj4gwqDCoMKgwqDCoCBkZXZfc2V0X2RydmRhdGEoZGV2LCBrY3NfYm1jKTsKPgo+Cj4gVGhhbmtz
IGZvciBjYXRjaGluZyB0aGlzLCBmb3Igbm90IG1pc3MgdGhlIGRhdGEuCj4KUmV2aWV3ZWQtYnk6
IEhhaXl1ZSBXYW5nIDxoYWl5dWUud2FuZ0BsaW51eC5pbnRlbC5jb20+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
