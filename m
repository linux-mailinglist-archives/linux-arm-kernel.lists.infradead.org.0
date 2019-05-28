Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 431062CB79
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 18:15:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7eWtIyRKfmCN4v8WwM5VhzTRV2ch76c5snfIpYy7mO0=; b=Xp2aIWSdRqqX+y
	HiXAUAUF/3U55uzCJW8vwaGjEFspK3VOMadVogq8iVjRme5QzoEHO892znJcfQUtXs9kiH5AmU+g0
	YILTBFsWyYU68zzE6I3oSfJAq646wcQ3E/5LUnvzI7hS0ikwGJpqR/iDRdd2Wrux0AMODyLZUv0hW
	u06hldUfLsSViNEBo5GzoPTbiwXY8riWamXmM640naYlGtr0d30O/3bfXOcyzDuHVqrhRRv8Xxk2u
	hzTw4jOP6G9GhAsfJxr0pe7tdYYqWjild37Q3EkknvnvqUe0CsVzL7B6QkFRfrevzH2CIyrAJlyvo
	tWssjTX0u1fkGhXuJZXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVelN-0001jX-L4; Tue, 28 May 2019 16:15:45 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVekf-0008KV-4L
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 16:15:02 +0000
Received: by mail-wr1-x443.google.com with SMTP id t4so12619570wrx.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 09:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H9liOXPsd3FXJL6A6hHO3yEhmEbo+emmwpujmCXjpXw=;
 b=lAN3nk6BcHTbA9hMqBoHlaoQPbKumXQmvaUsGmEFMfU70ngnOsGFbtxDiXJ/AGLxdd
 r64/kh3ayQTPIo1NbUam1LmsoDMXpnfp3dcES4XvY6BJ0gUAkIJxKzg5mMinPhqLMURP
 mdSUts6La6ZEXMbjHG3ZmL990Dg+qwKXAwTyOiCUTO0U2a/s83bMNsxjIHrgaqHU7g2w
 c3p3pOG+rE+pbwKUza5raE0oZkhVH0tKue27/UAVCxXqG9gd4erZhDAu0R1wZpT69/P5
 qBPZh90AzOXpSvmmaU3GY3RtviSoxy00Uty0qlqh4fiZUtvu5FBHz53RSuoLoCtw9zgq
 xHZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H9liOXPsd3FXJL6A6hHO3yEhmEbo+emmwpujmCXjpXw=;
 b=eesGRaqdsqOchAhrBv581ylli7y1HC7cAcsp5yCX2R8kP2vZpUhNpMItyXYzZKOtJg
 TSvh6GMyJ1UIKFaRNuvuRnjUKtSi+D1YlFXdd4dBIH4BgTWajoTH8R4k9WH6r5s+8lt3
 PUpbuKAlZicWR1hQ5M7/29ZQ6//TDMuQAXqyXbEFHKiw4nu9RYvX+4lf2WOYBkf5Sax6
 kaNGfUj7nCafh1VbnU2YD4W89FwKgFCbBQAWx57UUGM2byHBW3M5lVYID6edsGxNs2bh
 Dv+5l3sIUpb6cTrZ1Lme7qld2E6dnunz2p3w6KaQzSk5iPe9RANEidhnw7qRranP2njU
 a2mw==
X-Gm-Message-State: APjAAAXWTMZkl7euyohgB+ii0BHF8KL44ZPSGsXZOtbQ32QBXE+JeNH3
 I9CeFTcz9Bpp6LQ7xS4Qz5+VT7lcWHiGmg==
X-Google-Smtp-Source: APXvYqxkXdupOTx0Qvelttq93DUjprFEtCpp13vAvBO1yy2nKVU/gZJzkZwaLYnnuYy/Zv8kLSXzaQ==
X-Received: by 2002:adf:e40f:: with SMTP id g15mr4091897wrm.174.1559060098168; 
 Tue, 28 May 2019 09:14:58 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id l14sm13678787wrt.57.2019.05.28.09.14.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 28 May 2019 09:14:57 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v3 03/12] media: rc: sunxi: Add A31 compatible
Date: Tue, 28 May 2019 18:14:31 +0200
Message-Id: <20190528161440.27172-4-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528161440.27172-1-peron.clem@gmail.com>
References: <20190528161440.27172-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_091501_169202_D4C12106 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

QWxsd2luZXIgQTMxIGhhcyBhIGRpZmZlcmVudCBtZW1vcnkgbWFwcGluZyBzbyBhZGQgdGhlIGNv
bXBhdGlibGUKd2Ugd2lsbCBuZWVkIGl0IGxhdGVyLgoKU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQg
UMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL21lZGlhL3JjL3N1bnhp
LWNpci5jIHwgOSArKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3JjL3N1bnhpLWNpci5jIGIvZHJpdmVycy9tZWRpYS9y
Yy9zdW54aS1jaXIuYwppbmRleCBkMDJkY2I2ZmQwYTUuLjA1MDRlYmZjODMxZiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9tZWRpYS9yYy9zdW54aS1jaXIuYworKysgYi9kcml2ZXJzL21lZGlhL3JjL3N1
bnhpLWNpci5jCkBAIC0zNDMsNiArMzQzLDExIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc3VueGlf
aXJfcXVpcmtzIHN1bjVpX2ExM19pcl9xdWlya3MgPSB7CiAJLmZpZm9fc2l6ZSA9IDY0LAogfTsK
IAorc3RhdGljIGNvbnN0IHN0cnVjdCBzdW54aV9pcl9xdWlya3Mgc3VuNmlfYTMxX2lyX3F1aXJr
cyA9IHsKKwkuaGFzX3Jlc2V0ID0gdHJ1ZSwKKwkuZmlmb19zaXplID0gNjQsCit9OworCiBzdGF0
aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBzdW54aV9pcl9tYXRjaFtdID0gewogCXsKIAkJ
LmNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjRpLWExMC1pciIsCkBAIC0zNTIsNiArMzU3LDEw
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHN1bnhpX2lyX21hdGNoW10gPSB7
CiAJCS5jb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41aS1hMTMtaXIiLAogCQkuZGF0YSA9ICZz
dW41aV9hMTNfaXJfcXVpcmtzLAogCX0sCisJeworCQkuY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIs
c3VuNmktYTMxLWlyIiwKKwkJLmRhdGEgPSAmc3VuNmlfYTMxX2lyX3F1aXJrcywKKwl9LAogCXt9
CiB9OwogTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgc3VueGlfaXJfbWF0Y2gpOwotLSAKMi4yMC4x
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
