Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 977E013540C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 09:05:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LKR+RvcbtLCGjNohMNTGSuzlV2+fuXUnLNSQwBCJ8Ws=; b=qxerRjobbEt9Fl
	2XIsXgAKodA6ycHIALxWUzYtTsWrA7UMX5woEQ84vBY2qfheJr+OG+yhri0fJ+awgGJjJ/5jB2sO8
	EWyzixGP8Nt1vjniksNVqNGK5L7YC+gpftAik6MNHLuc1Tp4WGRht5G0OXaoaqcQPlj+BgZEmP2F0
	KYv4ctL4aNo2Cptwt8rJDZ6P5VvdVA6mQBGcB3JsuzbnJpR+ASBsQaRWZFm3ugMEvR3mt8f4Fpcbs
	RibuDsZUmh4TSlNzNT5jkHAedPwNFa9KA+BsiXBBJ8KYb5n+rfXvL71mbYITAmJCZsc7KLF5fEUgm
	GkILjlPLNFpyJqgPy3Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipSp9-000864-7d; Thu, 09 Jan 2020 08:05:47 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipSp1-000851-SI
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 08:05:41 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1578557138; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-Id: Date: Subject: To: From: Sender;
 bh=BuUdAvhMRovZFUB4BJ0UiwY2Y6k8o8mctzHNiqvFTHc=;
 b=lbOEo8d05OJctLkz2OWU9xi2YTyFxYUfbsBe8T3vnk72WZ9zAW8b5mF074hRHEjEHQo0aO7L
 60VXy1gPJu25P9vAd3fcR0bt3R2+/KRrQIwCo/voFGnGk5oS7z+dLZ7C66nQYrub+kTXWnJH
 geVXR0RCXZJt7n/QdtrXOQ3JMmQ=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e16ded0.7f5881f2d030-smtp-out-n01;
 Thu, 09 Jan 2020 08:05:36 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id E0840C447A3; Thu,  9 Jan 2020 08:05:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from srichara1-linux.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sricharan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id BD78EC4479C;
 Thu,  9 Jan 2020 08:05:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org BD78EC4479C
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sricharan@codeaurora.org
From: Sricharan R <sricharan@codeaurora.org>
To: agross@kernel.org, devicetree@vger.kernel.org, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-soc@vger.kernel.org,
 robh+dt@kernel.org, sivaprak@codeaurora.org, sricharan@codeaurora.org,
 sboyd@kernel.org
Subject: [PATCH V2 0/2] Add Global clock controller support for IPQ6018
Date: Thu,  9 Jan 2020 13:35:19 +0530
Message-Id: <1578557121-423-1-git-send-email-sricharan@codeaurora.org>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_000539_980181_E93AF88E 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIElQUTYwMTggaXMgUXVhbGNvbW3igJlzIDgwMi4xMWF4L3UyMDE5cyBTb0MgZm9yIFJvdXRl
cnMsCkdhdGV3YXlzIGFuZCBBY2Nlc3MgUG9pbnRzLgoKW1YyXQogKiBBZGRyZXNzZWQgc3BhcnNl
IHdhcm5pbmdzIHJlcG9ydGVkIGJ5IEtidWlsZCB0ZXN0IHJvYm90LgoKVGhpcyBzZXJpZXMgYWRk
cyBHbG9iYWwgY2xvY2sgY29udHJvbGxlciBzdXBwb3J0IGZvciBpcHE2MDE4LgoKU3JpY2hhcmFu
IFIgKDIpOgogIGNsazogcWNvbTogQWRkIERUIGJpbmRpbmdzIGZvciBpcHE2MDE4IGdjYyBjbG9j
ayBjb250cm9sbGVyCiAgY2xrOiBxY29tOiBBZGQgaXBxNjAxOCBHbG9iYWwgQ2xvY2sgQ29udHJv
bGxlciBzdXBwb3J0CgogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2svcWNvbSxnY2MueWFt
bCAgICAgICAgfCAgICAzICstCiBkcml2ZXJzL2Nsay9xY29tL0tjb25maWcgICAgICAgICAgICAg
ICAgICAgICAgICAgICB8ICAgIDggKwogZHJpdmVycy9jbGsvcWNvbS9NYWtlZmlsZSAgICAgICAg
ICAgICAgICAgICAgICAgICAgfCAgICAxICsKIGRyaXZlcnMvY2xrL3Fjb20vZ2NjLWlwcTYwMTgu
YyAgICAgICAgICAgICAgICAgICAgIHwgNDY0MyArKysrKysrKysrKysrKysrKysrKwogaW5jbHVk
ZS9kdC1iaW5kaW5ncy9jbG9jay9xY29tLGdjYy1pcHE2MDE4LmggICAgICAgfCAgMjYyICsrCiBp
bmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0L3Fjb20sZ2NjLWlwcTYwMTguaCAgICAgICB8ICAxNTcg
KwogNiBmaWxlcyBjaGFuZ2VkLCA1MDczIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2Nsay9xY29tL2djYy1pcHE2MDE4LmMKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBpbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3Fjb20sZ2NjLWlwcTYwMTguaAog
Y3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvZHQtYmluZGluZ3MvcmVzZXQvcWNvbSxnY2MtaXBx
NjAxOC5oCgotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
