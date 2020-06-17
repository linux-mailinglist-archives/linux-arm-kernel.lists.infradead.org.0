Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 969F21FD79B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 23:39:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jF6HjOhqC08dGOMPoKBiR5TaaWihaOYXLk9SgpNsEok=; b=J+3hp355UeewzVGyINMIYK64u5
	dufFhObW8dnZw13sDvKxc3wb/XuK+GSGfjpU2tEubqt12u7+yk3BX/ajgCDHlmq6XrUsEG5l1AphO
	TDaVemDVHr7mKx09h6jxbfLgreF5zuo5Yls0EX88aomdaUmfk69Ov15H13QyEp8ZDtSFF42xKr/EK
	y6NqU8Zwi79RE/2I3RY2z6Y3+TupGNUIvNRfrTYfJLkfOMG12+cTZJ9kPVWk7pRXumceBTyVvXrCj
	B4nsL1YP6q4VkjeSb9/pxzrkE1iYnotrbq9YtR9wbzidyzX+urcgPX5ZeEjNxQvD0fqcDaQkXkl/C
	kx0GsYUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlfmf-0003q6-Gy; Wed, 17 Jun 2020 21:39:49 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlfmR-0003oc-G2
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 21:39:36 +0000
Received: by mail-pl1-x642.google.com with SMTP id k6so1531329pll.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 14:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=rLvBGjiO+L3wUJwmseM5JxfmJEyzpxUO8YmO65Td4oc=;
 b=CmwYkf8AEsp0zIcYic3FHDk2QqCd3RwkLH0UnvSHyICn2Ad2q+hF9SH2ORd/yNl6s3
 ZT/M2d6xzBzUtAmCU+OgLV/HIkIqJXsbUGPmD51AMcp8jTnx1/Zhqb/a/6zpU4A1GabR
 yo6P55EPKhbfefcvRXfu+y3IsBrjGa5IKLYv3q0ID13USatYvqNaieO8ub5+X3t6PsO+
 rSzrrI2RlHniSG08RmBO1DX/gxosK4Kqkcqmo0NDxNhAzf+5JP0rLIstSJK06tcOKm4h
 NZsNJq5dh7VWAO6bDXza4RQGeZDonVwI27aUX7C0tYT5uaT+p7q0Y3a58ozefA6cvNi9
 B3Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rLvBGjiO+L3wUJwmseM5JxfmJEyzpxUO8YmO65Td4oc=;
 b=f17h1PybYXEtcD7Vzcl8nmnIcuYhwrZ5orrcfa1jqYBHvB3iVtrGE/D11k76OH09ml
 YF6Rolz3ibS3Vg10R9W9Ay5bxu9mrFHz1LjX5x+PRObShHb0kBIz3ugd0lbDXPZ/nUTv
 znYGX8DqOzDkhCIj5ayvD8DPQiGnQtj2o8fFCoZGhESuW27o522OYHcVHs1e2cx/PBz5
 snCFagGl30sJ4zAJUqzZxImKW9I6uUX7EcQYwc0ZBu0En5DPaGrwgkYp6wbWYBpAyHx1
 9g23rxxW4h4o3CFlJhf0praOYVilYQb71MZbLSmLuJadt08d+t67VdiNZ/xdY6r3qvdq
 03+g==
X-Gm-Message-State: AOAM533+K5Rf+bG5Bgte9FGEfeTK8jQCTQLEbJWwlMoLg0TFwHC3P2DU
 cmJmehkAk6ZTWXC1u6D4ftc=
X-Google-Smtp-Source: ABdhPJy3b4v8K4VFeWwtC/1UQfJbYMEh0TRO2v4ppeU3sOMOh5f7pqjt9dp5gfEn27JISvSVTMx//A==
X-Received: by 2002:a17:90a:fe88:: with SMTP id
 co8mr960302pjb.209.1592429974942; 
 Wed, 17 Jun 2020 14:39:34 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a12sm431101pjw.35.2020.06.17.14.39.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Jun 2020 14:39:34 -0700 (PDT)
Subject: Re: [PATCH 3/8] mips: bmips: add BCM6328 clock definitions
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 mturquette@baylibre.com, sboyd@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, robh+dt@kernel.org,
 julia.lawall@lip6.fr, jonas.gorski@gmail.com, lkp@intel.com,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20200615090231.2932696-1-noltari@gmail.com>
 <20200615090231.2932696-4-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <8d3d8a53-02f6-b780-b380-b07e275a1b27@gmail.com>
Date: Wed, 17 Jun 2020 14:39:32 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200615090231.2932696-4-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_143935_534841_7B1B2899 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
IEFkZCBoZWFkZXIgd2l0aCBCQ002MzI4IGRlZmluaXRpb25zIGluIG9yZGVyIHRvIGJlIGFibGUg
dG8gaW5jbHVkZSBpdCBmcm9tCj4gZGV2aWNlIHRyZWUgZmlsZXMuCj4gCj4gU2lnbmVkLW9mZi1i
eTogw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KCkFja2VkLWJ5
OiBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4KLS0gCkZsb3JpYW4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
