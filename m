Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33290F8A7C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 09:29:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EiHr2p181lKcx7F7xTNvE7gY0xG7E3DeVluRFkcjNf8=; b=VUGVu6GhLYVAQR
	oWDqUMNhcJyg4QmLqOFJdYDCsytNIMcH3l5nq/vl52h+Th+4iR9ZcS+tveB40n9lTBnYJf4zy5y0/
	wxhlFEbT1797y3WnUqWZQ7R5xTYKy/2E9NSiJ4va3r2bLwXYDDXgrcy0ETnjeul2c1+1c9u63ZYkV
	mjLkVQnloAfpnT9lofvqMdcj3eRd+p9wlAZOkwzXsml4q99tX+cWI5RAzVKT0u0karWCx0ZIl3+UK
	JojevXKgBTiztgpvCgAUar5ZpklC7ua+qWJI6WBQa9snZyHPdRQ0vT+aYXZ/qFaNLSrqGgIDb2j4U
	0ZS31kMs43m2QrCPsMJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iURYK-0007Ol-6w; Tue, 12 Nov 2019 08:29:32 +0000
Received: from 7.mo178.mail-out.ovh.net ([46.105.58.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iURYA-0007Ny-Is
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 08:29:24 +0000
Received: from player791.ha.ovh.net (unknown [10.108.57.211])
 by mo178.mail-out.ovh.net (Postfix) with ESMTP id DF3D97AD9C
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 09:29:18 +0100 (CET)
Received: from kaod.org (lfbn-1-2229-223.w90-76.abo.wanadoo.fr [90.76.50.223])
 (Authenticated sender: clg@kaod.org)
 by player791.ha.ovh.net (Postfix) with ESMTPSA id 21A83BDD63AF;
 Tue, 12 Nov 2019 08:29:13 +0000 (UTC)
Subject: Re: [PATCH 3/5] ARM: config: aspeed-g4: Add MMC, and cleanup
To: Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
References: <20191112062857.32638-1-joel@jms.id.au>
 <20191112062857.32638-4-joel@jms.id.au>
From: =?UTF-8?Q?C=c3=a9dric_Le_Goater?= <clg@kaod.org>
Message-ID: <fc2e193f-93e5-fc71-663f-d08e5b60e8ca@kaod.org>
Date: Tue, 12 Nov 2019 09:29:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191112062857.32638-4-joel@jms.id.au>
Content-Language: en-US
X-Ovh-Tracer-Id: 7880736402176641901
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedruddvkedgieehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdqfffguegfifdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepuffvfhfhkffffgggjggtgfesthekredttdefjeenucfhrhhomhepveorughrihgtpgfnvggpifhorghtvghruceotghlgheskhgrohgurdhorhhgqeenucfkpheptddrtddrtddrtddpledtrdejiedrhedtrddvvdefnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejledurdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheptghlgheskhgrohgurdhorhhgpdhrtghpthhtoheplhhinhhugidqrghrmhdqkhgvrhhnvghlsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhgnecuvehluhhsthgvrhfuihiivgepud
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_002922_765998_205E879D 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.58.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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

T24gMTIvMTEvMjAxOSAwNzoyOCwgSm9lbCBTdGFubGV5IHdyb3RlOgo+IFRoZSBQQ0EgbXV4ZXMg
bm93IGRlcGVuZCBvbiBJMkNfTVVYLiBTUEkgc2kgbm93IHJlcXVpcmVkIGJ5IFNQSS1OT1IuCj4g
Cj4gQWRkIHRoZSBlTU1DIGRyaXZlciwgYW5kIHJlbW92ZSB0aGUgRlNJIFNCRUZJRk8gd2hpY2gg
aXMgbm90IHVzZWQgb24gQVNUMjQwMAo+IHN5c3RlbXMuCj4gCj4gVGhlIHJlbWFpbmluZyBjaGFu
Z2VzIGFyZSBjbGVhbnVwcyBmcm9tIHJlZ2VuZXJhdGluZyB0aGUgZGVmY29uZmlnLgo+IAo+IFNp
Z25lZC1vZmYtYnk6IEpvZWwgU3RhbmxleSA8am9lbEBqbXMuaWQuYXU+CgoKUmV2aWV3ZWQtYnk6
IEPDqWRyaWMgTGUgR29hdGVyIDxjbGdAa2FvZC5vcmc+Cgo+IC0tLQo+ICBhcmNoL2FybS9jb25m
aWdzL2FzcGVlZF9nNF9kZWZjb25maWcgfCAxOCArKysrKysrKysrKystLS0tLS0KPiAgMSBmaWxl
IGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtL2NvbmZpZ3MvYXNwZWVkX2c0X2RlZmNvbmZpZyBiL2FyY2gvYXJtL2NvbmZp
Z3MvYXNwZWVkX2c0X2RlZmNvbmZpZwo+IGluZGV4IDE4NTdkZjk5MjQ4NC4uMzAzZjc1YTNiYWVj
IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2NvbmZpZ3MvYXNwZWVkX2c0X2RlZmNvbmZpZwo+ICsr
KyBiL2FyY2gvYXJtL2NvbmZpZ3MvYXNwZWVkX2c0X2RlZmNvbmZpZwo+IEBAIC0xMzIsMTAgKzEz
MiwxMiBAQCBDT05GSUdfQVNQRUVEX0JUX0lQTUlfQk1DPXkKPiAgQ09ORklHX0hXX1JBTkRPTV9U
SU1FUklPTUVNPXkKPiAgIyBDT05GSUdfSTJDX0NPTVBBVCBpcyBub3Qgc2V0Cj4gIENPTkZJR19J
MkNfQ0hBUkRFVj15Cj4gK0NPTkZJR19JMkNfTVVYPXkKPiAgQ09ORklHX0kyQ19NVVhfUENBOTU0
MT15Cj4gIENPTkZJR19JMkNfTVVYX1BDQTk1NHg9eQo+ICBDT05GSUdfSTJDX0FTUEVFRD15Cj4g
IENPTkZJR19JMkNfRlNJPXkKPiArQ09ORklHX1NQST15Cj4gIENPTkZJR19HUElPTElCPXkKPiAg
Q09ORklHX0dQSU9fU1lTRlM9eQo+ICBDT05GSUdfR1BJT19BU1BFRUQ9eQo+IEBAIC0xODUsNiAr
MTg3LDEyIEBAIENPTkZJR19VU0JfQ09ORklHRlNfRl9MQl9TUz15Cj4gIENPTkZJR19VU0JfQ09O
RklHRlNfRl9GUz15Cj4gIENPTkZJR19VU0JfQ09ORklHRlNfRl9ISUQ9eQo+ICBDT05GSUdfVVNC
X0NPTkZJR0ZTX0ZfUFJJTlRFUj15Cj4gK0NPTkZJR19NTUM9eQo+ICsjIENPTkZJR19QV1JTRVFf
RU1NQyBpcyBub3Qgc2V0Cj4gKyMgQ09ORklHX1BXUlNFUV9TSU1QTEUgaXMgbm90IHNldAo+ICtD
T05GSUdfTU1DX1NESENJPXkKPiArQ09ORklHX01NQ19TREhDSV9QTFRGTT15Cj4gK0NPTkZJR19N
TUNfU0RIQ0lfT0ZfQVNQRUVEPXkKPiAgQ09ORklHX05FV19MRURTPXkKPiAgQ09ORklHX0xFRFNf
Q0xBU1M9eQo+ICBDT05GSUdfTEVEU19DTEFTU19GTEFTSD15Cj4gQEAgLTIxNiw3ICsyMjQsNiBA
QCBDT05GSUdfRlNJX01BU1RFUl9HUElPPXkKPiAgQ09ORklHX0ZTSV9NQVNURVJfSFVCPXkKPiAg
Q09ORklHX0ZTSV9NQVNURVJfQVNUX0NGPXkKPiAgQ09ORklHX0ZTSV9TQ09NPXkKPiAtQ09ORklH
X0ZTSV9TQkVGSUZPPXkKPiAgQ09ORklHX0ZBTk9USUZZPXkKPiAgQ09ORklHX09WRVJMQVlfRlM9
eQo+ICBDT05GSUdfVE1QRlM9eQo+IEBAIC0yMzEsNyArMjM4LDYgQEAgQ09ORklHX1NRVUFTSEZT
X1pTVEQ9eQo+ICAjIENPTkZJR19ORVRXT1JLX0ZJTEVTWVNURU1TIGlzIG5vdCBzZXQKPiAgQ09O
RklHX0hBUkRFTkVEX1VTRVJDT1BZPXkKPiAgQ09ORklHX0ZPUlRJRllfU09VUkNFPXkKPiAtIyBD
T05GSUdfQ1JZUFRPX0VDSEFJTklWIGlzIG5vdCBzZXQKPiAgQ09ORklHX0NSWVBUT19ITUFDPXkK
PiAgQ09ORklHX0NSWVBUT19TSEEyNTY9eQo+ICBDT05GSUdfQ1JZUFRPX1VTRVJfQVBJX0hBU0g9
eQo+IEBAIC0yNDcsMTQgKzI1MywxNCBAQCBDT05GSUdfREVCVUdfSU5GT19SRURVQ0VEPXkKPiAg
Q09ORklHX0RFQlVHX0lORk9fRFdBUkY0PXkKPiAgQ09ORklHX0dEQl9TQ1JJUFRTPXkKPiAgQ09O
RklHX1NUUklQX0FTTV9TWU1TPXkKPiArQ09ORklHX1NDSEVEX1NUQUNLX0VORF9DSEVDSz15Cj4g
K0NPTkZJR19QQU5JQ19PTl9PT1BTPXkKPiArQ09ORklHX1BBTklDX1RJTUVPVVQ9LTEKPiAgQ09O
RklHX1NPRlRMT0NLVVBfREVURUNUT1I9eQo+ICAjIENPTkZJR19ERVRFQ1RfSFVOR19UQVNLIGlz
IG5vdCBzZXQKPiAgQ09ORklHX1dRX1dBVENIRE9HPXkKPiAtQ09ORklHX1BBTklDX09OX09PUFM9
eQo+IC1DT05GSUdfUEFOSUNfVElNRU9VVD0tMQo+ICAjIENPTkZJR19TQ0hFRF9ERUJVRyBpcyBu
b3Qgc2V0Cj4gLUNPTkZJR19TQ0hFRF9TVEFDS19FTkRfQ0hFQ0s9eQo+ICBDT05GSUdfRlVOQ1RJ
T05fVFJBQ0VSPXkKPiAtIyBDT05GSUdfUlVOVElNRV9URVNUSU5HX01FTlUgaXMgbm90IHNldAo+
ICBDT05GSUdfREVCVUdfV1g9eQo+ICBDT05GSUdfREVCVUdfVVNFUj15Cj4gKyMgQ09ORklHX1JV
TlRJTUVfVEVTVElOR19NRU5VIGlzIG5vdCBzZXQKPiAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
