Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E2319EA99
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 12:51:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lFhra2j2C5o4R2P9UP/UPEhSDPCipeOUxw42xsi+Yq4=; b=qsSHnB0+u/+fsw
	o4cETLcskKYDh14JygP1E9AnopbZRGNG4zIiKcfbM4Do0wh7GId94mdvHtDo3MjGedYAw3ryu35B2
	II1BliqA9aa4wYzfV4dE1erUnZZ86OBG/PJ0+itUO5UkoNHnT9MlJlEoXB+p+yGV2D/qOMp2kzPDu
	AFCndyVLZL3YenhMoCOvZTrqVnsn5Z/qj/OCaEkKzwvdrLjX6TPOsllzxEUtPxpeF8sGOdCvwIQvU
	OqqUC2Z9Bo7/HvpaVBru35K4+gF2wefodpJwmIfFuVvpjq16Mq5C1KVlnbWAxOz66Qb/4kuYmHk+w
	as/rS5KUVryFR1mcPosg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL2sE-0000lL-KW; Sun, 05 Apr 2020 10:51:30 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL2qD-00055k-Q1
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 10:49:27 +0000
Received: by mail-wm1-x343.google.com with SMTP id y20so721854wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 03:49:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IaJsFC4mWmdWbyKkdQgRslfWupkpd121xwwCWiCDFic=;
 b=Nv0iaaZun8PkGFqjzFCOX/XXu0sTlYO7LusRed2bei95p+rs4hZ7XH2/iv2jGKx862
 oN9+2KsfkmGeiQfJDqT58NKoObV1zqDiDqgJygMerNwfmNjCl85s+ItAryXJsZDJOhVU
 ylJ94U7G6a2oOSmrTYv3D6bN7o5DNh8+8++aG+PXhZ26+PVQzmimqgwKJLEx2OZm1B5T
 2++Zq9V0Ui1hIHtTjFEck8Jn69LwAMDYikkRyvEJqip9WjViVZ/MFzqeMG3xsu9nqywq
 104rznEUw6/mMPPP9kgjczn2DnWMfQDKfHjGzmwcoL/fR2O/Zay7Xdskguof+j5YnPr2
 6xEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IaJsFC4mWmdWbyKkdQgRslfWupkpd121xwwCWiCDFic=;
 b=daH/W8jiyvfV5eGFXdFtODXtAp3whzH4phLjtD6KyAJiJiEquwyuKYz6EOIb2gn6th
 e3D3cEz/KxraMQnhF0S/KLcwxwGgq9RlWWggrA/FsTvuMH/VFHNPZRwEr8LuZem8eN7G
 NbwOtNQ+P7bJem+6QSJFAdZxmKVlaLyJm/lIjcQ5GTqG1o6LTsTh4/v5jpTHUVKTVGq4
 5fhJIQo1sNfQ1XNaWYO4FbRPJ6g8z7ZdglnodJRauWOpzmXFrq9uGfz8Xp6tro56nJa7
 tYmxrpuJCWmxcSmd09viYKLqWRoN8AVz8W/YAi2c+SGpejRWMnyjgRcoMmBoo/0dZri+
 ODQA==
X-Gm-Message-State: AGi0PuYO/FTBbwtBCPwA+J4rg9RK+RpUkTA/7Rir9umLu+1ko5jqRbJj
 fNL608BaAYH7hkL6BmgwGximUEpzZtg=
X-Google-Smtp-Source: APiQypIS4eeDCAO10hAejWjIAXROTbLF+7oPU0gehy8YueTE+QgfA2pzVNpE3cbH4EFv4ULU0UCRmQ==
X-Received: by 2002:a7b:cde8:: with SMTP id p8mr17359670wmj.87.1586083763912; 
 Sun, 05 Apr 2020 03:49:23 -0700 (PDT)
Received: from localhost.localdomain (91-167-199-67.subs.proxad.net.
 [91.167.199.67])
 by smtp.gmail.com with ESMTPSA id u13sm21606411wru.88.2020.04.05.03.49.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2020 03:49:23 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 7/7] arm64: dts: allwinner: h6: Enable CPU and GPU opp tables
 for Beelink GS1
Date: Sun,  5 Apr 2020 12:49:13 +0200
Message-Id: <20200405104913.22806-8-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200405104913.22806-1-peron.clem@gmail.com>
References: <20200405104913.22806-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_034925_904677_6A127989 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

RW5hYmxlIENQVSBhbmQgR1BVIG9wcCB0YWJsZXMgZm9yIEJlZWxpbmsgR1MxLgoKVGhpcyBuZWVk
cyBhbHNvIHRvIGNoYW5nZSB0aGUgQ1BVIHJlZ3VsYXRvciBtaW4vbWF4IHZvbHRhZ2UgdG8gZml0
CnRoZSBPUFAgdGFibGUuCgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNs
ZW1AZ21haWwuY29tPgotLS0KIC4uLi9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2
LWJlZWxpbmstZ3MxLmR0cyB8IDEwICsrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0
cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5kdHMKaW5kZXggZGY2ZDg3MmMzNGUy
Li44ZTY1ZDU2YTdjODUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVy
L3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3
aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cwpAQCAtNCw2ICs0LDggQEAKIC9kdHMtdjEv
OwogCiAjaW5jbHVkZSAic3VuNTBpLWg2LmR0c2kiCisjaW5jbHVkZSAic3VuNTBpLWg2LWNwdS1v
cHAuZHRzaSIKKyNpbmNsdWRlICJzdW41MGktaDYtZ3B1LW9wcC5kdHNpIgogCiAjaW5jbHVkZSA8
ZHQtYmluZGluZ3MvZ3Bpby9ncGlvLmg+CiAKQEAgLTcwLDYgKzcyLDEwIEBACiAJfTsKIH07CiAK
KyZjcHUwIHsKKwljcHUtc3VwcGx5ID0gPCZyZWdfZGNkY2E+OworfTsKKwogJmRlIHsKIAlzdGF0
dXMgPSAib2theSI7CiB9OwpAQCAtMjI2LDggKzIzMiw4IEBACiAKIAkJCXJlZ19kY2RjYTogZGNk
Y2EgewogCQkJCXJlZ3VsYXRvci1hbHdheXMtb247Ci0JCQkJcmVndWxhdG9yLW1pbi1taWNyb3Zv
bHQgPSA8ODEwMDAwPjsKLQkJCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMDgwMDAwPjsK
KwkJCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw4MjAwMDA+OworCQkJCXJlZ3VsYXRvci1t
YXgtbWljcm92b2x0ID0gPDExNjAwMDA+OwogCQkJCXJlZ3VsYXRvci1uYW1lID0gInZkZC1jcHUi
OwogCQkJfTsKIAotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
