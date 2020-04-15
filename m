Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CFF1A97B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 10:58:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QpcZML+1n9cmyMnqZ9UYC3yLa5F72bKAOcrs6pSxcPU=; b=SE3UFgpeap4PllFU0bsnzd7D49
	/YLSDRTIfO4N7elfCK0lxzwbXxV+ovwInbbdKzW/8ZH/cCCeo03fkRzXcPvuUMF8vBC6coXlClc1e
	EwOeqJxeOuwoin6dmPD4+rkhDymFe858wj8pzamUPUAmoukGNIHcWT3Jr/eXOUrW9jo0g7ohpCuFx
	kRb66AMNnY3ceL1k4QrmzZAEUw/arEHJKJO/yjzncGyDDSAZAkmu8v/4jKVwULKKs4NRQkWYP0wyE
	L7QAIrUUIK0e2e4aae1FViGbB6ZsFXIBEJmmjNOku/I7VTthGFJJIdSPSf6F6H9yMKQSUINkaI0X0
	/tt2Igfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOdrx-0002oy-8V; Wed, 15 Apr 2020 08:58:05 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOdrp-0002oK-6O
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 08:57:59 +0000
Received: by mail-wr1-x442.google.com with SMTP id j2so18153086wrs.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 01:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=5Am7t3fQtXB7+UGkMARmYYRwQ6nurFzvBqolqTPwJoU=;
 b=dSDSnc+F/fN0cdKLJf/+kR9r8g0CPgBhHy5/dGeDnEKUPjDVeBmitlUtvpovYN8AeT
 17gXZ7c2H9RjKlNBlg4eM1P2BvZ4qjDRq1e4ro41DFBaHH8e32Laf/tooFpPdmTj0b8C
 9g6W3e5ErY0yJ03tl8nckyB2t38jOGNf4sMtgyAq+860/6U+gW7FMZ0Iw7LEOICvCkrY
 nYc7jl1msAM8lOxB6HcsppghnVjStqQ8YAxSEvCq/ioO0xFN+tOSrGIFnCWtkEWZ6DxP
 YU4AnpjvleboFVCypRNZf/4+STEVaFAvXDTBXyetTQQTClK8JytP8xfmxHb/gbAnc5Qu
 hp6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5Am7t3fQtXB7+UGkMARmYYRwQ6nurFzvBqolqTPwJoU=;
 b=UX+5tzRYHSnxmgLLcVEduodO4R+bq6sqY/qxf8RhWpGrHPqAYVRal7kWyzNwwCwE3L
 xPGkRgE8CCUAAYrGaWS74cjfzcVCHZyJjjCx5XpPIWQgSJVJ+abV6xtSQ8roXAATiqms
 WebE7RhOWS5jON69yY1yEUPNL5+udk6GDehxBaMxa2ztoexl1b/AsZgMn1Kdobyt6dbT
 XmKPqWLC4QwIhpqxyT4JJkJ4jpSF+GRWtsXW2TwGKRoi2iu4E11uGF1b4tiUsUx7oRxG
 dirl5Aa01KUKnoh0RDbKozdGn35cXwz7igRokzA5OiHqLKYZEz6/EVi44zipvqskA0eh
 S+3w==
X-Gm-Message-State: AGi0PuZj2IANzfAvQgqeNZFaX2H/e4BhpueZSQy3rYpZ63uMik6b6uaE
 NakT0lPbJ4ZBboEgsJfUw0tXPClwqhc=
X-Google-Smtp-Source: APiQypL1/voYE4ae3tvbe+pTrP5MKfMNWZDplh7HA3hUnSh7oqZK7SVyH8Fnmg2b3wzZhpnjhLW4UQ==
X-Received: by 2002:adf:e5c8:: with SMTP id a8mr13579334wrn.56.1586941075360; 
 Wed, 15 Apr 2020 01:57:55 -0700 (PDT)
Received: from [192.168.0.41] (lns-bzn-59-82-252-135-148.adsl.proxad.net.
 [82.252.135.148])
 by smtp.googlemail.com with ESMTPSA id 17sm18812097wmo.2.2020.04.15.01.57.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Apr 2020 01:57:54 -0700 (PDT)
Subject: Re: [PATCH] clocksource: atmel-st: remove useless 'status'
To: Jason Yan <yanaijie@huawei.com>, tglx@linutronix.de,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 ludovic.desroches@microchip.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200414120238.35704-1-yanaijie@huawei.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <634a96af-7078-9e77-45ef-610f9beedd4c@linaro.org>
Date: Wed, 15 Apr 2020 10:57:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200414120238.35704-1-yanaijie@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_015758_281032_363625F0 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTQvMDQvMjAyMCAxNDowMiwgSmFzb24gWWFuIHdyb3RlOgo+IEZpeCB0aGUgZm9sbG93aW5n
IGNvY2NpY2hlY2sgd2FybmluZzoKPiAKPiBkcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVyLWF0bWVs
LXN0LmM6MTQyOjYtMTI6IFVubmVlZGVkIHZhcmlhYmxlOgo+ICJzdGF0dXMiLiBSZXR1cm4gIjAi
IG9uIGxpbmUgMTY2Cj4gCj4gU2lnbmVkLW9mZi1ieTogSmFzb24gWWFuIDx5YW5haWppZUBodWF3
ZWkuY29tPgo+IC0tLQoKQXBwbGllZCwgdGhhbmtzCgoKLS0gCjxodHRwOi8vd3d3LmxpbmFyby5v
cmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZv
bGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNl
Ym9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6
Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
