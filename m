Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B95EE9E66
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 16:08:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6/fwkQHudBPzDML2QL3Ku32KNw91p/9FUeZoxXea4M8=; b=BrryW8LRAMmLqg
	2W7e9vNMK5qKEvlCCCM0lhNJLIuQqc9ria9UaCFhiWTxw/bWkEFiJeEXCU2OZfQdxC3LwTskZbtbM
	7izUnkcF0zXwY172l4Tua7z6ajdmju/F6WOjwDbaiqbCbxSiSbyEz5eNwxamAMzt+4fKDotwUm0K+
	+Nwp7bEeuCyvNuK4tJxoLT6RInKXPvdx3r22FNwx31Jou5f1oWrFlwIV66I2P2KkDg3W7T5IP44kk
	ozCGgf/tMZb7yO5n50Og4n2+0ACAoWPJf9z/UT3rNzns9bSNs0vpTj531/oU4bkUaeQzP9YJUmR3q
	Xi5EVpEQFaOQJCSkOfkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPpaB-0004kg-AE; Wed, 30 Oct 2019 15:08:23 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPpZe-0004Wt-UC
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 15:07:52 +0000
Received: by mail-wr1-x442.google.com with SMTP id z11so2692163wro.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 08:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SPagqRzFvAqQRYLAlTZWNfeQSznNMN42BCRbkymxKk4=;
 b=T8k2TejcV/x91i7pS8E+xiODOOcD855hSGNTITM4PzlKSU4jnlmd334bkK92Uma4+T
 BVuBN3u6BpYQaAOsGStGkwGdDoCaI4tZojC9jJjYA51iS1BpekA+EFlTJtF7M93xvP+j
 IRCflmqaEqVRjkc9xcOX0UG+lBv1y93PIK360M55oanGSeGXRJUJhPQ6MG4o0u7W9Ry/
 VZ7yL9X/yadhGFcfaQpAjocSR3HJIwPlYk4w2J6IpAjAtNqmlqBx3A7iwkMFzs1GxI2v
 iV67s8mMXIw+ei2YVV1E2VCQOvLiNIyCIX0Mh6msE4rCfe+ZCbHT98MdbiiMUNPCzz4y
 grlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SPagqRzFvAqQRYLAlTZWNfeQSznNMN42BCRbkymxKk4=;
 b=QdUnLda8BsU9tny5KHO5guJGxQ4fQWopakGqdaMbFJXVD5A8i/wc/g9/MTZfGJMe3E
 5bDY6LXuOuSeihXBD1koPFBbtZtAPC1f5rP2K4EpcfaclKgABSXa0yaPL+QGR+QktRkj
 ku74c4a8NZm7M9jKoLcdnWWq4+BjU09U072pnen2qUnocp4VwzheBVnmRGpUNSJ/DkAi
 h38vo93UsXRrkDtNKZl1kEstPJOxQJuztOGSuKwmhexnapY5wkB6PU8VgjMMXVgwEr81
 cwis8YnPgRZdyTITXJNvv5oAGf5tPSwNBQw885NE67FE+6a/+lfyPII2XQFAVJzCG6V0
 frcQ==
X-Gm-Message-State: APjAAAXM9SsdzDioiWHKaPsiyQLtYWe4KYi6WkN+i9HxHf3ZFNs1aXwz
 t6NupR9xY5aruHZnBREzUhI=
X-Google-Smtp-Source: APXvYqwEDJZ8SgyYMZJU+WQZfBClqringMZaO4mY28gJfyN4A5sr+jgz2ePEFpIjjQCgmQL+PridMw==
X-Received: by 2002:adf:f40c:: with SMTP id g12mr308753wro.244.1572448069098; 
 Wed, 30 Oct 2019 08:07:49 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id 11sm278074wmg.36.2019.10.30.08.07.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 08:07:48 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>
Subject: [PATCH v7 1/2] arm64: dts: allwinner: Add ARM Mali GPU node for H6
Date: Wed, 30 Oct 2019 16:07:41 +0100
Message-Id: <20191030150742.3573-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191030150742.3573-1-peron.clem@gmail.com>
References: <20191030150742.3573-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_080750_973181_CB48DA05 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIHRoZSBtYWxpIGdwdSBub2RlIHRvIHRoZSBINiBkZXZpY2UtdHJlZS4KClNpZ25lZC1vZmYt
Ynk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogYXJjaC9hcm02
NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgfCAxNCArKysrKysrKysrKysrKwog
MSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
YWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpCmluZGV4IDBkNWVhMTkzMzZhMS4uYTAyOWRhZjY3MzQ1
IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRz
aQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQpAQCAt
MTQ5LDYgKzE0OSwyMCBAQAogCQkJYWxsd2lubmVyLHNyYW0gPSA8JnZlX3NyYW0gMT47CiAJCX07
CiAKKwkJZ3B1OiBncHVAMTgwMDAwMCB7CisJCQljb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41
MGktaDYtbWFsaSIsCisJCQkJICAgICAiYXJtLG1hbGktdDcyMCI7CisJCQlyZWcgPSA8MHgwMTgw
MDAwMCAweDQwMDA+OworCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDg0IElSUV9UWVBFX0xFVkVM
X0hJR0g+LAorCQkJCSAgICAgPEdJQ19TUEkgODUgSVJRX1RZUEVfTEVWRUxfSElHSD4sCisJCQkJ
ICAgICA8R0lDX1NQSSA4MyBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJCWludGVycnVwdC1uYW1l
cyA9ICJqb2IiLCAibW11IiwgImdwdSI7CisJCQljbG9ja3MgPSA8JmNjdSBDTEtfR1BVPiwgPCZj
Y3UgQ0xLX0JVU19HUFU+OworCQkJY2xvY2stbmFtZXMgPSAiY29yZSIsICJidXMiOworCQkJcmVz
ZXRzID0gPCZjY3UgUlNUX0JVU19HUFU+OworCQkJc3RhdHVzID0gImRpc2FibGVkIjsKKwkJfTsK
KwogCQlzeXNjb246IHN5c2NvbkAzMDAwMDAwIHsKIAkJCWNvbXBhdGlibGUgPSAiYWxsd2lubmVy
LHN1bjUwaS1oNi1zeXN0ZW0tY29udHJvbCIsCiAJCQkJICAgICAiYWxsd2lubmVyLHN1bjUwaS1h
NjQtc3lzdGVtLWNvbnRyb2wiOwotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
