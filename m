Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BC51D24CF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 03:37:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=19qeYG66ZPoF+MwvtWPzMFggeBRvTN3ygHuC1BbySk0=; b=kVwvBvwJcCMTBS
	ZmSbhghMPpSpgLuoA6Rvrky4zocJYtvNQ1qMcXV3bVvrw4nRCO4TDyxHJCzMWrla9TnqCthwz1qgK
	cYyDShWVoNbGolOrER/8rK301KCXTGUQ/CpbEqbxnSDzL4Xczc1bz8HOgbXUkeh4W/MZl4/1DTpmc
	mdpXlbOfAgyax8ODab09cF2qsIF1dOetVEiB/EqVhsWD0Y4M3aYfj/g/XPTk1ncDk3NGbseHpzrne
	eW+nxluQ3JvB3pF3aPwSutXUNxpwMU3WKlr8UOMAo0Dw1BQ3aeTebRXq/MuG/X0Kakcj3CdZL3iOv
	cgTUj9aIpA6/ckcR2xeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ2oe-000888-JM; Thu, 14 May 2020 01:37:40 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ2oV-00087c-7g
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 01:37:32 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id C807E51F;
 Thu, 14 May 2020 03:37:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1589420250;
 bh=AZvfkT/3qOUK0pEh61PQ1h6H54uQqgG9FuCVwwTWtqU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bmJQH7uRpm7kKV/n2mhcUI/9VCqmpuykmeG9q5pJqwgU40PBQEFxIU1XHFh++ggVY
 Y84bkYR4/cKygjDfFbMRjHV69E42fivEHhsDVTnAWE1rmjMxghgq/IyDuZtoXsNb3y
 /bjlbUGvwerR53+amcYxkbmNf2WIdWD/8kFSZh8o=
Date: Thu, 14 May 2020 04:37:23 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
Subject: Re: [PATCH v2 4/6] arm64: dts: hisilicon: hikey: fixes to comply
 with adi,adv7533 DT binding
Message-ID: <20200514013723.GD7425@pendragon.ideasonboard.com>
References: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
 <20200511110611.3142-5-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511110611.3142-5-ricardo.canuelo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_183731_424271_95024F19 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, geert+renesas@glider.be, xuwei5@hisilicon.com,
 robh+dt@kernel.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUmljYXJkbywKClRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoLgoKT24gTW9uLCBNYXkgMTEsIDIw
MjAgYXQgMDE6MDY6MDlQTSArMDIwMCwgUmljYXJkbyBDYcOxdWVsbyB3cm90ZToKPiBoaTM2NjAt
aGlrZXk5NjAuZHRzOgo+ICAgRGVmaW5lIGEgJ3BvcnRzJyBub2RlIGZvciAnYWR2NzUzMzogYWR2
NzUzM0AzOScgYW5kIHRoZQo+ICAgJ2FkaSxkc2ktbGFuZXMnIHByb3BlcnR5IHRvIG1ha2UgaXQg
Y29tcGxpYW50IHdpdGggdGhlIGFkaSxhZHY3NTMzIERUCj4gICBiaW5kaW5nLgo+IAo+ICAgVGhp
cyBmaWxscyB0aGUgcmVxdWlyZW1lbnRzIHRvIG1lZXQgdGhlIGJpbmRpbmcgcmVxdWlyZW1lbnRz
LAo+ICAgcmVtb3RlIGVuZHBvaW50cyBhcmUgbm90IGRlZmluZWQuCj4gCj4gaGk2MjIwLWhpa2V5
LmR0czoKPiAgIENoYW5nZSBwcm9wZXJ0eSBuYW1lIHMvcGQtZ3Bpby9wZC1ncGlvcywgZ3BpbyBw
cm9wZXJ0aWVzIHNob3VsZCBiZQo+ICAgcGx1cmFsLiBUaGlzIGlzIGp1c3QgYSBjb3NtZXRpYyBj
aGFuZ2UuCj4gCj4gU2lnbmVkLW9mZi1ieTogUmljYXJkbyBDYcOxdWVsbyA8cmljYXJkby5jYW51
ZWxvQGNvbGxhYm9yYS5jb20+CgpBY2tlZC1ieTogTGF1cmVudCBQaW5jaGFydCA8bGF1cmVudC5w
aW5jaGFydEBpZGVhc29uYm9hcmQuY29tPgoKPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9o
aXNpbGljb24vaGkzNjYwLWhpa2V5OTYwLmR0cyB8IDExICsrKysrKysrKysrCj4gIGFyY2gvYXJt
NjQvYm9vdC9kdHMvaGlzaWxpY29uL2hpNjIyMC1oaWtleS5kdHMgICAgfCAgMiArLQo+ICAyIGZp
bGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9oaXNpbGljb24vaGkzNjYwLWhpa2V5OTYwLmR0cyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvaGlzaWxpY29uL2hpMzY2MC1oaWtleTk2MC5kdHMKPiBpbmRl
eCBlMDM1Y2YxOTViMTkuLjhjNGJmYmFmM2E4MCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL2hpc2lsaWNvbi9oaTM2NjAtaGlrZXk5NjAuZHRzCj4gKysrIGIvYXJjaC9hcm02NC9i
b290L2R0cy9oaXNpbGljb24vaGkzNjYwLWhpa2V5OTYwLmR0cwo+IEBAIC01MzAsNiArNTMwLDE3
IEBACj4gIAkJc3RhdHVzID0gIm9rIjsKPiAgCQljb21wYXRpYmxlID0gImFkaSxhZHY3NTMzIjsK
PiAgCQlyZWcgPSA8MHgzOT47Cj4gKwkJYWRpLGRzaS1sYW5lcyA9IDw0PjsKPiArCQlwb3J0cyB7
Cj4gKwkJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ICsJCQkjc2l6ZS1jZWxscyA9IDwwPjsKPiAr
CQkJcG9ydEAwIHsKPiArCQkJCXJlZyA9IDwwPjsKPiArCQkJfTsKPiArCQkJcG9ydEAxIHsKPiAr
CQkJCXJlZyA9IDwxPjsKPiArCQkJfTsKPiArCQl9Owo+ICAJfTsKPiAgfTsKPiAgCj4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvaGlzaWxpY29uL2hpNjIyMC1oaWtleS5kdHMgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL2hpc2lsaWNvbi9oaTYyMjAtaGlrZXkuZHRzCj4gaW5kZXggYzE0
MjA1Y2Q2YmY1Li4zZTQ3MTUwYzA1ZWMgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0
cy9oaXNpbGljb24vaGk2MjIwLWhpa2V5LmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
aGlzaWxpY29uL2hpNjIyMC1oaWtleS5kdHMKPiBAQCAtNTE2LDcgKzUxNiw3IEBACj4gIAkJcmVn
ID0gPDB4Mzk+Owo+ICAJCWludGVycnVwdC1wYXJlbnQgPSA8JmdwaW8xPjsKPiAgCQlpbnRlcnJ1
cHRzID0gPDEgMj47Cj4gLQkJcGQtZ3BpbyA9IDwmZ3BpbzAgNCAwPjsKPiArCQlwZC1ncGlvcyA9
IDwmZ3BpbzAgNCAwPjsKPiAgCQlhZGksZHNpLWxhbmVzID0gPDQ+Owo+ICAJCSNzb3VuZC1kYWkt
Y2VsbHMgPSA8MD47Cj4gIAoKLS0gClJlZ2FyZHMsCgpMYXVyZW50IFBpbmNoYXJ0CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
