Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D714E14BDC9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 17:32:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NokjdXLcNFEThMlPDIVOiXYKqMJwFeooRwyi+W9JMaE=; b=g8SfDynoUofhBjKH+1BuWigIJ
	VBPsVPUDkvRpUGZcIgZ6KEyR35u2DsaKpx596mDEHCLlQRoLg81aZC04HdAga+Rp8GFvOm5Vd5JOn
	Beu+c6+R9QSmxhlkMoHOHq8vl8PEFkZkeSfhyLm25fSLFV86SQIIZKlMrlr3F8fnYSZgnHtirQngB
	ocGYUZxreNZAdITgaVhWNH8ijH3xoVV8Goh6kX2WZXvBrx/ujNGnHOQPdRPD8B5lSNoEZPF6/0i3A
	NPjHTcJOasQoJLXrp8krp0xyjhPtaZuxJqyLrixBsNC/Y0UGcEJH0ErbjEwxhJuAEvgnDx8jduOwq
	8VwjF8QWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwTmY-0001xQ-47; Tue, 28 Jan 2020 16:32:06 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwTmO-0001wH-Lx
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 16:31:57 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 08:31:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,374,1574150400"; d="scan'208";a="232004557"
Received: from cauduong-mobl1.amr.corp.intel.com (HELO [10.254.184.245])
 ([10.254.184.245])
 by orsmga006.jf.intel.com with ESMTP; 28 Jan 2020 08:31:50 -0800
Subject: Re: [PATCH 0/4] Add a better separation between i.MX8 families
To: "Daniel Baluta (OSS)" <daniel.baluta@oss.nxp.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>
References: <20200128080518.29970-1-daniel.baluta@oss.nxp.com>
From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <7246ae53-a542-2726-78e5-db43318dd44b@linux.intel.com>
Date: Tue, 28 Jan 2020 10:08:27 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200128080518.29970-1-daniel.baluta@oss.nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_083156_768220_B522111F 
X-CRM114-Status: GOOD (  18.91  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Daniel Baluta <daniel.baluta@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxLzI4LzIwIDI6MDYgQU0sIERhbmllbCBCYWx1dGEgKE9TUykgd3JvdGU6Cj4gRnJvbTog
RGFuaWVsIEJhbHV0YSA8ZGFuaWVsLmJhbHV0YUBueHAuY29tPgo+IAo+IFNvIGZhciB0aGUgaW1w
bGVtZW50YXRpb24gd2FzIGRlc2lnbmVkIHRvIHN1cHBvcnQgIGEgZ2VuZXJpYyBwbGF0Zm9ybQo+
IG5hbWVkIGkuTVg4LiBBbnlob3csIG5vdyB3b3JraW5nIHdpdGggc3BlY2lmaWMgaS5NWDggaW5z
dGFuY2VzIHdlIG5lZWQKPiB0byBhY2NvdW50IGZvciB0aGUgZGlmZmVyZW5jZXMuCj4gCj4gaS5N
WDggbmFtaW5nIGNhbiBiZSBjb25mdXNpbmcgYXQgdGhlIGZpcnN0IGdsYW5jZSwgc28gd2UgbmVl
ZCB0byBoYXZlCj4gYSBjbGVhbiBzZXBhcmF0aW9uIGJldHdlZW4gZGlmZmVyZW50IHBsYXRmb3Jt
cy4KPiAKPiBIZXJlIGlzIHRoZSBzcGxpdCBvZiBpLk1YOCBwZXIgcGxhdGZvcm1zLiBOb3RpY2Ug
dGhhdCBpLk1YOCBuYW1lcwo+IHRoZSBlbnRpcmUgZmFtaWx5LCBidXQgYWxzbyBhIHN1Yi1mYW1p
bHkuCj4gCj4gaW14OAo+IOKUnOKUgOKUgCBpbXg4Cj4g4pSCwqDCoCDilJTilIDilIAgaW14OHFt
ICgqKQo+IOKUnOKUgOKUgCBpbXg4bQo+IOKUgsKgwqAg4pSc4pSA4pSAIGlteDhtbQo+IOKUgsKg
wqAg4pSc4pSA4pSAIGlteDhtbgo+IOKUgsKgwqAg4pSc4pSA4pSAIGlteDhtcCAoKikKPiDilILC
oMKgIOKUlOKUgOKUgCBpbXg4bXEKPiDilJTilIDilIAgaW14OHgKPiAgICAgIOKUlOKUgOKUgCBp
bXg4cXhwICgqKQo+IAo+IFBsYXRmb3JtcyBtYXJrZWQgd2l0aCAoKikgY29udGFpbiBhIERTUC4g
SW4gdGhlIGZ1dHVyZSB0aGVyZSBtaWdodCBiZQo+IG1vcmUgcGxhdGZvcm1zLgo+IAo+IFRoaXMg
cGF0Y2hzZXJpZXMgZG9lcyB0aGUgZm9sbG93aW5nOgo+IAkqIHJlbmFtZXMgaW14OCB0byBpbXg4
eCAoYmVjYXVzZSB0aGUgb25seSBzdXBwb3J0ZWQgcGxhdGZvcm0gbm93Cj4gICAgICAgICAgaXMg
aW14OHF4cCkuCj4gICAgICAgICAgKiBhZGRzIHN1cHBvcnQgZm9yIGlteDggKHdoaWNoIGlzIGlt
eDhxbSkKPiAKPiBBIGZ1dHVyZSBwYXRjaHNldCB3aWxsIGFkZCBzdXBwcm90IGZvciBpLk1YOE1Q
Lgo+IAo+IFBhdWwgT2xhcnUgKDQpOgo+ICAgIEFTb0M6IFNPRjogUmVuYW1lIGkuTVg4IHBsYXRm
b3JtIHRvIGkuTVg4WAo+ICAgIEFTb0M6IFNPRjogaW14ODogQWRkIG9wcyBmb3IgaS5NWDhRTQo+
ICAgIEFTb0M6IFNPRjogQWRkIGkuTVg4UU0gZGV2aWNlIGRlc2NyaXB0b3IKPiAgICBkdC1iaW5k
aW5nczogZHNwOiBmc2w6IEFkZCBmc2wsaW14OHFtLWRzcCBlbnRyeQoKVGhpcyBwYXRjaHNldCB3
YXMgcmV2aWV3ZWQgb24gdGhlIFNPRiBHaXRIdWIuIEkgYXNrZWQgRGFuaWVsIHRvIHNlbmQgaXQg
CmRpcmVjdGx5IHRvIHRoZSByZWxldmFudCBtYWlsaW5nIGxpc3QgZm9yIEFSTS9EZXZpY2UgVHJl
ZS4KClJldmlld2VkLWJ5OiBQaWVycmUtTG91aXMgQm9zc2FydCA8cGllcnJlLWxvdWlzLmJvc3Nh
cnRAbGludXguaW50ZWwuY29tPgoKPiAKPiAgIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RzcC9m
c2wsZHNwLnlhbWwgICAgICB8ICAxICsKPiAgIHNvdW5kL3NvYy9zb2YvaW14L2lteDguYyAgICAg
ICAgICAgICAgICAgICAgICB8IDU3ICsrKysrKysrKysrKysrKysrKy0KPiAgIHNvdW5kL3NvYy9z
b2Yvc29mLW9mLWRldi5jICAgICAgICAgICAgICAgICAgICB8IDEwICsrKysKPiAgIDMgZmlsZXMg
Y2hhbmdlZCwgNjUgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
