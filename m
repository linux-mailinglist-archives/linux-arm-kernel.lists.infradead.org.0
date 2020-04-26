Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1491B8EFF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 12:44:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b3hQmmNIrbCM1LRABcSSyczXOsVpkMAdWSY6kE1JOfM=; b=Zbk2fxFRvR9aBc
	BkIng6HSg1faZ5kMkhnC8mIx69LxxoBeplC6srfdgJp/jCTFpbOvy+jSZuM8U7dDWP5YuYIw7EPMu
	ciyo2gs/it4/41+7qhYT7ukAO+ZnCwnnGpPPBiBMUEtsWlsU0Foc6a7PYBkm6DdQz+EuCjORdqxf5
	SM4bBLHLl7i5LXHrqgZzwHMj5XJ5A8GMca7YuRTgsFBF86nh2H0Zal5fyyMOnlthbggagEC4I1Z3U
	cQCpKkRmHEgV05uasoQbjEAyBcw3Iec/IFGi35OGkLtjj+2nvVUkibvQqE6wy9WSmEez3nXreRoTK
	l7EhcFm/SdLhikKmFoRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSelP-0004oY-Ns; Sun, 26 Apr 2020 10:43:55 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSej2-0002zd-Fx
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 10:41:30 +0000
Received: by mail-wr1-x442.google.com with SMTP id k13so16981746wrw.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 03:41:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=71OS66q5+Ejt0CVM9F9Xc2Ppa++y7UNFVHd3OthRIGY=;
 b=FR+v67a5vKi3Hi1SzdTPcg1Q7Pe8jxEePGV1F1w9NbO6dK80/OuhFYLMpclxdb/1Q0
 6DynEz+yJoNi2ER6HHZKsk62dWeWeU7eYZ2slAYA8hJ4a8zyXBqdzH5TFfqPADg6i3uN
 1CysICUqjJ3O8dbKrljmN1MYDMv4iRUPRkDTadTa4U56L+cB2mEJ9k8SD4axMMWYib2T
 ceRmq9WsEG3pGS1H2nX0gRri/blZg4tueISMglmoQjRoELyXziX4NZGnLzztH7hW3wRt
 Ngrcd4mOSSnFAKzE4Gd35LQL5cPxyY8KWZFmbfEQExpo48splnDre75XOj5k7r8Q+eHD
 S9Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=71OS66q5+Ejt0CVM9F9Xc2Ppa++y7UNFVHd3OthRIGY=;
 b=bmD2dS4F6rdPLqVV3ZZJc2Kdee9YkgQKhMI0PAkZqcpmEtJUjGKH0R3Ru4z+WswKg2
 x5J+TGdUdJstBw0vr7tTOcqVs9ybLkkoN5C64x/n3HKJ1zP4Cme9o2u5swgJtBtlUsS3
 kfjocCM3oIJRFRtR3c7rfH3exlgX8PbiOvr+70gSuXn7mpJ+haL+U8J/La+4M1PGdNBz
 Zxw78FxciYGr0a4uCYM6FC1ofQtGd445EbCKRqZcT1JizZrq2ADTcqc5SE8iQCuqfPEQ
 6kbuK1wtH8uzvH0nZdmhbMIL1icVsTOO0/XGg17Z+9FQD/8HBsECT9MoV243WswPfpIU
 2HaA==
X-Gm-Message-State: AGi0PubUtchQZzJgaOMC48T1vJFK1/7M4lUlMm58LhuQ0As55qOCB7DU
 tWlqPcID994AovAq2yYaFLs=
X-Google-Smtp-Source: APiQypIrb0ZxEV1ggjSVaYJASumLobe3vmR2rfufWmAZ4oevbrbzCjEoc15o2VgveWQNLhbia1Eu4Q==
X-Received: by 2002:a5d:574b:: with SMTP id q11mr15947218wrw.324.1587897686721; 
 Sun, 26 Apr 2020 03:41:26 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:59f6:22c5:d1f3:662d])
 by smtp.gmail.com with ESMTPSA id
 y10sm10491793wma.5.2020.04.26.03.41.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 03:41:26 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Subject: [PATCH v3 7/7] arm64: dts: sun50i-h6: Add HDMI audio to H6 DTSI
Date: Sun, 26 Apr 2020 12:41:15 +0200
Message-Id: <20200426104115.22630-8-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426104115.22630-1-peron.clem@gmail.com>
References: <20200426104115.22630-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_034128_548355_6E017A6D 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
