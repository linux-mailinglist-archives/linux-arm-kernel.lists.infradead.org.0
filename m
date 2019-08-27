Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 705659E9E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:48:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hJidbIJ5w1QvwtceBLZ5VgRbhlK3yOkiVrsy7T25vso=; b=oi6xQco/F76XF2
	SD44Z1twmK31uLrTMLMnaVzSbtErWEed50IP8seztH20Q85Kmnwt70pVYNbbgbMfkJWpYZARQTInO
	njxYdw/bCLjnMEdZLzhGNCMxE20XNtH96Ui8/WVjTbaVJENmPLkWmv3dHjfILSl3/ieLf/ikICRdv
	U/QMr8dPAu2boLtRG5hWHZmGWiIrw8OszIEPEr8NZkm1NhMPR6V3QZZotcKymLZVCT55+1Kmbw9wG
	t7zwoje4graUBw7lJui+P1NYSTzyRBSNp6rSp1PcCMFED1DzmWJjNzv5WJYoY5SIWuTVlfFTAiMoE
	WVtExKlOZqR2K74GHuLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bph-0004F8-7B; Tue, 27 Aug 2019 13:48:25 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bpR-0004Dx-CR
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:48:11 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 47D2D240012;
 Tue, 27 Aug 2019 13:47:55 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>, Jason Cooper
 <jason@lakedaemon.net>, Sebastian Hesselbarth
 <sebastian.hesselbarth@gmail.com>
Subject: Re: [PATCH v2] ARM: kirkwood: ts219: disable the SoC's RTC
In-Reply-To: <20190731223233.GA15900@taurus.defre.kleine-koenig.org>
References: <20190731223233.GA15900@taurus.defre.kleine-koenig.org>
Date: Tue, 27 Aug 2019 15:47:54 +0200
Message-ID: <87tva2zpmd.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_064809_573310_65AFAC51 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, tbm@cyrius.com,
 linux-arm-kernel@lists.infradead.org, Oliver Hartkopp <socketcan@hartkopp.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVXdlIEtsZWluZS1Lw7ZuaWcsCgo+IFRoZSBpbnRlcm5hbCBSVEMgZG9lc24ndCB3b3JrLCBs
b2FkaW5nIHRoZSBkcml2ZXIgb25seSB5aWVsZHMKPgo+IAlydGMtbXYgZjEwMTAzMDAucnRjOiBp
bnRlcm5hbCBSVEMgbm90IHRpY2tpbmcKPgo+IC4gU28gZGlzYWJsZSBpdC4KPgo+IFJldmlld2Vk
LWJ5OiBBbmRyZXcgTHVubiA8YW5kcmV3QGx1bm4uY2g+Cj4gU2lnbmVkLW9mZi1ieTogVXdlIEts
ZWluZS1Lw7ZuaWcgPHV3ZUBrbGVpbmUta29lbmlnLm9yZz4KCgpBcHBsaWVkIG9uIG12ZWJ1L2R0
IHdpdGggYm90aCBhY2tlZC1ieQoKVGhhbmtzLAoKR3JlZ29yeQoKCj4gLS0tCj4gSGVsbG8sCj4K
PiBUaGlzIHBhdGNoIGlzIChvbmUpIHJlc3VsdCBvZiBhIGRpc2N1c3Npb24gb24gdGhlIHJ0YyBs
aXN0LiB2MSB3YXMgc2VudAo+IHRoZXJlIG9ubHkuIFRoaXMgdjIgaXMganVzdCBhIHJlc2VuZCB0
byB0aGUgbXZlYnUgbWFpbnRhaW5lcnMuCj4KPiBBbGV4YW5kcmUgQmVsbG9uaSBzYWlkIHRvIHYx
OiBTZWVtcyBnb29kIHRvIG1lIHRoZW4uCj4KPiBUaGlzIHNvdW5kcyBhIGJpdCBsaWtlIGFuIGFj
aywgYnV0IEkgZGlkbid0IGFkZCBpdCBhcyBpdCB3YXMgbm90Cj4gZXhwbGljaXQuCj4KPiBCZXN0
IHJlZ2FyZHMKPiBVd2UKPgo+ICBhcmNoL2FybS9ib290L2R0cy9raXJrd29vZC10czIxOS5kdHNp
IHwgOCArKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCj4KPiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMva2lya3dvb2QtdHMyMTkuZHRzaSBiL2FyY2gvYXJt
L2Jvb3QvZHRzL2tpcmt3b29kLXRzMjE5LmR0c2kKPiBpbmRleCBhODhlYjIyMDcwYTEuLjk5NGNh
YmNmNGI1MSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9raXJrd29vZC10czIxOS5k
dHNpCj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMva2lya3dvb2QtdHMyMTkuZHRzaQo+IEBAIC0x
MDQsMyArMTA0LDExIEBACj4gICZwY2llMCB7Cj4gIAlzdGF0dXMgPSAib2theSI7Cj4gIH07Cj4g
Kwo+ICsmcnRjIHsKPiArCS8qCj4gKwkgKiBUaGVyZSBpcyBhIHMzNTM5MGEgYXZhaWxhYmxlIG9u
IHRoZSBpMmMgYnVzLCB0aGUgaW50ZXJuYWwgcnRjIGlzbid0Cj4gKwkgKiB3b3JraW5nIChwcm9i
YWJseSBubyBjcnlzdGFsIGFzc2VtYmxlZCkuCj4gKwkgKi8KPiArCXN0YXR1cyA9ICJkaXNhYmxl
ZCI7Cj4gK307Cj4gLS0gCj4gMi4yMC4xCgotLSAKR3JlZ29yeSBDbGVtZW50LCBCb290bGluCkVt
YmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcKaHR0cDovL2Jvb3RsaW4uY29tCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
