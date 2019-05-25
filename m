Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D312A600
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 20:10:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrKXo/gnqA3F9K0EZbRs8lTUzcb+DHJ61PmoVmImuhc=; b=LExikjfEHPi7TO
	AJ+JU5xpT0wpBCsa/Z4jBNNiOd1QBHoAr1AXPN32NYUetHwDqPPV4WR+FAYLmW4HywN7m7icNDksA
	Imy61XeBWDQqi+I6SxWPR0gCuiqvKc2nIO7ZKhKgzsGvqil2kR3QtvenNNP1qJKlobJzPrY3RaIy/
	2LDbKe+Hm43C/a2sYNpEVbzPVjpkahAY0sCsDr2kJby5dZQoP+sBbBNebA+sUoxcyhKHJMioNyv5i
	XHa1oA7QHddhw4ZlRNw/X6wiUr7FgtknvwdYD4ltFGWMHGP8QAT8eSOTjF+kBpyzlT+rxlTOf0XNc
	LoH6htrX5G9ImwM4+O7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUb77-0006qx-Kq; Sat, 25 May 2019 18:09:49 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUb6w-0006nl-87
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 18:09:43 +0000
Received: by mail-wm1-x342.google.com with SMTP id 15so12043287wmg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 11:09:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4eBfZLRrGHb2x3swn8adGFmizbO47Ayo/xoUHugBoMU=;
 b=RSW3jJc5cOmU3KlxOMGTccMfw4hPaDwWHdw/2mE9eYDA1A6lANmApHYFWkUW47vKE6
 oKJ36aCUMUee/jTDtqDiLd4DhzDwpHZ/8ZnMYyctHPji87oUoMZnuh4U1PQVDYEOZMvG
 CHGviX2X/ciGaDfKcrg5Oag3T1Dz9Cz+p8X+IP27Z2YdnSDN4XdtOD8//CcMRjmdegI5
 EwRpbWVhtkOpsO3egT9fL0omrS0fyRu0dLudm0g/hZFtDqYOpc0ul4a1+bjeARS5h12C
 KRzcFWaIV1An6AGB36EQAy/pDJ9cgyblYgZ2W5H8T733ICOvqtC3S1+5LveAWjNuiVIz
 QIfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4eBfZLRrGHb2x3swn8adGFmizbO47Ayo/xoUHugBoMU=;
 b=klaeGqXNMX/CpEMkdhRtGs3aAp1gubH2bPRgCLu4JpfxCQBn6UvRjEklYt42Fimfa3
 cuIo4hM/VtJq6UhWZWgfB+IVd7RPHwc4LBm+yJHbSEy/Cgso8T7646U3QjuVy+I8i15r
 t/k0JjjpnqmPMbwsWYyfP4B3rw0ubSiKA9F+yqH9DhP8SGAXVL/x1tb3uVcrPVuQN4XT
 l51cVxpfaHmwtjSQqPFAAtbYkkGbYIqTfBcTOrWJ0C6X/h052wcE8c7+Va7DWeQipFil
 2ZhIhKYEwg/6hgT2jzaSBc1XiaRQ1PD/AODLTnaWbzcv+4+PujBVkRH2J9Q1AyHqUbHx
 NSpw==
X-Gm-Message-State: APjAAAXfQDTpBQZzgGKpqlwOwqOjVILsv4M+mboKua23LA/i7YPxNWw9
 faBqZaNCW8SGCtDZwkFDsac=
X-Google-Smtp-Source: APXvYqw5zCkHYX4cgvuB+/D9NmrqJdt8S922mugzoPVf3IfcZqOxgJITSNrE8ekrzXAGgx3f+LMsDw==
X-Received: by 2002:a1c:9c03:: with SMTP id f3mr19152220wme.87.1558807771777; 
 Sat, 25 May 2019 11:09:31 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id s127sm5656914wmf.48.2019.05.25.11.09.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 11:09:30 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 02/10] media: rc: sunxi: Add A31 compatible
Date: Sat, 25 May 2019 20:09:15 +0200
Message-Id: <20190525180923.6105-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190525180923.6105-1-peron.clem@gmail.com>
References: <20190525180923.6105-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_110938_287859_C0925261 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QTMxIGhhdmUgYSBkaWZmZXJlbnQgbWVtb3J5IG1hcHBpbmcgc28gYWRkIHRoZSBjb21wYXRpYmxl
CndlIHdpbGwgbmVlZCBpdCBsYXRlci4KClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8
cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogZHJpdmVycy9tZWRpYS9yYy9zdW54aS1jaXIuYyB8
IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9tZWRpYS9yYy9zdW54aS1jaXIuYyBiL2RyaXZlcnMvbWVkaWEvcmMvc3VueGktY2lyLmMKaW5k
ZXggMzA3ZTQ0NzE0ZWEwLi4yOWFjMzNiNjg1OTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEv
cmMvc3VueGktY2lyLmMKKysrIGIvZHJpdmVycy9tZWRpYS9yYy9zdW54aS1jaXIuYwpAQCAtMzE5
LDYgKzMxOSw3IEBAIHN0YXRpYyBpbnQgc3VueGlfaXJfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCiBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBzdW54aV9pcl9t
YXRjaFtdID0gewogCXsgLmNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjRpLWExMC1pciIsIH0s
CiAJeyAuY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNWktYTEzLWlyIiwgfSwKKwl7IC5jb21w
YXRpYmxlID0gImFsbHdpbm5lcixzdW42aS1hMzEtaXIiLCB9LAogCXt9LAogfTsKIE1PRFVMRV9E
RVZJQ0VfVEFCTEUob2YsIHN1bnhpX2lyX21hdGNoKTsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
