Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55FC2FF860
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 08:22:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cnSLCMtbd5egr67k4dLbDZ9WrL2zi632GwYbywz6ZA4=; b=HDkEmajyO4/rA1
	+9SjdJXC3d/OxQQOWmPjuO4N3CQdqjrHKJmIq6Wi7CQ29G9MQg54k7LxdMUPfZgQV/Q1C6/fZI2rE
	8TLCVJjhdWzi0Q31oGIM9U5VkMdIr56zGXDSGbOU8RwaE6Ax1vLx/Uk7xy4HQBE/xfBBbQ+unINkx
	9Fe5Nl0eem6yL/nCHYrrl1QNGWP0l+4YvcVVdHpMaUNaPFZDK9dWwWaSavvh/Qg71bBp2UyZZLwZK
	jHz8i+deFzIEpQIq4DeS4mEjsnlOceT8RkixD5kL7+tGU5dBxwuB822mZuLQTbvUUWLf+ZyPXWYA4
	bLxrEiJynBijzhhQh3aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWEsd-0008F4-NQ; Sun, 17 Nov 2019 07:21:55 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWEs7-00083U-6H; Sun, 17 Nov 2019 07:21:24 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 07A6EB12D;
 Sun, 17 Nov 2019 07:21:19 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v3 1/8] dt-bindings: arm: realtek: Add RTD1195 and MeLE X1000
Date: Sun, 17 Nov 2019 08:21:02 +0100
Message-Id: <20191117072109.20402-2-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191117072109.20402-1-afaerber@suse.de>
References: <20191117072109.20402-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_232123_391354_EE59434F 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGJpbmRpbmdzIGZvciBSZWFsdGVrIFJURDExOTUgU29DIGFuZCBNZUxFIFgxMDAwIFRWIGJv
eC4KClJldmlld2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgpTaWduZWQtb2Zm
LWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogdjEgLT4gdjIgLT4g
djM6IFVuY2hhbmdlZAogCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3Jl
YWx0ZWsueWFtbCB8IDYgKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yZWFsdGVr
LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JlYWx0ZWsueWFt
bAppbmRleCBhYjU5ZGUxNzE1MmQuLjA5MTYxNjg4MGQyNSAxMDA2NDQKLS0tIGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yZWFsdGVrLnlhbWwKKysrIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yZWFsdGVrLnlhbWwKQEAgLTE0LDYgKzE0LDEy
IEBAIHByb3BlcnRpZXM6CiAgICAgY29uc3Q6ICcvJwogICBjb21wYXRpYmxlOgogICAgIG9uZU9m
OgorICAgICAgIyBSVEQxMTk1IFNvQyBiYXNlZCBib2FyZHMKKyAgICAgIC0gaXRlbXM6CisgICAg
ICAgICAgLSBlbnVtOgorICAgICAgICAgICAgICAtIG1lbGUseDEwMDAgIyBNZUxFIFgxMDAwCisg
ICAgICAgICAgLSBjb25zdDogcmVhbHRlayxydGQxMTk1CisKICAgICAgICMgUlREMTI5MyBTb0Mg
YmFzZWQgYm9hcmRzCiAgICAgICAtIGl0ZW1zOgogICAgICAgICAgIC0gZW51bToKLS0gCjIuMTYu
NAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
