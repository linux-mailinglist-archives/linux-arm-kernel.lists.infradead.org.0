Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91BBC12F726
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 12:26:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q20nJp5vWt22uScvZXEbKTRgTDIwsPlUUOdc0Q6d+NI=; b=OsYtAk532NDcWG
	iaGXk2iJh//dyI7yUyaDICYAbBTwHUNKeGqUpEqaVl8A0Sk38iRuL4SO+rowOS0Zbj9kGB8XqqAdT
	OWguDkzXhQ6JRvjJxRXpPm6XT12g/E+QTFKsRlPNC2volGLI+oZZGiUpWzA0Z4OrvJSDgH7A1Pje+
	7xzUoowNZF7fTv2a/q9uJPP01mNP+aXtXKkQL56oYKJwPd01db6nUhl74nfAPPCGWaJP/EvsW4UGY
	FCN4CfzwcUkwOozRtfwSg36BpToa07eycJe6xIRc0bPEoV5FCs401cENYmIflZCm1Asn8E6Pu0rML
	MbkTADG/Pfvugms3TKGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inL5g-00008U-Ep; Fri, 03 Jan 2020 11:26:04 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inL5Z-000085-N0
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 11:25:59 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1578050757; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-Id: Date: Subject: To: From: Sender;
 bh=WE57pxSUJyR+L5tsiqVz5w7Z/BAF2j86LaPJYplaCc0=;
 b=VrEOfYxAzVUo6v70tLqZX2jsEC8/KT5F+GaZVSQnVIBrfoDCono2uMvWNk2vjfKag8MC8idQ
 pFpV9NImfT71SmrgeTEFhVl932uu+KuInRsHy4ErWTF0H1/TgWNeI+/OouGIUwOobjOxRyYk
 bk1cOoLEfOn2ajsg28kPYQ5rmxk=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e0f24c3.7f77e9164e68-smtp-out-n02;
 Fri, 03 Jan 2020 11:25:55 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 01A1CC447B4; Fri,  3 Jan 2020 11:25:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from srichara-linux.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sricharan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 980C9C447B2;
 Fri,  3 Jan 2020 11:25:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 980C9C447B2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sricharan@codeaurora.org
From: Sricharan R <sricharan@codeaurora.org>
To: sricharan@codeaurora.org, agross@kernel.org, devicetree@vger.kernel.org,
 linus.walleij@linaro.org, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-soc@vger.kernel.org, robh+dt@kernel.org, sboyd@kernel.org,
 sivaprak@codeaurora.org
Subject: [PATCH 0/2] Add Global clock controller support for IPQ6018
Date: Fri,  3 Jan 2020 16:55:42 +0530
Message-Id: <1578050744-3761-1-git-send-email-sricharan@codeaurora.org>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_032557_815090_E0D02D77 
X-CRM114-Status: GOOD (  10.43  )
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

VGhlIElQUTYwMTggaXMgUXVhbGNvbW3igJlzIDgwMi4xMWF4IFNvQyBmb3IgUm91dGVycywKR2F0
ZXdheXMgYW5kIEFjY2VzcyBQb2ludHMuCgpUaGlzIHNlcmllcyBhZGRzIEdsb2JhbCBjbG9jayBj
b250cm9sbGVyIHN1cHBvcnQgZm9yIGlwcTYwMTguCgpUaGUgcGF0Y2hlcyB3ZXJlIGEgcGFydCBv
ZiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzExMzAzMDc1LywKbm93IG1vdmVk
IGl0IG91dHNpZGUgYmFzZWQgb24gU3RlcGhlbidzIHN1Z2dlc3Rpb24uCgpTcmljaGFyYW4gUiAo
Mik6CiAgY2xrOiBxY29tOiBBZGQgRFQgYmluZGluZ3MgZm9yIGlwcTYwMTggZ2NjIGNsb2NrIGNv
bnRyb2xsZXIKICBjbGs6IHFjb206IEFkZCBpcHE2MDE4IEdsb2JhbCBDbG9jayBDb250cm9sbGVy
IHN1cHBvcnQKCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9xY29tLGdjYy55YW1sICAg
ICAgICB8ICAgIDMgKy0KIGRyaXZlcnMvY2xrL3Fjb20vS2NvbmZpZyAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwgICAgOCArCiBkcml2ZXJzL2Nsay9xY29tL01ha2VmaWxlICAgICAgICAgICAg
ICAgICAgICAgICAgICB8ICAgIDEgKwogZHJpdmVycy9jbGsvcWNvbS9nY2MtaXBxNjAxOC5jICAg
ICAgICAgICAgICAgICAgICAgfCA0NjQzICsrKysrKysrKysrKysrKysrKysrCiBpbmNsdWRlL2R0
LWJpbmRpbmdzL2Nsb2NrL3Fjb20sZ2NjLWlwcTYwMTguaCAgICAgICB8ICAyNjIgKysKIGluY2x1
ZGUvZHQtYmluZGluZ3MvcmVzZXQvcWNvbSxnY2MtaXBxNjAxOC5oICAgICAgIHwgIDE1NyArCiA2
IGZpbGVzIGNoYW5nZWQsIDUwNzMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQogY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvY2xrL3Fjb20vZ2NjLWlwcTYwMTguYwogY3JlYXRlIG1vZGUg
MTAwNjQ0IGluY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svcWNvbSxnY2MtaXBxNjAxOC5oCiBjcmVh
dGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9kdC1iaW5kaW5ncy9yZXNldC9xY29tLGdjYy1pcHE2MDE4
LmgKCi0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
