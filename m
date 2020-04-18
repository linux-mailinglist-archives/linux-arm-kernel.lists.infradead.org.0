Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0ED1AF598
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 00:46:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E6Qy5Ar+E1tP01P/cdZrGnc27MBfx5P/+tfQgGYWjn4=; b=EuhQfub5esK2i1
	mcljPh9D1z94GRK7Cj9aMyQFTBB92gVqApT+oHUdUCuJWCKxIv8B8i/Qg5DKq2qqTBKYsaMG3HtQu
	LElWDU0mihvzX15YTzgr2k8+vypMujBUFzXW5Ps/F5kRMf78GIy4OkGR22wR5G/BphU/xJEkDo5ue
	Et8dDBzIjUKa1YoPfgMWIk8MMQofwqoq72ozc8Jg4mipeinha4Wj2ca8rQbI52a4YjmASUz/MZr8W
	lFOUSNZ0/NIcRIgOzJs166s7GaJ9XSYS4EMFHLdoLOd5OpXhqXGJeabsb2D7O+cpYUk5e4dFU7zEj
	vL0EhNnrwrf5JPY+BTEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPwE2-0002S8-6M; Sat, 18 Apr 2020 22:46:14 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPwCc-0007Tv-Jc
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 22:44:48 +0000
Received: by mail-wm1-x344.google.com with SMTP id 188so579775wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 Apr 2020 15:44:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=E49tLMvjC4hfPuv9NFlCZ/+rq6Cm4CSw7X/tRqeB8o0=;
 b=IReWMoPusWuexzfjrpNEwWTFg6+w2y224JkFF+2O8z1JlAk5QUv8leY9i1AAFjm6Z5
 3FBZ8cGuuTv519DK4o/m6UtfHr1wpoJO9jrziCQvNZDnNII9q7amYSgNkO7iRWdZDtzB
 Y54JtUfRSlMxZBmiUBA2OCA73S+pbT5olXMZ2fb+iOauB/Nvpa03Cv/gFLK8sF3naV8Q
 CYwOASv8I8cxAfFDvr8KSppbg1bwj7ftyN4k5/Js8Z0EhOSgKK3n4BjBimiRrZC9SST4
 oOfBaKOr2CY2R0HP5jP0LYF+H8tQkkCb/McDRr81HEsGPIpqWTtzZmkhahegEsmkM0jr
 dzzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=E49tLMvjC4hfPuv9NFlCZ/+rq6Cm4CSw7X/tRqeB8o0=;
 b=OyZlTYhqJI5ictKNnZgYBI7IMh1SSdv232GPiKY3e4NnhXPlegP2xrhKOF3v+FtTUV
 yMdvJ/cyE/+UbsITi1FzxJv9pzHBNYauR8uUTpPKGedy4wLEtvyAblH0o11bEK/LTtK0
 tMNK2C1quUudfvOxIVv8SE0/P7dbCvvAug3FTGEtbx5hax7LlOlgqvJ8vSpTYd3I9N4u
 POd21dqlzcU1luyTCKr2biDi8OtH1lOxa/CFjmj/B4huqswH/Xft24EMqSGFSr6NyOVT
 kRL2OhCsDyEb8Ek54ET/X+8keTFjfA8S5T9MSHIrpOmoDT1kJAjLuq609xBZk+1uySYa
 4zFA==
X-Gm-Message-State: AGi0Pub8gZY8xTODWoIxEtRbPEc+T3k0m96lkk6hbDG75spr75ldWBEo
 w++DMePp8v2ko1VFalP4364=
X-Google-Smtp-Source: APiQypJG8Mc9QRjH+NZdU2TQqusmS2sOKKTvEVPNxgvjA/eV9aVrZnPQM2X4vTJTR3RLiw5MmxkBjQ==
X-Received: by 2002:a7b:c858:: with SMTP id c24mr217755wml.51.1587249884868;
 Sat, 18 Apr 2020 15:44:44 -0700 (PDT)
Received: from localhost.localdomain (91-167-199-67.subs.proxad.net.
 [91.167.199.67])
 by smtp.gmail.com with ESMTPSA id t16sm13371559wmi.27.2020.04.18.15.44.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 15:44:44 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Subject: [PATCH v2 4/7] ASoC: sun4i-i2s: Set sign extend sample
Date: Sun, 19 Apr 2020 00:44:32 +0200
Message-Id: <20200418224435.23672-5-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418224435.23672-1-peron.clem@gmail.com>
References: <20200418224435.23672-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_154446_662346_8054DC33 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
 linux-kernel@vger.kernel.org, Marcus Cooper <codekipper@gmail.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFyY3VzIENvb3BlciA8Y29kZWtpcHBlckBnbWFpbC5jb20+CgpPbiB0aGUgbmV3ZXIg
U29DcyBzdWNoIGFzIHRoZSBIMyBhbmQgQTY0IHRoaXMgaXMgc2V0IGJ5IGRlZmF1bHQKdG8gdHJh
bnNmZXIgYSAwIGFmdGVyIGVhY2ggc2FtcGxlIGluIGVhY2ggc2xvdC4gSG93ZXZlciB0aGUgQTEw
CmFuZCBBMjAgU29DcyB0aGF0IHRoaXMgZHJpdmVyIHdhcyBkZXZlbG9wZWQgb24gaGFkIGEgZGVm
YXVsdApzZXR0aW5nIHdoZXJlIGl0IHBhZGRlZCB0aGUgYXVkaW8gZ2FpbiB3aXRoIHplcm9zLgoK
VGhpcyBpc24ndCBhIHByb2JsZW0gd2hpbHN0IHdlIGhhdmUgb25seSBzdXBwb3J0IGZvciAxNmJp
dCBhdWRpbwpidXQgd2l0aCBsYXJnZXIgc2FtcGxlIHJlc29sdXRpb24gcmF0ZXMgaW4gdGhlIHBp
cGVsaW5lIHRoZW4gU0VYVApiaXRzIHNob3VsZCBiZSBjbGVhcmVkIHNvIHRoYXQgdGhleSBhbHNv
IHBhZCBhdCB0aGUgTFNCLiBXaXRob3V0CnRoaXMgdGhlIGF1ZGlvIGdldHMgZGlzdG9ydGVkLgoK
U2lnbmVkLW9mZi1ieTogTWFyY3VzIENvb3BlciA8Y29kZWtpcHBlckBnbWFpbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogc291
bmQvc29jL3N1bnhpL3N1bjRpLWkycy5jIHwgMjIgKysrKysrKysrKysrKysrKysrKysrKwogMSBm
aWxlIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9zb3VuZC9zb2Mvc3Vu
eGkvc3VuNGktaTJzLmMgYi9zb3VuZC9zb2Mvc3VueGkvc3VuNGktaTJzLmMKaW5kZXggYTIzYzlm
MmEzZjhjLi42MThiYmM1MTU2ZjEgMTAwNjQ0Ci0tLSBhL3NvdW5kL3NvYy9zdW54aS9zdW40aS1p
MnMuYworKysgYi9zb3VuZC9zb2Mvc3VueGkvc3VuNGktaTJzLmMKQEAgLTQ4LDYgKzQ4LDkgQEAK
ICNkZWZpbmUgU1VONElfSTJTX0ZNVDBfRk1UX0kyUwkJCQkoMCA8PCAwKQogCiAjZGVmaW5lIFNV
TjRJX0kyU19GTVQxX1JFRwkJMHgwOAorI2RlZmluZSBTVU40SV9JMlNfRk1UMV9SRUdfU0VYVF9N
QVNLCQlCSVQoOCkKKyNkZWZpbmUgU1VONElfSTJTX0ZNVDFfUkVHX1NFWFQoc2V4dCkJCQkoKHNl
eHQpIDw8IDgpCisKICNkZWZpbmUgU1VONElfSTJTX0ZJRk9fVFhfUkVHCQkweDBjCiAjZGVmaW5l
IFNVTjRJX0kyU19GSUZPX1JYX1JFRwkJMHgxMAogCkBAIC0xMDUsNiArMTA4LDkgQEAKICNkZWZp
bmUgU1VOOElfSTJTX0ZNVDBfQkNMS19QT0xBUklUWV9JTlZFUlRFRAkJKDEgPDwgNykKICNkZWZp
bmUgU1VOOElfSTJTX0ZNVDBfQkNMS19QT0xBUklUWV9OT1JNQUwJCSgwIDw8IDcpCiAKKyNkZWZp
bmUgU1VOOElfSTJTX0ZNVDFfUkVHX1NFWFRfTUFTSwkJR0VOTUFTSyg1LDQpCisjZGVmaW5lIFNV
TjhJX0kyU19GTVQxX1JFR19TRVhUKHNleHQpCQkJKChzZXh0KSA8PCA0KQorCiAjZGVmaW5lIFNV
TjhJX0kyU19JTlRfU1RBX1JFRwkJMHgwYwogI2RlZmluZSBTVU44SV9JMlNfRklGT19UWF9SRUcJ
CTB4MjAKIApAQCAtNjYzLDYgKzY2OSwxMiBAQCBzdGF0aWMgaW50IHN1bjRpX2kyc19zZXRfc29j
X2ZtdChjb25zdCBzdHJ1Y3Qgc3VuNGlfaTJzICppMnMsCiAJfQogCXJlZ21hcF91cGRhdGVfYml0
cyhpMnMtPnJlZ21hcCwgU1VONElfSTJTX0NUUkxfUkVHLAogCQkJICAgU1VONElfSTJTX0NUUkxf
TU9ERV9NQVNLLCB2YWwpOworCisJLyogU2V0IHNpZ24gZXh0ZW5zaW9uIHRvIHBhZCBvdXQgTFNC
IHdpdGggMCAqLworCXJlZ21hcF91cGRhdGVfYml0cyhpMnMtPnJlZ21hcCwgU1VONElfSTJTX0ZN
VDFfUkVHLAorCQkJICAgU1VONElfSTJTX0ZNVDFfUkVHX1NFWFRfTUFTSywKKwkJCSAgIFNVTjRJ
X0kyU19GTVQxX1JFR19TRVhUKDApKTsKKwogCXJldHVybiAwOwogfQogCkBAIC03NjUsNiArNzc3
LDExIEBAIHN0YXRpYyBpbnQgc3VuOGlfaTJzX3NldF9zb2NfZm10KGNvbnN0IHN0cnVjdCBzdW40
aV9pMnMgKmkycywKIAkJCSAgIFNVTjhJX0kyU19DVFJMX0JDTEtfT1VUIHwgU1VOOElfSTJTX0NU
UkxfTFJDS19PVVQsCiAJCQkgICB2YWwpOwogCisJLyogU2V0IHNpZ24gZXh0ZW5zaW9uIHRvIHBh
ZCBvdXQgTFNCIHdpdGggMCAqLworCXJlZ21hcF91cGRhdGVfYml0cyhpMnMtPnJlZ21hcCwgU1VO
NElfSTJTX0ZNVDFfUkVHLAorCQkJICAgU1VOOElfSTJTX0ZNVDFfUkVHX1NFWFRfTUFTSywKKwkJ
CSAgIFNVTjhJX0kyU19GTVQxX1JFR19TRVhUKDApKTsKKwogCXJldHVybiAwOwogfQogCkBAIC04
NjcsNiArODg0LDExIEBAIHN0YXRpYyBpbnQgc3VuNTBpX2kyc19zZXRfc29jX2ZtdChjb25zdCBz
dHJ1Y3Qgc3VuNGlfaTJzICppMnMsCiAJCQkgICBTVU44SV9JMlNfQ1RSTF9CQ0xLX09VVCB8IFNV
TjhJX0kyU19DVFJMX0xSQ0tfT1VULAogCQkJICAgdmFsKTsKIAorCS8qIFNldCBzaWduIGV4dGVu
c2lvbiB0byBwYWQgb3V0IExTQiB3aXRoIDAgKi8KKwlyZWdtYXBfdXBkYXRlX2JpdHMoaTJzLT5y
ZWdtYXAsIFNVTjRJX0kyU19GTVQxX1JFRywKKwkJCSAgIFNVTjhJX0kyU19GTVQxX1JFR19TRVhU
X01BU0ssCisJCQkgICBTVU44SV9JMlNfRk1UMV9SRUdfU0VYVCgwKSk7CisKIAlyZXR1cm4gMDsK
IH0KIAotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
