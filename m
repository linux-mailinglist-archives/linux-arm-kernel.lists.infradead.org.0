Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1250B2A620
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 20:10:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DMQWnITNJJRJCQVkIaMyVQ3Kx7rJpSay2MV4mmKnwNk=; b=FEqfcDXvd8fcNF
	8qSnbZI6D4PzEcSEw+bsGfX3kWCnQ6xxBtlTXulBKYVYNEdl6ggeIihjYcxdgDnsB8i2eZ3H354oW
	9E+MzyW2UEG0+Rd8T6UUW3V1XCjGeuLjfvIi21Bhv9gNzBHfILYoxXReZjjOmePyhi1b7swvwoSy5
	R3Y5bi5sIH1yl9oy7UwgKuBRyHGYIc1tOp1dYMFDkD2TCNv+B038AZ6t+ahGTzpQqsIiY6ATWskab
	ni5up0/+zy9yLe6arZZxYbNtKr9La+ORFpJHXPKNbiAVDQYc7CKnpfFGaIUI46HGQa8NAiYNsXkWn
	cZi1AUCNkkvdafseQQjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUb8A-0000uN-AT; Sat, 25 May 2019 18:10:54 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUb6w-0006ns-82
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 18:09:49 +0000
Received: by mail-wm1-x342.google.com with SMTP id y3so12351201wmm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 11:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MeV22BL5hfS4X5C1QCisA6E+loww6qQHxa27Rpq4STA=;
 b=E/UQ5JIHesOPtiu4FL0BhljleB+aD0rTEDWuaxZoJa5isG8BJI9F8PmZeW5/F7rB4S
 LP0d6JhrmUFVZVIomPF1TpgdDrMbKUFkzYTGlyaholqHCILiy+LRmCS2UYJdHr3dtqVw
 1bVR6OY82EwKrmlF5JXlDWtUsuQSJ3SDzoqBlo5J6XsMB3PHrFmBCyIiDftiThU0k9wq
 VWqsQto8YaVMHEzUkWOyqiHbUDyiGsov9ezi5+Sqkzt2RAZ5nztNIN9tLOXWL8EfZAMF
 a37aZSpFUWfk1tBTZS1f8zfPV5RnFvX9x7jvrGC9Fu+Bg0l44rKJ3colnn1YeYPw/Geg
 Ivqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MeV22BL5hfS4X5C1QCisA6E+loww6qQHxa27Rpq4STA=;
 b=AxQx88LtMOzN4YK7Wm6SE36LKd77ZeQe3XLh+i53TzmyH/Cq6GrskY2HUAEPFGAOfq
 0bf+1S0aCrQlt46t6R1TDx+24VeRKh4GgbLsNpMECGl7xineNjTtuDih5H6H6FGgZM+D
 nUHoe5czIlboXE9TOF79uVi9OzG7Dz8VgOlW8KgUgRm56uE8/TwmGB7/MYJrXh773wWV
 uhJr5DUPAsFyYTEQD+4v557LOFSxDbtxKVaskrIrtnPb6Lzvsbzl/kTbJf8ff+TQ3zJm
 AM33Ylt9B0GTWCN9A0tpEMTLzZtbS0fqzroFIflh6GS5Gu52U+cUB3ByxhNYztwjUZoi
 VbLg==
X-Gm-Message-State: APjAAAWhrWbisapo1DnKrrsmBQwI5kU7f6B+AJoZ4jPe2loXVUedEUer
 ZWpK3UQRfwvv6yK1rskrt6M=
X-Google-Smtp-Source: APXvYqyuB8ZzyyXSuy9puB2CojEz488f/zhX5rZLHL4vMzWRCG/4KEMvBoEnjFLLdJnh72W8+Q+i2Q==
X-Received: by 2002:a1c:9d0f:: with SMTP id g15mr4162775wme.97.1558807775821; 
 Sat, 25 May 2019 11:09:35 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id s127sm5656914wmf.48.2019.05.25.11.09.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 11:09:35 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 06/10] arm64: dts: allwinner: a64: Enable IR on Orange Pi Win
Date: Sat, 25 May 2019 20:09:19 +0200
Message-Id: <20190525180923.6105-7-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190525180923.6105-1-peron.clem@gmail.com>
References: <20190525180923.6105-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_110938_291564_44F616AD 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
