Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F5077050
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 19:30:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eFRr8LTCH4UPbMz61DxbKi3jfgktguR1ZaJhfCRk0A4=; b=ikVuag98Ztr42H1gdI7yYRWln
	exz7+qTCTCP9T7mTI79NPXgGhg1Bt+81O2HkNYDjlY3tnTWwKkP7aDPL36BnlEydKO89DRqjb8ChE
	ul5nC8RHJMOXxY4ioGXjLoGR0vFJ+hIcwHzP0n8IsiBpJifln3xFkXWzCdOUkpnt/FV4dWcYFMMJ4
	5u9hnGNSU8rG2lxIxVBijqLxB9zM3iSJZ/LPXA84JhRt/AWo53n3lKvvQSjpEYJTqDQEVmrpE7OyH
	xHuCrRDiX/Hp8LPmGx+Y5LGU08d5llD+hXm8YG2JsKAOUfzdku+ETUYioVC5Geo5NQtr/umZqdOll
	mDNHIgEhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr43B-0006ie-Vc; Fri, 26 Jul 2019 17:30:38 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr431-0006hy-CG
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 17:30:28 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 10:30:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,311,1559545200"; d="scan'208";a="369611738"
Received: from haiyuewa-mobl.ccr.corp.intel.com (HELO [10.255.31.18])
 ([10.255.31.18])
 by fmsmga005.fm.intel.com with ESMTP; 26 Jul 2019 10:30:25 -0700
Subject: Re: [RFC PATCH 15/17] ipmi: kcs: aspeed: Implement v2 bindings
To: Andrew Jeffery <andrew@aj.id.au>, linux-aspeed@lists.ozlabs.org
References: <20190726053959.2003-1-andrew@aj.id.au>
 <20190726053959.2003-16-andrew@aj.id.au>
From: "Wang, Haiyue" <haiyue.wang@linux.intel.com>
Message-ID: <89ea7e21-944e-3d89-05b7-2dedb7916fa9@linux.intel.com>
Date: Sat, 27 Jul 2019 01:30:24 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190726053959.2003-16-andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_103027_428734_76D1F5F3 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 1.0 HK_RANDOM_FROM         From username looks random
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Corey Minyard <minyard@acm.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, joel@jms.id.au, openipmi-developer@lists.sourceforge.net,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CtTaIDIwMTktMDctMjYgMTM6MzksIEFuZHJldyBKZWZmZXJ5INC0tcA6Cj4gVGhlIHYyIGJpbmRp
bmdzIGFsbG93IHVzIHRvIGV4dHJhY3QgdGhlIHJlc291cmNlcyBmcm9tIHRoZSBkZXZpY2V0cmVl
Lgo+IFRoZSB0YWJsZSBpbiB0aGUgZHJpdmVyIGlzIHJldGFpbmVkIHRvIGRlcml2ZSB0aGUgY2hh
bm5lbCBpbmRleCwgd2hpY2gKPiByZW1vdmVzIHRoZSBuZWVkIGZvciBrY3NfY2hhbiBwcm9wZXJ0
eSBmcm9tIHRoZSB2MSBiaW5kaW5ncy4gVGhlIHYyCj4gYmluZGluZ3MgYWxsb3cgdXMgdG8gcmVk
dWNlIHRoZSBudW1iZXIgb2Ygd2FybmluZ3MgZ2VuZXJhdGVkIGJ5IHRoZQo+IGV4aXN0aW5nIGRl
dmljZXRyZWUgbm9kZXMuCj4KPiBDYzogSGFpeXVlIFdhbmc8aGFpeXVlLndhbmdAbGludXguaW50
ZWwuY29tPgo+IENjOiBDb3JleSBNaW55YXJkPG1pbnlhcmRAYWNtLm9yZz4KPiBDYzogQXJuZCBC
ZXJnbWFubjxhcm5kQGFybmRiLmRlPgo+IENjOiBHcmVnIEtyb2FoLUhhcnRtYW48Z3JlZ2toQGxp
bnV4Zm91bmRhdGlvbi5vcmc+Cj4gQ2M6b3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZv
cmdlLm5ldAo+IFNpZ25lZC1vZmYtYnk6IEFuZHJldyBKZWZmZXJ5PGFuZHJld0Bhai5pZC5hdT4K
PiAtLS0KPiAgIGRyaXZlcnMvY2hhci9pcG1pL2tjc19ibWNfYXNwZWVkLmMgfCAxNTYgKysrKysr
KysrKysrKysrKysrKysrKystLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxMjcgaW5zZXJ0aW9u
cygrKSwgMjkgZGVsZXRpb25zKC0pCgpMb29rcyBnb29kLCB0aGFua3MgZm9yIHRoZSBoYXJkIHdv
cmssIHRoZSBjb2RlIGlzIG1vcmUgY2xlYW4hIDopCgpSZXZpZXdlZC1ieTogSGFpeXVlIFdhbmcg
PGhhaXl1ZS53YW5nQGxpbnV4LmludGVsLmNvbT4KCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
