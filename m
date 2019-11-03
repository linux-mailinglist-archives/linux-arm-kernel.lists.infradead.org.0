Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC97CED4B5
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 21:35:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wGJYGl7AIUlRs4NnUfAe8uiMpb2d6cJVgaDSjJ7jSPM=; b=W5qdIlGdZDWkQv
	bXYa5+a7P7ygNoVmraYh9tIAsZ0FUjS9pW3HfEMNz7+PL2lhz5zpokUqJSA8oAzHc6htydRGEnYOc
	GgASyjj3S+yGg25Ob3wuPhiFXW2ppJsCV5E9DHx7zzvlQpooy39NHPGpAyXBkWqGXC95HG02lQBU8
	EvjxY/1DFfPEgJF7FJfN4b4dXGHHCsRMFlAEVYSIYT7pmoL+GWTzvvWbxVZtBNsueVWu/trKRb4FJ
	w2tu7Lrkh7ockdQdD2aAQQeOASfXncED4KMt3RFK/CJFvgihb5PV78allFvfM/y6YSxRu/BWITw1W
	CvW5g5/bxGiYZgKW+CUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRMaw-0000AL-UD; Sun, 03 Nov 2019 20:35:30 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRMZM-0006H1-Sw
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 20:33:54 +0000
Received: by mail-wr1-x444.google.com with SMTP id s1so14828102wro.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 Nov 2019 12:33:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9aSxRdpuFtWHR4fiaYF0NucipXPgTqmHceHSDmByEc8=;
 b=rScCDVYAK99EmODONTA/zLslI5PPeLsDXatQERQgwgA/L1IsnBBwSLc0SWKfnGkr0V
 tO+eMnTyOhKhAts5a8X6BMNcgekH9GZj2e5nGN6LK0CI2kg4mVwgwSIy463sa9U3JBzP
 ck8gOgC4+Sst5rWs6AwXKvjWBNKpmDhrAEdiwKmg+Qzq7JreuvPff13x98wa6qqf4oeC
 QiXjM4cQdvhnFJcRLGIoCeBb/sp7rT+i/nyP7zGzt1DPTOlCznlV+QPxQNBH3FWL4TPF
 KAo9JKbTl3BT4/tq5KqvW++LPFYXvdIUkssN6JGMdB1qZmFuSjNdQz6Mmu6wBZVzhLVw
 cBDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9aSxRdpuFtWHR4fiaYF0NucipXPgTqmHceHSDmByEc8=;
 b=G+pJk1vCcIj/+cbgssBxLngjUop79L3BhpVmBmAULUumV9HCmqdKxvU/6FXYJwTq7N
 7TyZn4ljsOkuNQIOC1WEOU62/JbrELRaqzk2AxVKyilv8H/Arvf6vALu/bVG7RlNtT0A
 Qlai5mAemDIe1wmFsOIon0AvQLAsBDl9HCV3/Xrn+yKjKW4cDiq70+zqu1GrnMpDVVBg
 7iVMOyEe9WLIUWYu0PDAHqRRxuDtZoC9II+H9HJSXYK1q7WGqn/7ypFlwce1O0SROVGT
 5QS/S7RYTNEhB9sV7qxz3cM/JPVZfpt2MaNmzLXzKCWZ08m2jjo5pyCIhkPCSjR8hfjT
 sKhg==
X-Gm-Message-State: APjAAAWCXyfrh+CxeyJd/YLZh+6enBLKTNtIG2NGRlpoSiP1duFUJqzP
 RXVoG3hoSBQHOI/Uy68OiIxzO30kY2E=
X-Google-Smtp-Source: APXvYqxCZXvry5vWKLLOb/PvIjc3nZ68tKRkjmzyDsMmPldkPt9HHS4QwGEpD8ISpJBeW6forCSG9w==
X-Received: by 2002:a5d:46cb:: with SMTP id g11mr21193654wrs.346.1572813231572; 
 Sun, 03 Nov 2019 12:33:51 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id x16sm13644026wrp.91.2019.11.03.12.33.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Nov 2019 12:33:51 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?=27Uwe=20Kleine-K=C3=B6nig=27?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2 7/7] [DO NOT MERGE] arm64: allwinner: h6: enable Beelink
 GS1 PWM
Date: Sun,  3 Nov 2019 21:33:34 +0100
Message-Id: <20191103203334.10539-8-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191103203334.10539-1-peron.clem@gmail.com>
References: <20191103203334.10539-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_123352_936102_123E61CD 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pwm@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0t
CiBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtYmVlbGluay1nczEuZHRz
IHwgNCArKysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5kdHMK
aW5kZXggMWQwNWQ1NzAxNDJmLi4zOGFiYTdlNWJiZDkgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5kdHMKKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cwpAQCAtMTMx
LDYgKzEzMSwxMCBAQAogCXZjYy1wZy1zdXBwbHkgPSA8JnJlZ19hbGRvMT47CiB9OwogCismcHdt
IHsKKwlzdGF0dXMgPSAib2theSI7Cit9OworCiAmcl9pMmMgewogCXN0YXR1cyA9ICJva2F5IjsK
IAotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
