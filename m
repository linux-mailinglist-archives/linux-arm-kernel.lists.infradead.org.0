Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A53419EA97
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 12:51:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mK0sX9RWMT+ze8c0bbnlcdvdCDGuoGJs4r1Q/rmHvCI=; b=X+cRspCDfqbgVT
	/ChwaWmF7EwZhwQg8Kw27TPjLvr2/R2WQN+M+5OCB/w6KDcxO1EUK68Et+doNDl0nWUiufeWw+os9
	/uPGzyJLHZ/wCs/mSBVRgDpUGWTWB3IHbH2xz2B1GMFkkWPuSBcEzzA69ePm/aUF0M6iLqBZEIbgO
	/HFMiyTZ8SxOKOarP9Mbm6iuAMNbtkbARreM4qnRVnkFTdZYW/xRZowPr8t1qv1rUc3zDLd74VBmW
	/U6rJqeXrDD3I0PeGvFzYWbDXyaVnq2NSGTCwIeTwVf976aFatfgghsMV9C1umY4vCMgw0JQMAUzi
	t36t12R6c3IevDG4IXWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL2rd-0000Bv-Rl; Sun, 05 Apr 2020 10:50:53 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL2qB-00052O-0E
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 10:49:24 +0000
Received: by mail-wr1-x443.google.com with SMTP id g3so11571117wrx.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 03:49:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5M1R3a7is4s7bwwepv3EX0pn0j+KLFdAxm++0b65K4A=;
 b=hY+kxZoLm7t+ykPwyspwg7QjBtiZa4V3FuUF5t2J7ozPKFA+cOue5u/FSgeh+PN7Eu
 s53xYIxQJ98tdRVYgV68bmdGX1LEZizkea+NuuUX5u0zPlm1DW/q6z5NCs+GuhAtQtCq
 y/pazICPthwnnwWS2Gb0AmtJqb/EtS6qe6XtnDzvyI56WVO85pR94RcgH1kX6VLU+ldt
 KQUYix/xLnvV7FfhFBIW6FboRTdRGZq0SuK1EYedwQYRJYta/lMtIzCMNbHUIrqriWee
 5ZYOXUaoNx0khebDu2e+pPICxqRS8VEF4YW8qqWCkWE9JCHYDYn89WuzVLiARMB794By
 oymA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5M1R3a7is4s7bwwepv3EX0pn0j+KLFdAxm++0b65K4A=;
 b=ZysKQIF13u9KklejOhzkrAmz/kJ3mMVIAxjOVUFbkLB2Zsk8VaP5v/ipf3BZqJFjti
 PDz0zHiRvT/j7SYLVIzT2I0cuN/BVlMzEGvY2MeWM5qBDrPVQVpQddWRxRIYyPH8T4b8
 mRTG1ecbf2KN7dPjwJaRXvvlbh0DusPjykJtaJV+C+Fk5s0i35DxpXu9Kx1nhsWvRG6d
 vxRLn1kP3Tw0GgBmh3MWY4RIvHu7Qmwzcau3BVin/fwcizPn3jDRW5ayziSH+Qtx6t0d
 dzPxoCm3/+STwcoJS3xAKlyDCwUyIZoBWm4aW00YhwtTDKL+uKwsavZjwFdEPSTGTftA
 Rrug==
X-Gm-Message-State: AGi0PuYhhCYE/mjCCGkhQKHLTju8up5He+Il4TkShUqWA7CVGEWEQrMl
 jqM8ADtqOF+Mv8L43BqngUd1lVvqbm4=
X-Google-Smtp-Source: APiQypI+or5JqckqQo6EKuF0G6ORDBX841o2j5tvMOu+lvNXt1r7nW6EgTMunoROxGaMkPw7Qo2usA==
X-Received: by 2002:adf:f54d:: with SMTP id j13mr6468645wrp.28.1586083761763; 
 Sun, 05 Apr 2020 03:49:21 -0700 (PDT)
Received: from localhost.localdomain (91-167-199-67.subs.proxad.net.
 [91.167.199.67])
 by smtp.gmail.com with ESMTPSA id u13sm21606411wru.88.2020.04.05.03.49.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2020 03:49:20 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 5/7] arm64: dts: allwinner: h6: Add GPU Operating Performance
 Points table
Date: Sun,  5 Apr 2020 12:49:11 +0200
Message-Id: <20200405104913.22806-6-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200405104913.22806-1-peron.clem@gmail.com>
References: <20200405104913.22806-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_034923_061827_6998FA3C 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGFuIE9wZXJhdGluZyBQZXJmb3JtYW5jZSBQb2ludHMgdGFibGUgZm9yIHRoZSBHUFUgdG8K
ZW5hYmxlIER5bmFtaWMgVm9sdGFnZSAmIEZyZXF1ZW5jeSBTY2FsaW5nIG9uIHRoZSBINi4KClNp
Z25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQog
Li4uL2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtZ3B1LW9wcC5kdHNpIHwgNzQgKysrKysr
KysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDc0IGluc2VydGlvbnMoKykKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtZ3B1LW9w
cC5kdHNpCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBp
LWg2LWdwdS1vcHAuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1o
Ni1ncHUtb3BwLmR0c2kKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi40
YTE4MTQ4NDRmZTAKLS0tIC9kZXYvbnVsbAorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdp
bm5lci9zdW41MGktaDYtZ3B1LW9wcC5kdHNpCkBAIC0wLDAgKzEsNzQgQEAKKy8vIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQorLy8gQ29weXJpZ2h0IChDKSAyMDIw
IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+CisKKy8geworCWdwdV9vcHBf
dGFibGU6IG9wcF90YWJsZTEgeworCQljb21wYXRpYmxlID0gIm9wZXJhdGluZy1wb2ludHMtdjIi
OworCisJCW9wcEA3NTYwMDAwMDAgeworCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDw3NTYwMDAwMDA+
OworCQkJb3BwLW1pY3Jvdm9sdCA9IDwxMDQwMDAwPjsKKwkJfTsKKwkJb3BwQDYyNDAwMDAwMCB7
CisJCQlvcHAtaHogPSAvYml0cy8gNjQgPDYyNDAwMDAwMD47CisJCQlvcHAtbWljcm92b2x0ID0g
PDk1MDAwMD47CisJCX07CisJCW9wcEA1NzYwMDAwMDAgeworCQkJb3BwLWh6ID0gL2JpdHMvIDY0
IDw1NzYwMDAwMDA+OworCQkJb3BwLW1pY3Jvdm9sdCA9IDw5MzAwMDA+OworCQl9OworCQlvcHBA
NTQwMDAwMDAwIHsKKwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8NTQwMDAwMDAwPjsKKwkJCW9wcC1t
aWNyb3ZvbHQgPSA8OTEwMDAwPjsKKwkJfTsKKwkJb3BwQDUwNDAwMDAwMCB7CisJCQlvcHAtaHog
PSAvYml0cy8gNjQgPDUwNDAwMDAwMD47CisJCQlvcHAtbWljcm92b2x0ID0gPDg5MDAwMD47CisJ
CX07CisJCW9wcEA0NTYwMDAwMDAgeworCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDw0NTYwMDAwMDA+
OworCQkJb3BwLW1pY3Jvdm9sdCA9IDw4NzAwMDA+OworCQl9OworCQlvcHBANDMyMDAwMDAwIHsK
KwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8NDMyMDAwMDAwPjsKKwkJCW9wcC1taWNyb3ZvbHQgPSA8
ODYwMDAwPjsKKwkJfTsKKwkJb3BwQDQyMDAwMDAwMCB7CisJCQlvcHAtaHogPSAvYml0cy8gNjQg
PDQyMDAwMDAwMD47CisJCQlvcHAtbWljcm92b2x0ID0gPDg1MDAwMD47CisJCX07CisJCW9wcEA0
MDgwMDAwMDAgeworCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDw0MDgwMDAwMDA+OworCQkJb3BwLW1p
Y3Jvdm9sdCA9IDw4NDAwMDA+OworCQl9OworCQlvcHBAMzg0MDAwMDAwIHsKKwkJCW9wcC1oeiA9
IC9iaXRzLyA2NCA8Mzg0MDAwMDAwPjsKKwkJCW9wcC1taWNyb3ZvbHQgPSA8ODMwMDAwPjsKKwkJ
fTsKKwkJb3BwQDM2MDAwMDAwMCB7CisJCQlvcHAtaHogPSAvYml0cy8gNjQgPDM2MDAwMDAwMD47
CisJCQlvcHAtbWljcm92b2x0ID0gPDgyMDAwMD47CisJCX07CisJCW9wcEAzMzYwMDAwMDAgewor
CQkJb3BwLWh6ID0gL2JpdHMvIDY0IDwzMzYwMDAwMDA+OworCQkJb3BwLW1pY3Jvdm9sdCA9IDw4
MTAwMDA+OworCQl9OworCQlvcHBAMzEyMDAwMDAwIHsKKwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8
MzEyMDAwMDAwPjsKKwkJCW9wcC1taWNyb3ZvbHQgPSA8ODEwMDAwPjsKKwkJfTsKKwkJb3BwQDI2
NDAwMDAwMCB7CisJCQlvcHAtaHogPSAvYml0cy8gNjQgPDI2NDAwMDAwMD47CisJCQlvcHAtbWlj
cm92b2x0ID0gPDgxMDAwMD47CisJCX07CisJCW9wcEAyMTYwMDAwMDAgeworCQkJb3BwLWh6ID0g
L2JpdHMvIDY0IDwyMTYwMDAwMDA+OworCQkJb3BwLW1pY3Jvdm9sdCA9IDw4MTAwMDA+OworCQl9
OworCX07Cit9OworCismZ3B1IHsKKwlvcGVyYXRpbmctcG9pbnRzLXYyID0gPCZncHVfb3BwX3Rh
YmxlPjsKKwkjY29vbGluZy1jZWxscyA9IDwyPjsKK307Ci0tIAoyLjIwLjEKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
