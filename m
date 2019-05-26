Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A222AC74
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 00:27:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fZA2DJiNc9E5LlEJZTO7DzJ72VdrUdOGUAALVouQaoU=; b=b9zlwI1u0bh48G
	evkeeZ8DledmqrlOqoF5n6O9/gUqjD5TUYKbVuieqTjMuCqJEf1ddkdV0xZASLPODLu/smTtlhZYd
	mW+ri15yAsv6qWH0ZK+Sxj04JyEhHGrhQt4iB9MSW9+AEkf9sT+m/6/dtls2atDbCDEJ/VjYiDUV2
	v1Mt9MIuopi/1lV4k2sb6xGkNX5tGO+Z0+rvcHH3PnAgGzmD7IK9RQhWRe1stxYNAF79FUma7IQS7
	NueHhtzLmhDQYQwLW9CzBhlpGzwLEfzOGLkogAYR4ZsxGk2w6k2MotRjGtITKEhyQhERHS7CQM8I3
	m7m4kyHvNtzroBbTY4UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV1bd-00057Z-EH; Sun, 26 May 2019 22:27:05 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV1aT-0003jt-88
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 22:25:56 +0000
Received: by mail-wr1-x441.google.com with SMTP id f8so15005123wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 15:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pfFUA/FtBsg0My+1YWgyWmibdI4dMuoplvWrY93VZPg=;
 b=TmLyQMTzxNlDvMDpq/v4obLZ5cBfs+Eah78F1fP5yW3/ULBAsc8S6q/MYlBl7JnaIx
 cuY7bjgKYs2TpF+qrkAghyFpMKx/O2WNsISJKc/zPMDvZFVz5VaPy0fEQXzVrl0fZd8O
 xsrxhDIXZdMMywYDMF040JBk2hizL6lIKXLhCquwfdHGA1CSGGFb5WDucx4DXPelJhQT
 UPIUq5i81N/o5um8/RMKBN0bq2KkmlAQxzwB2AXv6AOQb7CSsYU2D6ipR7G6oY62sUPF
 5BUUDHAWyaHYHMJ95CJazAoZKqeJ81joOfoyzLP6uewG6Xts431qtFKeZ0NRkA675k5l
 02CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pfFUA/FtBsg0My+1YWgyWmibdI4dMuoplvWrY93VZPg=;
 b=tcRWX3UxsJYXfsOS5SmiJ6Q7c3FqGFG1WSHSqrFauUadi3Zt1Qwew8Bhx4MoKgmo4Z
 Byq7gSu8/s69qKxOfOio1W1DCBIgg0NZQCX9udFMWwHBhTl9feSoxq/D+6sLARo9ucd0
 22vtbmOHDj4XR0d+UZOdxuTUYwC351h9QfNsHp+iZ+5Q7mfLpfGKXdiFpaTwVAENRAnq
 ULOueQFaODkUduBVKLdG8C6w84fEdMh42BEadgjcRgHbI/Z6tbO1DfFDlcTRYWGKS6sP
 sbX/StNY8Tl5D8XdZ96dPI3krqmxx6kCv9sMO+44YEBjOa0EmSo6DG/wkTIsI+H8FFAQ
 tXlQ==
X-Gm-Message-State: APjAAAVPu8RUOawmb2Uv9zBR5BU/AJ42nt//a7bF51ld8m1IXhRE5LlU
 XBdzWcodeyUAg4QW7jlnckA=
X-Google-Smtp-Source: APXvYqyear9blP86T2MNWn79SUP2m1/FCW8iYuubkJwpsPjuck36zawUuWPezuETPh26SIP94gxRXQ==
X-Received: by 2002:adf:d84e:: with SMTP id k14mr6520699wrl.76.1558909551466; 
 Sun, 26 May 2019 15:25:51 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id o20sm10368398wro.2.2019.05.26.15.25.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 May 2019 15:25:50 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2 07/10] dt-bindings: media: sunxi-ir: Add H6 compatible
Date: Mon, 27 May 2019 00:25:33 +0200
Message-Id: <20190526222536.10917-8-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190526222536.10917-1-peron.clem@gmail.com>
References: <20190526222536.10917-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_152553_498652_CB6C2E6A 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
