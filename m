Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8681F4B57
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 04:22:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OeLMMRqRGBepLLPI2VrOP7CZyEk3Y9xiTG+60IAK4m4=; b=eKZw35qXb/ZgEBeQp3yV5xAPsM
	gieei+M4ZKamFQlEcPQznnn7nT0G9Sa5ZC5MtiUYqffjOCsOpdB2Bw7t9jB0GKjAszGBtPM+zZWhq
	YAFKm7tofFtuYLE/nQmt6JpYzpfJXjJ9vkSeKTxWw5zACqfhFM62s3R4HYOLulnpO94VOqy0pNVMy
	4Qi9K7mqghbm+NLo5zZcviaZNP6wrH+R3+IIUjgGddVNJXaL0cb/xnxSqw/eeKSdxgCRUo8Xy+LpV
	fajSOaQQNiOdFBLlrJ/RapUk5kt98Y71utogew8uxxS6LYzeN++1zmkXbK2FmAlEu7JxA+tciQwzU
	kGLZ6paQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiqOC-0001B2-Cq; Wed, 10 Jun 2020 02:22:52 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiqO4-0001AW-Vu
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 02:22:46 +0000
Received: by mail-pj1-x1042.google.com with SMTP id b7so1577341pju.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 19:22:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=UpfONqHOTnPkMZI1MuZIK6j7EXHEnIyi1MFBGT9FXEA=;
 b=dMQRy+Gp5fMQtRBL8EX0XCXRRd9k8EdV1ldu8ZaCdpLe7rBBQxMquJ36WWEmNUoT/K
 MUHvzmAFnuO10U79TmazJZX4rFRU04WjwPczqmhhgShahd6kXZMjJM7u3Q/ARC/0fe5+
 SUGQjfdFo3lcXQGrDG+6aCIqRNcWpZsO6Oqw7ilikMHuu3AUSD3gpV5JhK6l71Piwyno
 6O1ApwsVeiTwhPI+S3IYP2GtMvY7GePmdilTVmfbypUd2E/8AHpGF0PakV/NX/rEzyhu
 9baoLc3XAWoK3ZQ4vGXhX0gBHCT3/1w2+skjZsXU8EOqFczeDb+OalNDj0ClPd80ez45
 bvnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UpfONqHOTnPkMZI1MuZIK6j7EXHEnIyi1MFBGT9FXEA=;
 b=UfjNKzcuSDH6EwKaHw87HZ/J4kdRVK0401I12RP9/uGpvBWpb+xlkIgihnrzrO5P7C
 QXlwiAwGLtr7Rkl7BFYVwWxkwRmTh3mHH0tX3f7kf2FxdLKW9DyFgbIAbTtlQpveHTLC
 +PW8N8f59aCxgltFe1cCMq1ca+VMa5Bk3AfJbsx44Ib3/h+DMMW4alYOYs9uk4xq2iQt
 WsBaEfEed496CW6zPA+3U7XKIAYmkjjL+qZZ2vAUOPzqnKdUMADOsFXO/j5KpI5Qz4Md
 7WlbTpeuo8Rc9btdWkaBMwmcI/zTihKcY4wTQ0RGMsG21sR4BOJQhYErf3P4WbxP8p35
 vBhQ==
X-Gm-Message-State: AOAM533t6tkDrJxd+j9+50r0meTLBnqPjkZcTYB3U6Lu27G2qw9J5CoF
 mLjlVsHA7Q3D5uw2MU0aQmIX2Jt/
X-Google-Smtp-Source: ABdhPJzaaYXoIL6215yKQWaWFR4LG1Geaz3r+nF0Ie6KUmiSAO7bVi4+B83Uaghj2fAMv8mERp0jPQ==
X-Received: by 2002:a17:90b:430f:: with SMTP id
 ih15mr750281pjb.61.1591755764484; 
 Tue, 09 Jun 2020 19:22:44 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id m7sm11163371pfb.1.2020.06.09.19.22.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 19:22:43 -0700 (PDT)
Subject: Re: [PATCH] clk: bcm63xx-gate: fix last clock availability
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 mturquette@baylibre.com, sboyd@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, lkp@intel.com,
 jonas.gorski@gmail.com, f4bug@amsat.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20200609110846.4029620-1-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <916f6100-34d4-cd5c-025d-de236546daa2@gmail.com>
Date: Tue, 9 Jun 2020 19:22:41 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200609110846.4029620-1-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_192245_026579_CBE37938 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA2LzkvMjAyMCA0OjA4IEFNLCDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgd3JvdGU6Cj4g
SW4gb3JkZXIgdG8gbWFrZSB0aGUgbGFzdCBjbG9jayBhdmFpbGFibGUsIG1heGJpdCBoYXMgdG8g
YmUgc2V0IHRvIHRoZQo+IGhpZ2hlc3QgYml0IHZhbHVlIHBsdXMgMS4KPiAKPiBGaXhlczogMWMw
OTk3NzljMWUyICgiY2xrOiBhZGQgQkNNNjNYWCBnYXRlZCBjbG9jayBjb250cm9sbGVyIGRyaXZl
ciIpCj4gU2lnbmVkLW9mZi1ieTogw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdt
YWlsLmNvbT4KClJldmlld2VkLWJ5OiBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWls
LmNvbT4KLS0gCkZsb3JpYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
