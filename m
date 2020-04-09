Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2B11A32F7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 13:10:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QBeWk7o1ZbzOEfCTAbt56AjoZtV6Xjmkn7a/weqLrc0=; b=CI/NFPGbCBlk4XXgH7a0wOeWN
	ZBabK/ThGymcooWPohLS0nPXzhielx4FWfeig557LfGRc+ZFEndZYF9YAtfi+t7Lmry6nUr9SaWxO
	BYzj2BYBHTN09G0umLItKwRLcgWC4UFVB1nb/rrtpgsKXizMZ2ARmIRIfxZf4oCfd44E48bKCVPyN
	H2B0A/9Kwun4sDzhDa7vxA9EZZpTp3rWOo2nJr7uAK8w65UKBU9nhtyDv3S90jYXRh15FPfcblY9z
	jOdOORoIJNZblilTGgFyFXdpHYmnbJSjnbwMgWoeOLno5/w+wCLMeXkd+UkN6wLJ7bOrpr3JlFkZX
	Q9p6XQE0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMV4g-0007QM-BI; Thu, 09 Apr 2020 11:10:22 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMV4X-0006nQ-Oh
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 11:10:15 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 81A6D2979A5
Subject: Re: [RFC 0/8] Stop monitoring disabled devices
To: Daniel Lezcano <daniel.lezcano@linaro.org>, linux-pm@vger.kernel.org
References: <20200407174926.23971-1-andrzej.p@collabora.com>
 <2bc5a902-acde-526a-11a5-2357d899916c@linaro.org>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <aeec2ce8-8fb9-9353-f3dd-36a476ceeb3b@collabora.com>
Date: Thu, 9 Apr 2020 13:10:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <2bc5a902-acde-526a-11a5-2357d899916c@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_041013_961363_E39DE33B 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 platform-driver-x86@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 kernel@collabora.com, Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>, linux-acpi@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 Len Brown <lenb@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Ido Schimmel <idosch@mellanox.com>, Jiri Pirko <jiri@mellanox.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>, netdev@vger.kernel.org,
 Peter Kaestle <peter@piie.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Enrico Weigelt <info@metux.net>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRGFuaWVsLAoKVyBkbml1IDA5LjA0LjIwMjAgb8KgMTI6MjksIERhbmllbCBMZXpjYW5vIHBp
c3plOgo+IE9uIDA3LzA0LzIwMjAgMTk6NDksIEFuZHJ6ZWogUGlldHJhc2lld2ljeiB3cm90ZToK
Pj4gVGhlIGN1cnJlbnQga2VybmVsIGJlaGF2aW9yIGlzIHRvIGtlZXAgcG9sbGluZyB0aGUgdGhl
cm1hbCB6b25lIGRldmljZXMKPj4gcmVnYXJkbGVzcyBvZiB0aGVpciBjdXJyZW50IG1vZGUuIFRo
aXMgaXMgbm90IGRlc2lyZWQsIGFzIGFsbCBzdWNoICJkaXNhYmxlZCIKPj4gZGV2aWNlcyBhcmUg
bWVhbnQgdG8gYmUgaGFuZGxlZCBieSB1c2Vyc3BhY2UsPiBzbyBwb2xsaW5nIHRoZW0gbWFrZXMg
bm8gc2Vuc2UuCj4gCj4gVGhhbmtzIGZvciBwcm9wb3NpbmcgdGhlc2UgY2hhbmdlcy4KPiAKPiBJ
J3ZlIGJlZW4gKHF1aWNrbHkpIHRocm91Z2ggdGhlIHNlcmllcyBhbmQgdGhlIGRlc2NyaXB0aW9u
IGJlbG93LiBJIGhhdmUKPiB0aGUgZmVlbGluZyB0aGUgc2VyaWVzIG1ha2VzIG1vcmUgY29tcGxl
eCB3aGlsZSB0aGUgY3VycmVudCBjb2RlIHdoaWNoCj4gd291bGQgZGVzZXJ2ZSBhIGNsZWFudXAu
Cj4gCj4gV2h5IG5vdCBmaXJzdDoKPiAKPiAgIC0gQWRkIGEgJ21vZGUnIGZpZWxkIGluIHRoZSB0
aGVybWFsIHpvbmUgZGV2aWNlCj4gICAtIEtpbGwgYWxsIHNldC9nZXRfbW9kZSBjYWxsYmFja3Mg
aW4gdGhlIGRyaXZlcnMgd2hpY2ggYXJlIGR1cGxpY2F0ZWQgY29kZS4KPiAgIC0gQWRkIGEgZnVu
Y3Rpb246Cj4gCj4gICBlbnVtIHRoZXJtYWxfZGV2aWNlX21vZGUgdGhlcm1hbF96b25lX2dldF9t
b2RlKCAqdHopCj4gICB7Cj4gCS4uLgo+IAlpZiAodHotPm9wcy0+Z2V0X21vZGUpCj4gCQlyZXR1
cm4gdHotPm9wcy0+Z2V0X21vZGUoKTsKPiAKPiAJcmV0dXJuIHR6LT5tb2RlOwo+ICAgfQo+IAo+
IAo+ICAgaW50IHRoZXJtYWxfem9uZV9zZXRfbW9kZSguLip0eiwgZW51bSB0aGVybWFsX2Rldmlj
ZV9tb2RlIG1vZGUpCj4gICB7Cj4gCS4uLgo+IAlpZiAodHotPm9wcy0+c2V0X21vZGUpCj4gCQly
ZXR1cm4gdHotPm9wcy0+c2V0X21vZGUodHosIG1vZGUpOwo+IAo+IAl0ei0+bW9kZSA9IG1vZGU7
Cj4gCj4gCXJldHVybiAwOwo+ICAgfQo+IAo+ICAgc3RhdGljIGlubGluZSB0aGVybWFsX3pvbmVf
ZW5hYmxlKC4uLiAqdHopCj4gICB7Cj4gCXRoZXJtYWxfem9uZV9zZXRfbW9kZSh0eiwgVEhFUk1B
TF9ERVZJQ0VfRU5BQkxFRCk7Cj4gICB9Cj4gCj4gICBzdGF0aWMgaW5saW5lIHRoZXJtYWxfem9u
ZV9kaXNhYmxlKC4uLiAqdHopIHsKPiAJdGhlcm1hbF96b25lX3NldF9tb2RlKHR6LCBUSEVSTUFM
X0RFVklDRV9ESVNBQkxFRCk7Cj4gICB9Cj4gCj4gQW5kIHRoZW4gd2hlbiB0aGUgY29kZSBpcyBj
b25zb2xpZGF0ZWQsIHVzZSB0aGUgbW9kZSB0byBlbmFibGUvZGlzYWJsZQo+IHRoZSBwb2xsaW5n
IGFuZCBjb250aW51ZSBraWxsaW5nIHRoZSBkdXBsaWNhdGVkIGNvZGUgaW4gb2YtdGhlcm1hbC5j
IGFuZAo+IGFueXdoZXJlIGVsc2UuCj4gCj4gCgpUaGFua3MgZm9yIGZlZWRiYWNrLgoKQW55b25l
IGVsc2U/CgpBbmRyemVqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
