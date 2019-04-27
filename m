Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEDF4B405
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 18:57:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vwk5VKsro7xumVbPldxoSphwbycTazo5WdBszbrVleU=; b=V4k/Yc/a6FJGlU
	RcbaGJAy8wOPouCrwRd18iQ4VRVzZD6zxcSlbBpmxT+nnxsADx7UCql3lGsIE5+1dWN14GrP0Nrbk
	vVmSEsw3q8sKo/E2J/0bP5rPHtBjIO5lMST8EMJEgDsSN9xwFaaXZ9QlCSYBVQuXbLEqktS3wHy2H
	zQ1AKtFmnDFgEGJjUQmInrsi3iyRlsCTzWkk4fPpQApNcwYM6C9NcnZq2B0MYgtB/rfPVeuCmHlAU
	KSbHLBeujFSvLAVp367P/YX5FcO47cqLpNZ30h3Y6NzkPKgJIgSCY2VgRvkWgR8p24urZ8HA15917
	eJpn62Z33m4tNOvkgYyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKQdK-0007aB-Nl; Sat, 27 Apr 2019 16:57:02 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKQdA-0007YY-Lw; Sat, 27 Apr 2019 16:56:54 +0000
Received: by mail-pl1-x644.google.com with SMTP id e92so3023100plb.6;
 Sat, 27 Apr 2019 09:56:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Hvtq7zNAnrPZFqg7B9biXnElsoCmOPrVGVZCJ5gJhp4=;
 b=oY1Z64KccFbyy0wq9QVwJe0jyd7/RsnZQ/RB8ENhLnlCZjeajuJNoHTIn7SX0vVdqi
 LrjUFiFbUCa4YxtQMvMdljRqdgTGgHHDLQHj1H0QA9OyD05A3DqADEj8/N1oJhoproXe
 y/9kGhYlwLp4EsGsStj0io0eywSB1DQAT/MNckNred9ws5HfIqcstfSMDAPbD8MvPnJX
 2J5O4rkODzSg+rHTATqNxgK3wELuL9CMGwJhxNvPTwUcOewrX3KyYIsv9M0jMOJs122I
 lwv9AJyObKXTquKg208AUDBouu50hh5Yb0ErQ0TMHegRiHTmh4VYhwlqWwTjE8E8Ev7q
 0hPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Hvtq7zNAnrPZFqg7B9biXnElsoCmOPrVGVZCJ5gJhp4=;
 b=EhIPCEfYA+qd6NkcHZdpseQblTpAGYl1V/3SKNqbnXA7tTWU1iXtJZSSLWbgrXoPsP
 ljPLtyVejvQafuzw9mYhx2JjcTnsTpBAxDZe7zR/gIvWE+QANzbJ1qZj/PMLVYfD5gYQ
 2d4jpiDjsusOL71FBS8zlNrWbOImgcg0qNY4ysuSA0e+seDdW+RqTLGryzVTMXfrt6kg
 1atPCkZ4jLL/8qWR/QcDnyq65sNgK5nedVt6sZdrnpb3s4bKYZYK6U0ZUKotFkiESFzU
 /ShhF8xoXEUtRQ/Z33unEqFq/ca45ZH87Ab6XJDOlz1CmCyrXTNLCrC4RIbGrYIoY+Se
 mQYg==
X-Gm-Message-State: APjAAAWdNK+8PIQ6oXyA6czupzTQfmqB8rEZ3dlT9AdXgkAWC7vKdYvw
 SM6C9OPW2BfTt0O46S0xB4Y=
X-Google-Smtp-Source: APXvYqwSU6ZbpDR62x+bxBE8Veh7kQjbUVRkiAHr91sHGmJIgIdCZpoTZH34EFyaTXPIL5o++jb2hg==
X-Received: by 2002:a17:902:2b87:: with SMTP id
 l7mr53015721plb.130.1556384211138; 
 Sat, 27 Apr 2019 09:56:51 -0700 (PDT)
Received: from [10.230.28.107] ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id w65sm473514pfb.59.2019.04.27.09.56.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Apr 2019 09:56:49 -0700 (PDT)
Subject: Re: [PATCH 2/4] dt-bindings: doc: Reflect new NVMEM
 of_get_mac_address behaviour
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Vivien Didelot <vivien.didelot@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Fugang Duan <fugang.duan@nxp.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Salil Mehta
 <salil.mehta@huawei.com>, Woojung Huh <woojung.huh@microchip.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Kalle Valo
 <kvalo@codeaurora.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Li Yang <leoyang.li@nxp.com>
References: <1556320002-26213-1-git-send-email-ynezz@true.cz>
 <1556320002-26213-3-git-send-email-ynezz@true.cz>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Message-ID: <f335fb31-ed1b-efd1-9cd3-a88b4a7fadf0@gmail.com>
Date: Sat, 27 Apr 2019 09:56:35 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1556320002-26213-3-git-send-email-ynezz@true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_095652_721354_B1BCACF1 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, linuxppc-dev@lists.ozlabs.org,
 linux-wireless@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-mediatek@lists.infradead.org,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Alban Bedel <albeu@free.fr>, linux-oxnas@groups.io,
 Frank Rowand <frowand.list@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA0LzI2LzIwMTkgNDowNiBQTSwgUGV0ciDFoHRldGlhciB3cm90ZToKPiBBcyBvZl9nZXRf
bWFjX2FkZHJlc3Mgbm93IHN1cHBvcnRzIE5WTUVNIHVuZGVyIHRoZSBob29kLCB3ZSBzaG91bGQK
PiB1cGRhdGUgdGhlIGJpbmRpbmdzIGRvY3VtZW50YXRpb24gd2l0aCB0aGUgbmV3IG52bWVtLWNl
bGwqIHByb3BlcnRpZXMuCj4gV2hpbGUgYXQgaXQsIGZpeCBhbHNvIG90aGVyIG1pc3NpbmcgcHJv
cGVydGllcyBzdXBwb3J0ZWQgYnkKPiBvZl9nZXRfbWFjX2FkZHJlc3MuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KCldoaWxlIEkgYXBwcmVjaWF0ZSB5
b3VyIGVmZm9ydCBpbiBtYWtpbmcgdGhlIGJpbmRpbmdzIHVwIHRvIGRhdGUgYW5kCmNvbnNpc3Rl
bnQsIHRoaXMgZG9lcyByZWFsbHkgc2NhbGUgd2VsbCBhbmQgaXMgYW4gZXJyb3IgcHJvbmUgZXhl
cmNpc2UsCmhvdyBhYm91dCBjb25zb2xpZGF0aW5nIGFsbCBNQUMgYWRkcmVzcyByZWxhdGVkIHBy
b3BlcnRpZXMgaW50byB0aGUKZXRoZXJuZXQudHh0IGRvY3VtZW50IGxpa2UgeW91IGp1c3QgZGlk
IGFuZCB1cGRhdGUgYWxsIGJpbmRpbmdzIHRvCmluZGljYXRlIHNvbWV0aGluZyBhbG9uZyB0aGUg
bGluZXMgb2Y6CgpGb3IgYWxsIG90aGVyIHN0YW5kYXJkIEV0aGVybmV0IHJlbGF0ZWQgcHJvcGVy
dGllcywgcGxlYXNlIHJlZmVyIHRvCmV0aGVybmV0LnR4dCBvciBzb21ldGhpbmcgbGlrZSB0aGF0
PwotLSAKRmxvcmlhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
