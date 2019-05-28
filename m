Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D54982CBE7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 18:27:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fZA2DJiNc9E5LlEJZTO7DzJ72VdrUdOGUAALVouQaoU=; b=EwwnUDkjdbkNdD
	gJhgYEw7HZJHJJSkTpbRow2uOp1j6udpBSkXUyAnGUFfyRCPXnxoX+3KOfwWgqEZcx9OxmYpHCLGE
	HjKPazi5NPuclk2IcrK4CBzzvr8frMB/g+vSLMEvoIg9JqMmnQoTUVkuPPRNJD1AurMjVOG9ywtpr
	78IJCwRWXrBXJ7HaJyQZrTEk/EhIozBz94PHwCC9EKQeaF2Elb5XQf3YyPikgwqn4AXdoQLVc4e9v
	wjyQeGD0pyASXrVQL0pHJ0PambZkU5nm9P5wNsLx9WprFxKnqe5nQUiZrYgWKnpagMyWTwDyZNF4I
	b6yrWkU09lKZk3b6jX+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVewD-0008BJ-Bw; Tue, 28 May 2019 16:26:57 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVekm-0000Jm-BX
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 16:15:11 +0000
Received: by mail-wm1-x343.google.com with SMTP id u78so3609978wmu.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 09:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pfFUA/FtBsg0My+1YWgyWmibdI4dMuoplvWrY93VZPg=;
 b=FbE7VNe6zJsNuuwtVyQngMaaBCRylWn6YroOYn6qPwakGwJjZEPQ0B/Cthylt1qvuN
 mZxE/Sc4mxe2++lDqeh2bqbFpGIYSHeDFYBEIOsrASzWRULECjr7ZUdXqsipldUA5KDj
 q57HOKbTjNJTf+H1Z1PjfjFHq3bZWMzEkyEhJ0kNun+m3jhMJrEmYUKlbGMkN2PMJNOL
 CLEUhOcDcZsto9LdWRUEk8SrdlqBDA7ucy5iUnS+/7u1AlJjUx4+2Yx5pXXh3BxJXqjz
 /CDhXhhC06PZAfIqoyw8qB9wrsObdzSoxrvI64VHrqfBUr0hfLbzEuKsiJDvDsf6LLQJ
 cemA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pfFUA/FtBsg0My+1YWgyWmibdI4dMuoplvWrY93VZPg=;
 b=KDHvMrJNoFzpsMuh4GvG7pXGVBDI5SWf+k5hOlMhyuHhvyhKxVf5ki0fe5SfxtF2mI
 gosBAd//RqKGImCtCta1IH/MfjSdj56pU4aKRzxdk8kf/PaQU/srtoe1yxK503PdoADH
 y6Zo14tPDg4Q8U17Axw0CNfGRsVJr7bcInK4953H9RhWqfFp4UmNfi9HRVhRwesXfKpw
 sTlOhVXySEI2IEsAHCH6ijLHXIPvofbkT+cE/Mp2VQQTx8v1RAi0C21RzbdM7qAfbZUO
 4KYi4lR2lU6km0O5UbEOeaffvfUj5AaM39DhQLuQrKXPxQlAYRNLgPBl0szpK1a2uASh
 j6lQ==
X-Gm-Message-State: APjAAAXonCmkYHwr7oPNsM8sPLOB1i+SoAFQzgauu4YME1upmpzbSKuz
 AhwDfYe0cMJysZVwa4f/Yi4=
X-Google-Smtp-Source: APXvYqyOe1RfR1bZXRwUuiofj7zQ4yGMR5FXQfdvTPgmVpDJJLSumvYusoAbSBiyS2xvw8LEIY+ejg==
X-Received: by 2002:a7b:c5ca:: with SMTP id n10mr3490534wmk.136.1559060105292; 
 Tue, 28 May 2019 09:15:05 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id l14sm13678787wrt.57.2019.05.28.09.15.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 28 May 2019 09:15:04 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v3 09/12] dt-bindings: media: sunxi-ir: Add H6 compatible
Date: Tue, 28 May 2019 18:14:37 +0200
Message-Id: <20190528161440.27172-10-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528161440.27172-1-peron.clem@gmail.com>
References: <20190528161440.27172-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_091508_912380_806C4787 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlcmUgYXJlIHNvbWUgbWlub3IgZGlmZmVyZW5jZXMgYmV0d2VlbiBBMzEgb3IgQTY0IHdpdGgg
SDYgSVIgcGVyaXBoZXJhbC4KCkJ1dCBBMzEgSVIgZHJpdmVyIGlzIGNvbXBhdGlibGUgd2l0aCBI
Ni4KClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+
Ci0tLQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3N1bnhpLWlyLnR4
dCB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3N1bnhpLWlyLnR4dCBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9zdW54aS1pci50eHQKaW5kZXggMWRk
Mjg3YTRhYjNhLi44MWVhZjk1ZmI3NjQgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9tZWRpYS9zdW54aS1pci50eHQKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL21lZGlhL3N1bnhpLWlyLnR4dApAQCAtNiw2ICs2LDcgQEAgUmVxdWly
ZWQgcHJvcGVydGllczoKIAkiYWxsd2lubmVyLHN1bjVpLWExMy1pciIKIAkiYWxsd2lubmVyLHN1
bjZpLWEzMS1pciIKIAkiYWxsd2lubmVyLHN1bjUwaS1hNjQtaXIiLCAiYWxsd2lubmVyLHN1bjZp
LWEzMS1pciIKKwkiYWxsd2lubmVyLHN1bjUwaS1oNi1pciIsICJhbGx3aW5uZXIsc3VuNmktYTMx
LWlyIgogLSBjbG9ja3MJICAgIDogbGlzdCBvZiBjbG9jayBzcGVjaWZpZXJzLCBjb3JyZXNwb25k
aW5nIHRvCiAJCSAgICAgIGVudHJpZXMgaW4gY2xvY2stbmFtZXMgcHJvcGVydHk7CiAtIGNsb2Nr
LW5hbWVzCSAgICA6IHNob3VsZCBjb250YWluICJhcGIiIGFuZCAiaXIiIGVudHJpZXM7Ci0tIAoy
LjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
