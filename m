Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E192A57D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 18:39:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O2opb2J7kL5VtBMvRtngcflr1t/2Lv8H5RmazOehJNA=; b=dMxGaV2ZQIs09h
	nKkJ33k6rLVniOwwqkDBHr2h3G5t4oLp8OcQO9VM0BZj21sasR/TWlG7bHfZJOPJJjuikUFH8G7e4
	gOE6Aj2/DAvO9vjELMkEw1Cg0XzivU5hqTQzbEYo3yx99f86e/tqoUHJ1r7fDr8z/YNBrzNu1IY/6
	VACLWQt11OXnpgcrr7MPAilQp92rZs+Ds6H1Ex0kPs05VtDNUkfHcLCjGI4CX4mkVwk0sRh6CU3ZD
	JAqr28aSgNURoThNHtG5Bk9qAPojohTprlm/fZVqVOHhpbDpMy4l99kCklL8aVXppjz06uYBmh6nY
	n0IQNibo8+96AUzrMNEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUZhx-00050L-J5; Sat, 25 May 2019 16:39:45 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUZgn-0003dd-Q3
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 16:38:39 +0000
Received: by mail-wr1-x443.google.com with SMTP id e2so4052471wrv.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 09:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=73BBHLN3/j83VURt6icEiGox4hUhqX1WgPxiVFKyQjI=;
 b=vLpCI5Rb7wk0UNTvHqKpOLJ0SKEkpk5xFNGML+8KdavMSTu09xDT5byhC9GoyvrN3T
 5vGnmVzQqNoV7dSf9bs2/Zjn7Yr11n8SiPVjuBVA+ijQ4y9IUVGPE8XCOBvlbC5A2Mkh
 M0TFp1LdG83CPxsAryD+m89YhWcWIBsOapMDX3v80ZuKWh9HMaqxq3FygWJdHJu5qJrI
 yo3szSJGfMh30CgOf32IIqERBO+BzOE8JBB2GbA0OpZccDWfTmtNbumeK9w7QBoKGYZR
 bj6Fbd5tC36iUMNO5LGk42eupFqcas0wTmfewk/1OAM1mlEHmGnLmBWc72yn8HdpLy1X
 yxaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=73BBHLN3/j83VURt6icEiGox4hUhqX1WgPxiVFKyQjI=;
 b=iby22nICGkf6fxlryxRA1k4kqyB/iJ37py3As4p1vLbevn020NOZ07W1hBqmoIey/n
 gvOg3Om2qxxe9WPqM+dJIL7LppRCTX9VdhXwU7Lt5DsbR//u9GkT9jVfMyfQZHY3UUBq
 Cr5ivf7pk7HtqvbeV0KJBCRpbCNb6zaBJFMwWkshXm59szRidKVw25A0MXraUIHuXN8I
 NjhkSgQ7JkGWYuob+bOUT6JiilujoNR+9xfJ1FeIDBAck/TLuhSIgdG7S05zgFxVRDpv
 08SvkyM+TGdCoDHcB63vi4DFNex4qz/kvxbP82rzsk5kt0duAaaKwD9nv67BZbnAL++B
 I81g==
X-Gm-Message-State: APjAAAXwnCWgrw5HSXW7raf2Jba4VFzo9mCk0pZMkaOsDBYvhKgpYDPA
 0SQ5XZ8V2UpoaL9uNiT9y2c=
X-Google-Smtp-Source: APXvYqxa/DYqpGnnVlydGMVGpTNtp535awxH6Lo5LUaXya51tnZ4J/740PQZktYur529FTu9DCya/g==
X-Received: by 2002:adf:dd43:: with SMTP id u3mr3656689wrm.313.1558802312232; 
 Sat, 25 May 2019 09:38:32 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id f65sm9306498wmg.45.2019.05.25.09.38.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 09:38:31 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Dan Williams <dan.j.williams@intel.com>
Subject: [PATCH v2 6/7] arm64: dts: allwinner: h6: Add DMA node
Date: Sat, 25 May 2019 18:38:18 +0200
Message-Id: <20190525163819.21055-7-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190525163819.21055-1-peron.clem@gmail.com>
References: <20190525163819.21055-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_093834_243400_C83AE753 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: devicetree@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKSDYgaGFzIERN
QSBjb250cm9sbGVyIHdoaWNoIHN1cHBvcnRzIDE2IGNoYW5uZWxzLgoKQWRkIGEgbm9kZSBmb3Ig
aXQuCgpTaWduZWQtb2ZmLWJ5OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5u
ZXQ+ClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+
Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgfCAxMiAr
KysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQppbmRleCAxNmM1YzNkMGZkODEu
LmY0ZWE1OTZjODJjZSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIv
c3VuNTBpLWg2LmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBp
LWg2LmR0c2kKQEAgLTIwOCw2ICsyMDgsMTggQEAKIAkJCXJlZyA9IDwweDAzMDA2MDAwIDB4NDAw
PjsKIAkJfTsKIAorCQlkbWE6IGRtYS1jb250cm9sbGVyQDMwMDIwMDAgeworCQkJY29tcGF0aWJs
ZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWg2LWRtYSI7CisJCQlyZWcgPSA8MHgwMzAwMjAwMCAweDEw
MDA+OworCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDQzIElSUV9UWVBFX0xFVkVMX0hJR0g+Owor
CQkJY2xvY2tzID0gPCZjY3UgQ0xLX0JVU19ETUE+LCA8JmNjdSBDTEtfTUJVU19ETUE+OworCQkJ
Y2xvY2stbmFtZXMgPSAiYnVzIiwgIm1idXMiOworCQkJZG1hLWNoYW5uZWxzID0gPDE2PjsKKwkJ
CWRtYS1yZXF1ZXN0cyA9IDw0Nj47CisJCQlyZXNldHMgPSA8JmNjdSBSU1RfQlVTX0RNQT47CisJ
CQkjZG1hLWNlbGxzID0gPDE+OworCQl9OworCiAJCXBpbzogcGluY3RybEAzMDBiMDAwIHsKIAkJ
CWNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1oNi1waW5jdHJsIjsKIAkJCXJlZyA9IDww
eDAzMDBiMDAwIDB4NDAwPjsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
