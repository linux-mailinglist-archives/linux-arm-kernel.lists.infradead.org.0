Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FCDECE8E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 13:05:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IS2zu9Wq4KoByBowJg7rVsG77ayo7PufgB96+zcngb0=; b=JMqBcJnGQAZHG8
	7ePiwIosGI+7cAIRhW4+t5DUkJt/7F1fPy+SyblDNtNoe9v0uwKh+lKxmgJWhsZoO/4SenttyndhV
	aVe/DRYWWQMu/2Fg2QbPb7FR1aJMk5+jfRBFppviu9JvBztXlopyC1y3vb+xrDApCAOjt//Clo5PD
	KBQRXM9ezT6PPRt4NG8lHcC80dD5zXUjduN2pJxqEdu4scd18TA1iV431GJ7uqNuQi5giyruG2X1j
	VOXm0WpYvQ4KtJ0V6HWwZSKnFdHAhSJw9f2mNXZXE2ox7SI+OyQ6z967N4hDA1QAyVrTfNNQ6++g9
	8NbVY9o5PZiyK45X7u3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQs96-0002mf-NF; Sat, 02 Nov 2019 12:04:44 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQs8z-0002lv-Tm
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 12:04:39 +0000
Received: by mail-wm1-x342.google.com with SMTP id c22so11516134wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 02 Nov 2019 05:04:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KRF6soD2g7xvJ30XDDz/0MGN7A3BH2BkkuXZbRs4kCo=;
 b=aAEU5z4+aRVnyRNtP/pnpe3X94NWIZQKo0zfBG1bAX/c+4yZHpzsHaPfd1KlF+86qV
 A0MqAbVpTrEueiSxpGDOVq8z3k+p7RpbUZW/Z4hvd9glNMJyVKfruic3rSaifuqdgVQb
 Y5BchvHhEXjYY6NFqwWZu0cIXLwZuCGSFw1YaQV6uH7TP43efer2CVYUBwK80QXKe6TD
 DED/6TmCEIJ+u2fMDrMpfTOvGELERlfCi3+s3rL5W6izrw228Wui1qoZ0JDD0thDpvO0
 sJk5pG3asfA2Jl8O1MPvi2kwVoBHybnqAdSwQMpt599mIDWf6mNGCk9kSBufuL01fEOU
 Gudg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KRF6soD2g7xvJ30XDDz/0MGN7A3BH2BkkuXZbRs4kCo=;
 b=I0wr8rcoHERb/kB+C7oK2be11I5MdFbou/gB+PEZxj9fvmoVBJlBiJLvy0vaQYokLW
 zzGhWLFsgIPvSHFL+qLfjA6tOge3e0S7bKkjULQpb9becJ8PhrwsqHdVL96tlnesXckz
 gxOcRWSg0UI/W8cnFTNxQszs2zwwrSwuvHtMiAMFlGqqeDb9FVfxVO5Ux2pD6QuY/pMr
 Zwyo/cGWN4CzCJpYtj31cP9uRa+GCkr0naC+NBKfvSROcuMJ80g7vrVob/SDG/kF2biV
 cJc79FicvchUB3hcyYh6+3J6Ws+Qg+3+5u5K0Xvryu1H/cIANBS1a8nupI8/UoGaBuec
 KDpw==
X-Gm-Message-State: APjAAAWuIs4mH5oU5zwkZ9xHNk/nw2Cyw8bLUMcUbaRf5vZ1Q8Xf7qPr
 i87I8Y+a5gKG6kZztao82y8=
X-Google-Smtp-Source: APXvYqwz3x2ZjwhFLd2hLmE3ztByvTIwFUK1SdPMDbu0KHTbSwhBf7hj4LLTa3tNeN+XCOEQeYkMDQ==
X-Received: by 2002:a1c:e404:: with SMTP id b4mr16009804wmh.90.1572696274241; 
 Sat, 02 Nov 2019 05:04:34 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id c144sm9680533wmd.1.2019.11.02.05.04.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Nov 2019 05:04:33 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>,
 =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: [PATCH] arm64: allwinner: h6: Enable GPU node for Tanix TX6
Date: Sat,  2 Nov 2019 13:04:27 +0100
Message-Id: <20191102120427.19350-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_050437_984860_EE2BF73D 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VW5saWtlIG90aGVyIEg2IGJvYXJkcywgVGFuaXggVFg2IGRvZXNuJ3QgaGF2ZSBhIFBNSUMgc28g
d2UgY2FuIGVuYWJsZQp0aGUgR1BVIHdpdGhvdXQgcHJvdmlkaW5nIGEgc3BlY2lmaWMgcG93ZXIg
c3VwcGx5LgoKU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWls
LmNvbT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtdGFuaXgt
dHg2LmR0cyB8IDQgKysrKwogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi10YW5peC10eDYu
ZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LXRhbml4LXR4Ni5k
dHMKaW5kZXggN2U3Y2IxMGUzZDk2Li5iY2NmZTFlNjViNmEgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi10YW5peC10eDYuZHRzCisrKyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi10YW5peC10eDYuZHRzCkBAIC01Myw2
ICs1MywxMCBAQAogCXN0YXR1cyA9ICJva2F5IjsKIH07CiAKKyZncHUgeworCXN0YXR1cyA9ICJv
a2F5IjsKK307CisKICZoZG1pIHsKIAlzdGF0dXMgPSAib2theSI7CiB9OwotLSAKMi4yMC4xCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
