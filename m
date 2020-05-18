Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2DFE1D7589
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 12:48:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BJlpEif2mghM/lQud5Q4FAsnoH3eUhCrOzBXOyMcoAA=; b=WuwzF6hIpj+zhr3Prb/8nQX00
	RZm9WcKKLDvpTtXfYHu5gw8RorCc2A9oXYse4LOmZf0FzOhrWTQs/8FlxMWeEVFgmgLrBS9n1E/yB
	0s3RZQ4pHUBV093zhapB1B17cHc42xZ4hwmZKqdbhDDmsE+dGC6nGPnLrc2ZoFfJG6bKi9bKaV+4s
	at2GV1yxBjiJV5idiN5MWw92q1yAQ8rxXDUHgMQdiSj5P4p4FH0h16gtIoAiNaULBa5TAfrBGEKSg
	mYIN8ADl1xQSYm7otV7w57bdoV4reg88QPRvtKajTMtWNuHZNtJNmPdnZTFRC9p4usPno5IZN1hEq
	E+n0sR2Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jadJt-0001lL-D6; Mon, 18 May 2020 10:48:29 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jadJk-0001kV-Gn
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 10:48:22 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 849C52A04C1
Subject: Re: [PATCHv2 0/7] Support inhibiting input devices
To: Hans de Goede <hdegoede@redhat.com>, linux-input@vger.kernel.org,
 linux-acpi@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-tegra@vger.kernel.org, patches@opensource.cirrus.com,
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org
References: <20200506002746.GB89269@dtor-ws>
 <20200515164943.28480-1-andrzej.p@collabora.com>
 <842b95bb-8391-5806-fe65-be64b02de122@redhat.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <e6030957-97dc-5b04-7855-bc14a78164c8@collabora.com>
Date: Mon, 18 May 2020 12:48:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <842b95bb-8391-5806-fe65-be64b02de122@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_034820_691917_5A576E89 
X-CRM114-Status: GOOD (  18.97  )
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
Cc: Nick Dyer <nick@shmanahar.org>, Benjamin Tissoires <btissoir@redhat.com>,
 Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>, Lars-Peter Clausen <lars@metafoo.de>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>, Len Brown <lenb@kernel.org>,
 Peter Hutterer <peter.hutterer@redhat.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Barry Song <baohua@kernel.org>,
 Ferruh Yigit <fery@cypress.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGFucywKClcgZG5pdSAxNS4wNS4yMDIwIG/CoDIwOjE5LCBIYW5zIGRlIEdvZWRlIHBpc3pl
Ogo+IEhpIEFuZHJlemosCj4gCj4gT24gNS8xNS8yMCA2OjQ5IFBNLCBBbmRyemVqIFBpZXRyYXNp
ZXdpY3ogd3JvdGU6Cj4+IFVzZXJzcGFjZSBtaWdodCB3YW50IHRvIGltcGxlbWVudCBhIHBvbGlj
eSB0byB0ZW1wb3JhcmlseSBkaXNyZWdhcmQgaW5wdXQKPj4gZnJvbSBjZXJ0YWluIGRldmljZXMs
IGluY2x1ZGluZyBub3QgdHJlYXRpbmcgdGhlbSBhcyB3YWtldXAgc291cmNlcy4KPj4KPj4gQW4g
ZXhhbXBsZSB1c2UgY2FzZSBpcyBhIGxhcHRvcCwgd2hvc2Uga2V5Ym9hcmQgY2FuIGJlIGZvbGRl
ZCB1bmRlciB0aGUKPj4gc2NyZWVuIHRvIGNyZWF0ZSB0YWJsZXQtbGlrZSBleHBlcmllbmNlLiBU
aGUgdXNlciB0aGVuIG11c3QgaG9sZCB0aGUgbGFwdG9wCj4+IGluIHN1Y2ggYSB3YXkgdGhhdCBp
dCBpcyBkaWZmaWN1bHQgdG8gYXZvaWQgcHJlc3NpbmcgdGhlIGtleWJvYXJkIGtleXMuIEl0Cj4+
IGlzIHRoZXJlZm9yZSBkZXNpcmFibGUgdG8gdGVtcG9yYXJpbHkgZGlzcmVnYXJkIGlucHV0IGZy
b20gdGhlIGtleWJvYXJkLAo+PiB1bnRpbCBpdCBpcyBmb2xkZWQgYmFjay4gVGhpcyBvYnZpb3Vz
bHkgaXMgYSBwb2xpY3kgd2hpY2ggc2hvdWxkIGJlIGtlcHQKPj4gb3V0IG9mIHRoZSBrZXJuZWws
IGJ1dCB0aGUga2VybmVsIG11c3QgcHJvdmlkZSBzdWl0YWJsZSBtZWFucyB0byBpbXBsZW1lbnQK
Pj4gc3VjaCBhIHBvbGljeS4KPiAKPiBBY3R1YWxseSBsaWJpbnB1dCBhbHJlYWR5IGJpbmRzIHRv
Z2V0aGVyIChpbnNpZGUgbGliaW5wdXQpIFNXX1RBQkxFVF9NT0RFCj4gZ2VuZXJhdGluZyBldmRl
diBub2RlcyBhbmQgZS5nLiBpbnRlcm5hbCBrZXlib2FyZHMgb24gZGV2aWNlcyB3aXRoIDM2MMKw
Cj4gaGluZ2VzIGZvciB0aGlzIHJlYXNvbi4gbGliaW5wdXQgc2ltcGx5IGNsb3NlcyB0aGUgL2Rl
di9pbnB1dC9ldmVudCMKPiBub2RlIHdoZW4gZm9sZGVkIGFuZCByZS1vcGVucyBpdCB3aGVuIHRo
ZSBrZXlib2FyZCBzaG91bGQgYmVjb21lIGFjdGl2ZQo+IGFnYWluLiBUaHVzIG5vdCBvbmx5IHN1
cHByZXNzZXMgZXZlbnRzIGJ1dCBhbGxvd3MgZS5nLiB0b3VjaHBhZHMgdG8KPiBlbnRlciBydW50
aW1lIHN1c3BlbmQgbW9kZSB3aGljaCBzYXZlcyBwb3dlci4gVHlwaWNhbGx5IGNsb3NpbmcgdGhl
Cj4gL2Rldi9pbnB1dC9ldmVudCMgbm9kZSB3aWxsIGFsc28gZGlzYWJsZSB0aGUgZGV2aWNlIGFz
IHdha2V1cCBzb3VyY2UuCj4gCj4gU28gSSB3b25kZXIgd2hhdCB0aGlzIHNlcmllcyBhY3R1YWxs
eSBhZGRzIGZvciBmdW5jdGlvbmFsaXR5IGZvcgo+IHVzZXJzcGFjZSB3aGljaCBjYW4gbm90IGFs
cmVhZHkgYmUgYWNoaWV2ZWQgdGhpcyB3YXk/Cj4gCj4gSSBhbHNvIG5vdGljZWQgdGhhdCB5b3Ug
a2VlcCB0aGUgZGV2aWNlIG9wZW4gKGRvIG5vdCBjYWxsIHRoZQo+IGlucHV0X2RldmljZSdzIGNs
b3NlIGNhbGxiYWNrKSB3aGVuIGluaGliaXRlZCBhbmQganVzdCB0aHJvdyBhd2F5CgpJJ20gbm90
IHN1cmUgaWYgSSB1bmRlcnN0YW5kIHlvdSBjb3JyZWN0bHksIGl0IGlzIGNhbGxlZDoKCitzdGF0
aWMgaW5saW5lIHZvaWQgaW5wdXRfc3RvcChzdHJ1Y3QgaW5wdXRfZGV2ICpkZXYpCit7CisJaWYg
KGRldi0+cG9sbGVyKQorCQlpbnB1dF9kZXZfcG9sbGVyX3N0b3AoZGV2LT5wb2xsZXIpOworCWlm
IChkZXYtPmNsb3NlKQorCQlkZXYtPmNsb3NlKGRldik7CiAgICAgICAgICAgICAgICAgXl5eXl5e
Xl5eXl5eXl5eXgorc3RhdGljIGludCBpbnB1dF9pbmhpYml0KHN0cnVjdCBpbnB1dF9kZXYgKmRl
dikKK3sKKwlpbnQgcmV0ID0gMDsKKworCW11dGV4X2xvY2soJmRldi0+bXV0ZXgpOworCisJaWYg
KGRldi0+aW5oaWJpdGVkKQorCQlnb3RvIG91dDsKKworCWlmIChkZXYtPnVzZXJzKSB7CisJCWlm
IChkZXYtPmluaGliaXQpIHsKKwkJCXJldCA9IGRldi0+aW5oaWJpdChkZXYpOworCQkJaWYgKHJl
dCkKKwkJCQlnb3RvIG91dDsKKwkJfQorCQlpbnB1dF9zdG9wKGRldik7CiAgICAgICAgICAgICAg
ICAgXl5eXl5eXl5eXl5eXl5eXgoKSXQgd2lsbCBub3QgYmUgY2FsbGVkIHdoZW4gZGV2LT51c2Vy
cyBpcyB6ZXJvLCBidXQgaWYgaXQgaXMgemVybywKdGhlbiBub2JvZHkgaGFzIG9wZW5lZCB0aGUg
ZGV2aWNlIHlldCBzbyB0aGVyZSBpcyBub3RoaW5nIHRvIGNsb3NlLgoKQW5kcnplagoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
