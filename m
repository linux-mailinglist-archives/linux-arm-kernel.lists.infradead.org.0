Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EBACF8A80
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 09:30:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7JywBuX+GuUpUn2IqVx+ZqUXPZ0Mmtr79H2rbykjo1Q=; b=RNOtNOYRmiRY8D
	wzOIDSlEZMYgQn7Y+iUcfzYP3rG3E5YZ5e0VXAqB+ir9r/7cQfqtsgrVnl2ecP+7BzOeuTSwOv40a
	WF02W624IaxOb9N/emOhq3SoPrB3DtEZFY4VL4iMSYgCgAGcg1QCJdsJenfaoiLtdiDHVuhUh7k8B
	isQQUIA3/klp0RJggLyknpalgWq2BYj+tYKKU1/vGq4jCpFzygBEXDoDVfkOUSumbituoj664hH3B
	EJLFPhMLp6pAKm7ZHYPeRhHqMwtaNuaEl8HLeE5R5xHImsv1x3pHn+o8kn2++4GkJWG0iMxOkam8w
	AZvhYYw2vZh0I7r/b6BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iURYy-0007eb-5e; Tue, 12 Nov 2019 08:30:12 +0000
Received: from 2.mo173.mail-out.ovh.net ([178.33.251.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iURYe-0007e3-7P
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 08:29:53 +0000
Received: from player711.ha.ovh.net (unknown [10.109.146.20])
 by mo173.mail-out.ovh.net (Postfix) with ESMTP id D2BEA121E3D
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 09:29:48 +0100 (CET)
Received: from kaod.org (lfbn-1-2229-223.w90-76.abo.wanadoo.fr [90.76.50.223])
 (Authenticated sender: clg@kaod.org)
 by player711.ha.ovh.net (Postfix) with ESMTPSA id 1AFABBDFE896;
 Tue, 12 Nov 2019 08:29:43 +0000 (UTC)
Subject: Re: [PATCH 4/5] ARM: configs: multi_v7: ASPEED network, gpio, FSI
To: Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
References: <20191112062857.32638-1-joel@jms.id.au>
 <20191112062857.32638-5-joel@jms.id.au>
From: =?UTF-8?Q?C=c3=a9dric_Le_Goater?= <clg@kaod.org>
Message-ID: <ab9c9e67-e939-6f92-2496-f73fbadd4592@kaod.org>
Date: Tue, 12 Nov 2019 09:29:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191112062857.32638-5-joel@jms.id.au>
Content-Language: en-US
X-Ovh-Tracer-Id: 7889180647336414061
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedruddvkedgieehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdqfffguegfifdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepuffvfhfhkffffgggjggtgfesthekredttdefjeenucfhrhhomhepveorughrihgtpgfnvggpifhorghtvghruceotghlgheskhgrohgurdhorhhgqeenucfkpheptddrtddrtddrtddpledtrdejiedrhedtrddvvdefnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejuddurdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheptghlgheskhgrohgurdhorhhgpdhrtghpthhtoheplhhinhhugidqrghrmhdqkhgvrhhnvghlsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhgnecuvehluhhsthgvrhfuihiivgepvd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_002952_402277_F86F9C51 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.33.251.49 listed in list.dnswl.org]
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

T24gMTIvMTEvMjAxOSAwNzoyOCwgSm9lbCBTdGFubGV5IHdyb3RlOgo+IEVuYWJsZSBkcml2ZXJz
IHVzZWQgYnkgdGhlIEFTUEVFRCBTb0NzIHNvIHRoZSBtdWx0aSB2NyBkZWZjb25maWcgY2FuIHJ1
bgo+IG9uIHRob3NlIGJvYXJkcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKb2VsIFN0YW5sZXkgPGpv
ZWxAam1zLmlkLmF1PgoKUmV2aWV3ZWQtYnk6IEPDqWRyaWMgTGUgR29hdGVyIDxjbGdAa2FvZC5v
cmc+Cgo+IC0tLQo+ICBhcmNoL2FybS9jb25maWdzL211bHRpX3Y3X2RlZmNvbmZpZyB8IDkgKysr
KysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm0vY29uZmlncy9tdWx0aV92N19kZWZjb25maWcgYi9hcmNoL2FybS9jb25maWdz
L211bHRpX3Y3X2RlZmNvbmZpZwo+IGluZGV4IDEzYmE1MzI4NjkwMS4uMTI0ZjUwZGM5Y2M3IDEw
MDY0NAo+IC0tLSBhL2FyY2gvYXJtL2NvbmZpZ3MvbXVsdGlfdjdfZGVmY29uZmlnCj4gKysrIGIv
YXJjaC9hcm0vY29uZmlncy9tdWx0aV92N19kZWZjb25maWcKPiBAQCAtMjQ0LDYgKzI0NCw3IEBA
IENPTkZJR19CR01BQ19CQ01BPXkKPiAgQ09ORklHX1NZU1RFTVBPUlQ9bQo+ICBDT05GSUdfTUFD
Qj15Cj4gIENPTkZJR19ORVRfQ0FMWEVEQV9YR01BQz15Cj4gK0NPTkZJR19GVEdNQUMxMDA9bQo+
ICBDT05GSUdfR0lBTkZBUj15Cj4gIENPTkZJR19ISVg1SEQyX0dNQUM9eQo+ICBDT05GSUdfRTEw
MDBFPXkKPiBAQCAtNDM3LDYgKzQzOCw3IEBAIENPTkZJR19QSU5DVFJMX01TTThYNzQ9eQo+ICBD
T05GSUdfUElOQ1RSTF9NU004OTE2PXkKPiAgQ09ORklHX1BJTkNUUkxfUUNPTV9TUE1JX1BNSUM9
eQo+ICBDT05GSUdfUElOQ1RSTF9RQ09NX1NTQklfUE1JQz15Cj4gK0NPTkZJR19HUElPX0FTUEVF
RF9TR1BJTz15Cj4gIENPTkZJR19HUElPX0RBVklOQ0k9eQo+ICBDT05GSUdfR1BJT19EV0FQQj15
Cj4gIENPTkZJR19HUElPX0VNPXkKPiBAQCAtMTA0MSw2ICsxMDQzLDEzIEBAIENPTkZJR19ST0NL
Q0hJUF9FRlVTRT1tCj4gIENPTkZJR19OVk1FTV9JTVhfT0NPVFA9eQo+ICBDT05GSUdfTlZNRU1f
U1VOWElfU0lEPXkKPiAgQ09ORklHX05WTUVNX1ZGNjEwX09DT1RQPXkKPiArQ09ORklHX0ZTST1t
Cj4gK0NPTkZJR19GU0lfTUFTVEVSX0dQSU89bQo+ICtDT05GSUdfRlNJX01BU1RFUl9IVUI9bQo+
ICtDT05GSUdfRlNJX01BU1RFUl9BU1BFRUQ9bQo+ICtDT05GSUdfRlNJX1NDT009bQo+ICtDT05G
SUdfRlNJX1NCRUZJRk89bQo+ICtDT05GSUdfRlNJX09DQz1tCj4gIENPTkZJR19FWFQ0X0ZTPXkK
PiAgQ09ORklHX0FVVE9GUzRfRlM9eQo+ICBDT05GSUdfTVNET1NfRlM9eQo+IAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
