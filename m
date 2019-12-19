Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32174125F6E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 11:43:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C3kftL/Ggg46aEOIVIjSt1FNsVnNHks2gpOgwdnM/pw=; b=HHNMTU4CC3Ps3b
	HWVqqBkq80XAMSzNmsHtp7tPwUMkTOQbTfQhYDEDtoqMMy417dH6krEMpeZSEwLGDc35Z0+WVylzf
	qCkbxDWdX+yTmwyKXkGGTuZFCadFdIaPAQa29TUMwLbj91GMGo4rSYFWSPimLwF3RwT9Gw6PjRjOH
	tfmT16C1rseYcUYjhYnhRtT4DPk5rR1ylCb1I9JZ3Q1MbdPPU2DT/s29v4DYV7Z927kHnbfPrGeHg
	gZS0/vFO5Zch6a48b0FEgqUOmNbjdeA8bdvshnBDU72fCKmmd9M2MfgsYFx2IpI0ZPwI2QFauJFm6
	BfcRBs3yMyRAVfhJuxtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihtGr-0008HY-CE; Thu, 19 Dec 2019 10:43:05 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihtGb-0008Gc-CK
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 10:42:52 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1576752170; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-Id: Date: Subject: To: From: Sender;
 bh=T9NsD/M02vdnbyOUnwhyyGvAMjZyJMRP82J5Usiy73c=;
 b=LJIpCveQJPJQu06sYOe3M1Go8LIWJP3Ktndoo/t6L21erKN2iI75PD6RArbFyqExmYPFstJd
 QsC/Yed+5eIQHcfWyx0SLXkc58xtE30pKIscPbVxSqC4JFHI6QU2KKqk4SICFnGkkNVPjW85
 m2ystNpRmVIDiP1ybLBhMyn1iBY=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5dfb5426.7fc29256c0d8-smtp-out-n01;
 Thu, 19 Dec 2019 10:42:46 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id B6291C447A2; Thu, 19 Dec 2019 10:42:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from srichara-linux.qualcomm.com
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sricharan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 33C73C4479C;
 Thu, 19 Dec 2019 10:42:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 33C73C4479C
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
Subject: [PATCH V2 0/7] Add minimal boot support for IPQ6018
Date: Thu, 19 Dec 2019 16:11:42 +0530
Message-Id: <1576752109-24497-1-git-send-email-sricharan@codeaurora.org>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_024251_066089_48005FD4 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.25 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIElQUTYwMTggaXMgUXVhbGNvbW3igJlzIDgwMi4xMWF4IFNvQyBmb3IgUm91dGVycywKR2F0
ZXdheXMgYW5kIEFjY2VzcyBQb2ludHMuCgpUaGlzIHNlcmllcyBhZGRzIG1pbmltYWwgYm9hcmQg
Ym9vdCBzdXBwb3J0IGZvciBpcHE2MDE4LWNwMDEgYm9hcmQuCgpbdjJdCiAqIFNwbGl0dGVkIGR0
IGJpbmRpbmdzICBhbmQgZHJpdmVyIGludG8gZGlmZmVyZW50IHBhdGNoZXMuIEFkZGVkIG1pc3Np
bmcgYmluZGluZ3MKICAgYW5kIHNvbWUgc3R5bGUgY2hhbmdlcy4KICogQWRkZWQgaXBxNjAxOCBz
Y2hlbWEKICogQWRkcmVzc2VkIHJldmlldyBjb21tZW50cyBmb3IgZ2NjIGNsb2NrIGJpbmRpbmdz
LgogKiBSZW1vdmVkIGFsbCBjbGsgY3JpdGljYWwgZmxhZ3MsIHJlbW92ZWQgMS8xIGZhY3RvciBj
bG9ja3MsIG1vdmVkIHRvIG5ldwogICB3YXkgb2Ygc3BlY2lmeWluZyBjbGsgcGFyZW50cywgYW5k
IGFkZHJlc3NlZCBvdGhlciByZXZpZXcgY29tbWVudHMuCiAqIFNvcnRlZCBub2RlcyBiYXNlZCBv
biBhZGRyZXNzLCBuYW1lLCBsYWJlbC4gUmVtb3ZlZCB1bnVzZWQgY2xvY2sgbm9kZXMsCiAgIEFk
ZHJlc3NlZCBvdGhlciByZXZpZXcgY29tbWVudHMuCgpTcmljaGFyYW4gUiAoNyk6CiAgZHQtYmlu
ZGluZ3M6IHBpbmN0cmw6IHFjb206IEFkZCBpcHE2MDE4IHBpbmN0cmwgYmluZGluZ3MKICBwaW5j
dHJsOiBxY29tOiBBZGQgaXBxNjAxOCBwaW5jdHJsIGRyaXZlcgogIGR0LWJpbmRpbmdzOiBxY29t
OiBBZGQgaXBxNjAxOCBiaW5kaW5ncwogIGNsazogcWNvbTogQWRkIERUIGJpbmRpbmdzIGZvciBp
cHE2MDE4IGdjYyBjbG9jayBjb250cm9sbGVyCiAgY2xrOiBxY29tOiBBZGQgaXBxNjAxOCBHbG9i
YWwgQ2xvY2sgQ29udHJvbGxlciBzdXBwb3J0CiAgYXJtNjQ6IGR0czogQWRkIGlwcTYwMTggU29D
IGFuZCBDUDAxIGJvYXJkIHN1cHBvcnQKICBhcm02NDogZGVmY29uZmlnOiBFbmFibGUgcWNvbSBp
cHE2MDE4IGNsb2NrIGFuZCBwaW5jdHJsCgogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2FybS9xY29tLnlhbWwgICAgfCAgICA3ICsKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Ns
b2NrL3Fjb20sZ2NjLnlhbWwgICAgICAgIHwgICAgMyArLQogLi4uL2JpbmRpbmdzL3BpbmN0cmwv
cWNvbSxpcHE2MDE4LXBpbmN0cmwueWFtbCAgICAgfCAgMTcyICsKIGFyY2gvYXJtNjQvYm9vdC9k
dHMvcWNvbS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgIHwgICAgMSArCiBhcmNoL2FybTY0L2Jv
b3QvZHRzL3Fjb20vaXBxNjAxOC1jcDAxLWMxLmR0cyAgICAgICB8ICAgNDEgKwogYXJjaC9hcm02
NC9ib290L2R0cy9xY29tL2lwcTYwMTguZHRzaSAgICAgICAgICAgICAgfCAgMjE1ICsKIGFyY2gv
YXJtNjQvY29uZmlncy9kZWZjb25maWcgICAgICAgICAgICAgICAgICAgICAgIHwgICAgMyArCiBk
cml2ZXJzL2Nsay9xY29tL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgIDgg
KwogZHJpdmVycy9jbGsvcWNvbS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICAgfCAg
ICAxICsKIGRyaXZlcnMvY2xrL3Fjb20vZ2NjLWlwcTYwMTguYyAgICAgICAgICAgICAgICAgICAg
IHwgNDY3NCArKysrKysrKysrKysrKysrKysrKwogZHJpdmVycy9waW5jdHJsL3Fjb20vS2NvbmZp
ZyAgICAgICAgICAgICAgICAgICAgICAgfCAgIDEwICsKIGRyaXZlcnMvcGluY3RybC9xY29tL01h
a2VmaWxlICAgICAgICAgICAgICAgICAgICAgIHwgICAgMSArCiBkcml2ZXJzL3BpbmN0cmwvcWNv
bS9waW5jdHJsLWlwcTYwMTguYyAgICAgICAgICAgICB8IDExNjEgKysrKysKIGluY2x1ZGUvZHQt
YmluZGluZ3MvY2xvY2svcWNvbSxnY2MtaXBxNjAxOC5oICAgICAgIHwgIDI2MiArKwogaW5jbHVk
ZS9kdC1iaW5kaW5ncy9yZXNldC9xY29tLGdjYy1pcHE2MDE4LmggICAgICAgfCAgMTU3ICsKIDE1
IGZpbGVzIGNoYW5nZWQsIDY3MTUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQogY3JlYXRl
IG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waW5jdHJsL3Fj
b20saXBxNjAxOC1waW5jdHJsLnlhbWwKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jv
b3QvZHRzL3Fjb20vaXBxNjAxOC1jcDAxLWMxLmR0cwogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gv
YXJtNjQvYm9vdC9kdHMvcWNvbS9pcHE2MDE4LmR0c2kKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL2Nsay9xY29tL2djYy1pcHE2MDE4LmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3Bp
bmN0cmwvcWNvbS9waW5jdHJsLWlwcTYwMTguYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUv
ZHQtYmluZGluZ3MvY2xvY2svcWNvbSxnY2MtaXBxNjAxOC5oCiBjcmVhdGUgbW9kZSAxMDA2NDQg
aW5jbHVkZS9kdC1iaW5kaW5ncy9yZXNldC9xY29tLGdjYy1pcHE2MDE4LmgKCi0tIApRVUFMQ09N
TSBJTkRJQSwgb24gYmVoYWxmIG9mIFF1YWxjb21tIElubm92YXRpb24gQ2VudGVyLCBJbmMuIGlz
IGEgbWVtYmVyIG9mIENvZGUgQXVyb3JhIEZvcnVtLCBob3N0ZWQgYnkgVGhlIExpbnV4IEZvdW5k
YXRpb24KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
