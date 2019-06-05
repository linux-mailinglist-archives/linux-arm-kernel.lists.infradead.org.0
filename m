Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E0136276
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 19:27:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=b1llVWvW2Az320+YUoqJZ8KSGvlcQ+PLPheZb8sjzvo=; b=YTfxfrTdCMBIchQhV6z4rKtOAN
	U8C54+uGDgkelm0S0txgn+ZQgKed+oJ0BUO8XGWK7NalqbHByVc31DGyZIcvrwXq5FY6PniRLG+nM
	GcikL/4YNo6REwRKGJsmCLvhrTlZT6MH6m2d3i5TISwtpPfjqr29i9kBfCUVH6r+BXWWflHaw4H4B
	QWoIZCY2cXe/4hdSw0ak7XFZ521/KU8WbR0a7J0dWl6K0NSwYwYxZY6s8ybN8TxB++CHtGjPzBy99
	7u7UknXNENnXit/KHn1kEkVxZmTGZI61yak0dFd1L1jM9YMB70/v5wHi/3I1GMOc7GODDYbivmD3n
	+RsYnEJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYZgg-0005rS-6C; Wed, 05 Jun 2019 17:26:58 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYZgY-0005qw-IH
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 17:26:51 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id C237F60C72; Wed,  5 Jun 2019 17:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559755609;
 bh=2evWTxdFbkeUdR6ga+Ohoj6kOtwJ9cgbxQLfNdc1t1U=;
 h=Subject:From:To:References:Date:In-Reply-To:From;
 b=hgZ4nWw3bvopFQW6hDoRLvEyGiRohLWXZ9F0axpksO6Rh1AjgCyAya/NaKvZBDklQ
 lKv76NaJCC8lBGBW7BYMlyo19zfky6jSOTbexjHbi07DBfNzFrFUT0osF1Eg1GiQaf
 35CiUrBe/pH6UtdKNJna53c3KEADgvsavVc3GixU=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [192.168.1.6] (unknown [122.164.184.234])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: sricharan@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2FF6760741;
 Wed,  5 Jun 2019 17:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559755609;
 bh=2evWTxdFbkeUdR6ga+Ohoj6kOtwJ9cgbxQLfNdc1t1U=;
 h=Subject:From:To:References:Date:In-Reply-To:From;
 b=hgZ4nWw3bvopFQW6hDoRLvEyGiRohLWXZ9F0axpksO6Rh1AjgCyAya/NaKvZBDklQ
 lKv76NaJCC8lBGBW7BYMlyo19zfky6jSOTbexjHbi07DBfNzFrFUT0osF1Eg1GiQaf
 35CiUrBe/pH6UtdKNJna53c3KEADgvsavVc3GixU=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2FF6760741
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=sricharan@codeaurora.org
Subject: Re: [PATCH 0/6] Add minimal boot support for IPQ6018
From: Sricharan R <sricharan@codeaurora.org>
To: robh+dt@kernel.org, sboyd@codeaurora.org, linus.walleij@linaro.org,
 agross@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <1559754961-26783-1-git-send-email-sricharan@codeaurora.org>
Message-ID: <d6ccfaa6-bbcc-c0be-918b-d4c0ebda66bb@codeaurora.org>
Date: Wed, 5 Jun 2019 22:56:42 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1559754961-26783-1-git-send-email-sricharan@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_102650_645022_910F847E 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U29ycnksIEdvdCBzYm95ZEBjb2RlYXVyb3JhLm9yZyB3cm9uZy4gV2lsbCBmaXggYW5kIHJlcG9z
dAoKUmVnYXJkcywKIFNyaWNoYXJhbgoKT24gNi81LzIwMTkgMTA6NDUgUE0sIFNyaWNoYXJhbiBS
IHdyb3RlOgo+IFRoZSBJUFE2MDE4IGlzIFF1YWxjb21t4oCZcyA4MDIuMTFheCBTb0MgZm9yIFJv
dXRlcnMsCj4gR2F0ZXdheXMgYW5kIEFjY2VzcyBQb2ludHMuCj4gCj4gVGhpcyBzZXJpZXMgYWRk
cyBtaW5pbWFsIGJvYXJkIGJvb3Qgc3VwcG9ydCBmb3IgaXBxNjAxOC1jcDAxCj4gYm9hcmQuCj4g
Cj4gU3JpY2hhcmFuIFIgKDYpOgo+ICAgcGluY3RybDogcWNvbTogQWRkIGlwcTYwMTggcGluY3Ry
bCBkcml2ZXIKPiAgIGR0LWJpbmRpbmdzOiBxY29tOiBBZGQgaXBxNjAxOCBiaW5kaW5ncwo+ICAg
Y2xrOiBxY29tOiBBZGQgRFQgYmluZGluZ3MgZm9yIGlwcTYwMTggZ2NjIGNsb2NrIGNvbnRyb2xs
ZXIKPiAgIGNsazogcWNvbTogQWRkIGlwcTYwMTggR2xvYmFsIENsb2NrIENvbnRyb2xsZXIgc3Vw
cG9ydAo+ICAgYXJtNjQ6IGR0czogQWRkIGlwcTYwMTggU29DIGFuZCBDUDAxIGJvYXJkIHN1cHBv
cnQKPiAgIGFybTY0OiBkZWZjb25maWc6IEVuYWJsZSBxY29tIGlwcTYwMTggY2xvY2sgYW5kIHBp
bmN0cmwKPiAKPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9xY29tLnlh
bWwgICAgfCAgICAyICsKPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2svcWNvbSxnY2Mu
dHh0ICAgICAgICAgfCAgICAxICsKPiAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL01ha2VmaWxl
ICAgICAgICAgICAgICAgICAgfCAgICAxICsKPiAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2lw
cTYwMTgtY3AwMS1jMS5kdHMgICAgICAgfCAgIDM1ICsKPiAgYXJjaC9hcm02NC9ib290L2R0cy9x
Y29tL2lwcTYwMTguZHRzaSAgICAgICAgICAgICAgfCAgMjMxICsKPiAgYXJjaC9hcm02NC9jb25m
aWdzL2RlZmNvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgfCAgICAyICsKPiAgZHJpdmVycy9j
bGsvcWNvbS9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICA5ICsKPiAgZHJp
dmVycy9jbGsvcWNvbS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAxICsK
PiAgZHJpdmVycy9jbGsvcWNvbS9nY2MtaXBxNjAxOC5jICAgICAgICAgICAgICAgICAgICAgfCA1
MjY3ICsrKysrKysrKysrKysrKysrKysrCj4gIGRyaXZlcnMvcGluY3RybC9xY29tL0tjb25maWcg
ICAgICAgICAgICAgICAgICAgICAgIHwgICAxMCArCj4gIGRyaXZlcnMvcGluY3RybC9xY29tL01h
a2VmaWxlICAgICAgICAgICAgICAgICAgICAgIHwgICAgMSArCj4gIGRyaXZlcnMvcGluY3RybC9x
Y29tL3BpbmN0cmwtaXBxNjAxOC5jICAgICAgICAgICAgIHwgMTE4MyArKysrKwo+ICBpbmNsdWRl
L2R0LWJpbmRpbmdzL2Nsb2NrL3Fjb20sZ2NjLWlwcTYwMTguaCAgICAgICB8ICA0MDUgKysKPiAg
MTMgZmlsZXMgY2hhbmdlZCwgNzE0OCBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0
NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vaXBxNjAxOC1jcDAxLWMxLmR0cwo+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2lwcTYwMTguZHRzaQo+ICBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9jbGsvcWNvbS9nY2MtaXBxNjAxOC5jCj4gIGNyZWF0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL3BpbmN0cmwvcWNvbS9waW5jdHJsLWlwcTYwMTguYwo+ICBjcmVh
dGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9xY29tLGdjYy1pcHE2MDE4
LmgKPiAKCi0tIAoiUVVBTENPTU0gSU5ESUEsIG9uIGJlaGFsZiBvZiBRdWFsY29tbSBJbm5vdmF0
aW9uIENlbnRlciwgSW5jLiBpcyBhIG1lbWJlciBvZiBDb2RlIEF1cm9yYSBGb3J1bSwgaG9zdGVk
IGJ5IFRoZSBMaW51eCBGb3VuZGF0aW9uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
