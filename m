Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9E81FD7A9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 23:40:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jfVp1pvEpfJrdmepznR8mEoko4U0XaRN0IWATdwPJU8=; b=d/AeA9UyVZBImUhAtWybTpTD+7
	AuiETKzmmbW9nXSBZ78t8fWnIPME7p80e3q161bKac1nq9QAXMrA849TjVXfTvsAw7MvBZSosAJpK
	jGQ3a7JYIQJh+XwrcrT8+GMRvXnkf7+u8e+V0qgoSJkUPx0DQPtnT90SSE8lOm7/ciN6MhYOcW+cY
	aa6Rxq4pc6YKCYPonSAoWN+y95ZPHuLL5hTZXP50+7cohV3yxBfoPdXKTrc6EzbVV7fqOcTGD+eGI
	UIy8lf95jRLYSy8X6qp0q0cwk77zw05eWH18Jf7/ltwjGBFBz0QhgFDQQHK+AWvSmIuIo46eQI9jn
	bBGiXFhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlfnf-0006tD-BI; Wed, 17 Jun 2020 21:40:51 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlfn0-0004yR-M9
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 21:40:20 +0000
Received: by mail-wr1-x443.google.com with SMTP id b6so3915764wrs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 14:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=TelJDy/akz0cxqXpsjPfZr7B9kQp3Gu4jk4l8uZhhzc=;
 b=mrDkRj6r4yjLNk03b4bjDHiJEXx4K48/qeBW6a8HGNY5AJr8xhJYoOQ0Lkr6sOC1fc
 nAOZQIAxKGRUCT+rJk1TzKFXUYjEOgDNotfGtiqXZF/IWG0PBWr+hznDvSlQrihPkiSE
 qqMO6S1yIx2NcTNSmEGTR5PRHJaIFbz5MveUfu5W+US9fl8mmpFPo1ML1p4hLojt1gqi
 arKIo5n7r4gRIV8RbEqKloMJEaRi2gemUncr3HH8BTHMI64sMUHNQYMPA6Y7+TiyQ/wv
 g7deJSCdGXZT+QhCkfnyU2OgDndlOu0QdzYe4zz7bn8LEnk0FTXEissgfd2tDMnW2XkC
 JGtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=TelJDy/akz0cxqXpsjPfZr7B9kQp3Gu4jk4l8uZhhzc=;
 b=rj9sk5Evo4ninFgK652QRYTKMVREYKqEsZVLVTjFtJ86Ljflj4NJksO+xWbmH+dSAs
 PHdwjh9nh9fQOS+c95UWK1CDjJ7G3aVbt2rqmu9Bs+Qz82EZ2LimvaZucVx1fYAnVh0l
 axjPj6zGCFAggJFWhTLqCihGIPGhqhFf7m5afybn7yOxLb05YkHwvqK6++CI31X4HnCy
 kCFSgSnMgts4JKJmIQhipwLGxC4FMrl7hwH2+FXp+OsOx8ir4itlqgCdmIp8oiFJwuc+
 HPvVCDKYfkvvhNmIZH6PXeAp5R9Klx5A7oMRzRrhKs/p1PER5JFxB1kzyZKMOlWGa+Ce
 juDA==
X-Gm-Message-State: AOAM533l2EmO1prx2Hfc014+upuALbstnw8rcuQLXZbW39SBMnWLmDWl
 IG6kImRY8fbkmU/ReY22FMk=
X-Google-Smtp-Source: ABdhPJziOk076AisKbLb6sm+IehmmjiMlJ7DemnFTkoOMtBbcleHTOJBLz8zJmMRS7DOkh0sjv0K8Q==
X-Received: by 2002:a5d:4f01:: with SMTP id c1mr357781wru.190.1592430006996;
 Wed, 17 Jun 2020 14:40:06 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 e3sm1000404wrj.17.2020.06.17.14.40.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Jun 2020 14:40:05 -0700 (PDT)
Subject: Re: [PATCH 5/8] mips: bmips: add BCM6362 clock definitions
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 mturquette@baylibre.com, sboyd@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, robh+dt@kernel.org,
 julia.lawall@lip6.fr, jonas.gorski@gmail.com, lkp@intel.com,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20200615090231.2932696-1-noltari@gmail.com>
 <20200615090231.2932696-6-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <7c456fea-1186-f18c-cf59-772115d3605a@gmail.com>
Date: Wed, 17 Jun 2020 14:40:02 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200615090231.2932696-6-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_144010_792312_7D24F7A3 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
IEFkZCBoZWFkZXIgd2l0aCBCQ002MzYyIGRlZmluaXRpb25zIGluIG9yZGVyIHRvIGJlIGFibGUg
dG8gaW5jbHVkZSBpdCBmcm9tCj4gZGV2aWNlIHRyZWUgZmlsZXMuCj4gCj4gU2lnbmVkLW9mZi1i
eTogw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KCkFja2VkLWJ5
OiBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4KLS0gCkZsb3JpYW4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
