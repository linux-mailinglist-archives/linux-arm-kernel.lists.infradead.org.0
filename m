Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9B5E2B91
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 09:57:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4X6k4z9AwWb/KJ7qC+O0VceAwqzx3WezTKffcoM28S0=; b=KIOX9LJTl/0NS6
	eOyxvBSafnSzUMtWMRvS2ocNGPe87c0JaD97i9k+k1/9Kp/RY6TgAnVH7wRYPaRx9HwEhvy8QOm6W
	9cZAE25jp5V7UHwFcEL3SyNb81mDo1Wrr3ukKdIeBzL8JF3812KS2ysYo9FQeN/2EK/j4lG5RMEDz
	yjN3VikcCafVmJtq3hU+Fn9fb3/RZRZdI5J3XaIfVxJZmXvjgkPIWQWu4sPZieHqz7NxuqkvfZrTJ
	TBp7B1WyXpa2ugkqMGJqjJeniC1jzqjgJXMlQrdbRIA2UzxqzwsT4bYeINwCoohhmu2+3OYRxWyIF
	sWrYZTNAXdXOcjvd/iXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNY00-0001Oh-6K; Thu, 24 Oct 2019 07:57:36 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNXzo-0001Ml-TB
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 07:57:26 +0000
Received: by mail-wm1-x344.google.com with SMTP id q70so1648975wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 00:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=2R2CzbjvEDjQmx61JPs0RIA5BRAZFdy1ELg14vUw0UQ=;
 b=KarVPLaBPctaaN5I1bubIar3T/z7eSO6kv6QHJHU97Yb654aPehI+thVq0mZ3Jm8nx
 n2c9tW1zImFk0i7AZS5BjlzwY9kxtexGvnoqflA6oaj3k1JJ0SOol5VCjorf9/t7/g+R
 zkdk5KQf7KCombZznlxFlE+f0Hre2crdS44Cd1lSoeRAoGYWiqRjNyVer9cKHhTF4UR5
 wzSWUb2gRLA7/KFvI++Xfpe0MFXxtl2mSbyfnVu7uFK1+eeSS5d2929gLYcg27fFo9vV
 6wG10gP2E5B7FNLyrKcPOyKtL1kFOHm43pq0c/OPj/qmwyfPc9vqIjTig758Wzk3opYF
 r+nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=2R2CzbjvEDjQmx61JPs0RIA5BRAZFdy1ELg14vUw0UQ=;
 b=gve+E8ukaQ8XVS+/8PKrofLpK03Y8FsxQPbudTCeAdGUaVmryvsXJMo6YfEa+eyWgM
 UjjsdnGFEpcdpjJcM4XGpzTlJB3N4Lm78rYzgnkDQHR0iawAuOE8871/4Td/jT3ydrQ0
 Otl+fIP73u+pyysVTA1ZgQy3lJ2dF8O2DQCuR++MacZv+nOm6VOBJM9ZfjD7NEEhI6jL
 eiUN8UXcziD/xt3x+PZgT3lt0t4GuT9RC8TajPpcvqwEUaFVJoZwAIIOlJLoG//Ne9T1
 dxAl7vhGNcG9MUSkPFZRKwg83oL/K+b8XwFshhOG4hbHTdAieFQrQ5k0fCVnnt7wyiwA
 gJaQ==
X-Gm-Message-State: APjAAAVymv0XmFW2ee3P5HuvR9DM4XVQBzQ8rgQpahsAfdB3ue9IPKYa
 Xdp1FxzCisCluq7A4l/dmvZ11w==
X-Google-Smtp-Source: APXvYqzfzbyOD0kMrrQiasuUlY/4XG7ebzJuOpr4xPK79DUE6o1jWvTCFJ/oMBpjTCu4tX/LxTh1vw==
X-Received: by 2002:a1c:6885:: with SMTP id d127mr3484113wmc.64.1571903842614; 
 Thu, 24 Oct 2019 00:57:22 -0700 (PDT)
Received: from dell ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id d4sm31839931wrc.54.2019.10.24.00.57.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 24 Oct 2019 00:57:22 -0700 (PDT)
Date: Thu, 24 Oct 2019 08:57:20 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH] mfd: mt6397: fix probe after changing mt6397-core
Message-ID: <20191024075720.GI15843@dell>
References: <20191003185323.24646-1-frank-w@public-files.de>
 <20191016095338.GD4365@dell>
 <24600EAE-5379-475F-B83D-880E767F2CDA@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <24600EAE-5379-475F-B83D-880E767F2CDA@public-files.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_005724_948794_990C8C58 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAyMiBPY3QgMjAxOSwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKCj4gV2lsbCBpdCBi
ZSBtZXJnZWQgb24gcmMtY3ljbGU/Cj4gCj4gSSBhc2sgYmVjYXVzZSBpIHNlZSBpdCBvbmx5IGlu
IG1mZC1uZXh0IGJ1dCBub3QgaW4gZml4ZXMvdG9ydmFsZHMtbWFzdGVyCgpJdCdzIGJlZW4gc2Vu
dCB0byBMaW51cyBmb3IgdGhlIC1yY3MuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFy
byBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0
d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxv
ZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
