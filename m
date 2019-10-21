Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E92FDE1EE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 04:11:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRFRGH+eViVZxRvRoogePNemRLKl4VCikvkwIcC2Qyk=; b=qbiqIXuCINZGkR
	jPOYJhpNG8uLT1D5455ZJVtIk+KaOenIDxBZ8xwejywgs33b6yYaa88K6DwRhp+LUaaNuVZ64kv8R
	meT1NRKR5b2GZs0LnOQkJnBRLG4LHa4jlInZZSOyrITyELZH+HaJC1u3hng0hYgSfFcR4HInzEvDI
	SAsDeIwItgkx1nl9Ymy1aO5irad85isj/BGPWh8sTrWRvYk76IxDwJRETrsZNRKUa4AcOE1i/451r
	aSyYUdLuG4RnJeDg3g2EY1CJeogqI7aFqlgt2Nv0Ggn0DeiqGZSZBhgfdDZ8UL8nG+tWr3cpC/ZQX
	kczEapuRFVSb1e7xMThQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMN9t-0007jn-Bc; Mon, 21 Oct 2019 02:10:57 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMN9h-0007i4-8X; Mon, 21 Oct 2019 02:10:46 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 050E6B204;
 Mon, 21 Oct 2019 02:10:43 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH 1/3] dt-bindings: arm: realtek: Add RTD1195 and MeLE X1000
Date: Mon, 21 Oct 2019 04:10:33 +0200
Message-Id: <20191021021035.7032-2-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191021021035.7032-1-afaerber@suse.de>
References: <20191021021035.7032-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_191045_441501_4CCF2769 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGJpbmRpbmdzIGZvciBSZWFsdGVrIFJURDExOTUgU29DIGFuZCBNZUxFIFgxMDAwIFRWIGJv
eC4KClNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KLS0t
CiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JlYWx0ZWsueWFtbCB8IDYg
KysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yZWFsdGVrLnlhbWwgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JlYWx0ZWsueWFtbAppbmRleCBhYjU5ZGUx
NzE1MmQuLjA5MTYxNjg4MGQyNSAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2FybS9yZWFsdGVrLnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2FybS9yZWFsdGVrLnlhbWwKQEAgLTE0LDYgKzE0LDEyIEBAIHByb3BlcnRpZXM6
CiAgICAgY29uc3Q6ICcvJwogICBjb21wYXRpYmxlOgogICAgIG9uZU9mOgorICAgICAgIyBSVEQx
MTk1IFNvQyBiYXNlZCBib2FyZHMKKyAgICAgIC0gaXRlbXM6CisgICAgICAgICAgLSBlbnVtOgor
ICAgICAgICAgICAgICAtIG1lbGUseDEwMDAgIyBNZUxFIFgxMDAwCisgICAgICAgICAgLSBjb25z
dDogcmVhbHRlayxydGQxMTk1CisKICAgICAgICMgUlREMTI5MyBTb0MgYmFzZWQgYm9hcmRzCiAg
ICAgICAtIGl0ZW1zOgogICAgICAgICAgIC0gZW51bToKLS0gCjIuMTYuNAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
