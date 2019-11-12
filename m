Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 780DAF8A82
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 09:30:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/VjtM7OFfJ74c0o3yh9os8hXm57HYuifKnvKcXhX9ow=; b=c3O32muqCTEm+S
	E4B1btDrFLHtidxJYYRbjpwfbHGJ/mcESHESl5eRvzy8i2bRSwtn8OPt/2RipOeQK6TSJInbe2MyU
	2zvneoZtfYDYCT0oRpWZNaJ964tc9QkJ1N0HF4DiPEPyLFpYj4tpkuDXdeLw89/0fRgTv0hFdHLh/
	cwaerFS9U0Cw7AtoTCudx26mtBEc6YWfmaBw/BkE5np0Yfde5zhyaZN0AldQwiRQP5CokTIthBkDq
	RNwqBvVoy20Zqodkicq/UFdc4n9cK8kSP7W1HQSgXAI2TYXGLs62mGf43MDtzVd6v2PKPcz5Tkamx
	Jz57+lDG+2kwEFL3huMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iURZD-0000gs-QJ; Tue, 12 Nov 2019 08:30:27 +0000
Received: from 8.mo173.mail-out.ovh.net ([46.105.46.122])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iURYp-0007k8-Sw
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 08:30:07 +0000
Received: from player157.ha.ovh.net (unknown [10.109.160.76])
 by mo173.mail-out.ovh.net (Postfix) with ESMTP id 21DCE12197B
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 09:30:01 +0100 (CET)
Received: from kaod.org (lfbn-1-2229-223.w90-76.abo.wanadoo.fr [90.76.50.223])
 (Authenticated sender: clg@kaod.org)
 by player157.ha.ovh.net (Postfix) with ESMTPSA id 75083BEC5F77;
 Tue, 12 Nov 2019 08:29:56 +0000 (UTC)
Subject: Re: [PATCH 5/5] ARM: config: multi_v5: ASPEED SDHCI, SGPIO
To: Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
References: <20191112062857.32638-1-joel@jms.id.au>
 <20191112062857.32638-6-joel@jms.id.au>
From: =?UTF-8?Q?C=c3=a9dric_Le_Goater?= <clg@kaod.org>
Message-ID: <20be55ef-c14d-60d8-56af-25dd7fcfc2b3@kaod.org>
Date: Tue, 12 Nov 2019 09:29:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191112062857.32638-6-joel@jms.id.au>
Content-Language: en-US
X-Ovh-Tracer-Id: 7892558347624090477
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedruddvkedgieehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdqfffguegfifdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepuffvfhfhkffffgggjggtgfesthekredttdefjeenucfhrhhomhepveorughrihgtpgfnvggpifhorghtvghruceotghlgheskhgrohgurdhorhhgqeenucfkpheptddrtddrtddrtddpledtrdejiedrhedtrddvvdefnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhduheejrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheptghlgheskhgrohgurdhorhhgpdhrtghpthhtoheplhhinhhugidqrghrmhdqkhgvrhhnvghlsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhgnecuvehluhhsthgvrhfuihiivgepfe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_003005_673255_8A0A9370 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.46.122 listed in list.dnswl.org]
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

T24gMTIvMTEvMjAxOSAwNzoyOCwgSm9lbCBTdGFubGV5IHdyb3RlOgo+IEVuYWJsZSBkcml2ZXJz
IHVzZWQgYnkgdGhlIEFTUEVFRCBBU1QyNDAwIFNvQyBzbyB0aGUgbXVsdGkgdjUgZGVmY29uZmln
Cj4gY2FuIHJ1biBvbiB0aG9zZSBib2FyZHMuCj4gCj4gU2lnbmVkLW9mZi1ieTogSm9lbCBTdGFu
bGV5IDxqb2VsQGptcy5pZC5hdT4KClJldmlld2VkLWJ5OiBDw6lkcmljIExlIEdvYXRlciA8Y2xn
QGthb2Qub3JnPgoKPiAtLS0KPiAgYXJjaC9hcm0vY29uZmlncy9tdWx0aV92NV9kZWZjb25maWcg
fCA0ICsrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybS9jb25maWdzL211bHRpX3Y1X2RlZmNvbmZpZyBiL2FyY2gvYXJtL2NvbmZp
Z3MvbXVsdGlfdjVfZGVmY29uZmlnCj4gaW5kZXggYmQwMTg4NzNlNDdhLi41NjMxNWUxZjgxZmYg
MTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vY29uZmlncy9tdWx0aV92NV9kZWZjb25maWcKPiArKysg
Yi9hcmNoL2FybS9jb25maWdzL211bHRpX3Y1X2RlZmNvbmZpZwo+IEBAIC0xNjUsNiArMTY1LDcg
QEAgQ09ORklHX1NQSV9BVE1FTD15Cj4gIENPTkZJR19TUElfSU1YPXkKPiAgQ09ORklHX1NQSV9P
UklPTj15Cj4gIENPTkZJR19HUElPX0FTUEVFRD1tCj4gK0NPTkZJR19HUElPX0FTUEVFRF9TR1BJ
Tz15Cj4gIENPTkZJR19QT1dFUl9SRVNFVD15Cj4gIENPTkZJR19QT1dFUl9SRVNFVF9HUElPPXkK
PiAgQ09ORklHX1BPV0VSX1JFU0VUX1FOQVA9eQo+IEBAIC0yNDEsNiArMjQyLDkgQEAgQ09ORklH
X1VTQl9BU1BFRURfVkhVQj1tCj4gIENPTkZJR19VU0JfQ09ORklHRlM9bQo+ICBDT05GSUdfTU1D
PXkKPiAgQ09ORklHX1NESU9fVUFSVD15Cj4gK0NPTkZJR19NTUNfU0RIQ0k9bQo+ICtDT05GSUdf
TU1DX1NESENJX1BMVEZNPW0KPiArQ09ORklHX01NQ19TREhDSV9PRl9BU1BFRUQ9bQo+ICBDT05G
SUdfTU1DX0FUTUVMTUNJPXkKPiAgQ09ORklHX01NQ19NVlNESU89eQo+ICBDT05GSUdfTkVXX0xF
RFM9eQo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
