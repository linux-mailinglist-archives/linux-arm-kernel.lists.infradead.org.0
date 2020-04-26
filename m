Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2AF91B8FB3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 14:06:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UJ3FTzwWGfL7jME6/3Q0lXQz9vqsWPU8HEXaJRWFG9c=; b=cA3P9A4bQNgvS0
	Sevm+NiX9TYeGCd+rFhHXCIXqRFDXDC7FqqVF0YQ2ks6dlgOC4I0abMRDphRE+cdOOc0stEEmtL8K
	yTeV7Hehho1gpJ1fuaL2d79cetiA9QGOhK0pi7jA3G1DU2CwCpo3ITatbG8VF6Gvxd91LZRjGPS09
	Oz94MdFIvIwWVwvPYB7ccDCsQoMRQx7TUL/abzmj7qIg1MvHJZNr6i9AE0IX5QDODQddmQh0L/Sy7
	cr5McVi7e0es8qkBgxrX+eJO6cQZDHkVixLRuRUXw4bkdHdKDQUcroRO1CFRIzDosLwEk6nZC5Npr
	Q+OlzkzdlVExvs21VLOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSg3D-0005Ii-R1; Sun, 26 Apr 2020 12:06:23 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSg1k-0001tg-HY
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 12:04:54 +0000
Received: by mail-wm1-x344.google.com with SMTP id k12so7789498wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 05:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hIU92tFnbM5F4GsZxfyBvjNoAK6MdY4fHHnGiOLjInY=;
 b=tkoO+MHUDgKE2W2y6Vwh3dRnEyCcyLv/zkEQrzs/FwHfhTpbHQP0iKeYrQ4wMLckWT
 JIEXVvi/NI/sgohW4tyaa6rGnX6l2ql+TBtATuktrJ/V71CFJ8APzipcoiIvkGsYkXQ/
 Hqd2YinT9n9VLspN83dS59ix5n/DfUBVV4RmpHwraP6FdMbIq+5Aml8akBG0FS1TP1S7
 X1c9ajGo2PJ3YIlvcSHTZeibGqacs2RJxOfauMjT8ZDE8x6u0qQFXyOpYG1SWMeXJFJY
 DlDL2IUFqZTzzSVeyw9gnRFo3GncRtxzjc+9+d1GuZWY47xt+VR5fIovX93az8Q68AgG
 sLwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hIU92tFnbM5F4GsZxfyBvjNoAK6MdY4fHHnGiOLjInY=;
 b=aKHL/AcEZMnBbVZf0NPL9VLsoAN/U71Uin3zj4hBiC4IU9BnA/GQNpzHAis1/AT9CT
 z2Abzrvhl6TG2Oz0pMIFCfIF3YVXPDS1nDG4V2+eXvzezALzsWwK5c2pdZSC9gLZnHQ3
 PNgBQNahwD44sVTZhpi0fB+nfta+Oo+mlGFnm43o0riIMU0HRRRlYssT8v/W9PmBPfuA
 DK6M677zCnUZ1Pi85QWIhPrKV4iSXHLu7rHXvjOY+I1NwNjkx01TydkouCayuJtweamH
 WjdYnenZxeCnS9vOBuvynR3h5LKPxkPEk4hSK8UkG4Xm9BO4A1Z0Y2+1fcvZgDDcXooB
 OaNw==
X-Gm-Message-State: AGi0PuYlGjf3n1to7LtgROkPyz8s5ltzR83HXzw1DLMYEwI20uM8nLAN
 XqbX3aKyHXe+Jouv5cEAMoM=
X-Google-Smtp-Source: APiQypJQivLKtZXp/OmZXZ5Izse0wCnqEyHEKmH7wBdtOiTI+IQ0H8Prs5Pn5dUr68966e52DjPNlw==
X-Received: by 2002:a1c:4989:: with SMTP id
 w131mr21647354wma.137.1587902691211; 
 Sun, 26 Apr 2020 05:04:51 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:59f6:22c5:d1f3:662d])
 by smtp.gmail.com with ESMTPSA id
 s24sm11120026wmj.28.2020.04.26.05.04.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 05:04:50 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Subject: [PATCH 4/7] arm64: dts: allwinner: a64: Add HDMI audio
Date: Sun, 26 Apr 2020 14:04:39 +0200
Message-Id: <20200426120442.11560-5-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426120442.11560-1-peron.clem@gmail.com>
References: <20200426120442.11560-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_050452_600900_245F2447 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
 linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFyY3VzIENvb3BlciA8Y29kZWtpcHBlckBnbWFpbC5jb20+CgpBZGQgYSBzaW1wbGUt
c291bmRjYXJkIHRvIGxpbmsgYXVkaW8gYmV0d2VlbiBIRE1JIGFuZCBJMlMuCgpTaWduZWQtb2Zm
LWJ5OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+ClNpZ25lZC1vZmYt
Ynk6IE1hcmN1cyBDb29wZXIgPGNvZGVraXBwZXJAZ21haWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBD
bMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgotLS0KIGFyY2gvYXJtNjQvYm9v
dC9kdHMvYWxsd2lubmVyL3N1bjUwaS1hNjQuZHRzaSB8IDIxICsrKysrKysrKysrKysrKysrKysK
IDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2NC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0
cy9hbGx3aW5uZXIvc3VuNTBpLWE2NC5kdHNpCmluZGV4IGU1NmUxZTNkNGI3My4uMDhhYjZiNWU3
MmE1IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktYTY0
LmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2NC5kdHNp
CkBAIC0xMDIsNiArMTAyLDI1IEBACiAJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CiAJfTsKIAorCWhk
bWlfc291bmQ6IGhkbWktc291bmQgeworCQljb21wYXRpYmxlID0gInNpbXBsZS1hdWRpby1jYXJk
IjsKKwkJc2ltcGxlLWF1ZGlvLWNhcmQsZm9ybWF0ID0gImkycyI7CisJCXNpbXBsZS1hdWRpby1j
YXJkLG5hbWUgPSAiYWxsd2lubmVyLGhkbWkiOworCQlzaW1wbGUtYXVkaW8tY2FyZCxtY2xrLWZz
ID0gPDEyOD47CisJCXNpbXBsZS1hdWRpby1jYXJkLGZyYW1lLWludmVyc2lvbjsKKwkJc3RhdHVz
ID0gImRpc2FibGVkIjsKKworCQlzaW1wbGUtYXVkaW8tY2FyZCxjb2RlYyB7CisJCQlzb3VuZC1k
YWkgPSA8JmhkbWk+OworCQl9OworCisJCXNpbXBsZS1hdWRpby1jYXJkLGNwdSB7CisJCQlzb3Vu
ZC1kYWkgPSA8JmkyczI+OworCQkJZGFpLXRkbS1zbG90LW51bSA9IDwyPjsKKwkJCWRhaS10ZG0t
c2xvdC13aWR0aCA9IDwzMj47CisJCX07CisJfTsKKwogCW9zYzI0TTogb3NjMjRNX2NsayB7CiAJ
CSNjbG9jay1jZWxscyA9IDwwPjsKIAkJY29tcGF0aWJsZSA9ICJmaXhlZC1jbG9jayI7CkBAIC04
NzQsNiArODkzLDcgQEAKIAkJCXJlc2V0cyA9IDwmY2N1IFJTVF9CVVNfSTJTMj47CiAJCQlkbWEt
bmFtZXMgPSAidHgiOwogCQkJZG1hcyA9IDwmZG1hIDI3PjsKKwkJCWFsbHdpbm5lcixwbGF5YmFj
ay1jaGFubmVscyA9IDw4PjsKIAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CiAJCX07CiAKQEAgLTEx
NzEsNiArMTE5MSw3IEBACiAJCX07CiAKIAkJaGRtaTogaGRtaUAxZWUwMDAwIHsKKwkJCSNzb3Vu
ZC1kYWktY2VsbHMgPSA8MD47CiAJCQljb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41MGktYTY0
LWR3LWhkbWkiLAogCQkJCSAgICAgImFsbHdpbm5lcixzdW44aS1hODN0LWR3LWhkbWkiOwogCQkJ
cmVnID0gPDB4MDFlZTAwMDAgMHgxMDAwMD47Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
