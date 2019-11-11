Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B87F6D1D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 04:06:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ofE6ZjEaaOfastViM/lr9CvqB9bsYWNraGIGuFWJlXE=; b=t0Vn7NnwQdDghL
	kJ8X+lytPM43hoj9Mc9C+9dckOmCPmgsvyeSvyBwck/WfjM5UyMyosum6Bf7tfBLXrjslvu5b4iRG
	xHX5MxFK3DoTx00yAP3tZOZ2XxUVCBcbc9m1ewdAUuG/hFP9cl8KWpC4UgPSFFqIAz3D68wy21sFT
	Ke8pMNmmLazaOX5MDqnidnLg4ctPsUUjljnJmLx8CWz5HGTi2F4rxa8Wo6LDoi3Q9eDYqMf5rFVAz
	7EyGZ15PK0jVmXyg1Gbc8o9cE4GGqXg/OnMe5ZE8hZjcgwT6ynYJ1PkfTrsW3Rcaq3g5APlQ3j0lg
	imMTYL+ftmo8jceAr/4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU022-000568-9P; Mon, 11 Nov 2019 03:06:22 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU00c-0002fw-Iz; Mon, 11 Nov 2019 03:04:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 03446B182;
 Mon, 11 Nov 2019 03:04:51 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH 6/7] dt-bindings: arm: realtek: Add RTD1395 and Banana Pi
 BPI-M4
Date: Mon, 11 Nov 2019 04:04:33 +0100
Message-Id: <20191111030434.29977-7-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191111030434.29977-1-afaerber@suse.de>
References: <20191111030434.29977-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_190454_769323_D6B1B77E 
X-CRM114-Status: UNSURE (   7.78  )
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

RGVmaW5lIGNvbXBhdGlibGUgc3RyaW5ncyBmb3IgUmVhbHRlayBSVEQxMzk1IFNvQyBhbmQgQlBJ
LU00IFNCQy4KClNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5k
ZT4KLS0tCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JlYWx0ZWsueWFt
bCB8IDYgKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yZWFsdGVrLnlhbWwgYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JlYWx0ZWsueWFtbAppbmRleCA0
YzkxMThmMmJjY2MuLmIxZTVkYTkxMWM1ZSAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2FybS9yZWFsdGVrLnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2FybS9yZWFsdGVrLnlhbWwKQEAgLTQwLDYgKzQwLDEyIEBAIHByb3Bl
cnRpZXM6CiAgICAgICAgICAgICAgIC0gc3lub2xvZ3ksZHM0MTggIyBTeW5vbG9neSBEaXNrU3Rh
dGlvbiBEUzQxOAogICAgICAgICAgIC0gY29uc3Q6IHJlYWx0ZWsscnRkMTI5NgogCisgICAgICAj
IFJURDEzOTUgU29DIGJhc2VkIGJvYXJkcworICAgICAgLSBpdGVtczoKKyAgICAgICAgICAtIGVu
dW06CisgICAgICAgICAgICAgIC0gYmFuYW5hcGksYnBpLW00ICMgQmFuYW5hIFBpIEJQSS1NNAor
ICAgICAgICAgIC0gY29uc3Q6IHJlYWx0ZWsscnRkMTM5NQorCiAgICAgICAjIFJURDE2MTkgU29D
IGJhc2VkIGJvYXJkcwogICAgICAgLSBpdGVtczoKICAgICAgICAgICAtIGVudW06Ci0tIAoyLjE2
LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
