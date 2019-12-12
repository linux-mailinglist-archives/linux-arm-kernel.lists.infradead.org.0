Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A66D11C12C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 01:13:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gMIGTK1ZSlpDLG2WpReVC/iEBpr5VoyBay/jR+tjcio=; b=Z4KdbPxpnJocJLcQpylE04Q9n
	Plh/JWpvZA3J3X0lTWv1anD23DmVnv/GZg4LjVd56DHoXyRxuhblNWJyUqH/93AOMNHc381MByLQ7
	dghaYTab/Iglh0PLl5wuSUV+rh01aEQxB+MOhVqBNbkd9ZNtPvG0BFrld43Z2q05S2qnT5gq/+R3n
	awsh/zdJlYNxI92wjEaMjwRCOtyeTOqUBH9C02Jr9dFOwkkFnkd6XNP8v/M8e/tSG1WjyEt+dvbly
	JADSUjM6bikhxBKND7zuBHBmIK2WhRZbOCYsLZ90f/bHfAunb4jwvBmVltytPRplVDFRScWsaFlZG
	GcsoFaNVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifC6e-0005Cw-Cg; Thu, 12 Dec 2019 00:13:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifC6I-00052e-RR; Thu, 12 Dec 2019 00:13:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B4E121FB;
 Wed, 11 Dec 2019 16:12:59 -0800 (PST)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 025913F52E;
 Wed, 11 Dec 2019 16:12:56 -0800 (PST)
Subject: Re: [REGRESSION] PCI v5.5-rc1 breaks google kevin
To: Vicente Bergas <vicencb@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
References: <58ce5534-64bd-4b4b-bd60-ed4e0c71b20f@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <166f0016-7061-be5c-660d-0499f74e8697@arm.com>
Date: Thu, 12 Dec 2019 00:12:56 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <58ce5534-64bd-4b4b-bd60-ed4e0c71b20f@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_161302_946227_0EDB885D 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Frederick Lawler <fred@fredlawl.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Andrew Murray <andrew.murray@arm.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 =?UTF-8?Q?Stefan_M=c3=a4tje?= <stefan.maetje@esd.eu>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVmljZW50ZSwKCk9uIDIwMTktMTItMTEgMTE6MzggcG0sIFZpY2VudGUgQmVyZ2FzIHdyb3Rl
Ogo+IEhpLAo+IHNpbmNlIHY1LjUtcmMxIHRoZSBnb29nbGUga2V2aW4gY2hyb21lYm9vayBkb2Vz
IG5vdCBib290Lgo+IEdpdCBiaXNlY3QgcmVwb3J0cyA1ZTBjMjFjNzVlOGMgUENJL0FTUE06IFJl
bW92ZSBwY2llX2FzcG1fZW5hYmxlZCgpIAo+IHVubmVjZXNzYXJ5IGxvY2tpbmcKPiBhcyB0aGUg
Zmlyc3QgYmFkIGNvbW1pdC4KPiAKPiBJbiBvcmRlciB0byByZXZlcnQgaXQgZnJvbSB2NS41LXJj
MSBpIGhhZCB0byBhbHNvIHJldmVydCBzb21lIGRlcGVuZGVuY2llczoKPiA1ZTBjMjFjNzVlOGMw
ODM3NWE2OTcxMDUyN2U0YTkyMWI4OTdjYjdlCj4gYWZmNWQwNTUyZGE0MDU1ZGEzZmFhMjdlZTQy
NTJlNDhiYjFmNTgyMQo+IDM1ZWZlYTMyYjI2ZjlhYWNjOTliZjA3ZTBkMmNkZmJhMjAyOGIwOTkK
PiA2ODdhYWYzODZhZWI1NTExMzBmMzE3MDVjZTQwZDEzNDEwNDdhOTM2Cj4gNzJlYTkxYWZiZmIw
ODYxOTY5NmNjZGU2MTBlZTRkMGQyOWNmNGExZAo+IDg3ZTkwMjgzYzk0Yzc2ZWUxMWQzNzlhYjVh
MDk3MzM4MmJiZDBiYWYKPiBBZnRlciByZXZlcnRpbmcgYWxsIG9mIHRoaXMsIHN0aWxsIG5vIGx1
Y2suCj4gU28sIGVpdGhlciB0aGUgcmVzdWx0cyBvZiBnaXQgYmlzZWN0IGFyZSBub3QgdG8gYmUg
dHJ1c3RlZCwgb3IKPiB0aGVyZSBhcmUgbW9yZSBiYWQgY29tbWl0cy4KPiAKPiBCeSAiZG9lcyBu
b3QgYm9vdCIgaSBtZWFuIHRoYXQgdGhlIGRpc3BsYXkgZmFpbHMgdG8gc3RhcnQgYW5kCj4gdGhl
IGRpc3BsYXkgaXMgdGhlIG9ubHkgb3V0cHV0IGRldmljZSwgc28gZGVidWdnaW5nIGlzIHF1aXRl
IGRpZmZpY3VsdC4KCkFzc3VtaW5nIGl0J3MgYSBtYW5pZmVzdGF0aW9uIG9mIHRoZSBzYW1lIFBD
SSBicmVha2FnZSB0aGF0IEVucmljIGFuZCAKTG9yZW56byBmaWd1cmVkIG91dCwgdGhlcmUncyBh
IHByb3Bvc2VkIGZpeCBoZXJlOiAKaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvMTIvMTEvMTk5
CgpSb2Jpbi4KCj4gdjUuNS1yYzEgYXMgaXMgKHJldmVydGluZyBubyBjb21taXRzIGF0IGFsbCkg
d29ya3MgZmluZSB3aGVuIGRpc2FibGluZyBQQ0k6Cj4gIyBDT05GSUdfUENJIGlzIG5vdCBzZXQK
PiAKPiBSZWdhcmRzLAo+ICDCoFZpY2VudGUuCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
PiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
