Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A65A019ED0A
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 19:38:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RtVaS1CRRCt4FT8l+E/ZQgS+COHbHmha0974DPmEcHM=; b=FSABbvN6nnEVR3
	WAhNaIIAq19TRFafb3CpNhQ8Agv0/djg6YpR2MAKUYJ0s5hJd1SyaAQCDKzZKbmQMTU2dPIiefJsN
	A3ge4oG4nTkv7a3ZorPepHWpfqgQigsloUErUAhI8ArLW99D3p46/rod/vnlqrO0ew6fDoT+BO3M+
	Y5/Qj9fH1AVJ0pW6PASXw1u5AowR5CX7gXRzJqqlm/gSy+Me0A5hU5rSP3aFAq9l+Lyop3ApVRn7p
	oG1X7etja4C2Qvv+C00Epu7UOrFhgjOZCKIXfFpn6RB4yfKrC1kTFpsu7SEf0oxVfjSCiPvMFYC4/
	nzynwb+EwXxwT4Oo3Ikg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL9Dj-0003X4-BJ; Sun, 05 Apr 2020 17:38:07 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL9Bu-0001cm-Dv
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 17:36:16 +0000
Received: by mail-wr1-x444.google.com with SMTP id j17so14539313wru.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 10:36:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rpDrOVW4CGjRqmVW4DS9/TWcV76xtMAb2kaqMzg2fdg=;
 b=dPds2W0H0HucETftAHC4o51mgBuA3TO0JK1LWeBiPX3R3wHm2V65XnzsC5Q3ArTFPY
 qL87pOuFyVXJ8BSDU5jWFAalVq2uDYgqLdb7ssWe38bn66XzP47XLcym7UPivgj34OiL
 L0Gh1+LtJ0fiWZ8qHsjYmI1X9IL1kOPsFlDOIoSDpM/oZD2wecJjzvRX/KIglJVWJI3a
 AGflKC0YmupGbN2l+QH2tWqxH4YXpyy5ceJDaMbXuDy66FAhOEa5O0GwmrpQXsMMz3pM
 Kyy57Nv7lWHxLKmRSj6TTcOXulAmdGx1XXyX4OgKtwcYNoi0qFoR51Ff/SY5NH+zU0dh
 MTKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rpDrOVW4CGjRqmVW4DS9/TWcV76xtMAb2kaqMzg2fdg=;
 b=t3+jZzbvkFJWAjq0FWaQrMFHUFcxkCrx54uj3pZzPIB3EBBMCltInrHxdNHEWbDgZJ
 tBulWR5lwph4Si+mX8Tu/8TjEAH0fBdVssdtCmeCQSS3EaDVpxon9/TJkz1QndFZmWbC
 Hw+1of9dx+KnEumFwKdSL0ywMUoVUR4MA1yykto8u9iE/XbPKyVGvZZLy29McbjSUZI6
 tHTQUS2LSRnrfO3nM+dDhV3QKxtAyFd1UQVvBFJAtfHzv2cOkn7c+cd5JxgfTjYBqkS/
 WW6TXL3uvZG8gJ5oFhlJlzl3B6vGPDTDZTinFEHFFPm+M0AeL935Tut4Tqr2SVRz01bi
 t4xQ==
X-Gm-Message-State: AGi0Pubf6GtedxgCm6+Oj5J35DOE0CWHGX0WVUmqpY5/LjMeEbtqrN4m
 7Nt/ozmE8OGnyHnKgxXFS74=
X-Google-Smtp-Source: APiQypIw5vGQ+o0obmPs3lpXvuOamBClwY4w5DsXT20ZYnY09W6mHrbpJWtszqL/S1QlpoqeujVaoQ==
X-Received: by 2002:a5d:4488:: with SMTP id j8mr2584014wrq.170.1586108172846; 
 Sun, 05 Apr 2020 10:36:12 -0700 (PDT)
Received: from localhost.localdomain (91-167-199-67.subs.proxad.net.
 [91.167.199.67])
 by smtp.gmail.com with ESMTPSA id s13sm6031669wrw.20.2020.04.05.10.36.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2020 10:36:12 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 7/7] arm64: dts: allwinner: h6: Enable CPU and GPU opp
 tables for Orange Pi boards
Date: Sun,  5 Apr 2020 19:36:01 +0200
Message-Id: <20200405173601.24331-8-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200405173601.24331-1-peron.clem@gmail.com>
References: <20200405173601.24331-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_103614_475157_EE3FC88F 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

RW5hYmxlIENQVSBhbmQgR1BVIG9wcCB0YWJsZXMgZm9yIE9yYW5nZSBQaSBib2FyZHMuCgpUaGlz
IG5lZWRzIHRvIGNoYW5nZSB0aGUgQ1BVIHJlZ3VsYXRvciBtYXggdm9sdGFnZSB0byBmaXQKdGhl
IE9QUCB0YWJsZS4KCkFsc28gYWRkIHRoZSByYW1wLWRlbGF5IGluZm9ybWF0aW9uIHRvIGF2b2lk
IGFueSBvdXQgb2Ygc3BlYwpydW5uaW5nIGFzIHRoZSByZWd1bGF0b3IgaXMgc2xvd2VyIGF0IHJl
YWNoaW5nIHRoZSB2b2x0YWdlCnJlcXVlc3RlZCBjb21wYXJlIHRvIHRoZSBQTEwgcmVhY2hpbmcg
dGhlIGZyZXF1ZW5jeS4KClRoZXJlIGlzIG5vIHN1Y2ggaW5mb3JtYXRpb24gZm9yIEFYUDgwNSBi
dXQgc2ltaWxhciBQTUlDIChBWFA4MTMpCmhhcyBhIERWTSAoRHluYW1pYyBWb2x0YWdlIHNjYWxp
bmcgTWFuYWdlbWVudCkgcmFtcCByYXRlIGVxdWFsCnRvIDI1MDB1Vi91cy4KClNpZ25lZC1vZmYt
Ynk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogYXJjaC9hcm02
NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LW9yYW5nZXBpLmR0c2kgfCAxMCArKysrKysr
KystCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LW9yYW5nZXBp
LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtb3JhbmdlcGku
ZHRzaQppbmRleCAzN2Y0YzU3NTk3ZDQuLmYzYmE1MDBjZTRjNiAxMDA2NDQKLS0tIGEvYXJjaC9h
cm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LW9yYW5nZXBpLmR0c2kKKysrIGIvYXJj
aC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LW9yYW5nZXBpLmR0c2kKQEAgLTUs
NiArNSw4IEBACiAvZHRzLXYxLzsKIAogI2luY2x1ZGUgInN1bjUwaS1oNi5kdHNpIgorI2luY2x1
ZGUgInN1bjUwaS1oNi1jcHUtb3BwLmR0c2kiCisjaW5jbHVkZSAic3VuNTBpLWg2LWdwdS1vcHAu
ZHRzaSIKIAogI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2dwaW8vZ3Bpby5oPgogCkBAIC00NSw2ICs0
NywxMCBAQAogCX07CiB9OwogCismY3B1MCB7CisJY3B1LXN1cHBseSA9IDwmcmVnX2RjZGNhPjsK
K307CisKICZlaGNpMCB7CiAJc3RhdHVzID0gIm9rYXkiOwogfTsKQEAgLTE2MSw3ICsxNjcsOCBA
QAogCQkJcmVnX2RjZGNhOiBkY2RjYSB7CiAJCQkJcmVndWxhdG9yLWFsd2F5cy1vbjsKIAkJCQly
ZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw4MTAwMDA+OwotCQkJCXJlZ3VsYXRvci1tYXgtbWlj
cm92b2x0ID0gPDEwODAwMDA+OworCQkJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDExNjAw
MDA+OworCQkJCXJlZ3VsYXRvci1yYW1wLWRlbGF5ID0gPDI1MDA+OwogCQkJCXJlZ3VsYXRvci1u
YW1lID0gInZkZC1jcHUiOwogCQkJfTsKIApAQCAtMTY5LDYgKzE3Niw3IEBACiAJCQkJcmVndWxh
dG9yLWVuYWJsZS1yYW1wLWRlbGF5ID0gPDMyMDAwPjsKIAkJCQlyZWd1bGF0b3ItbWluLW1pY3Jv
dm9sdCA9IDw4MTAwMDA+OwogCQkJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDEwODAwMDA+
OworCQkJCXJlZ3VsYXRvci1yYW1wLWRlbGF5ID0gPDI1MDA+OwogCQkJCXJlZ3VsYXRvci1uYW1l
ID0gInZkZC1ncHUiOwogCQkJfTsKIAotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
