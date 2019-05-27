Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0FD12BB5A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 22:17:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O2opb2J7kL5VtBMvRtngcflr1t/2Lv8H5RmazOehJNA=; b=aT7ckfrKu2Q7/d
	0o39nfUSq6K4KXlxROrjvaPthn1uQl1MlA5IAhil/WM2aXOpIdZzq5hKCH+fL8ggcrwPD6mIIEcgE
	J4w9wSQxrRZWJDNDbZXppZrioRCLV1V2Y0BQo3keBwd2TAJIjLZmay2swC4AUX2iaZa8PHo0AgzpD
	JhA8Ly/1NOwbikkO8EH2/7Cbaa06F4M/n/3Kbv/ghSU6bdQcB/rr9UXRJy6rX/ikj02y2xGHei0y3
	NNplcPzI+WejHMUlvGcxssxsTpY2APY/0QO6ySNl5N1+ijZhqpcMmvUyiHayOdC2l1kjQ1l7JedGg
	fq2odHQ1FfatEoPqpBrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVM3I-0008EF-IA; Mon, 27 May 2019 20:17:00 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVM1a-0006Vm-3f
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 20:15:19 +0000
Received: by mail-wr1-x441.google.com with SMTP id w13so9513647wru.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 13:15:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=73BBHLN3/j83VURt6icEiGox4hUhqX1WgPxiVFKyQjI=;
 b=Jjj410ZeHWwlayFNF0jrGAPFyOoTQiP1kjbcBvmAQ/e3GaAcESI59VKdqX1RP6RL5Z
 mmrcWuuPCm1Qg4/gZOvi7gs5P3CdqpCovoiTAGhX5c1dvdR9wZNEL55pit+tZmdL2cM7
 DIzsd01uhPa/GA3lh1keC6C0hhx03CSmsE1HRPPIrge4A30Bf/+mmA29Sl74UNM0i/Hs
 /thGaDiaoyWegb4n/9HeErnDwSCtRKuIEXC/z7VEG41Wyv+y7F0q3kVKgSffA808mCcV
 QRO+7aYhLRubWPEczcjGnU9oJIGGjAOiWBUaho31KnC4Wh2l69gI0XaOTFUC5hgyzuxU
 wx7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=73BBHLN3/j83VURt6icEiGox4hUhqX1WgPxiVFKyQjI=;
 b=P+8ZSQ5qxBlUnaI8JdMBCVzLoCQg4MK/9kKTFT0lw1i7A4oPRcYpUkScVDPalTu2eZ
 4T0ppEVUzoAL5C8QVYlTMD4e37S1kMqo2I5GxhG/OMutAzqRUhGlxM6mmnbvNtib3ddo
 NzyWn4atvIUe8cSjJmBdd4Uk5rcD7/OZ3+dZ9ygYrgjKIbAuR8ztWvR7hmtmwoOlcGjN
 mSsAOty4FVnXE8Xs9ETOaEj7wrTOcXtCdH1bOfHGjfmQVRKgkrwDZsqx7C6U3SSOwAU8
 yIGFDyRwY42/I7XU/s7R3XVXw/of9zfQR6bW8eq6WFkP0pYf53M7V3KZz3vT40MJDsgA
 Flzw==
X-Gm-Message-State: APjAAAVDmT6T+jQb2GTHPpGktzv2du35zlD8FSm2NcY8phfdMARjM3CF
 xMpo0DBrEorETqQ93mWl+ME=
X-Google-Smtp-Source: APXvYqw1x6X+1tOy2nRxBSSrXmDfeXwrAz5IFs9NcfUGfl99IeNgcxaVX24W7F5DRobRLswT46Lh0A==
X-Received: by 2002:a5d:4d84:: with SMTP id b4mr31631083wru.102.1558988112645; 
 Mon, 27 May 2019 13:15:12 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id i27sm347146wmb.16.2019.05.27.13.15.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 13:15:11 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Dan Williams <dan.j.williams@intel.com>
Subject: [PATCH v3 6/7] arm64: dts: allwinner: h6: Add DMA node
Date: Mon, 27 May 2019 22:14:58 +0200
Message-Id: <20190527201459.20130-7-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190527201459.20130-1-peron.clem@gmail.com>
References: <20190527201459.20130-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_131514_753761_38D5C482 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
