Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCC1F8A77
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 09:27:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5MA+kxwI16nDr+UcoEL8TxNVczd00rQEDhOkRuIvCJs=; b=ZIrDeIwGQfhu0h
	QwfXA/ZJ+Ap0GpdzKu7/IFQQTw7Mg1XJ9yqbpMJRBisTQT0xNQXaUTXRy3YYq4Cfcjd5bi929Aixp
	5Z5MMfevF2MnkuowAiallV5GCOZNoFw22aDtPjGq1a5QZnGPkZ3CgIDh0aA0YOrrP2j+hMqbG95LI
	x3vRVpgOkPEPlmPYkGG7KP/4WOL6Kzd3mHU7YnZW6VU2MUPDL9ZCxYTh7I1Eijbb+gxlwilZH6brR
	v9FTc6Kdw7Y3ZInJe/zLAykqycE7zNsMvUqgcI8qNjJoP/m4ZCmtF72LUjh7zXeIbJY8Iq885at/J
	aNfNmMLmUb1Blky3rS3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iURVt-0006mx-OK; Tue, 12 Nov 2019 08:27:01 +0000
Received: from 13.mo1.mail-out.ovh.net ([178.33.253.128])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iURVe-0006jq-Nu
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 08:26:48 +0000
Received: from player688.ha.ovh.net (unknown [10.108.57.16])
 by mo1.mail-out.ovh.net (Postfix) with ESMTP id 56E031965CF
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 09:26:40 +0100 (CET)
Received: from kaod.org (lfbn-1-2229-223.w90-76.abo.wanadoo.fr [90.76.50.223])
 (Authenticated sender: clg@kaod.org)
 by player688.ha.ovh.net (Postfix) with ESMTPSA id 1F0BDBE87D59;
 Tue, 12 Nov 2019 08:26:33 +0000 (UTC)
Subject: Re: [PATCH 1/5] ARM: config: aspeed-g5: Enable 8250_DW quirks
To: Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
References: <20191112062857.32638-1-joel@jms.id.au>
 <20191112062857.32638-2-joel@jms.id.au>
From: =?UTF-8?Q?C=c3=a9dric_Le_Goater?= <clg@kaod.org>
Message-ID: <4c16fd0d-3746-392f-bb55-ec24bf7f15f7@kaod.org>
Date: Tue, 12 Nov 2019 09:26:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191112062857.32638-2-joel@jms.id.au>
Content-Language: en-US
X-Ovh-Tracer-Id: 7835981880012082029
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedruddvkedgieehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdqfffguegfifdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepuffvfhfhkffffgggjggtgfesthekredttdefjeenucfhrhhomhepveorughrihgtpgfnvggpifhorghtvghruceotghlgheskhgrohgurdhorhhgqeenucfkpheptddrtddrtddrtddpledtrdejiedrhedtrddvvdefnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrheikeekrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheptghlgheskhgrohgurdhorhhgpdhrtghpthhtoheplhhinhhugidqrghrmhdqkhgvrhhnvghlsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_002646_929619_6E81E5FD 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.33.253.128 listed in list.dnswl.org]
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
Cc: linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTIvMTEvMjAxOSAwNzoyOCwgSm9lbCBTdGFubGV5IHdyb3RlOgo+IFRoaXMgZHJpdmVyIG9w
dGlvbiBpcyB1c2VkIGJ5IHRoZSBBU1QyNjAwIEEwIGJvYXJkcyB0byB3b3JrIGFyb3VuZCBhCj4g
aGFyZHdhcmUgaXNzdWUuCj4gCj4gU2lnbmVkLW9mZi1ieTogSm9lbCBTdGFubGV5IDxqb2VsQGpt
cy5pZC5hdT4KClJldmlld2VkLWJ5OiBDw6lkcmljIExlIEdvYXRlciA8Y2xnQGthb2Qub3JnPgoK
PiAtLS0KPiAgYXJjaC9hcm0vY29uZmlncy9hc3BlZWRfZzVfZGVmY29uZmlnIHwgMSArCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9j
b25maWdzL2FzcGVlZF9nNV9kZWZjb25maWcgYi9hcmNoL2FybS9jb25maWdzL2FzcGVlZF9nNV9k
ZWZjb25maWcKPiBpbmRleCA1OTc1MzZjYzk1NzMuLmI4NzUwOGM3MDU2YyAxMDA2NDQKPiAtLS0g
YS9hcmNoL2FybS9jb25maWdzL2FzcGVlZF9nNV9kZWZjb25maWcKPiArKysgYi9hcmNoL2FybS9j
b25maWdzL2FzcGVlZF9nNV9kZWZjb25maWcKPiBAQCAtMTM5LDYgKzEzOSw3IEBAIENPTkZJR19T
RVJJQUxfODI1MF9SVU5USU1FX1VBUlRTPTYKPiAgQ09ORklHX1NFUklBTF84MjUwX0VYVEVOREVE
PXkKPiAgQ09ORklHX1NFUklBTF84MjUwX0FTUEVFRF9WVUFSVD15Cj4gIENPTkZJR19TRVJJQUxf
ODI1MF9TSEFSRV9JUlE9eQo+ICtDT05GSUdfU0VSSUFMXzgyNTBfRFc9eQo+ICBDT05GSUdfU0VS
SUFMX09GX1BMQVRGT1JNPXkKPiAgQ09ORklHX0FTUEVFRF9LQ1NfSVBNSV9CTUM9eQo+ICBDT05G
SUdfQVNQRUVEX0JUX0lQTUlfQk1DPXkKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
