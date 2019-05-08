Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 521BD1716C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 08:23:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/yfdre/SzMM0LTxQb7uWD/gRzCN080r3RYHb3Xmt3E=; b=ntGmybNrvGnrEe
	3bVJdgZKex/DHMQ0nQZP4AeduoWaaFfR5UcHPRxUFjMU6Flo0XVNg8jwwsdwzhdD/1gRMushfq4hq
	0UiNT+ttNIIw2z6XFHXS+k9ydK3Id7uPReK9Y+cy7BwoNwHu7xMAxhWXhEnf7Pu3lb5hlv8cMJZNj
	KfzC89t4Aw95tmAbcJM1BNvDsQFYicXZDrGRzK6euuwzCT3cChm5uT/bx76yx2xKruEAP9xVJZkhD
	3dIkg5K+fN11OnutOODgm7IRfiYkS+9fRRF8dUAnM0xXKtbBEZnf1onT+nEceP/1H0vz3BvZN7wu8
	3qycWmxd3OF2ouyxbMmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOFzR-0004Rx-AN; Wed, 08 May 2019 06:23:41 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOFzK-0004Re-Aa
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 06:23:35 +0000
Received: by mail-wr1-x442.google.com with SMTP id c5so293773wrs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 23:23:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=ZwBzr8t2c5//Qv+vOM+zb95AmHVIIGSZXeL3Vx6exVA=;
 b=vrBcJWBcO/7Ca/wCszwmavvuoj/LUQTTspcBW80sF2q5NXECfCj1CYpRR0Ymh86esM
 wC5aqb6fneiaVB+DVT2+HxGNfDWa3GtkT1kH9mbTPsOL3+lG/aW69GuQ/pTbcH5g4MUh
 CabAQreSIZguHDS2GWNSs2NwST7dPUFl3eYZiVq5WFVK5lZH8czZyfNtyeMQstVgUxeO
 KpK6T8VKiwhONHMv++TL35cIY3w/Gi1lbyxywlaxz7DiyTOyHS5ZC26Y9IxP3igvil1k
 Km0rcqRB7vfy4uuB7sU+5XYskfOilw+t/cgTJF5i25utVk0ZPQJwOfRsdw75mHPF4RSM
 M+1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=ZwBzr8t2c5//Qv+vOM+zb95AmHVIIGSZXeL3Vx6exVA=;
 b=bNtR7RiCafxQFB1q9vB8UpAP+2GWAHRqmlR7d9NgC3JKH9uhXU8SMtbt6bzMWzA87u
 4r0jqRL7dzCcwenaj6aeyEov4HTOr9nmsW+zztYFuawOK+Xb41rmuuKAgQnjAktTw2GZ
 e0AIjr/03DKZTdJRwewKvMEnBYJXk7ZX5pGjFI3Xqq0qQpaoHu+YQdvQceE/0XD/Snnd
 4A8RofEImNb6kDX8/9R3sa+UfQnww8/eFIamuFbBeQafh2+HuRr2QN7ARfkIusLVg2tS
 AHYIIrxNfF9/toeuIEhFK+hOwbzhtA0AfMz/adxq4UBz7tor7yDHLOBajy+HCCPn80DG
 sYnQ==
X-Gm-Message-State: APjAAAUsUrRS4jDijI+8JYjzFfpnFl5v5mFIo6bvojX3k4mTPofAIz4h
 4C6SmDOfqJpp4U4fyd/h5eDIPg==
X-Google-Smtp-Source: APXvYqyXAkfBLVqlYoyJPdjpjDrpRcXI6/fi/QgJCYsn/IaX8rp3yx2DcxxSO3Hdqj0BOr9Mlvh+HA==
X-Received: by 2002:adf:e390:: with SMTP id e16mr2475754wrm.321.1557296611983; 
 Tue, 07 May 2019 23:23:31 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id b10sm1835950wme.25.2019.05.07.23.23.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 23:23:31 -0700 (PDT)
Date: Wed, 8 May 2019 07:23:28 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Claudiu.Beznea@microchip.com
Subject: Re: [RESEND][PATCH v3 0/6] add LCD support for SAM9X60
Message-ID: <20190508062328.GD7627@dell>
References: <1556195748-11106-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556195748-11106-1-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_232334_377805_3C7502E7 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pwm@vger.kernel.org, alexandre.belloni@bootlin.com,
 bbrezillon@kernel.org, airlied@linux.ie, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 thierry.reding@gmail.com, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiAgZHJpdmVycy9ncHUvZHJtL2F0bWVsLWhsY2RjL2F0bWVsX2hsY2RjX2NydGMuYyAgfCAgMTgg
KystLQo+ICBkcml2ZXJzL2dwdS9kcm0vYXRtZWwtaGxjZGMvYXRtZWxfaGxjZGNfZGMuYyAgICB8
IDEyMCArKysrKysrKysrKysrKysrKysrKysrKy0KPiAgZHJpdmVycy9ncHUvZHJtL2F0bWVsLWhs
Y2RjL2F0bWVsX2hsY2RjX2RjLmggICAgfCAgIDIgKwo+ICBkcml2ZXJzL2dwdS9kcm0vYXRtZWwt
aGxjZGMvYXRtZWxfaGxjZGNfcGxhbmUuYyB8ICAgMiArLQo+ICBkcml2ZXJzL3B3bS9wd20tYXRt
ZWwtaGxjZGMuYyAgICAgICAgICAgICAgICAgICB8ICAgMSArCj4gIDUgZmlsZXMgY2hhbmdlZCwg
MTMyIGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQoKTm90IHN1cmUgd2h5IEkgYW0gcmVj
ZWl2aW5nIHRoaXMgc2V0LgoKQ291bGQgeW91IHBsZWFzZSBkcm9wIG1lIGZyb20gZnV0dXJlIHN1
Ym1pc3Npb25zLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVj
aG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBT
b0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
