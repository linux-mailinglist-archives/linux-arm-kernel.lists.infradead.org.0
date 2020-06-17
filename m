Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA211FD7B2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 23:41:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=goOp1OUBKZtJyEZJM93jfFmMePX3CoDq29TxzEV+xYw=; b=KB4ZqE7G9cp4V66wJfR/qcgsgP
	v6XbAJoTZd6Hgu19OnNNzIGrOqwkqh+jlKnVuw3Ccj+ntr0yz/ElHNT+YzpEJhxuT4dhQGMSpxp4T
	Lll6UHgVYgwmsOfd6nTj2uwLQaD0xAcZCMLtRuWiy1nTW1DLHS5OYKHPV3nZv0+pubGrDZvdxENQv
	w3hC+7/1uASG1GKOHvItyqgoeVZCDo5sNwPdvIq5drP1zbsWlGXuVg14eNHs4Zfg2DDcNtbRltNCr
	5OhGS3nnazJ5+jUFqmhJ4PUiEfdJ9JLw5TQ96nSslmGcpfRhPNyw81rNg53PmXQYETAI4YWE57Zoz
	+8TL5KTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlfoK-0007aZ-4x; Wed, 17 Jun 2020 21:41:32 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlfnl-0007Ag-IU
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 21:41:00 +0000
Received: by mail-wr1-x441.google.com with SMTP id q2so1498398wrv.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 14:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=L8KQGYBNXCs44/bdoqCRORNs1kx4kRZ8Xd0B+XPcWlQ=;
 b=STIQ91+m6JuleAes4P5UdW4kW6ecexAAcwd95QzWO0ocf+lpG74ag4wecLCIYg+nsC
 zr3UqChiw7EVoYpRPzjbIXHDtdkJUhtzINvCUkp+FhuBpzs76SXLQ6i6kdKVxzAfspU6
 p6Yl71sO4l71ECbA+SyUZqaC/v+WUJWS0VizYb3DS9mXSY09VP09wQiL7siAGx4WLp8x
 Eyj3dXKKQa7/dh7OU2tnuB5EzXGcjG1Q10lXc0WM4w1Xd2IAO99Kdj/f7NbB4tG7UwPM
 NSx/D2QVGcZ/Z5VFauIAUbmihZPDIR/2o3O2XpMfd5hFEj0oyCo6e4288r0TRy9cYPAd
 oBNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=L8KQGYBNXCs44/bdoqCRORNs1kx4kRZ8Xd0B+XPcWlQ=;
 b=lO0ESi7rgDNU1F0FIZqqcbTF2p4bKBTzu65SD0scDmoAfr4r3y2z0Uk4rXRnpwCZ17
 q1mRW9JXnLFnwjSUxMculn6/CQXN8BAFxGENIu3Ar1DA04GyRKMLLFWg9oNidVM6+iFE
 qlF2THcoAH0TZhDEefHonp5373utvL5pUK9+y0+1Na4aMLoXAw+eH3oZeNm1ipgeurHk
 I5HFDw1xR949sR134VUvYr74KvkzY4TXoLERP46yZ8w6W5BJoCFHbqFjCG4NoWJPB60t
 RKaxwtBqsYUxJLKcg+oeID4Y4G4ahK7ctgjQRgiKo26hNIZAluYg00d/JM8AAE4v0J2Z
 RZOA==
X-Gm-Message-State: AOAM533XPlDGlWXEl9TOhJRt14aI7GXzDGy0vGq+JpSgZ/bo8qHrkv3U
 xp0ey11gMqaQWm20TD6f0+Q=
X-Google-Smtp-Source: ABdhPJzMdWex6wUFcFECN0CEWPasEMZbh90C++J8UTRk4A1GUy5WzH/OGa6jFsQFkZ2aKNlPQzROvA==
X-Received: by 2002:adf:910e:: with SMTP id j14mr1176209wrj.278.1592430055834; 
 Wed, 17 Jun 2020 14:40:55 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 y16sm910876wro.71.2020.06.17.14.40.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Jun 2020 14:40:55 -0700 (PDT)
Subject: Re: [PATCH 8/8] clk: bcm63xx-gate: switch to dt-bindings definitions
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 mturquette@baylibre.com, sboyd@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, robh+dt@kernel.org,
 julia.lawall@lip6.fr, jonas.gorski@gmail.com, lkp@intel.com,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20200615090231.2932696-1-noltari@gmail.com>
 <20200615090231.2932696-9-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <80971cc7-3a69-730b-e3b0-bd963d47ed47@gmail.com>
Date: Wed, 17 Jun 2020 14:40:50 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200615090231.2932696-9-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_144057_656213_D111AE26 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA2LzE1LzIwMjAgMjowMiBBTSwgw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIHdyb3RlOgo+
IE5vdyB0aGF0IHRoZXJlIGFyZSBoZWFkZXIgZmlsZXMgZm9yIGVhY2ggU29DLCBsZXQncyB1c2Ug
dGhlbSBpbiB0aGUKPiBiY202M3h4LWdhdGUgY29udHJvbGxlciBkcml2ZXIuCj4gCj4gU2lnbmVk
LW9mZi1ieTogw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KCkFj
a2VkLWJ5OiBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4KLS0gCkZsb3Jp
YW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
