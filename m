Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6833FF558
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 Nov 2019 20:48:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YHXeGf8QfcLhJb5GfNQBS7hqpL2C7xsYhYgtSWVyjS4=; b=YiOxspFFt+Hitg
	rJb2F949QEYToPs6oVU+uWvA/sOzVg6wiOr9N9IKIkn9BcRXy70XedkLK6OxxqTLj+v11esh8esce
	cqHEcd6/OkzXo/oYOQ2vm7djFK1qxPfdYcDsxHTvOr7qOXO6CsMoZpLG/pQxQjG03EfC05Ta6VGcB
	E4VWn7I0yg0fX1xJRzfdJG23/1yUFwebT04lETRoU9f+7/ClWNdtWDhYnMvBWI4MzJ/GjBpGfnIRr
	1Fg1f0wtHYtuHQJMxdpntiUYhN0FYAMwUOJWQCxJaIuNa/F8EvHzbfkJQQEMUafO1VRMYsSbKsOub
	1S6G51SS+OYDWvrZ8oUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW438-0000eL-Rh; Sat, 16 Nov 2019 19:48:02 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW42z-0000dT-NP
 for linux-arm-kernel@lists.infradead.org; Sat, 16 Nov 2019 19:47:55 +0000
Received: by mail-wr1-x442.google.com with SMTP id s5so14971154wrw.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 16 Nov 2019 11:47:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kF8bADSuYOyZZ04T0VZZ38WxPOWk9q6i2kAOnZ54aEI=;
 b=eG8Ac8nL9fJJ4dAxSlZ5w1mlOPQ/aZ44+2vKtS/iCw26fv8FTKt6AqpoUMiPu3pOBr
 Wm46KJ9wUiA9nhrMoDOjF80R3DNyRC8bbZ/wono9/fKwCBzuAqiDb20MjxrXNtAsY6De
 xhEIgdFubj2LpSMBCDZZAdpMbZAbYZhggITGNS/o+rMfp0jaNipFl4Hq+nFiJVhl+1Uh
 0JpZbxWG3JUXhbZZ4U7Huzleg/97V3LYFyoVYvXQYTG120n8YyULMVrGXOmtuuBGJeoT
 qlr2Fgp4DE3rpVMiXtX2fj8CKHK2833jMMxeacBhAk5/2WzPrTakAsOuIGzxz3DJPKcy
 1KuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kF8bADSuYOyZZ04T0VZZ38WxPOWk9q6i2kAOnZ54aEI=;
 b=F6iJWLEzy5mf0aQ7mQ2pIKjAgJG0rZe8QOf2SdMhddlh7gJRE0bW6zuNq9FIlvDtMs
 FaokUCH4sZQvgjaYw7s2iNGyRvPB+XtQb3ngUqjJt/UunUCoViNLcrCd40TM7XA3wyyW
 Djre0XEU9Qr1eAzC1eDaq88s0uyaBkpeeKeCpfIL5QNCbjoKfrHpyvZfZdPh++4J4MDj
 g5e8CXcfuecbnp/63Qy7Qn720ZFaHXx/trRJGAie9pmK8hWPLF3wPxsCf9XGqH1r3TMj
 ArohCQECiobZRny9J/S1Ynh+7HCM1oics//KL2Nk6xE81Wq3GZv40uFdv7eBl76vv38j
 YS4g==
X-Gm-Message-State: APjAAAVtCzLMkDa8pgS/jZt5yap6IvH/gMeFMyrNFQRiTZOEyH18/pGp
 pUoEPzMVd5vmKrKaf46Zl21upz+b
X-Google-Smtp-Source: APXvYqx1+kz8MC/TEjt8V8DXDIvq8MBgjf1a9D6+6mE2GxlbPdRhZqxKarPwAbTsKLoRZIFBdux2BA==
X-Received: by 2002:adf:8543:: with SMTP id 61mr13202158wrh.171.1573933671822; 
 Sat, 16 Nov 2019 11:47:51 -0800 (PST)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id 76sm15319821wma.0.2019.11.16.11.47.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Nov 2019 11:47:51 -0800 (PST)
Date: Sat, 16 Nov 2019 20:47:48 +0100
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH v2 -next] crypto: sun8i-ce - Fix memdup.cocci warnings
Message-ID: <20191116194748.GA23118@Red>
References: <20191109024403.47106-1-yuehaibing@huawei.com>
 <20191112072314.145064-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112072314.145064-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_114753_763078_6F7AF6F0 
X-CRM114-Status: UNSURE (   9.77  )
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
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 07:23:14AM +0000, YueHaibing wrote:
> Use kmemdup rather than duplicating its implementation
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
> v2: fix patch title 'sun8i-ss' -> 'sun8i-ce'
> ---
>  drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 

Acked-by: Corentin Labbe <clabbe.montjoie@gmail.com>

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
