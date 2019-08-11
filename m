Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F259893A8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 11 Aug 2019 22:32:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=30rCwz0xyppdrclz1uZGInOvDTF7OlDXmeQXrQo7ETk=; b=ddQSP9NwDCY5QE
	Q1kIbYPhzuYFETgrs7WdfLC27BIKzAqczQxe1Zq1iWe9GJ1xa9lgwXpAKxfWmwAb7Ai0MwtnGv7/r
	Oq3oHV7ae2Vk78hVKNnKQ6IP8nL/8RPjaBjOMc/8OGpZU4tRyngzFmf5SclwUH46bqI4whtu0/69T
	+9VsAEUZvmVUBOC1GTKGKAhZG27MllFQpA0WqNEYulVfSHiCYHU2z9ldzjfW7NUasd6afBVeptcgT
	K+tGEVsHylVhzUairty0KhxF9luYckJwvuDrL82NFHTJE6bQFMvqVIR8e4Hxioyfyb2tnP8cOX+mv
	FsbhC3jPtTo3Inj/fwbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwuVX-0002IQ-1f; Sun, 11 Aug 2019 20:32:03 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwuVQ-0002HC-Un
 for linux-arm-kernel@lists.infradead.org; Sun, 11 Aug 2019 20:31:58 +0000
Received: by mail-wm1-x341.google.com with SMTP id 207so10383070wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 11 Aug 2019 13:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6dOMEfOb1vmuX/6l/d3avTdPuEJdGUDFzKuzVhzSSwQ=;
 b=ViO0P++5hjh8dnkGtGqlG3J38bvwKJgVHbgG4HRRD2mqb03ZqtIsupG7JVG3AKdKB0
 uqGJD4EGCMwBtCQrCz1lSw+9mIzXjIFFAtpyPdk7iNhMdR/VwtC9xUtJsUUy2f3FBgPv
 A1Gm1HqtMZXGWX5sNowc4ICheOxtNKIFMtDXdjjMQE9FZZQR3RdJP+YmxvWQ6aM9c3Hw
 jX/cHA8SsoIUr+VbSOvCHCC9k8NNCdja6r+g/j1s0V7v8viQGEoIhN7KTGXsS/2hvmxb
 YjZoSKkOmUYPmuXl2TK8e+ip7A73zeMJeLL+ezFto+Zo3LRt1aKadA9TNSxk8LYVKTyS
 QJkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6dOMEfOb1vmuX/6l/d3avTdPuEJdGUDFzKuzVhzSSwQ=;
 b=rwwN5KA5AQLGBjcgknkIWMmL/1V9OX5mEAMwgJYB0AQ4bfqQ/q8g7n7BD0SdMMBO70
 TVt2lzHo0tOAduBZnqHruDzUll8KnEpKzxu80i6jcTJuSJsqeQYonZMRNV5TJB+KOStW
 4L+ll7hQ18830cm/vKsDAYWqz2iki3KxNNBPNRnEmLId9ojSURSHEo9+LDEdbbFyDBzN
 FqNJub6q3rOv50lKmZGETBGeLFUES/55FWL1T8KfCnmyf3dEutSGvNsWlgDNz244i2xM
 3PFUpuUrk/q1dQyZuj9bGR82V4oWnKPkygyvxvUU3T78G9Gi4tnUOSCcW3W0ZpviukDR
 K3pw==
X-Gm-Message-State: APjAAAXRQIHGNtt3Uyq2ClAF9PnPjo80EJew7yTc7J2rLNcZd+MmuAj4
 YBCxrlVV9j7PtCBGbtsI3jo=
X-Google-Smtp-Source: APXvYqzEN7q5gvE9iuIA2xRk3W11noAPkkHt45AjTzx1U+c5eNJWmzVS+/Yb/w+zT/xNpTBDnGtYmA==
X-Received: by 2002:a7b:cd06:: with SMTP id f6mr9391045wmj.66.1565555514739;
 Sun, 11 Aug 2019 13:31:54 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id a8sm11063269wma.31.2019.08.11.13.31.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 11 Aug 2019 13:31:54 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v5 0/3] Allwinner H6 SPDIF support
Date: Sun, 11 Aug 2019 22:31:41 +0200
Message-Id: <20190811203144.5999-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_133156_997026_9866EBD9 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIEg2IFNvQyBoYXMgYSBTUERJRiBjb250cm9sbGVyIGNhbGxlZCBPbmUgV2lyZSBB
dWRpbyAoT1dBKSB3aGljaAppcyBkaWZmZXJlbnQgZnJvbSB0aGUgcHJldmlvdXMgSDMgZ2VuZXJh
dGlvbiBhbmQgbm90IGNvbXBhdGlibGUuCgpEaWZmZXJlbmNlIGFyZSBhbiBpbmNyZWFzZSBvZiBm
aWZvIHNpemVzLCBzb21lIG1lbW9yeSBtYXBwaW5nIGFyZSBkaWZmZXJlbnQKYW5kIHRoZXJlIGlz
IG5vdyB0aGUgcG9zc2liaWxpdHkgdG8gb3V0cHV0IHRoZSBtYXN0ZXIgY2xvY2sgb24gYSBwaW4u
CgpBY3R1YWxseSBhbGwgdGhlc2UgZmVhdHVyZXMgYXJlIHVudXNlZCBhbmQgb25seSBhIGJpdCBm
b3IgZmx1c2hpbmcgdGhlIFRYCmZpZm8gaXMgcmVxdWlyZWQuCgpDaGFuZ2VzIHNpbmNlIHY0Ogog
LSByZW5hbWUgYXVkaW8gY2FyZCBuYW1lIHRvIHN1bjUwaS1oNi1zcGRpZgogLSBkcm9wIHBhdGNo
ZXMgYWxyZWFkeSBtZXJnZWQKCkNoYW5nZXMgc2luY2UgdjM6CiAtIHJlbmFtZSByZWdfZmN0bF9m
dHggdG8gdmFsX2ZjdGxfZnR4CiAtIHJlYmFzZSB0aGlzIHNlcmllcyBvbiBzb3VuZC1uZXh0CiAt
IGZpeCBkdC1iaW5kaW5ncyBkdWUgdG8gY2hhbmdlIGluIHNvdW5kLW5leHQKIC0gY2hhbmdlIG5v
ZGUgbmFtZSBzb3VuZF9zcGRpZiB0byBzb3VuZC1zcGRpZgoKQ2hhbmdlcyBzaW5jZSB2MjoKIC0g
U3BsaXQgcXVpcmtzIGFuZCBINiBzdXBwb3J0IHBhdGNoCiAtIEFkZCBzcGVjaWZpYyBzZWN0aW9u
IGZvciBxdWlya3MgY29tbWVudAoKQ2hhbmdlcyBzaW5jZSB2MToKIC0gUmVtb3ZlIEgzIGNvbXBh
dGlibGUKIC0gQWRkIFRYIGZpZm8gYml0IGZsdXNoIHF1aXJrcwogLSBBZGQgSDYgYmluZGluZ3Mg
aW4gU1BESUYgZHJpdmVyCgoKQ2zDqW1lbnQgUMOpcm9uICgzKToKICBhcm02NDogZHRzOiBhbGx3
aW5uZXI6IEFkZCBTUERJRiBub2RlIGZvciBBbGx3aW5uZXIgSDYKICBhcm02NDogZHRzOiBhbGx3
aW5uZXI6IGg2OiBFbmFibGUgU1BESUYgZm9yIEJlZWxpbmsgR1MxCiAgYXJtNjQ6IGRlZmNvbmZp
ZzogRW5hYmxlIFN1bjRpIFNQRElGIG1vZHVsZQoKIC4uLi9kdHMvYWxsd2lubmVyL3N1bjUwaS1o
Ni1iZWVsaW5rLWdzMS5kdHMgICB8ICA0ICsrCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5l
ci9zdW41MGktaDYuZHRzaSAgfCAzOCArKysrKysrKysrKysrKysrKysrCiBhcmNoL2FybTY0L2Nv
bmZpZ3MvZGVmY29uZmlnICAgICAgICAgICAgICAgICAgfCAgMSArCiAzIGZpbGVzIGNoYW5nZWQs
IDQzIGluc2VydGlvbnMoKykKCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
