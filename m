Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 651661FD790
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 23:39:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3SbzIoxfiC7tfIBUNpwB0iqGzFBTMHjbKdARxcEkOXQ=; b=j2ypmtekMAerYX/T+ifjVYOHJu
	R7qe19p+CNjvETVElPKyLje1bjYcKRBlc/qQhff5HKa7hrh6RiuJAZEafMfpmzArIBWo6T0Py2rI6
	oz+oZUPR0nf15MAlJbSTbRpwxjEokP4pzSco/RqQRKxjhr/qqHvC4lxAlRLcf/V/FbF7bUfbH2qZg
	lk5wWQxjZyHmrlXGL2Zol47F0YY0S8ra1Awg9cex3VCcHLbzZ/Tn1WIoAVie8/r2YQDlQK1uN0u2e
	GcEkPol/TD3LVEXLqQx8pUFR864qRbFNjQjLiUYKW09oybrGlzK4ScitoYtjICAq28MPo7R0YJC9O
	FKK/J5ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlfm2-0003Lj-E8; Wed, 17 Jun 2020 21:39:10 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlflt-0003L9-CX
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 21:39:02 +0000
Received: by mail-pj1-x1043.google.com with SMTP id ne5so1582699pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 14:39:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=Z1L8zEnT0ez27hMPJfvySv6oSz2yh1sjZDdhcO8RfP0=;
 b=WVUQiX4n9B4WfCJBET0HMR26vU5YifBBC/wyJt0FXFo1xS/PEUt4P9j1Yjm2b/b5jb
 8zpmP4ZHRZNWEpI0mY/XCZ5N2kd2e0f/b0f6vqT93FbsNIQtb9ctyblIiWSX2c81oH3g
 UQ9u/NivMKKM11OP7PxOWnqi271OlQTDB0idgVqXrgtxJkAJNYOZ7n8mQCDCfFz9jE7X
 f8jTsMp06G6yb546m3ZsPNfPvOcWgkAYbDaxiwa8XgBxrkSU46kWFeRBKyrl0cUw8e3D
 vI8nCAfl2ECyZVAuS8wlcSTkeEVKDuDRohwZxbRdneC5Be4FjTOwLNEzffi8AcWPV8D3
 agIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Z1L8zEnT0ez27hMPJfvySv6oSz2yh1sjZDdhcO8RfP0=;
 b=Qt3b4ksgwqfG6o3D6ChHwczDrwkRN4Tav/eV3N/r4IWSt2Ok3wQA/SQXB3ssKHNt9B
 FeOYj2BqrJvsaSsm1nOm2vHb/cI1mVRuS4HRYdHD6ZdZed2sp/Y68K02T+kMoEnfbQyI
 yoD7vZVVa67dCAokPgQcGaRBgLvrTYj2q1A4I4y/KpJrSbV0ZgKrAZclFQSHw0PdoRXQ
 kh69PwjI5hEOsS2G3AFMb7lVHyhzQ94vNt6oWs2rQyFcxcxRXIFWVtTUxRTzi6AwnNJM
 8io1f389ZbmNQx4Et9Rxlp5BkJ0iZLHnpc6NMXV1jOU4nrB4937kc3ugEYLA1H54PuAp
 3j8A==
X-Gm-Message-State: AOAM530kQ2LAqcJAHNfB+5Uala+5Qe9zaNPqoJ/LFvBLF62dRdgajzfy
 sCtwk6saWPk8os+2DqL/oiQ=
X-Google-Smtp-Source: ABdhPJz97eFcIZRAPlw+wrdz7tC9hhXVeN978btuN1qnKO9axu1PeT/YdSe8nJFrZiqd3ydWZR5BOw==
X-Received: by 2002:a17:902:a410:: with SMTP id
 p16mr897252plq.283.1592429940900; 
 Wed, 17 Jun 2020 14:39:00 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id r4sm668701pgp.60.2020.06.17.14.38.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Jun 2020 14:39:00 -0700 (PDT)
Subject: Re: [PATCH 1/8] mips: bmips: add BCM3368 clock definitions
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 mturquette@baylibre.com, sboyd@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, robh+dt@kernel.org,
 julia.lawall@lip6.fr, jonas.gorski@gmail.com, lkp@intel.com,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20200615090231.2932696-1-noltari@gmail.com>
 <20200615090231.2932696-2-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <699e92c7-d84a-5625-be90-8c97914d56bb@gmail.com>
Date: Wed, 17 Jun 2020 14:38:58 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200615090231.2932696-2-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_143901_424882_96A4488A 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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
IEFkZCBoZWFkZXIgd2l0aCBCQ00zMzY4IGRlZmluaXRpb25zIGluIG9yZGVyIHRvIGJlIGFibGUg
dG8gaW5jbHVkZSBpdCBmcm9tCj4gZGV2aWNlIHRyZWUgZmlsZXMuCj4gCj4gU2lnbmVkLW9mZi1i
eTogw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KCkFja2VkLWJ5
OiBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4KLS0gCkZsb3JpYW4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
