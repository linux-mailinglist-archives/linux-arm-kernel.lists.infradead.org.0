Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 999FC24941
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 09:45:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cOZsLrlzMKOLhnGrEsMdMu4MoKq/Hc7w/zTmAR848X8=; b=oEltwBcC7UB6tg
	kCKcF3Qpt05CtcGzNU2kYqa1bOotIvGJ2k1LMcd0+xAggwXooKFPSRFUT7UAWoe7GG9aPD4WlZjMo
	mqQCRTLAC46rBXAJJ2Nzgutf5JiyzYIErbN39tjSlN7RwMnys6+HhD6enx94FMprFtPBah+gHFPT7
	zbRYiWVCY5JYU65qMNW6ZImFoPU5CnxO0WsLwT47jd9uu/vptOK7+60t4wwow3pQoowOKo454dIeq
	P04OlJPgiPECkRoHpsj2dOFxRy96Pqys18PSCjiG5tZBEUshTF8Lm98j5JYzSH0NfnzUxGZMlaq3c
	3zj/HJFYlNk/yPDEPG2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzSx-0005uj-JV; Tue, 21 May 2019 07:45:43 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzSh-0005rx-HW
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 07:45:33 +0000
Received: by mail-wm1-x341.google.com with SMTP id n25so1736412wmk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 00:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=7W2uW0GKbANg0YRRJwfDi3S83JuyE8bC4TgR386g+ig=;
 b=Ztqxpie7c7XA0ZxhayhLFU5YfLTiyHUepsEAmGYq+FUlQAfXb3LwgAtRxGq3DBMLDp
 sAAXnOa9PYGcZ2g3jo2609OGB/QROfchy98+Lz36qwm1cKApYb3XTOi+Fp9cR8bVxbXX
 QV+o57b8E7XeETrpYw4/yQsK5KmNqLoEwQFrC4dJdS3WKZ6c1N5mTanXGuLa48ZI4/Ju
 kuXzRua9Q0TL1j1xdYisI51IrpaRbwBKzlhgJLH1nVvULMnfAGM+/MOoxzlW5IpXIvk7
 nD1ATrlT7CCZu3wOLugC1MEkaGYXRLATx+0g0WSbNuhvwOd2J1mwx5rEy2A8ApafFmxY
 7ImQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7W2uW0GKbANg0YRRJwfDi3S83JuyE8bC4TgR386g+ig=;
 b=EDfXzAI1Grwnayn2POgd5O1sIXQBoZNFS9uzuiOCgIgyuM0M4CfCDuWOaq8NALLtLX
 9TRfjan32O9tYh0IUw9kc7Pod9fxiyfi8z8iUEPjeO13cPAhjpq4GAZkBciaoDSFsH/V
 gsayTMXoP5g+y3YHHbwqlG4NL9F+KwZG0yMNMcOsC3tl/73VmrDrCbFOoIA4TAgHcXd7
 KPoEXZauchrRCgXD2vDx+ksO11PLCpYsdAE/Ib5p2yntX/xX6nKEJTDg1Pwy0DwnOwz+
 C5Dp9XeqnpmbHerRiLN4spAWjw+B8QLkoIP36wHk9+9gTloQBHfW+shxdVBywGBww8Fk
 +hcw==
X-Gm-Message-State: APjAAAX7iGVx/CCzHZSRw2uBpGHNt97zB+OF2aEGUS/Kzr0RC3XOpni6
 pPOoQkYErXxzyPl/dGCTnAKw5A==
X-Google-Smtp-Source: APXvYqyxfn6nygtboQpBoFArmbb8LvGA5vlw84HB75QJRhHbSdB1cLdCnbsbPzvasZc5W/5o+FBHzg==
X-Received: by 2002:a1c:9e8e:: with SMTP id h136mr2140540wme.29.1558424725333; 
 Tue, 21 May 2019 00:45:25 -0700 (PDT)
Received: from [10.1.203.87] (nat-wifi.sssup.it. [193.205.81.22])
 by smtp.googlemail.com with ESMTPSA id u7sm6381826wmg.25.2019.05.21.00.45.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 00:45:24 -0700 (PDT)
Subject: Re: [PATCH] clocksource: timer-meson6: update with SPDX Licence
 identifier
To: Neil Armstrong <narmstrong@baylibre.com>, tglx@linutronix.de
References: <20190520140007.29042-1-narmstrong@baylibre.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <4262cc03-51eb-67fd-b899-61a2ed03dffa@linaro.org>
Date: Tue, 21 May 2019 09:45:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190520140007.29042-1-narmstrong@baylibre.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_004527_773044_CA8296C7 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAvMDUvMjAxOSAxNjowMCwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4gU2lnbmVkLW9mZi1i
eTogTmVpbCBBcm1zdHJvbmcgPG5hcm1zdHJvbmdAYmF5bGlicmUuY29tPgo+IC0tLQoKQXBwbGll
ZCwgdGhhbmtzLgoKICAtLSBEYW5pZWwKCgotLSAKIDxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBM
aW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBM
aW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8
CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cu
bGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
