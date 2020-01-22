Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BFF1456E7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 14:39:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UY24d7N3tN0nDZoL0GBQClWBN9/6SgP0Dqg11RkyB5o=; b=g2QpLyxa4hId0hHOEi0F7FOLt
	tB16n55wjMDKodaf5kWyrSnyIabT4ayM1dnJaRnfSF4Ip4U5NaH69FosEfKsYWJqMQcahvNuj26DH
	BB9HZESWRMuZA0RTEDvlEqeUPYrYFQoEORzfUQjoz4MqB5CsD8MwhfL4/T+eeXXtc1hQj7oFC5m5J
	uR2rxEkgqhYRY1wZzKmATM6n2j+7vk+AVhBdqOfJmhv3FH5KG0q7MqCOrxn5TcEpganisophHnHo5
	yteaSrET+qst93e45hsGZmZ/gwTMc7br3HyvKt05YbRp7dEkqNCjno78VUJCnkDBEJ3Rg47z1Zban
	JTr4hQ/uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuGE3-0003yO-HS; Wed, 22 Jan 2020 13:39:19 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuGDu-0003xr-VR
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 13:39:12 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00MDd0cM057467;
 Wed, 22 Jan 2020 07:39:00 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579700340;
 bh=co1m/tnZ+ImTwD3yuXyZxVaG3wlifWau9XX6MEe8Chg=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=taziyYJQlSzT2GyfKCypQhi5IB6lZr9GRxURow+X6+pPSQokO3HMZ5n1Ktm1eOZV+
 QOsv5YUsmbCQO9rciykyNX8OSaR8Ff8g2cuKfD4CCH/IloXOHZA9/Fm6d1FFzbQAcT
 LwBwM8c5O1wWlnzNP20hbrcxQGLBFFveLKn91q14=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00MDd05r065172
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 22 Jan 2020 07:39:00 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 22
 Jan 2020 07:38:59 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 22 Jan 2020 07:38:59 -0600
Received: from [10.250.65.13] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00MDcxqI104110;
 Wed, 22 Jan 2020 07:38:59 -0600
Subject: Re: [PATCH 1/3] dt-bindings: net: can: m_can: Add Documentation for
 stb-gpios
To: Faiz Abbas <faiz_abbas@ti.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <netdev@vger.kernel.org>, <linux-can@vger.kernel.org>
References: <20200122080310.24653-1-faiz_abbas@ti.com>
 <20200122080310.24653-2-faiz_abbas@ti.com>
From: Dan Murphy <dmurphy@ti.com>
Message-ID: <c3b0eeb8-bd78-aa96-4783-62dc93f03bfe@ti.com>
Date: Wed, 22 Jan 2020 07:35:52 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200122080310.24653-2-faiz_abbas@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_053911_137706_0D2A0F5D 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, nm@ti.com, catalin.marinas@arm.com,
 sriram.dash@samsung.com, t-kristo@ti.com, robh+dt@kernel.org,
 mkl@pengutronix.de, davem@davemloft.net, wg@grandegger.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RmFpegoKT24gMS8yMi8yMCAyOjAzIEFNLCBGYWl6IEFiYmFzIHdyb3RlOgo+IFRoZSBDQU4gdHJh
bnNjZWl2ZXIgb24gc29tZSBib2FyZHMgaGFzIGFuIFNUQiBwaW4gd2hpY2ggaXMKPiB1c2VkIHRv
IGNvbnRyb2wgaXRzIHN0YW5kYnkgbW9kZS4gQWRkIGFuIG9wdGlvbmFsIHByb3BlcnR5Cj4gc3Ri
LWdwaW9zIHRvIHRvZ2dsZSB0aGUgc2FtZS4KPgo+IFNpZ25lZC1vZmYtYnk6IEZhaXogQWJiYXMg
PGZhaXpfYWJiYXNAdGkuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFNla2hhciBOb3JpIDxuc2VraGFy
QHRpLmNvbT4KPiAtLS0KPiAgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQv
Y2FuL21fY2FuLnR4dCB8IDIgKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykK
Pgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2Nh
bi9tX2Nhbi50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2Nhbi9t
X2Nhbi50eHQKPiBpbmRleCBlZDYxNDM4M2FmOWMuLmNjOGJhM2Y3YTJhYSAxMDA2NDQKPiAtLS0g
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2Nhbi9tX2Nhbi50eHQKPiAr
KysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2Nhbi9tX2Nhbi50eHQK
PiBAQCAtNDgsNiArNDgsOCBAQCBPcHRpb25hbCBTdWJub2RlOgo+ICAgCQkJICB0aGF0IGNhbiBi
ZSB1c2VkIGZvciBDQU4vQ0FOLUZEIG1vZGVzLiBTZWUKPiAgIAkJCSAgRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9jYW4vY2FuLXRyYW5zY2VpdmVyLnR4dAo+ICAgCQkJICBm
b3IgZGV0YWlscy4KPiArc3RiLWdwaW9zCQk6IGdwaW8gbm9kZSB0byB0b2dnbGUgdGhlIFNUQiAo
c3RhbmRieSkgc2lnbmFsIG9uIHRoZSB0cmFuc2NlaXZlcgo+ICsKClRoZSBtX2Nhbi50eHQgaXMg
Zm9yIHRoZSBtX2NhbiBmcmFtZXdvcmsuwqAgSWYgdGhpcyBpcyBzcGVjaWZpYyB0byB0aGUgCnBs
YXRmb3JtIHRoZW4gaXQgcmVhbGx5IGRvZXMgbm90IGJlbG9uZyBoZXJlLgoKSWYgdGhlIHBsYXRm
b3JtIGhhcyBzcGVjaWZpYyBub2RlcyB0aGVuIG1heWJlIHdlIG5lZWQgYSAKbV9jYW5fcGxhdGZv
cm0udHh0IGJpbmRpbmcgZm9yIHNwZWNpZmljIHBsYXRmb3JtIG5vZGVzLsKgIEJ1dCBJIGxlYXZl
IAp0aGF0IGRlY2lzaW9uIHRvIFJvYi4KCkFsc28gSSBwcmVmZXIgeW91IHNwZWxsIG91dCBzdGFu
ZGJ5IGxpa2UgdGhlIGdwaW9zIGFyZSBzcGVsbGVkIG91dCBpbiAKdGhlIHRjYW4gYmluZGluZy4K
CkRhbgoKCj4gICBFeGFtcGxlOgo+ICAgU29DIGR0c2k6Cj4gICBtX2NhbjE6IGNhbkAyMGU4MDAw
IHsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
