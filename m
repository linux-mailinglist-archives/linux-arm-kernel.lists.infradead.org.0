Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A26E1FFC9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 08:45:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+pn1mTw293vJds383+Y2QpZqbe536s6GGKXSeYu490w=; b=PeE4+AJuDxkxw0
	58T2W4Mkp29nb2gbqsGotWqfzVCsE9ceBMpugvovU4eIde4D5mha4Iu8TNy5uIz1jDgkJCiEhOoVH
	/cvVaBs3mI8SU2Imi2pMyx+QKmIi187X+DBY1c8MkYXqYfI7udXVI9G0wpaomBEe4yQ978M6rAUTw
	sXIF5J5QByne1/v1ABj/MXZQqg+zK+DW3qzkFQCJ3wQBvcspeC42WHw0804N83XhzKumd/KbhuIAD
	p4ILMWjIlY3nIGm/3fuLKPzcEFBiJrrwZHw4nnJgff0qYVPGidxpO5gEQbsIMOgxA4djsk4K6ABGu
	XXWPQSeQPVYXa1VN66oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRA8r-0007VL-IY; Thu, 16 May 2019 06:45:25 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRA7N-0004fh-DI
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 06:44:02 +0000
Received: by mail-lf1-x143.google.com with SMTP id l26so1659143lfh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 23:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=XVk2NhQ8YjsFsKKnVdQgtNVF90BBt5J4jFFUo+yNxQc=;
 b=kOXu7EcjnR04nrV8h/Tzio9Yv6Gssm01kGp4hsT8Ub06fVBwVqzVfOwrnWXaZvf8Rz
 Hl1Hl+pWCDi7fFJGghES5x7nEMRKPKdo7JWWlZFMQipwGw+0JHVO+um3LMDevN2KOJ/+
 xTgmfTo6KGfqBMscnj72JSGHTUWdGaPlGjKpEcRHpE+l84WEdjNGdasOmhUk9CTThMkp
 kIf3rtfBaG8Z56j+p73BOMCez3+/vNTbrMhWurXnw0SvaR8qOQC3sASXtK1FZiEBdX7n
 vzt/7XNbaf7mCnvIvt5M5tjwWi1yak/tFXprYFzNbH9idjQ83E7i1qoAEf+xExci1LDD
 XeyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XVk2NhQ8YjsFsKKnVdQgtNVF90BBt5J4jFFUo+yNxQc=;
 b=byIZH6TmomYf9oe2f/dV5XIxmigFgbCYZUp1VXNck7L29xgvXZ3W2KTjkNBdMSLtGK
 ilrxwfyLqUQBaPtAG0d72Yq3WgBoSJ9yJF09UKfOkuIyxpKIj6QYZyvKUXdrhy+CvIJu
 ukzA1/RIm69qIvUMUeoismcesYvnS5kr6gFZmj0xAAWcQ6UCr1qA/Z/eZPoSyKAEcz0O
 i18F/qW9T/6rmEBNjK4EGQeC16iy7qh74CkeLBlEM9CjgLcnDeNPXcX21tAyQTLechq0
 d4Nn1Hd4AxasJQOI95luieoevEdJhfqHhZF3ua8GPI2RR9OnhvWcECn7FWauCH8urf0+
 1h3g==
X-Gm-Message-State: APjAAAXARK0VzyZxx9BPL3GIGHTBvtzQR9C372eG8KZbDJSv2JwHYCl5
 Q4SP4VUNHx/sYImalinlPBggFw==
X-Google-Smtp-Source: APXvYqylpwdNHrLWuQG2pKY/Vly6cm/b3JA/jJmhw8z4s009mo0OfFyUDZZ/Em/lMdGb4YKfBCmCgg==
X-Received: by 2002:a19:a295:: with SMTP id l143mr21999781lfe.83.1557989031434; 
 Wed, 15 May 2019 23:43:51 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id j19sm779157lfj.52.2019.05.15.23.43.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 23:43:50 -0700 (PDT)
Date: Wed, 15 May 2019 23:22:08 -0700
From: Olof Johansson <olof@lixom.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 3/3] ARM: ixp4xx: Remove duplicated include from common.c
Message-ID: <20190516062208.dhl2bce5pmfhdqic@localhost>
References: <20190506063109.3072-1-linus.walleij@linaro.org>
 <20190506063109.3072-3-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506063109.3072-3-linus.walleij@linaro.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_234353_823124_D5807498 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: arm@kernel.org, YueHaibing <yuehaibing@huawei.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 06, 2019 at 08:31:09AM +0200, Linus Walleij wrote:
> From: YueHaibing <yuehaibing@huawei.com>
> 
> Remove duplicated include.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ARM SoC folks: please apply this directly on the IXP4xx
> branch where the IXP4xx rework is pending for v5.2.

Applied to arm/late, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
