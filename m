Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2751E834A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 18:11:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HmaWOgerk04Sh2cz1JAo2SmBz2UHYZpeQdk2hG7p34Q=; b=kRAr+VjyMbzRf8DyvErigZrNZ
	l1cPNLInpwaqs7k5+BB861kXKQMsNSp2/qAgD9rcVu5Pa+AHbg52grxOi+1zC0a6lG3xeWaCPqQNv
	8elEo1bTiT0RZD9oCclNCvsbQY21pjaXD1+Bfbjejk/hnmmiPfTuU7sLgpprKmZOkETHLfzQMfHJo
	xGSYhdYaBNcnUDVckYHQVo4GQE7gYX/YEci3gd1pPUJnrgRMfCnfM7+eOPJktkW9GqORCn3VlC+8d
	wKSQMgGURdrE54jWGQpR5zvDxrtYhqrEE2/Vm2WJUy4yqt7ExaOFjQVmgcp5fhNxgessLrIoxPf3F
	VjookNV4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jehbH-00070A-Sd; Fri, 29 May 2020 16:11:15 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jehZ5-000386-NG; Fri, 29 May 2020 16:09:02 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id E130E2A2DFE
Subject: Re: [PATCH v4 04/11] thermal: Store device mode in struct
 thermal_zone_device
To: Guenter Roeck <linux@roeck-us.net>
References: <20200529154205.GA157653@roeck-us.net>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <5010f7df-59d6-92ef-c99a-0dbd715f0ad2@collabora.com>
Date: Fri, 29 May 2020 18:08:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200529154205.GA157653@roeck-us.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_090859_911960_10582E0A 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 Heiko Stuebner <heiko@sntech.de>, Kalle Valo <kvalo@codeaurora.org>,
 linux-wireless@vger.kernel.org, Peter Kaestle <peter@piie.net>,
 platform-driver-x86@vger.kernel.org, Vishal Kulkarni <vishal@chelsio.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Shawn Guo <shawnguo@kernel.org>,
 kernel@collabora.com, Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 linux-rockchip@lists.infradead.org, Chunyan Zhang <zhang.lyra@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-acpi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 NXP Linux Team <linux-imx@nxp.com>, Johannes Berg <johannes.berg@intel.com>,
 linux-pm@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Intel Linux Wireless <linuxwifi@intel.com>, Ido Schimmel <idosch@mellanox.com>,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>,
 Jiri Pirko <jiri@mellanox.com>, Orson Zhai <orsonzhai@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Support Opensource <support.opensource@diasemi.com>, netdev@vger.kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Sebastian Reichel <sre@kernel.org>,
 linux-renesas-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Baolin Wang <baolin.wang7@gmail.com>, Len Brown <lenb@kernel.org>,
 Enrico Weigelt <info@metux.net>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR3VlbnRlciwKClcgZG5pdSAyOS4wNS4yMDIwIG/CoDE3OjQyLCBHdWVudGVyIFJvZWNrIHBp
c3plOgo+IE9uIFRodSwgTWF5IDI4LCAyMDIwIGF0IDA5OjIwOjQ0UE0gKzAyMDAsIEFuZHJ6ZWog
UGlldHJhc2lld2ljeiB3cm90ZToKPj4gUHJlcGFyZSBmb3IgZWxpbWluYXRpbmcgZ2V0X21vZGUo
KS4KPj4KPiBNaWdodCBiZSB3b3J0aHdoaWxlIHRvIGV4cGxhaW4gKG5vdCBvbmx5IGluIHRoZSBz
dWJqZWN0KSB3aGF0IHlvdSBhcmUKPiBkb2luZyBoZXJlLgo+IAo+PiBTaWduZWQtb2ZmLWJ5OiBB
bmRyemVqIFBpZXRyYXNpZXdpY3ogPGFuZHJ6ZWoucEBjb2xsYWJvcmEuY29tPgo+PiAtLS0KPj4g
ICBkcml2ZXJzL2FjcGkvdGhlcm1hbC5jICAgICAgICAgICAgICAgICAgICAgICAgfCAxOCArKysr
KystLS0tLS0tLS0tCj4+ICAgLi4uL2V0aGVybmV0L21lbGxhbm94L21seHN3L2NvcmVfdGhlcm1h
bC5jICAgIHwgMjEgKysrKysrKy0tLS0tLS0tLS0tLQo+PiAgIGRyaXZlcnMvcGxhdGZvcm0veDg2
L2FjZXJoZGYuYyAgICAgICAgICAgICAgICB8IDE1ICsrKysrKy0tLS0tLS0KPj4gICBkcml2ZXJz
L3RoZXJtYWwvZGE5MDYyLXRoZXJtYWwuYyAgICAgICAgICAgICAgfCAgNiArKy0tLS0KPj4gICBk
cml2ZXJzL3RoZXJtYWwvaW14X3RoZXJtYWwuYyAgICAgICAgICAgICAgICAgfCAxNyArKysrKysr
LS0tLS0tLS0KPj4gICAuLi4vaW50ZWwvaW50MzQweF90aGVybWFsL2ludDM0MDBfdGhlcm1hbC5j
ICAgfCAxMiArKystLS0tLS0tLQo+PiAgIC4uLi90aGVybWFsL2ludGVsL2ludGVsX3F1YXJrX2R0
c190aGVybWFsLmMgICB8IDE2ICsrKysrKystLS0tLS0tCj4+ICAgZHJpdmVycy90aGVybWFsL3Ro
ZXJtYWxfb2YuYyAgICAgICAgICAgICAgICAgIHwgMTAgKysrLS0tLS0tCj4gCj4gQWZ0ZXIgdGhp
cyBwYXRjaCBpcyBhcHBsaWVkIG9uIHRvcCBvZiB0aGUgdGhlcm1hbCAndGVzdGluZycgYnJhbmNo
LAo+IHRoZXJlIGFyZSBzdGlsbCBsb2NhbCBpbnN0YW5jZXMgb2YgdGhlcm1hbF9kZXZpY2VfbW9k
ZSBpbgo+IAlkcml2ZXJzL3RoZXJtYWwvc3Qvc3RtX3RoZXJtYWwuYwo+IAlkcml2ZXJzL3RoZXJt
YWwvdGktc29jLXRoZXJtYWwvdGktdGhlcm1hbC1jb21tb24uYwo+IAo+IElmIHRoZXJlIGlzIGEg
cmVhc29uIG5vdCB0byByZXBsYWNlIHRob3NlLCBpdCBtaWdodCBtYWtlIHNlbnNlIHRvIGV4cGxh
aW4KPiBpdCBoZXJlLgo+IAoKTXkgdW5kZXJzdGFuZGluZyBpcyB0aGF0IHRoZXNlIHR3byBhcmUg
c2Vuc29yIGRldmljZXMgd2hpY2ggYXJlICJwbHVnZ2VkIgppbnRvIHRoZWlyICJwYXJlbnQiIHRo
ZXJtYWwgem9uZSBkZXZpY2UuIFRoZSBsYXR0ZXIgaXMgdGhlICJwcm9wZXIiIHR6ZC4KVGhleSBi
b3RoIHVzZSB0aGVybWFsX3pvbmVfb2ZfZGV2aWNlX29wcyBpbnN0ZWFkIG9mIHRoZXJtYWxfem9u
ZV9kZXZpY2Vfb3BzLgpUaGUgZm9ybWVyIGRvZXNuJ3QgZXZlbiBoYXZlIGdldF9tb2RlKCkuIFRo
ZSB0aGVybWFsIGNvcmUsIHdoZW4gaXQgY2FsbHMKZ2V0X21vZGUoKSwgb3BlcmF0ZXMgb24gdGhl
ICJwYXJlbnQiIHRoZXJtYWwgem9uZSBkZXZpY2VzLgoKQ29uc2VxdWVudGx5LCB0aGUgZHJpdmVy
cyB5b3UgbWVudGlvbiB1c2UgdGhlaXIgIm1vZGUiIG1lbWJlcnMgZm9yCnRoZWlyIHByaXZhdGUg
cHVycG9zZSwgbm90IGZvciB0aGUgcHVycG9zZSBvZiBzdG9yaW5nIHRoZSAicGFyZW50Igp0aGVy
bWFsIHpvbmUgZGV2aWNlIG1vZGUuCgpBbmRyemVqCgoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
