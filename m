Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40ACE399A1
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 01:14:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3K4yLnsGIwIPrpCbtmNwQbZFE2NJeKsldnC3TqWFDrk=; b=C8aAyQOLB3RqCE
	X1htbH5yamscrXbaqxIVtjNVBM6BTGOG8HkB9Kfv/mJf35vRb7oU6Os3Y6nxcTuhpwvMTfAQuRAon
	r8cp7yyHWThFU6wP+6odpGr9VXgyGd7F52VHvj6UsZBw00MoxmRELzUVtiMEZ0G++VLNBTpJLkL9w
	/Zts0NiUspJNwSq6cqMm/dMyV2CvPp8qxfFKTUZ/1jr/A9VAjqI5SjnbEqyDTnvx3A2OA3vrbLzbb
	L5AN63rImfkrv6Si1yC7xMXXvw43KA40zjBIcvARt6TlggZeJiVIF0hGukwlczit1SSPFSpZ7HPZa
	sWBcvkNHickN6EueZl/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZO3j-0003Ml-D8; Fri, 07 Jun 2019 23:14:07 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZO11-00012P-NS
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 23:11:21 +0000
Received: by mail-wr1-x443.google.com with SMTP id f9so3613938wre.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 16:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=erM6d71aChyl+Iyy/eqYauRUQ2nKHoueD7cmlIRiQZ8=;
 b=M8xAidn+V0cDdtxVKZcU0GsUhS0BGe2it4zhUBpyeNxNEcOr5R8PfJHWcgzm971XgL
 PvhZ3yFhEiAAcHa9oTIOzu8Vc1N9kJTQV6TLaaLIXrRNsA6ZPQFDm9cR+y0wrwkWuN0b
 uaHQCU7c/L0hmB2PT6DgmtblerDjdmxAFq/VKgc5xnyMTiygGLu5ZwfnMkQN3UuEUllq
 Hmd8hBHmfLYjfIIhzdKSVzWL2sMqpCMW2HtaKVnBO9VoccEo05Xy4FuAwmc+RBopfb/w
 SnCy8MzVtBRv8+jr5dU01qgL8aaKlL1+Dg1aYEIoou4Z90mTGMTljKR2RSkbmA2MdBn3
 Vp2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=erM6d71aChyl+Iyy/eqYauRUQ2nKHoueD7cmlIRiQZ8=;
 b=nVmLBijB/AfIxXC8lij9QwaQRUdyTsiyJdN66pQBK3o+xuO8brCnwHDLP0r5iIvr5A
 MYPqZLUAjPYQQkOXZj4rvR4Ol6ys1ndfJp3me5/nxQqn8rkBJI/Y+pAghzE5z3JR3Hb/
 P7ioJHyoltHKzZZz5AJMjYMYKF/se5VTG1Q+JwVV7Nc6ARGDs1qEzni+9h4nRpd0d3a1
 /RlF9/INQEv9FJVJRcmj9XHcNQqPn9Xp/yzRhHn9XpxM00ZP4a3/yqbZpWq8RfYkMzEs
 z5fuqchHqPRJEtVXAjJOnb7JLKUTM6irTJ00G4k3TlrCAJmxYgu/bPvr3kcfv4iti5u5
 ihRg==
X-Gm-Message-State: APjAAAX4ojWogPoWq0VBPa572P42Ci0Lhst6Y2W6dvoR1jcUo1As+8Ql
 HjHRrMnDUfuGwc8riZO3ZWc=
X-Google-Smtp-Source: APXvYqzhAaNc1KaAVPMCpP/YKiDq4gEpDCjaNfnx+VL50LxQ1xgj3PKgBe8srCe5bCOuxpxnMq3tKg==
X-Received: by 2002:a5d:4707:: with SMTP id y7mr4235805wrq.227.1559949077999; 
 Fri, 07 Jun 2019 16:11:17 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id h84sm4108559wmf.43.2019.06.07.16.11.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 16:11:17 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v5 09/13] arm64: dts: allwinner: a64: Enable IR on Orange Pi
 Win
Date: Sat,  8 Jun 2019 01:10:56 +0200
Message-Id: <20190607231100.5894-10-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190607231100.5894-1-peron.clem@gmail.com>
References: <20190607231100.5894-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_161119_797583_FC98E065 
X-CRM114-Status: GOOD (  11.06  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Sean Young <sean@mess.org>, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKT3JhbmdlUGkg
V2luIGJvYXJkIGNvbnRhaW5zIElSIHJlY2VpdmVyLiBFbmFibGUgaXQuCgpTaWduZWQtb2ZmLWJ5
OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+ClNpZ25lZC1vZmYtYnk6
IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+CkFja2VkLWJ5OiBTZWFuIFlv
dW5nIDxzZWFuQG1lc3Mub3JnPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1
bjUwaS1hNjQtb3JhbmdlcGktd2luLmR0cyB8IDQgKysrKwogMSBmaWxlIGNoYW5nZWQsIDQgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1
bjUwaS1hNjQtb3JhbmdlcGktd2luLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVy
L3N1bjUwaS1hNjQtb3JhbmdlcGktd2luLmR0cwppbmRleCA1MTBmNjYxMjI5ZGMuLmUwNTE5MWI3
MWFkZiAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2
NC1vcmFuZ2VwaS13aW4uZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1
bjUwaS1hNjQtb3JhbmdlcGktd2luLmR0cwpAQCAtMTgwLDYgKzE4MCwxMCBAQAogCXN0YXR1cyA9
ICJva2F5IjsKIH07CiAKKyZyX2lyIHsKKwlzdGF0dXMgPSAib2theSI7Cit9OworCiAmcl9yc2Ig
ewogCXN0YXR1cyA9ICJva2F5IjsKIAotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
