Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8901F9D76
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 18:30:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1V2R04GJpVKV5tBsQTcwrjFINiitksXooWOm4JHBVlI=; b=JM0ifjsJBe34exEpv//dLulfKq
	zQJMVHHkM/NhIE4A413ydHx86XavSEc/NlLyywn2AfZv2eWc9Odcto3OPm+/SEYZny0/NSqS4IHBq
	XrA7XRJ/53fyI8OdTiKNfLWtZWSYmr9P3ICQ5wjxrF4M+VHJYlKrXrQmmuHLzGuFYM9ldAHRWKb27
	lwony8eOW+O/OeJZLBcTcJNQsgdbK50E02Jz8p8/QZuVmq1YkT2H8EPQwOEv/whlhHNiwmTCjI1Ns
	cdxpwSEJUb09U5OGB5Dh9uXRA7exEK+IAlG9ysjSIQupKGrkse0nNRQQdEnrYWC9V2Kd0zKBRALFA
	0LPzPmDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jks0W-0004rE-R1; Mon, 15 Jun 2020 16:30:48 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jks0C-0004hF-4Q; Mon, 15 Jun 2020 16:30:29 +0000
Received: by mail-pj1-x1042.google.com with SMTP id u8so62056pje.4;
 Mon, 15 Jun 2020 09:30:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=ASmt28ZfnzD93uzKYATIUhSUcUfooSj22w2duyIt7AY=;
 b=et3m76/iHThHfneXsKeu5YnEa+PruBQQXKk9HqWY4ZoZOUTlnPRy9n10dLSgNeBqXa
 FxaXy+tVLhlV9Nsa/d78ifONIRhgp82gFfUecYCgQJrV7SSRBLVS3Hdm5WXCSqjKFz4U
 lxMvOyk7im3iX59lVLBFwEKrrauiggT/Eao2r340PMzYLo0Tw8nNE/2niSDKaVmaL2s+
 VwIcEccOfwRi38aACDklaFwAyPfPtJc1NPTfoYVVRFb+4MdiKCsOQ/MqgsDnpuKyoDZG
 KPdGfDG/CRCBvpQV8TI3Ud4B92KuEkSlF36OivFoH5megJrnyFKDFINZrlxH6vjNhHzS
 78eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ASmt28ZfnzD93uzKYATIUhSUcUfooSj22w2duyIt7AY=;
 b=eD6ZB0wJEnsDYFlc9/oqlXpcv1sX055/aaXGzA+v3fqpyhS0IqHMp18Ad/yd0G+egG
 1Gtfss9uYj44LEKnYxz3GUW1D94EFZLQ0jBbKOxfbrCdv6gL5IPajnsXqy0MC+JFRv4i
 HtPlC4vyXqOXRA3zWOYXkMJBeJI+IarEhJWohsUagp1uzZpLtr0LnW6xxxXL37/kNEDo
 tGBJjnk354z+xRjFa5/txBhGM7s5DCum7oeMhYr0PXYcb4TUQjHS3FAKvRO8NEq53N6H
 Vd1KuYH8bmRQ1RxsAiF3N/n1C2qp0zM/rWT3+vMMLNxICzg8WboB0ssgZ32UrqFvjC8l
 sRbA==
X-Gm-Message-State: AOAM532c4O9XbCigmGlwzKzrEPuSmdtvpa3qwV2wp9HWS2ky77Ao8crj
 N/qOYXDgq3LYNCsegaFGUNnftzZB
X-Google-Smtp-Source: ABdhPJxnlnBVRkWoafdExfTsdOI0XxhF/LQdTziOsh4cHc+YwBthLB9vTd2LIM4dNN9St0wT9gR4FA==
X-Received: by 2002:a17:90a:6886:: with SMTP id
 a6mr154721pjd.170.1592238627113; 
 Mon, 15 Jun 2020 09:30:27 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id y5sm12126709pgl.85.2020.06.15.09.30.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 15 Jun 2020 09:30:25 -0700 (PDT)
Subject: Re: [PATCH v4] mtd: parsers: bcm63xx: simplify CFE detection
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 tsbogend@alpha.franken.de, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com, jonas.gorski@gmail.com,
 linus.walleij@linaro.org, linux-mips@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org
References: <20200612073549.1658336-1-noltari@gmail.com>
 <20200615091740.2958303-1-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <748c496d-cdc4-d243-71bd-c7f16c2f8311@gmail.com>
Date: Mon, 15 Jun 2020 09:30:20 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200615091740.2958303-1-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_093028_174011_0AA276E2 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
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

CgpPbiA2LzE1LzIwMjAgMjoxNyBBTSwgw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIHdyb3RlOgo+
IEluc3RlYWQgb2YgdHJ5aW5nIHRvIHBhcnNlIENGRSB2ZXJzaW9uIHN0cmluZywgd2hpY2ggaXMg
Y3VzdG9taXplZCBieSBzb21lCj4gdmVuZG9ycywgbGV0J3MganVzdCBjaGVjayB0aGF0ICJDRkUx
IiB3YXMgcGFzc2VkIG9uIGFyZ3VtZW50IDMuCj4gCj4gU2lnbmVkLW9mZi1ieTogw4FsdmFybyBG
ZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKb25h
cyBHb3Jza2kgPGpvbmFzLmdvcnNraUBnbWFpbC5jb20+CgpSZXZpZXdlZC1ieTogRmxvcmlhbiBG
YWluZWxsaSA8Zi5mYWluZWxsaUBnbWFpbC5jb20+Ci0tIApGbG9yaWFuCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
