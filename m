Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E12EB579
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:55:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Clvh37TOu1y/80NRtyZ8P8x1vm5BtR1kHmrrZ3cf5bA=; b=Ks4LHOy7LvgGyu
	P/3WPirCtrEXvF432kqZijb80SqmGm1W2YGpp+QDaaWarNcy27DwAg9Ot2BJoBfxV3j+o9OlK1wD8
	eNlIHjgVj8hBaNop/dX4HQB5HgqKME+G3nMFW1yePlSDYtcz2vTIHGApAzOI6Vam1n+Nh1rzVekcm
	4MNAQKTDetKvCrRT6vED9qH07Jod+7AHb/K2SKiskKQYE1NF//Rul70b75sdZuPvHOKyLtWCFIeuA
	BaMc5aGubrO6Iw2QX6BTSY8JnoIRbTJ+p4Ga0lOLUf046h/LABA3EFOBqt3jRxUecu/4iI5JULumJ
	mTWpsdYPuossz9NVKxgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDis-00056U-W8; Thu, 31 Oct 2019 16:54:59 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDhC-0003rn-BS; Thu, 31 Oct 2019 16:53:16 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E88A8B2FB;
 Thu, 31 Oct 2019 16:53:10 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 1/4] dt-bindings: arm: realtek: Add RTD1195 and MeLE X1000
Date: Thu, 31 Oct 2019 17:53:04 +0100
Message-Id: <20191031165308.14102-2-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191031165308.14102-1-afaerber@suse.de>
References: <20191031165308.14102-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_095314_574438_A33E5ACF 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
LWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogdjEgLT4gdjI6IFVu
Y2hhbmdlZAogKiBBZGRlZCBSZXZpZXdlZC1ieQogCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvYXJtL3JlYWx0ZWsueWFtbCB8IDYgKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNiBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2FybS9yZWFsdGVrLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
YXJtL3JlYWx0ZWsueWFtbAppbmRleCBhYjU5ZGUxNzE1MmQuLjA5MTYxNjg4MGQyNSAxMDA2NDQK
LS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yZWFsdGVrLnlhbWwK
KysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yZWFsdGVrLnlhbWwK
QEAgLTE0LDYgKzE0LDEyIEBAIHByb3BlcnRpZXM6CiAgICAgY29uc3Q6ICcvJwogICBjb21wYXRp
YmxlOgogICAgIG9uZU9mOgorICAgICAgIyBSVEQxMTk1IFNvQyBiYXNlZCBib2FyZHMKKyAgICAg
IC0gaXRlbXM6CisgICAgICAgICAgLSBlbnVtOgorICAgICAgICAgICAgICAtIG1lbGUseDEwMDAg
IyBNZUxFIFgxMDAwCisgICAgICAgICAgLSBjb25zdDogcmVhbHRlayxydGQxMTk1CisKICAgICAg
ICMgUlREMTI5MyBTb0MgYmFzZWQgYm9hcmRzCiAgICAgICAtIGl0ZW1zOgogICAgICAgICAgIC0g
ZW51bToKLS0gCjIuMTYuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
