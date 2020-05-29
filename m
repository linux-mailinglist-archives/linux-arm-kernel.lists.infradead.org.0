Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCDD1E84B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 19:22:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B1ZIx4yF6mSzG5V926emh7zdIfe2SO1gQE2Q/AH3pnk=; b=XX9kOuaO4wqGhbQKl3HjuCn6R
	W7uLRAwvoUmh5JFQaSUl49V0rufRTL9RCOQUTaCmG3Inh70VvJUgbD79u5PkY0lcRE43xPQvM4RCB
	KVrDDDp2hq34D495YA6sVV2Fvh5CK1Q1OgXYYaCpEHA3mEMbUTCTPldYuVDH76K4Gtno4/MeRiRiA
	VHfKPQRTS8VVqD6aHp6g2oAfqHusUl13grfJxCbtSJVQVQrneJTl8MfGh3gQTP/T9L/rqtg+kkHgW
	r+16A3TMx60o0LdEx24BtxG7nUiV8RboFuqbe92wRGLjECSUeo36hDmr7y2KMSq+Uvy9hu8Wk/8CJ
	IAkKvngZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeihq-0003Kj-Kj; Fri, 29 May 2020 17:22:06 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeihh-0003KA-Hi; Fri, 29 May 2020 17:21:59 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id F17622A194B
Subject: Re: [PATCH v4 04/11] thermal: Store device mode in struct
 thermal_zone_device
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: Guenter Roeck <linux@roeck-us.net>
References: <20200529154205.GA157653@roeck-us.net>
 <5010f7df-59d6-92ef-c99a-0dbd715f0ad2@collabora.com>
Message-ID: <a0c0310f-9870-47be-4ca3-c07e41c380fc@collabora.com>
Date: Fri, 29 May 2020 19:21:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <5010f7df-59d6-92ef-c99a-0dbd715f0ad2@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_102157_719612_9FA3BCCA 
X-CRM114-Status: GOOD (  18.20  )
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

SGkgYWdhaW4sCgpXIGRuaXUgMjkuMDUuMjAyMCBvwqAxODowOCwgQW5kcnplaiBQaWV0cmFzaWV3
aWN6IHBpc3plOgo+IEhpIEd1ZW50ZXIsCj4gCj4gVyBkbml1IDI5LjA1LjIwMjAgb8KgMTc6NDIs
IEd1ZW50ZXIgUm9lY2sgcGlzemU6Cj4+IE9uIFRodSwgTWF5IDI4LCAyMDIwIGF0IDA5OjIwOjQ0
UE0gKzAyMDAsIEFuZHJ6ZWogUGlldHJhc2lld2ljeiB3cm90ZToKPj4+IFByZXBhcmUgZm9yIGVs
aW1pbmF0aW5nIGdldF9tb2RlKCkuCj4+Pgo+PiBNaWdodCBiZSB3b3J0aHdoaWxlIHRvIGV4cGxh
aW4gKG5vdCBvbmx5IGluIHRoZSBzdWJqZWN0KSB3aGF0IHlvdSBhcmUKPj4gZG9pbmcgaGVyZS4K
Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEFuZHJ6ZWogUGlldHJhc2lld2ljeiA8YW5kcnplai5wQGNv
bGxhYm9yYS5jb20+Cj4+PiAtLS0KPj4+IMKgIGRyaXZlcnMvYWNwaS90aGVybWFsLmPCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMTggKysrKysrLS0tLS0t
LS0tLQo+Pj4gwqAgLi4uL2V0aGVybmV0L21lbGxhbm94L21seHN3L2NvcmVfdGhlcm1hbC5jwqDC
oMKgIHwgMjEgKysrKysrKy0tLS0tLS0tLS0tLQo+Pj4gwqAgZHJpdmVycy9wbGF0Zm9ybS94ODYv
YWNlcmhkZi5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMTUgKysrKysrLS0tLS0t
LQo+Pj4gwqAgZHJpdmVycy90aGVybWFsL2RhOTA2Mi10aGVybWFsLmPCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB8wqAgNiArKy0tLS0KPj4+IMKgIGRyaXZlcnMvdGhlcm1hbC9pbXhfdGhlcm1h
bC5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxNyArKysrKysrLS0tLS0tLS0K
Pj4+IMKgIC4uLi9pbnRlbC9pbnQzNDB4X3RoZXJtYWwvaW50MzQwMF90aGVybWFsLmPCoMKgIHwg
MTIgKysrLS0tLS0tLS0KPj4+IMKgIC4uLi90aGVybWFsL2ludGVsL2ludGVsX3F1YXJrX2R0c190
aGVybWFsLmPCoMKgIHwgMTYgKysrKysrKy0tLS0tLS0KPj4+IMKgIGRyaXZlcnMvdGhlcm1hbC90
aGVybWFsX29mLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMTAgKysrLS0t
LS0tCj4+Cj4+IEFmdGVyIHRoaXMgcGF0Y2ggaXMgYXBwbGllZCBvbiB0b3Agb2YgdGhlIHRoZXJt
YWwgJ3Rlc3RpbmcnIGJyYW5jaCwKPj4gdGhlcmUgYXJlIHN0aWxsIGxvY2FsIGluc3RhbmNlcyBv
ZiB0aGVybWFsX2RldmljZV9tb2RlIGluCj4+IMKgwqDCoMKgZHJpdmVycy90aGVybWFsL3N0L3N0
bV90aGVybWFsLmMKPj4gwqDCoMKgwqBkcml2ZXJzL3RoZXJtYWwvdGktc29jLXRoZXJtYWwvdGkt
dGhlcm1hbC1jb21tb24uYwo+Pgo+PiBJZiB0aGVyZSBpcyBhIHJlYXNvbiBub3QgdG8gcmVwbGFj
ZSB0aG9zZSwgaXQgbWlnaHQgbWFrZSBzZW5zZSB0byBleHBsYWluCj4+IGl0IGhlcmUuCj4+Cj4g
Cj4gTXkgdW5kZXJzdGFuZGluZyBpcyB0aGF0IHRoZXNlIHR3byBhcmUgc2Vuc29yIGRldmljZXMg
d2hpY2ggYXJlICJwbHVnZ2VkIgo+IGludG8gdGhlaXIgInBhcmVudCIgdGhlcm1hbCB6b25lIGRl
dmljZS4gVGhlIGxhdHRlciBpcyB0aGUgInByb3BlciIgdHpkLgo+IFRoZXkgYm90aCB1c2UgdGhl
cm1hbF96b25lX29mX2RldmljZV9vcHMgaW5zdGVhZCBvZiB0aGVybWFsX3pvbmVfZGV2aWNlX29w
cy4KPiBUaGUgZm9ybWVyIGRvZXNuJ3QgZXZlbiBoYXZlIGdldF9tb2RlKCkuIFRoZSB0aGVybWFs
IGNvcmUsIHdoZW4gaXQgY2FsbHMKPiBnZXRfbW9kZSgpLCBvcGVyYXRlcyBvbiB0aGUgInBhcmVu
dCIgdGhlcm1hbCB6b25lIGRldmljZXMuCj4gCj4gQ29uc2VxdWVudGx5LCB0aGUgZHJpdmVycyB5
b3UgbWVudGlvbiB1c2UgdGhlaXIgIm1vZGUiIG1lbWJlcnMgZm9yCj4gdGhlaXIgcHJpdmF0ZSBw
dXJwb3NlLCBub3QgZm9yIHRoZSBwdXJwb3NlIG9mIHN0b3JpbmcgdGhlICJwYXJlbnQiCj4gdGhl
cm1hbCB6b25lIGRldmljZSBtb2RlLgo+IAoKTGV0IG1lIGFsc28gc2F5IGl0IGRpZmZlcmVudGx5
LgoKQm90aCBkcml2ZXJzIHdoaWNoIHlvdSBtZW50aW9uIHVzZSBkZXZtX3RoZXJtYWxfem9uZV9v
Zl9zZW5zb3JfcmVnaXN0ZXIoKS4KSXQgY2FsbHMgdGhlcm1hbF96b25lX29mX3NlbnNvcl9yZWdp
c3RlcigpLCB3aGljaCAid2lsbCBzZWFyY2ggdGhlIGxpc3Qgb2YKdGhlcm1hbCB6b25lcyBkZXNj
cmliZWQgaW4gZGV2aWNlIHRyZWUgYW5kIGxvb2sgZm9yIHRoZSB6b25lIHRoYXQgcmVmZXIgdG8K
dGhlIHNlbnNvciBkZXZpY2UgcG9pbnRlZCBieSBAZGV2LT5vZl9ub2RlIGFzIHRlbXBlcmF0dXJl
IHByb3ZpZGVycy4gRm9yCnRoZSB6b25lIHBvaW50aW5nIHRvIHRoZSBzZW5zb3Igbm9kZSwgdGhl
IHNlbnNvciB3aWxsIGJlIGFkZGVkIHRvIHRoZSBEVAp0aGVybWFsIHpvbmUgZGV2aWNlLiIgV2hl
biBhIG1hdGNoIGlzIGZvdW5kIHRoZXJtYWxfem9uZV9vZl9hZGRfc2Vuc29yKCkKaXMgaW52b2tl
ZCwgd2hpY2ggKHVzaW5nIHRoZXJtYWxfem9uZV9nZXRfem9uZV9ieV9uYW1lKCkpIGl0ZXJhdGVz
IG92ZXIKYWxsIHJlZ2lzdGVyZWQgdGhlcm1hbF96b25lX2RldmljZXMuIFRoZSBvbmUgZXZlbnR1
YWxseSBmb3VuZCB3aWxsIGJlCnJldHVybmVkIGFuZCBwcm9wYWdhdGVkIHRvIHRoZSBvcmlnaW5h
bCBjYWxsZXIgb2YKZGV2bV90aGVybWFsX3pvbmVfb2Zfc2Vuc29yX3JlZ2lzdGVyKCkuIFRoZSBz
dGF0ZSBvZiB0aGlzIHJldHVybmVkCmRldmljZSBpcyBtYW5hZ2VkIGVsc2V3aGVyZSAoaW4gdGhh
dCBkZXZpY2UncyBzdHJ1Y3QgdHpkKS4gVGhlICJtb2RlIgptZW1iZXIgeW91IGFyZSByZWZlcnJp
bmcgdG8gaXMgdGh1cyB1bnJlbGF0ZWQuCgpSZWdhcmRzLAoKQW5kcnplagoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
