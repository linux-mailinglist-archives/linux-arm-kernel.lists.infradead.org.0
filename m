Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA18A2AC73
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 00:26:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DMQWnITNJJRJCQVkIaMyVQ3Kx7rJpSay2MV4mmKnwNk=; b=tEC87yevjBz3+z
	dLEHDD47XEFHPuRe+MIEI9kpC+IKSUl355cM9A/M3WMwcZsAGHrIeiJjjb+5VO8SfLmDLluPOo6O3
	Fa3KwwzExBhx65ZXKEEGfzj3/MAcROGiHu8AwB17RUaj6nBfjuDupDX00eFW/0ZzrQmfi1pgPUxce
	PdyW3t2wRNamIcrRxKecdKnaMrwQjyyy+rSSsWqeFrMabhHfcyUhp+LF/L4F2nEhmEu55qE8c7e5d
	x+W6cDCDs+w5SUyIaN+f5tiJJ+FPEfCaR5obrXCAIGPOYhzBVt7AHkj5LP+DUS88CX111U14K8VHM
	cu4akLupIEM5GMtuuPEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV1bS-0004tn-JD; Sun, 26 May 2019 22:26:54 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV1aR-0003hp-SZ
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 22:25:56 +0000
Received: by mail-wr1-x442.google.com with SMTP id w13so6617787wru.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 15:25:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MeV22BL5hfS4X5C1QCisA6E+loww6qQHxa27Rpq4STA=;
 b=cYvjitwt6Zssvyq0y6oSHGLuaB5wjzWR35lt6S5xd4v662DyRpgwsaejZD4ispPT2g
 6KdrANRs/Yij48RioY+QNv2g+oQ6DRO4FvLSLb97UcWN1BJGgpxxh2oDbuGi/PM2Urd/
 sMZnvjdgb2mHIa0ZPsEesxkjZGjdajj4/g8bPfNCPDBIeRsQH/ZaaDc0t5i1juAmnXYo
 CQDkTKN/ANGGjeh5IAFWb/NQZDkcpmWrICvALYpcWWXUy0u+gRWsev0mE0LcdYlLoSQk
 xWRzb/MVmIx5YPRbgzVLWr8SQ7E05tg6OGklxz7oYbcLzp+0yydxCayJfaG5dOpZZWmp
 cvJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MeV22BL5hfS4X5C1QCisA6E+loww6qQHxa27Rpq4STA=;
 b=GFNnP+o55MebvZ11i2x8nh0gbs7CAmaDgN82xDZWiOMyF7OWrYoMdWKKLRRBh8LrHm
 QpTRV/yeBJ9OoVYFAh967DJtWnBXogXpmpoRQE3uN6E6E1DpRX32T59BfKCol4pPe4sQ
 FGJkkSsf255u8xnJ/WUsKznjELQHCHakChGijXnfeODwIXH/mu96xlTRaV81LPZeqck2
 lI6NhC6e9pdfjXJvx1yC5wQuY3oktXi1rMpUZUh9OV/Lh72weB5pbFrBdaoA+EHmpZT9
 7H0aiTSJihFw0edHKNOuXYGohxNKnnPMMrohe+8btgfQUep0FvUq9JEn1AFXnEb3nUGg
 YVvw==
X-Gm-Message-State: APjAAAVebi7ysbMGMuefbdKK4iczBDfAtbuUSQo64sk+1sredkxoS3Bu
 zXIqfJFZp4SvO+svdB09TF9lCHbXnZqaqA==
X-Google-Smtp-Source: APXvYqyTduyrC6vwtzNZtpslsRevUwtmp5f2Hx9nBBNt3DvpbqG+lo3ER9TfZm0nW/X0vDWROl0kow==
X-Received: by 2002:adf:bc94:: with SMTP id g20mr19235766wrh.206.1558909550377; 
 Sun, 26 May 2019 15:25:50 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id o20sm10368398wro.2.2019.05.26.15.25.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 May 2019 15:25:49 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2 06/10] arm64: dts: allwinner: a64: Enable IR on Orange Pi
 Win
Date: Mon, 27 May 2019 00:25:32 +0200
Message-Id: <20190526222536.10917-7-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190526222536.10917-1-peron.clem@gmail.com>
References: <20190526222536.10917-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_152552_490527_5F58A615 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKT3JhbmdlUGkg
V2luIGJvYXJkIGNvbnRhaW5zIElSIHJlY2VpdmVyLiBFbmFibGUgaXQuCgpTaWduZWQtb2ZmLWJ5
OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+ClNpZ25lZC1vZmYtYnk6
IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogYXJjaC9hcm02NC9i
b290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2NC1vcmFuZ2VwaS13aW4uZHRzIHwgNCArKysrCiAx
IGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2NC1vcmFuZ2VwaS13aW4uZHRzIGIvYXJjaC9hcm02
NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2NC1vcmFuZ2VwaS13aW4uZHRzCmluZGV4IDUx
MGY2NjEyMjlkYy4uZTA1MTkxYjcxYWRmIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L2FsbHdpbm5lci9zdW41MGktYTY0LW9yYW5nZXBpLXdpbi5kdHMKKysrIGIvYXJjaC9hcm02NC9i
b290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2NC1vcmFuZ2VwaS13aW4uZHRzCkBAIC0xODAsNiAr
MTgwLDEwIEBACiAJc3RhdHVzID0gIm9rYXkiOwogfTsKIAorJnJfaXIgeworCXN0YXR1cyA9ICJv
a2F5IjsKK307CisKICZyX3JzYiB7CiAJc3RhdHVzID0gIm9rYXkiOwogCi0tIAoyLjIwLjEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
