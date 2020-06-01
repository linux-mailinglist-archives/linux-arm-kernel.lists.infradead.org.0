Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB4C1EA463
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 15:03:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8f5BhPRHQzeq8ktQQx/4oHIi9EoJSNmpEhUI22C8Vr4=; b=Bp7YPqoXZxgVcX
	orfZm90RGx5hHV38bVyPMd82d16ieaqF2ZY6p0B7k0RCKDyEPJlSB9IBYeNWni3thzgUAioNvyL6e
	qnA1hWp6ybOKvZ6z0Zd3R+5T9XP7VTM+wAJ2TREex/ZNmQB4axJgLBMsLZpK6Ayri4XdC6XQ8nXAb
	HrP6r8P7MRe91uGFacb8D6BLqH0WsF/0hAAPf+3jk+0w4CcL4ea8Ei/C4lB/6jC3w3w5hWGSVjnAY
	bbe0aC6VOs140vhJEwljr8VuNIeM4DbSEux8vLDmdHItmBWLvt5h6TQemj2wzSA2Vd17SfT9a5TWQ
	MFqmP72TZfPOQbPoxC+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfk6W-0001kw-6W; Mon, 01 Jun 2020 13:03:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfk6P-0001jr-J9
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 13:03:42 +0000
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 87BFE2068D;
 Mon,  1 Jun 2020 13:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591016620;
 bh=3xN+KUHay1UXrM2e/q9Ewz774/uNEpSlG4BqrojgmRI=;
 h=From:To:Cc:Subject:Date:From;
 b=IqMBJBhQg9sgMy1Kj9AZ4jYM8Ip+nSuoT3fd6gBMgEx80FyJItuwxsBcoenoDpY15
 VOIxthju/gClsXmTLYHVrge9bc6iuzuFZmvQFnjq28zVFeYWP6rMrt1sXlnyOhrIDs
 WBGXWie/++Uuu/wovmm60x9u68QpuN24q8oiSnw8=
Received: by pali.im (Postfix)
 id BA9BDCB0; Mon,  1 Jun 2020 15:03:38 +0200 (CEST)
From: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>,
 Remi Pommarel <repk@triplefau.lt>, Tomasz Maciej Nowak <tmn505@gmail.com>,
 Xogium <contact@xogium.me>
Subject: [PATCH] PCI: aardvark: Indicate error in 'val' when config read fails
Date: Mon,  1 Jun 2020 15:03:15 +0200
Message-Id: <20200601130315.18895-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_060341_653416_77591E13 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TW9zdCBjYWxsZXJzIG9mIGNvbmZpZyByZWFkIGRvIG5vdCBjaGVjayBmb3IgcmV0dXJuIHZhbHVl
LiBCdXQgbW9zdCBvZiB0aGUKb25lcyB0aGF0IGRvLCBjaGVja3MgZm9yIGVycm9yIGluZGljYXRp
b24gaW4gJ3ZhbCcgdmFyaWFibGUuCgpUaGlzIHBhdGNoIHVwZGF0ZXMgZXJyb3IgaGFuZGxpbmcg
aW4gYWR2a19wY2llX3JkX2NvbmYoKSBmdW5jdGlvbi4gSWYgUElPCnRyYW5zZmVyIGZhaWxzIHRo
ZW4gJ3ZhbCcgdmFyaWFibGUgaXMgc2V0IHRvIDB4ZmZmZmZmZmYgd2hpY2ggaW5kaWNhdGVzCmZh
aWx0dXJlLgoKU2lnbmVkLW9mZi1ieTogUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4KLS0t
CiBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1hYXJkdmFyay5jIHwgNCArKystCiAxIGZpbGUg
Y2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9wY2kvY29udHJvbGxlci9wY2ktYWFyZHZhcmsuYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xs
ZXIvcGNpLWFhcmR2YXJrLmMKaW5kZXggNTNhNGNmZDdkMzc3Li43ODNhN2YxZjJjNDQgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLWFhcmR2YXJrLmMKKysrIGIvZHJpdmVy
cy9wY2kvY29udHJvbGxlci9wY2ktYWFyZHZhcmsuYwpAQCAtNjkxLDggKzY5MSwxMCBAQCBzdGF0
aWMgaW50IGFkdmtfcGNpZV9yZF9jb25mKHN0cnVjdCBwY2lfYnVzICpidXMsIHUzMiBkZXZmbiwK
IAlhZHZrX3dyaXRlbChwY2llLCAxLCBQSU9fU1RBUlQpOwogCiAJcmV0ID0gYWR2a19wY2llX3dh
aXRfcGlvKHBjaWUpOwotCWlmIChyZXQgPCAwKQorCWlmIChyZXQgPCAwKSB7CisJCSp2YWwgPSAw
eGZmZmZmZmZmOwogCQlyZXR1cm4gUENJQklPU19TRVRfRkFJTEVEOworCX0KIAogCWFkdmtfcGNp
ZV9jaGVja19waW9fc3RhdHVzKHBjaWUpOwogCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
