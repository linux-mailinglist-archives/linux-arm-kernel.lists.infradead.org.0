Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F1AA9ACD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 08:44:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tR9baMB25Nai4/UlpoVsyvnsmD6XMCvZxM7peFntTzo=; b=OyUdqoPT0eo/+W
	yC2S755WJMVpH4An9u4fmBVbvrHMp81mN5rVZke8CP8N/YpAH3xco5IcN1A7nJ9CwRJfLOFH+Hd0m
	4hUHrgM13UlAClD/GLEdm9idQ7TTqQCJjRyfJmRzq7y1RX5amREc+Mx4HR0FOBTU293brHN63tqbI
	74rFhHG1rpUuhtgaZ7SjFDZzNgEbeYHWvxBr5rkCbJFR+m3dPI9YTkkU2q5qo4D71IDHXoSk2rAwu
	DG01Ql6FZiiyjyZspkj6jPPybdy5FobYdYHTzLn/UXyJRRu32xHsNiBe7HWO/wKD+AF1E4IRj0mXj
	BdpulGhYbYPD5oUxVFmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5lV8-0002Cy-Co; Thu, 05 Sep 2019 06:44:14 +0000
Received: from 10.mo5.mail-out.ovh.net ([46.105.52.148])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5lUx-0002CR-P3
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 06:44:05 +0000
Received: from player778.ha.ovh.net (unknown [10.108.35.128])
 by mo5.mail-out.ovh.net (Postfix) with ESMTP id 973BA24A247
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  5 Sep 2019 08:43:50 +0200 (CEST)
Received: from kaod.org (lfbn-1-2240-157.w90-76.abo.wanadoo.fr [90.76.60.157])
 (Authenticated sender: clg@kaod.org)
 by player778.ha.ovh.net (Postfix) with ESMTPSA id 1074C96502BD;
 Thu,  5 Sep 2019 06:43:44 +0000 (UTC)
Subject: Re: [PATCH] ARM: dts: aspeed-g4: Add all flash chips
To: Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
References: <20190905000221.31445-1-joel@jms.id.au>
From: =?UTF-8?Q?C=c3=a9dric_Le_Goater?= <clg@kaod.org>
Message-ID: <3b7605e2-533e-2123-b866-4ef5c601dc2a@kaod.org>
Date: Thu, 5 Sep 2019 08:43:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190905000221.31445-1-joel@jms.id.au>
Content-Language: en-US
X-Ovh-Tracer-Id: 12584464736013749101
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrudejiedguddtjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_234403_958211_6A5C6D50 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.52.148 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDUvMDkvMjAxOSAwMjowMiwgSm9lbCBTdGFubGV5IHdyb3RlOgo+IFRoZSBGTUMgc3VwcG9y
dHMgZml2ZSBjaGlwIHNlbGVjdHMsIHNvIGRlc2NyaWJlIHRoZSBmaXZlIHBvc3NpYmxlIGZsYXNo
Cj4gY2hpcHMuCj4gCj4gU2lnbmVkLW9mZi1ieTogSm9lbCBTdGFubGV5IDxqb2VsQGptcy5pZC5h
dT4KCgpSZXZpZXdlZC1ieTogQ8OpZHJpYyBMZSBHb2F0ZXIgPGNsZ0BrYW9kLm9yZz4KClRoYW5r
cywKCkMuCgo+IC0tLQo+ICBhcmNoL2FybS9ib290L2R0cy9hc3BlZWQtZzQuZHRzaSB8IDIwICsr
KysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspCj4g
Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2FzcGVlZC1nNC5kdHNpIGIvYXJjaC9h
cm0vYm9vdC9kdHMvYXNwZWVkLWc0LmR0c2kKPiBpbmRleCBlNDY1Y2RhNDBmZTcuLmRmZmI1OTVk
MzBlNCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9hc3BlZWQtZzQuZHRzaQo+ICsr
KyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2FzcGVlZC1nNC5kdHNpCj4gQEAgLTY3LDYgKzY3LDI2IEBA
Cj4gIAkJCQljb21wYXRpYmxlID0gImplZGVjLHNwaS1ub3IiOwo+ICAJCQkJc3RhdHVzID0gImRp
c2FibGVkIjsKPiAgCQkJfTsKPiArCQkJZmxhc2hAMSB7Cj4gKwkJCQlyZWcgPSA8IDEgPjsKPiAr
CQkJCWNvbXBhdGlibGUgPSAiamVkZWMsc3BpLW5vciI7Cj4gKwkJCQlzdGF0dXMgPSAiZGlzYWJs
ZWQiOwo+ICsJCQl9Owo+ICsJCQlmbGFzaEAyIHsKPiArCQkJCXJlZyA9IDwgMiA+Owo+ICsJCQkJ
Y29tcGF0aWJsZSA9ICJqZWRlYyxzcGktbm9yIjsKPiArCQkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7
Cj4gKwkJCX07Cj4gKwkJCWZsYXNoQDMgewo+ICsJCQkJcmVnID0gPCAzID47Cj4gKwkJCQljb21w
YXRpYmxlID0gImplZGVjLHNwaS1ub3IiOwo+ICsJCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiAr
CQkJfTsKPiArCQkJZmxhc2hANCB7Cj4gKwkJCQlyZWcgPSA8IDQgPjsKPiArCQkJCWNvbXBhdGli
bGUgPSAiamVkZWMsc3BpLW5vciI7Cj4gKwkJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICsJCQl9
Owo+ICAJCX07Cj4gIAo+ICAJCXNwaTogc3BpQDFlNjMwMDAwIHsKPiAKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
