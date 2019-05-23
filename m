Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDB028726
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 21:21:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sLyBtQqtGi3wY2LWiPsDEzjsvOwRk2Lf4zn2yjWDKU8=; b=h1N0l7NYYaumfR
	yH15MVeDAQFls+JzjEAOZTkGjhZXXsF2OPtSadEpOeM9O2nfW2DoiYvOPdI51Tk6o4UchJ6+cd92V
	eDdX5dDbZ10OXTeB8qBuGoVrMcZ2Um4BhFnezED5PCRbWoYVdXG1L8TnPLH2ePVn2LgosfBSFP2M4
	usu/hA5/C7GvM159LtkMsFrD9rg9Vno2opJ3i8AkPwKLx9hqSUpJ8ITdBhGJIKVEbQaJk7hr0aTJl
	70R1yFWyRbPmAWjRWKs7xubylJliHHzVPikHE0KJ70HJE9555z6bhkj35Iy8eqbWgMIisafYQkK1c
	SoY4v9+7VXttJTtORgzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTtHn-0004Ny-W1; Thu, 23 May 2019 19:21:56 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTtHg-0004Mv-3J
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 19:21:49 +0000
Received: by mail-wm1-x343.google.com with SMTP id f204so7000668wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 12:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+AsttdkF/OvZdxrRB18xex+EGbhnUq0bTn8ba7mXT2E=;
 b=MiZVEMh1LahbDicTGKYdAJmetVoDnUx3GPEcti62tJxHXUOHaVciB2jaMaLe8yBS/R
 9xXsbDyL4uOdwcTOSzrDoxD1BNoGx616C+/EgfHhE5KCrHrxKhxZ9oAW724n6IZCTtFi
 eWCBqodnisibUm2gIruYwXgNd0VBkRyA+SrFzZfeaLCvwq208MI4hxdlchQZGw99cPc8
 3hHe1wXz/vhlVg7cE/Zn2LHED6Hz/rwrw+kjWY7U8b8p4dON6t7gnO+ZESWETAyFFMB1
 1kvSb6L5klqCh0jZ7khnkTsC+V5c77H4LiSDORkK9yWf+HUHjad8bgoZFtAG1xCVUr6I
 miKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+AsttdkF/OvZdxrRB18xex+EGbhnUq0bTn8ba7mXT2E=;
 b=BxaRy8Raeza4o+GxINn9BbFthrbU+1K5GwFz6tLV0yUslmGAtEV7pC++48x33rOS4k
 fV3Gmj0CT/rC5UUzhRzYtC06qVbFNVf6JUullh/TCvvwQGDjl+eymiVJoRl3qdgIytDQ
 Ip4F94JYoYmOQ6IuoJI8MFPtqnJtXyIuiGkwM1JCtcYpzim0m7A0fI0w4K+y+tyIulcw
 XePSm7Qttu+9BDGn/ly9nXLl/wuBAsrXUzjOFYRCBjHyZfzy7Wx2N96wFMPvvQ79etP+
 sElo7aH1C6nWYS2dqiRMDqTNvBF18q0ltXbV2G++1OH/n/bLrdOqw3oxdn1zRkX2v9Zr
 mHdQ==
X-Gm-Message-State: APjAAAVDWQBeN3TOzJeN4GSdMNZ99ZctQmpDxyYQPCgAf6QEj7hnsBSb
 psDXv+3VOhZJ5kFDU/JIR79M2rkd/FwXAQ==
X-Google-Smtp-Source: APXvYqwz+aa9cC1mkduutvE6e+qiFfQt6D2M5mN34x6291O7m64ahRcSIK5WD/xERoq280zUbDHX9g==
X-Received: by 2002:a1c:f61a:: with SMTP id w26mr12956452wmc.47.1558639305630; 
 Thu, 23 May 2019 12:21:45 -0700 (PDT)
Received: from [192.168.43.165] ([37.170.182.188])
 by smtp.googlemail.com with ESMTPSA id h15sm93457wrs.49.2019.05.23.12.21.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 12:21:45 -0700 (PDT)
Subject: Re: [PATCH] clocksource/drivers/ixp4xx: Implement delay timer
To: Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>
References: <20190523181602.3284-1-linus.walleij@linaro.org>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <3496e81f-ea63-794d-0d8a-8eba9f2f6853@linaro.org>
Date: Thu, 23 May 2019 21:21:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190523181602.3284-1-linus.walleij@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_122148_142066_99F73534 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhpIExpbnVzLAoKCk9uIDIzLzA1LzIwMTkgMjA6MTYsIExpbnVzIFdhbGxlaWogd3JvdGU6Cj4g
VGhpcyBhZGRzIGRlbGF5IHRpbWVyIGZ1bmN0aW9uYWxpdHkgdG8gdGhlIElYUDR4eAo+IHRpbWVy
IGRyaXZlci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlq
QGxpbmFyby5vcmc+CgpUaGUgcGF0Y2ggZG9lcyBub3QgYXBwbHkgb24gdGlwL3RpbWVycy9jb3Jl
CgoKCgoKLS0gCiA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBz
b3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cu
ZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29t
LyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJs
b2cvPiBCbG9nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
