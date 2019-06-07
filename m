Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E66A83999D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 01:13:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tFgpkoG4CMxBw6QqknElC7CC8N9HuNp6naY6ZdYzMQs=; b=u+AjLWD2o3fS7k
	qpqDApI5ewzglTVBDRUeCfIX66NS84MgJxjgGBvpkTQitZRThB/pohFpMdFNvYFUNveVaUm3D7N1e
	CvDD0stas+qqwgCgfS21C2FkP6bSGY8yJrh+SQKkevGo0rKQwoHD9MfUFRHtQl/p9zRfE2woZVUDM
	IuUgG0MrTCQHNQh+ox1n8t50dEaqfyf/k1nH7iHbj5fdDuOM+qU2QMtVc/Us+VZhDZQltDLqGX8FM
	Ck0POdKupnD3oDOHLmIQxJtbCbNrHo4gDTqZquF2Oq0oRsCi3Ic2AyRZ6OS+ePKVZoxmEj/ejx+IY
	t1GPSulQ2/Q8vhYykERA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZO2d-0002LT-UZ; Fri, 07 Jun 2019 23:12:59 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZO0y-0000zA-SF
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 23:11:18 +0000
Received: by mail-wr1-x442.google.com with SMTP id p11so3630049wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 16:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JnmvhZZD8Mx24yTeSpnfmQh3x3T3CVtR6CE0dBfbLB8=;
 b=osOOwQ7kOJIxH7q1sP4SW46/2REatRj3dNel59nhnfmBYPb1CshTkAlqHnkQ/SlTha
 3/jxPR3F1XDxNMResp+TI2Cw2Uz9+2hVrJjhM5I3ccY21BMxWVIH09kfNmOHIOJmG8Z1
 ezIRLYjPhHsvkgm2+Of8ouKxGgY0ijFLk5uV3QewuxYLFJJRVimG9hcU6fJIqKCvxK73
 /4p0wbCf9XBZvz/9a5z4GINxx1s4mJvWQCUYpjwJc1OwuioSjrz/BSzJo/JnakMaC0ij
 TuIooNATlmyuU023PqcumCx+ct6OltX06coqN7ikDiPLyFqqldSMWz/UP080zco7VUxd
 bu7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JnmvhZZD8Mx24yTeSpnfmQh3x3T3CVtR6CE0dBfbLB8=;
 b=j+a4f3m3FFDb2aEBpVdeRciVkI2rUNsvHcfL66gdYRnuh3kmK+SYDyp83t8/QI4vfn
 QRxxGDEVwkd5caF7zaVPL1Fkal4n5ZJFiYvQsm9i6NXSnwGQzrTYzUWYn4NIzaFt2oWk
 na5xrBfT5LibLR1ug/m3CkAnuwU06372PAWNHvKlMEeMBMoXo+H0JsT3+JRX7owQ9Ll4
 l/TFg51+c8yxbcYW9AMHhuMK7QLKx49Ys3zzeo2ye+SXUXJoHxU6O9YYO3BV5phIDezi
 rg+Bs2q4M9yJEK4CRD//3+PiHkyfpkJVuGPg8VJ/BKLujWjLpe/gZEpl4d8GMwTrKo7s
 RRTw==
X-Gm-Message-State: APjAAAUZAPSv8oBQ/5heDXjhXhcNiGRVMswoUzzngmZE2o9QOqTWU18H
 HSDswzqSEsqqY+5/e3NuxS8=
X-Google-Smtp-Source: APXvYqxzvMi2E7q37ryIRkiVEGGK3LUQy/2+KYp1m6auhNzADjBso1u1JR0r+SFNXqWeSF4b4WrWYQ==
X-Received: by 2002:adf:fe4e:: with SMTP id m14mr12060521wrs.21.1559949075256; 
 Fri, 07 Jun 2019 16:11:15 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id h84sm4108559wmf.43.2019.06.07.16.11.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 16:11:14 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v5 06/13] ARM: dts: sunxi: Prefer A31 bindings for IR
Date: Sat,  8 Jun 2019 01:10:53 +0200
Message-Id: <20190607231100.5894-7-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190607231100.5894-1-peron.clem@gmail.com>
References: <20190607231100.5894-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_161116_944843_BD5C39BF 
X-CRM114-Status: GOOD (  14.07  )
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
Cc: devicetree@vger.kernel.org, Sean Young <sean@mess.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2luY2UgQTMxLCBtZW1vcnkgbWFwcGluZyBvZiB0aGUgSVIgZHJpdmVyIGhhcyBjaGFuZ2VkLgoK
UHJlZmVyIHRoZSBBMzEgYmluZGluZ3MgaW5zdGVhZCBvZiBBMTMuCgpTaWduZWQtb2ZmLWJ5OiBD
bMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgpBY2tlZC1ieTogU2VhbiBZb3Vu
ZyA8c2VhbkBtZXNzLm9yZz4KLS0tCiBhcmNoL2FybS9ib290L2R0cy9zdW54aS1oMy1oNS5kdHNp
IHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvc3VueGktaDMtaDUuZHRzaSBiL2FyY2gvYXJt
L2Jvb3QvZHRzL3N1bnhpLWgzLWg1LmR0c2kKaW5kZXggODQ5NzdkNGViOTdhLi5mMGY1YmEzNDlj
MWIgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bnhpLWgzLWg1LmR0c2kKKysrIGIv
YXJjaC9hcm0vYm9vdC9kdHMvc3VueGktaDMtaDUuZHRzaQpAQCAtODIyLDcgKzgyMiw3IEBACiAJ
CX07CiAKIAkJaXI6IGlyQDFmMDIwMDAgewotCQkJY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3Vu
NWktYTEzLWlyIjsKKwkJCWNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjZpLWEzMS1pciI7CiAJ
CQljbG9ja3MgPSA8JnJfY2N1IENMS19BUEIwX0lSPiwgPCZyX2NjdSBDTEtfSVI+OwogCQkJY2xv
Y2stbmFtZXMgPSAiYXBiIiwgImlyIjsKIAkJCXJlc2V0cyA9IDwmcl9jY3UgUlNUX0FQQjBfSVI+
OwotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
