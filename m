Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E583EE7DBC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 01:59:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OqQv/OMmTq2ZS64kgc3rT8PyfzoZqtSHNSsospPE9cM=; b=GmB3xV2YQ2ERpL
	kAI5Ja1qMKFWyg+9ak7BJV6QBX0uh7g7M3tztHeLIRdKtUmDPAXqM6C3Cqdf4FQ2KzVDatznZgkVi
	iRRL5LuzYbFXo/P1Ck3vT9jQ4YlZsB/PN3saKGWaTLywLfD1tfjDwxVp/d/vggB6f8BaLiGn897kK
	YXCS6fK9aLkW/b1nstuDdze7NahvYZ8H1feSZynUGVKsTXTp/kWnA+04K0yt0eER5JXasWe4RHCwH
	aiQlOVdnqAWOEiVHdZIuJtV5AmHUTgTXC8ro1mB0V4+LH9wKIyMK/mQwa0vQA7p3+/HszkSFp2QfP
	KmyKF/GYby8Yig/EXzLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPFqn-0000eJ-Qs; Tue, 29 Oct 2019 00:59:09 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPFpv-0008PO-BU
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 00:58:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1572310693; bh=HlkHtBIrl2Pu/yMqJm7oISnuzbeLkbNyGnJaRkUbXDA=;
 h=From:To:Cc:Subject:Date:References:From;
 b=txcdpDXcilixDJQpryeqFSA3pevzH5StDEHTo9UTXPMnP/dL0CHe2pudqWhYQZj80
 IP8Cxqot5KkvVCez+SqRfMVZHgLADbC/uFtlc51DvMQ+XmNfu2erqlQsq5GvSWYvW0
 hbyaWNp7IS8AmxyaR4wpE0zuLcdVHTABra9GsSTk=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Marco Felsch <m.felsch@pengutronix.de>, Ondrej Jirman <megous@megous.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@bootlin.com>
Subject: [PATCH 3/3] arm: dts: sun8i: a83t: a711: Add touchscreen node
Date: Tue, 29 Oct 2019 01:58:06 +0100
Message-Id: <20191029005806.3577376-4-megous@megous.com>
In-Reply-To: <20191029005806.3577376-1-megous@megous.com>
References: <20191029005806.3577376-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_175815_561914_E0F3389D 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-input@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTXlsw6huZSBKb3NzZXJhbmQgPG15bGVuZS5qb3NzZXJhbmRAYm9vdGxpbi5jb20+CgpF
bmFibGUgYSBGb2NhbFRlY2ggRURULUZUNXgwNiBQb2x5dG91Y2ggdG91Y2hzY3JlZW4uCgpTaWdu
ZWQtb2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4KU2lnbmVkLW9mZi1i
eTogTXlsw6huZSBKb3NzZXJhbmQgPG15bGVuZS5qb3NzZXJhbmRAYm9vdGxpbi5jb20+Ci0tLQog
YXJjaC9hcm0vYm9vdC9kdHMvc3VuOGktYTgzdC10YnMtYTcxMS5kdHMgfCAxNiArKysrKysrKysr
KysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWE4M3QtdGJzLWE3MTEuZHRzIGIvYXJjaC9hcm0vYm9vdC9k
dHMvc3VuOGktYTgzdC10YnMtYTcxMS5kdHMKaW5kZXggNTY4YjkwZWNlMzQyLi4xOWY1MjAyNTJk
YzUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWE4M3QtdGJzLWE3MTEuZHRz
CisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWE4M3QtdGJzLWE3MTEuZHRzCkBAIC0xNjQs
NiArMTY0LDIyIEBACiAJc3RhdHVzID0gIm9rYXkiOwogfTsKIAorJmkyYzAgeworCWNsb2NrLWZy
ZXF1ZW5jeSA9IDw0MDAwMDA+OworCXN0YXR1cyA9ICJva2F5IjsKKworCXRvdWNoc2NyZWVuQDM4
IHsKKwkJY29tcGF0aWJsZSA9ICJlZHQsZWR0LWZ0NXgwNiI7CisJCXJlZyA9IDwweDM4PjsKKwkJ
aW50ZXJydXB0LXBhcmVudCA9IDwmcl9waW8+OworCQlpbnRlcnJ1cHRzID0gPDAgNyBJUlFfVFlQ
RV9FREdFX0ZBTExJTkc+OyAvKiBQTDcgKi8KKwkJcmVzZXQtZ3Bpb3MgPSA8JnBpbyAzIDUgR1BJ
T19BQ1RJVkVfTE9XPjsgLyogUEQ1ICovCisJCXZjYy1zdXBwbHkgPSA8JnJlZ19sZG9faW8wPjsK
KwkJdG91Y2hzY3JlZW4tc2l6ZS14ID0gPDEwMjQ+OworCQl0b3VjaHNjcmVlbi1zaXplLXkgPSA8
NjAwPjsKKwl9OworfTsKKwogJmkyYzEgewogCWNsb2NrLWZyZXF1ZW5jeSA9IDw0MDAwMDA+Owog
CXN0YXR1cyA9ICJva2F5IjsKLS0gCjIuMjMuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
