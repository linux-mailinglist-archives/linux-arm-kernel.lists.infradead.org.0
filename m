Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87FEA26172
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 12:10:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2BkvLkG1QSmzwoYW99nn5JW7AWcH71BH7iLkkq5XtiE=; b=SPrv/Z3M+PTrob
	+8D/Hp9m+b2SP0DwMhOcfCiRENWZWmCLU5oS9OrdoW3KzH1I9gGH0xbCx2/T89fjjwqSxa/H6r2Kj
	6ZUY755MaXfXinCUCCwxlKRl0EP7SkFHoELeT+EYPQwlciPQE4746Vrzd9fs6zuKBBCeTOQP5RajM
	RTg0HFEPqwAWOEPdbGooHP3GLbN4Tcg7EIkPQwMMzoIQCQV8PIeyD8fG6X6Lc/uxja5Ir17H16Ue5
	U+a3ehSDBJB+Yvbtl1WJG++4hnC9Kf482rNwELeGTIEjxlU8M3baurHqBTef1906Laz8mIff3nd57
	DeIWPqYZ4O+ysfLt71FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTOCw-0003hj-CR; Wed, 22 May 2019 10:10:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTOCo-0003gz-DS
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 10:10:44 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>)
 id 1hTOCd-0003cl-Ks; Wed, 22 May 2019 12:10:31 +0200
Message-ID: <1558519829.2624.40.camel@pengutronix.de>
Subject: Re: [PATCH v4 00/14] add ecspi ERR009165 for i.mx6/7 soc family
From: Lucas Stach <l.stach@pengutronix.de>
To: Robin Gong <yibin.gong@nxp.com>, "robh@kernel.org" <robh@kernel.org>, 
 "broonie@kernel.org" <broonie@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>,  "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,  "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "vkoul@kernel.org" <vkoul@kernel.org>, 
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "plyatov@gmail.com" <plyatov@gmail.com>,  "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>
Date: Wed, 22 May 2019 12:10:29 +0200
In-Reply-To: <1558548188-1155-1-git-send-email-yibin.gong@nxp.com>
References: <1558548188-1155-1-git-send-email-yibin.gong@nxp.com>
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_031042_612360_97357EFE 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iaW4sCgpBbSBNaXR0d29jaCwgZGVuIDIyLjA1LjIwMTksIDA5OjU5ICswMDAwIHNjaHJp
ZWIgUm9iaW4gR29uZzoKPiDCoCBUaGVyZSBpcyBlY3NwaSBFUlIwMDkxNjUgb24gaS5teDYvNyBz
b2MgZmFtaWx5LCB3aGljaCBjYXVzZSBGSUZPCj4gdHJhbnNmZXIgdG8gYmUgc2VuZCB0d2ljZSBp
biBETUEgbW9kZS4gUGxlYXNlIGdldCBtb3JlIGluZm9ybWF0aW9uIGZyb206Cj4gaHR0cHM6Ly93
d3cubnhwLmNvbS9kb2NzL2VuL2VycmF0YS9JTVg2RFFDRS5wZGYuIFRoZSB3b3JrYXJvdW5kIGlz
IGFkZGluZwo+IG5ldyBzZG1hIHJhbSBzY3JpcHQgd2hpY2ggd29ya3MgaW4gWENIwqDCoG1vZGUg
YXMgUElPIGluc2lkZSBzZG1hIGluc3RlYWQKPiBvZiBTTUMgbW9kZSwgbWVhbndoaWxlLCAnVFhf
VEhSRVNIT0xEJyBzaG91bGQgYmUgMC4gVGhlIGlzc3VlIHNob3VsZCBiZQo+IGV4aXN0IG9uIGFs
bCBsZWdhY3kgaS5teDYvNyBzb2MgZmFtaWx5IGJlZm9yZSBpLm14NnVsLgo+IE5YUCBmaXggdGhp
cyBkZXNpZ24gaXNzdWUgZnJvbSBpLm14NnVsLCBzbyBuZXdlciBjaGlwcyBpbmNsdWRpbmcgaS5t
eDZ1bC8KPiA2dWxsLzZzbGwgZG8gbm90IG5lZWQgdGhpcyB3b3JrYXJvdWQgYW55bW9yZS4gQWxs
IG90aGVyIGkubXg2LzcvOCBjaGlwcwo+IHN0aWxsIG5lZWQgdGhpcyB3b3JrYXJvdWQuIFRoaXMg
cGF0Y2ggc2V0IGFkZCBuZXcgJ2ZzbCxpbXg2dWwtZWNzcGknCj4gZm9yIGVjc3BpIGRyaXZlciBh
bmQgJ2Vjc3BpX2ZpeGVkJyBpbiBzZG1hIGRyaXZlciB0byBjaG9vc2UgaWYgbmVlZCBlcnJhdGEK
PiBvciBub3QuCj4gwqAgVGhlIGZpcnN0IHR3byByZXZlcnRlZCBwYXRjaGVzIHNob3VsZCBiZSB0
aGUgc2FtZSBpc3N1ZSwgdGhvdWdoLCBpdAo+IHNlZW1zICdmaXhlZCcgYnkgY2hhbmdpbmcgdG8g
b3RoZXIgc2hwIHNjcmlwdC4gSG9wZSBTZWFuIG9yIFNhc2NoYSBjb3VsZAo+IGhhdmUgdGhlIGNo
YW5jZSB0byB0ZXN0IHRoaXMgcGF0Y2ggc2V0IGlmIGNvdWxkIGZpeCB0aGVpciBpc3N1ZXMuCj4g
wqAgQmVzaWRlcywgZW5hYmxlIHNkbWEgc3VwcG9ydCBmb3IgaS5teDhtbS84bXEgYW5kIGZpeCBl
Y3NwaTEgbm90IHdvcmsKPiBvbiBpLm14OG1tIGJlY2F1c2UgdGhlIGV2ZW50IGlkIGlzIHplcm8u
Cj4gCj4gUFM6Cj4gwqAgUGxlYXNlIGdldCBzZG1hIGZpcm13YXJlIGZyb20gYmVsb3cgbGludXgt
ZmlybXdhcmUgYW5kIGNvcHkgaXQgdG8geW91cgo+IGxvY2FsIHJvb3RmcyAvbGliL2Zpcm13YXJl
L2lteC9zZG1hLgo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwv
Z2l0L2Zpcm13YXJlL2xpbnV4LWZpcm13YXJlLmdpdC90cmVlL2lteC9zZG1hCgpJIGhhdmVuJ3Qg
dGVzdGVkIHRoaXMgc28gYXNraW5nIHRoZSBvYnZpb3VzIHF1ZXN0aW9uOiB3aGF0IGhhcHBlbnMg
d2hlbgp0aGlzIHNlcmllcyBpcyBhcHBsaWVkIHdpdGhvdXQgdGhlIFJBTSBzY3JpcHQgYmVpbmcg
cHJlc2VudCBvbiB0aGUKc3lzdGVtPyBXaWxsIGl0IHJlbmRlciBTUEkgdW51c2FibGU/IEkgZ3Vl
c3Mgc28gc2luY2UgaXQgY2hhbmdlcyB0aGUKZmxvdyBiZXR3ZWVuIHRoZSBTUEkgY29yZSBhbmQg
RE1BIGNvbnRyb2xsZXIuIENhbiB3ZSBzb21laG93IGRldGVjdAp0aGF0IFNETUEgaXNuJ3QgdXNp
bmcgdGhlIGNvcnJlY3QgUkFNIHNjcmlwdCBhbmQgZmFsbCBiYWNrIHRvIFBJTyBtb2RlCmluIHRo
ZSBTUEkgZHJpdmVyIGluIHRoYXQgY2FzZT8KCkN1cnJlbnRseSB1c2luZyB0aGUgUkFNIHNjcmlw
dCBpcyBub3QgYW4gb3B0aW9uIGluIGEgbG90IG9mIHVzZS1jYXNlcywKYXMgaXQgc3RpbGwgYnJl
YWtzIHNlcmlhbCBETUEgc3VwcG9ydC4gVGhlIGZpeCBmb3IgdGhlIHNlcmlhbCBpc3N1ZQpyZWFs
bHkgbmVlZHMgdG8gYmUgcmVtb3ZlIHRoZSBicm9rZW4gc2VyaWFsIHNjcmlwdCBmcm9tIHRoZSBS
QU0KZmlybXdhcmUsIG5vdCBjaGFuZ2UgdGhlIHNlcmlhbCBkcml2ZXIgdG8gZGVhbCB3aXRoIHRo
ZSBicm9rZW4gYmVoYXZpb3IKaW50cm9kdWNlZCBieSB0aGUgUkFNIHNjcmlwdC4KClJlZ2FyZHMs
Ckx1Y2FzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
