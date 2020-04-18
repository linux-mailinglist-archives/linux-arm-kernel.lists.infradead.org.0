Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7C21AF59D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 00:47:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b3hQmmNIrbCM1LRABcSSyczXOsVpkMAdWSY6kE1JOfM=; b=bfvA0j/dHfjfUZ
	QaB5y8NqXBL3Voj634jLkpj+E7IyF04y3Qtntb0+/5WjSIdlZtg1+YxClDaD9vfoQNsuamdHPIlkM
	RQeAhNZjdWTj/n/4+RGfg18AvYYm5/cqrlSs5Y0clStkxIMERzmwVkoMKoPwORUNhXt6hgr0Q/XZL
	VsNUR2zbiHCrDiFUCzZxec4EZYoCx9AXiwcjUwQIbGQD3VSfaOZz2exNy+lto5wHrwAH3A+dP+Chw
	wZAtwIEbWxdsnkJIafD1MPkcgKrWNReaowVFxtMJ0UyVQ4DYMIexGdfTep6zJ8KV4I1T8tEmc47Cb
	uGk+H6+RJTFII9ET7evg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPwEk-0003HB-UI; Sat, 18 Apr 2020 22:46:58 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPwCg-0007ac-UW
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 22:44:52 +0000
Received: by mail-wm1-x341.google.com with SMTP id y24so7010842wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 Apr 2020 15:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=71OS66q5+Ejt0CVM9F9Xc2Ppa++y7UNFVHd3OthRIGY=;
 b=cazk43It3j2VdzZjFL3s/sYFp7HDN8tiCVlcUbB2/Mcdn4gLPLX0Th07O6It2OyJNL
 wvYcmUrpj68HUl7zlkTFUCO8RrYoT6YPtkgTy5VLmhNIQNAR7Yl7ZTFRWyvNc73q2pTP
 YBdzrGKG/wvFBmCdObfAV47RhsUflbPCXCVT5lRe8LSNWjyusUO5slrrTWkV9VVMFK/F
 ivpF4lDwN9U+i+eM/i0NShQX7YOjFRgP8GcNPvSiQbF6PEt6Juw1cSv5roEJYsZgS6Mk
 3jOzcZqCgZN51zTPWnlaZ4AbBJszYNJHqEK/xHa/sTPpCY0iSkZOMQufceMz93YgkEBU
 xy7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=71OS66q5+Ejt0CVM9F9Xc2Ppa++y7UNFVHd3OthRIGY=;
 b=RvJG3KJUPn+LLSQpZc8MNpcqBy18h7Rb/+vQFNvtqZdAnQuHahPWr9ziWYI0piLYXj
 PVjG/eSilXEZ/mvOp3XiHr5ZicIuWuv3f2azz2ikSF0m9rcnkPB/axhrY7oV4VlWdm9u
 osrNJ4Krg8s9ezhITXZNZ/JRWOoVmekswQ64RncaCF4FEjbqoJzsDY3rHQrB6Bt2GfIo
 RQiS8OGo7Wpf8yrDqUH1S8mS/o4aOran+MQXYNgelBfSwFfKFpKtbBhe3lXTYqfZBYFR
 OFHcemGqes0MWAt3aFvvmhS5qGSjdU+6KSHvydhtzri20jX2/YKqdZul3f6iNETW4C/6
 hakw==
X-Gm-Message-State: AGi0PuaakVLum9hSVvuR7EuvTjjrQYxwIqRLsgwwBMFIPmFjwP2gtyo3
 /+bkmXFPCjZhL2yKFP0eqiE=
X-Google-Smtp-Source: APiQypKPyTgIPou2Ic2zKdJoZZ5OAlZ2VKspz5p2AZgsdlNKecb9pgI1aFJzAkUSz8IpYtJTgIpMJQ==
X-Received: by 2002:a1c:384:: with SMTP id 126mr10040767wmd.58.1587249889094; 
 Sat, 18 Apr 2020 15:44:49 -0700 (PDT)
Received: from localhost.localdomain (91-167-199-67.subs.proxad.net.
 [91.167.199.67])
 by smtp.gmail.com with ESMTPSA id t16sm13371559wmi.27.2020.04.18.15.44.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 15:44:48 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Subject: [PATCH v2 7/7] arm64: dts: sun50i-h6: Add HDMI audio to H6 DTSI
Date: Sun, 19 Apr 2020 00:44:35 +0200
Message-Id: <20200418224435.23672-8-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418224435.23672-1-peron.clem@gmail.com>
References: <20200418224435.23672-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_154451_004169_56DFE50A 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, linux-kernel@vger.kernel.org,
 Marcus Cooper <codekipper@gmail.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKQWRkIGEgc2lt
cGxlLXNvdW5kY2FyZCB0byBsaW5rIGF1ZGlvIGJldHdlZW4gSERNSSBhbmQgSTJTLgoKU2lnbmVk
LW9mZi1ieTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgpTaWduZWQt
b2ZmLWJ5OiBNYXJjdXMgQ29vcGVyIDxjb2Rla2lwcGVyQGdtYWlsLmNvbT4KU2lnbmVkLW9mZi1i
eTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBhcmNoL2FybTY0
L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaSB8IDMxICsrKysrKysrKysrKysrKysr
KysrCiAxIGZpbGUgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpIGIvYXJjaC9hcm02NC9ib290
L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKaW5kZXggYTVlZTY4Mzg4YmQzLi41NThmZTYz
NzM5Y2IgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1o
Ni5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNp
CkBAIC04OCw2ICs4OCwyNCBAQAogCQkJKEdJQ19DUFVfTUFTS19TSU1QTEUoNCkgfCBJUlFfVFlQ
RV9MRVZFTF9ISUdIKT47CiAJfTsKIAorCXNvdW5kX2hkbWk6IHNvdW5kIHsKKwkJY29tcGF0aWJs
ZSA9ICJzaW1wbGUtYXVkaW8tY2FyZCI7CisJCXNpbXBsZS1hdWRpby1jYXJkLGZvcm1hdCA9ICJp
MnMiOworCQlzaW1wbGUtYXVkaW8tY2FyZCxuYW1lID0gImFsbHdpbm5lci1oZG1pIjsKKwkJc2lt
cGxlLWF1ZGlvLWNhcmQsbWNsay1mcyA9IDwxMjg+OworCQlzaW1wbGUtYXVkaW8tY2FyZCxmcmFt
ZS1pbnZlcnNpb247CisKKwkJc2ltcGxlLWF1ZGlvLWNhcmQsY29kZWMgeworCQkJc291bmQtZGFp
ID0gPCZoZG1pPjsKKwkJfTsKKworCQlzaW1wbGUtYXVkaW8tY2FyZCxjcHUgeworCQkJc291bmQt
ZGFpID0gPCZpMnMxPjsKKwkJCWRhaS10ZG0tc2xvdC1udW0gPSA8Mj47CisJCQlkYWktdGRtLXNs
b3Qtd2lkdGggPSA8MzI+OworCQl9OworCX07CisKIAlzb2MgewogCQljb21wYXRpYmxlID0gInNp
bXBsZS1idXMiOwogCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKQEAgLTU4MSw2ICs1OTksMTggQEAK
IAkJCX07CiAJCX07CiAKKwkJaTJzMTogaTJzQDUwOTEwMDAgeworCQkJI3NvdW5kLWRhaS1jZWxs
cyA9IDwwPjsKKwkJCWNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1oNi1pMnMiOworCQkJ
cmVnID0gPDB4MDUwOTEwMDAgMHgxMDAwPjsKKwkJCWludGVycnVwdHMgPSA8R0lDX1NQSSAxOSBJ
UlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJCWNsb2NrcyA9IDwmY2N1IENMS19CVVNfSTJTMT4sIDwm
Y2N1IENMS19JMlMxPjsKKwkJCWNsb2NrLW5hbWVzID0gImFwYiIsICJtb2QiOworCQkJZG1hcyA9
IDwmZG1hIDQ+LCA8JmRtYSA0PjsKKwkJCXJlc2V0cyA9IDwmY2N1IFJTVF9CVVNfSTJTMT47CisJ
CQlkbWEtbmFtZXMgPSAicngiLCAidHgiOworCQl9OworCiAJCXNwZGlmOiBzcGRpZkA1MDkzMDAw
IHsKIAkJCSNzb3VuZC1kYWktY2VsbHMgPSA8MD47CiAJCQljb21wYXRpYmxlID0gImFsbHdpbm5l
cixzdW41MGktaDYtc3BkaWYiOwpAQCAtNzExLDYgKzc0MSw3IEBACiAJCX07CiAKIAkJaGRtaTog
aGRtaUA2MDAwMDAwIHsKKwkJCSNzb3VuZC1kYWktY2VsbHMgPSA8MD47CiAJCQljb21wYXRpYmxl
ID0gImFsbHdpbm5lcixzdW41MGktaDYtZHctaGRtaSI7CiAJCQlyZWcgPSA8MHgwNjAwMDAwMCAw
eDEwMDAwPjsKIAkJCXJlZy1pby13aWR0aCA9IDwxPjsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
