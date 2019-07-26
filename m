Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C618775F00
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 08:26:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4hGWIJVL5nfhyVWn14FJMjsI5L/jBO+9jskRG9MYqck=; b=nrOJOEd3FMDaOGc6QMKBggfNj
	Gytt8/vssAWM/6YYX1k+tl7uRE4Cqltc6V7rSSZDf+KUgq33kfaVfJXHQK5vlnO8BAJPbf01X3q7N
	XPfE+ju2RQU6ZPBniqXfKrtChlGXzM0qt9HKKIsXM2ggilxHNr1GYLLro4HSYs/YlfHn4GKqmeDIj
	/OvnjHEYitC014BtDMcqM1qaDItGgGP0TyQyyMA10M9Em4D7VHFPigNkQg8+Y62Fgc2dGJxkWYSlL
	VgLxC+92tYLePNQobxGVFf7bU7ERDW1/urKgHmPtlZvlweWFLIs6bHjP0O1WW9bFoSBavd1lRst12
	lBLJl4npQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqtgL-0006eg-8h; Fri, 26 Jul 2019 06:26:21 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqtg7-0006eL-Qw
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 06:26:09 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 8277E6074C; Fri, 26 Jul 2019 06:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564122367;
 bh=EbZ8V/DEcs0/4znrzggpjMRyIZLsE99CLDSEHMkEF4I=;
 h=Subject:From:To:References:Date:In-Reply-To:From;
 b=ILMJwpgxOLX2eMtgJTBQuce8DNgvDGeX8Fpm10eLZD/HdmUS6W7P5UmYjWbBn+lB5
 9x5adW3YYsZJNHhwCWsJoGNXroy9T3LjqHvpYuXQBCOMl04rizdTfcfLwl6zaV+1lE
 zPPL4WGu+uPtys7m3XY8alF5gSFavlvz8jUpNWxc=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [10.79.136.27]
 (blr-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A593F6053D;
 Fri, 26 Jul 2019 06:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564122366;
 bh=EbZ8V/DEcs0/4znrzggpjMRyIZLsE99CLDSEHMkEF4I=;
 h=Subject:From:To:References:Date:In-Reply-To:From;
 b=YVML3e72rFVZFteKr7KSCTHnPOEip/doe8dq52LfuNF0h09sTjHTNdY8LRGHJr5du
 IpC5CaBa1tdz1E27R+2F5JPQCn14DLCYEfJ5Pcuk+ltSTL/tIfGwj5CPyrzMDiil2W
 +1iCSORfJnl6EKLMKJuw5+TZU6va8B3Z60s68SpI=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A593F6053D
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
Subject: Re: [Regression] Missing device nodes for ETR, ETF and STM after
 CONFIG_UEVENT_HELPER=n
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Leo Yan <leo.yan@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <cfe09a46-462f-633a-37c2-52f8bfc0ffb2@codeaurora.org>
Message-ID: <e3a01f7e-9662-415d-1e3d-df3734d3e305@codeaurora.org>
Date: Fri, 26 Jul 2019 11:56:02 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <cfe09a46-462f-633a-37c2-52f8bfc0ffb2@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_232607_907960_AF50A336 
X-CRM114-Status: GOOD (  18.60  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNy8yNi8yMDE5IDExOjQ5IEFNLCBTYWkgUHJha2FzaCBSYW5qYW4gd3JvdGU6Cj4gSGksCj4g
Cj4gV2hlbiB0cnlpbmcgdG8gdGVzdCBteSBjb3Jlc2lnaHQgcGF0Y2hlcywgSSBmb3VuZCB0aGF0
IGV0cixldGYgYW5kIHN0bSAKPiBkZXZpY2Ugbm9kZXMgYXJlIG1pc3NpbmcgZnJvbSAvZGV2Lgo+
IAo+IEJpc2VjdGlvbiBnaXZlcyB0aGlzIGFzIHRoZSBiYWQgY29tbWl0Lgo+IAo+IDFiZTAxZDRh
NTcxNDJkZWQyM2JkYjllMGM4ZDkzNjllNjkzYjI2Y2MgaXMgdGhlIGZpcnN0IGJhZCBjb21taXQK
PiBjb21taXQgMWJlMDFkNGE1NzE0MmRlZDIzYmRiOWUwYzhkOTM2OWU2OTNiMjZjYwo+IEF1dGhv
cjogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KPiBEYXRlOsKg
wqAgVGh1IE1hciAxNCAxMjoxMzo1MCAyMDE5ICswMTAwCj4gCj4gIMKgwqDCoCBkcml2ZXI6IGJh
c2U6IERpc2FibGUgQ09ORklHX1VFVkVOVF9IRUxQRVIgYnkgZGVmYXVsdAo+IAo+ICDCoMKgwqAg
U2luY2UgY29tbWl0IDc5MzQ3NzlhNjlmMTE4NGYgKCJEcml2ZXItQ29yZTogZGlzYWJsZSAvc2Jp
bi9ob3RwbHVnIGJ5Cj4gIMKgwqDCoCBkZWZhdWx0IiksIHRoZSBoZWxwIHRleHQgZm9yIHRoZSAv
c2Jpbi9ob3RwbHVnIGZvcmstYm9tYiBzYXlzCj4gIMKgwqDCoCAiVGhpcyBzaG91bGQgbm90IGJl
IHVzZWQgdG9kYXkgWy4uLl0gY3JlYXRlcyBhIGhpZ2ggc3lzdGVtIGxvYWQsIG9yCj4gIMKgwqDC
oCBbLi4uXSBvdXQtb2YtbWVtb3J5IHNpdHVhdGlvbnMgZHVyaW5nIGJvb3R1cCIuwqAgVGhlIHJh
dGlvbmFsZSBmb3IgdGhpcwo+ICDCoMKgwqAgd2FzIHRoYXQgbm8gcmVjZW50IG1haW5zdHJlYW0g
c3lzdGVtIHVzZWQgdGhpcyBhbnltb3JlIChpbiAyMDEwISkuCj4gCj4gIMKgwqDCoCBBIGZldyB5
ZWFycyBsYXRlciwgdGhlIGNvbXBsZXRlIHVldmVudCBoZWxwZXIgc3VwcG9ydCB3YXMgbWFkZSAK
PiBvcHRpb25hbAo+ICDCoMKgwqAgaW4gY29tbWl0IDg2ZDU2MTM0ZjFiNjdkMGMgKCJrb2JqZWN0
OiBNYWtlIHN1cHBvcnQgZm9yIHVldmVudF9oZWxwZXIKPiAgwqDCoMKgIG9wdGlvbmFsLiIpLsKg
IEhvd2V2ZXIsIGlmIHdhcyBzdGlsbCBsZWZ0IGVuYWJsZWQgYnkgZGVmYXVsdCwgdG8gCj4gc3Vw
cG9ydAo+ICDCoMKgwqAgYW5jaWVudCB1c2VybGFuZC4KPiAKPiAgwqDCoMKgIFRpbWUgcGFzc2Vk
IGJ5LCBhbmQgbm90aGluZyBzaG91bGQgdXNlIHRoaXMgYW55bW9yZSwgc28gaXQgY2FuIGJlCj4g
IMKgwqDCoCBkaXNhYmxlZCBieSBkZWZhdWx0Lgo+IAo+ICDCoMKgwqAgU2lnbmVkLW9mZi1ieTog
R2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KPiAgwqDCoMKgIFNp
Z25lZC1vZmYtYnk6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5v
cmc+Cj4gCj4gIMKgZHJpdmVycy9iYXNlL0tjb25maWcgfCAxIC0KPiAgwqAxIGZpbGUgY2hhbmdl
ZCwgMSBkZWxldGlvbigtKQo+IAo+IApGWUksIEkgYW0gdGVzdGluZyBvbiBsaW51eC1uZXh0LgoK
VGhhbmtzLApTYWkKCi0tIApRVUFMQ09NTSBJTkRJQSwgb24gYmVoYWxmIG9mIFF1YWxjb21tIElu
bm92YXRpb24gQ2VudGVyLCBJbmMuIGlzIGEgbWVtYmVyCm9mIENvZGUgQXVyb3JhIEZvcnVtLCBo
b3N0ZWQgYnkgVGhlIExpbnV4IEZvdW5kYXRpb24KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
