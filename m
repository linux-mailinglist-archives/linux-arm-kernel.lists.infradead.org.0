Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA481F8B18
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 00:16:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X06JcpQcJ3HDVkEZUjXg9FLHPKiPuozE/HrQ6CuIr10=; b=AWNuYz5EW05LnY
	Wjt6Q2eHLgTRgzFCiGBhpOMVyi4NExtkcuukSEjd+bGaAZl7pYrVfVAB8moDYOMwNinxoM4UPTPfA
	mRN9kG6GQulC8eYJvecsouITWJEhq7RTT55Bx+HIWQh2aHzVP/iaDa8vhmcjLXd/AXbbnhhuilzOp
	CqBfSiwM8o3kzHqQbQqtbx2MpG9a8txbLT84CG+MCE6LXZKd5K7FPJKiZs5Sw4c3nbzLuGbWRSR3t
	ZuYrw52RZyHLI7YEjL1bzEAlkqerLzx++XCgkDi6VvYWJwTeR9RmruzHqJKuImzkvweaTOi39G+Ig
	21fxbPwgD8P8HBOFg9EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkav0-0005S3-P9; Sun, 14 Jun 2020 22:15:58 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkaur-0005Rh-Bq
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 22:15:50 +0000
Received: by mail-wm1-x341.google.com with SMTP id l17so12786746wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jun 2020 15:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=C44Nsc/2DIW6Metz8grkN1P5aC9GoqP/aiWhLmCWYm0=;
 b=ZvVIckVhIsLKFTkOdk8RwO5CnasQlO23IOxj1tFZ/GCrjFMATbMHnpsKuq6FmZJ7IM
 TY5lCBMaAX+XYtP5NSEy6h62B+jrQkEAvw/YVeYEcC/YjuYZnF8G48ptZ1qvya+DJJZS
 rL71UWwt8ZwZlBug1cGctc76z45SwkWVWGIdeBGqAXOac9qvUDDx/KkbhRUUQwxo9LIf
 MBIqQgXyUKKsAshQxT8jtXkvW10w5WdgSE811e9FZ3Dgl8BAjtFazh1AckbkjrJWifYt
 MLJtmO/ltwz4nI/2u6sgKBZcgnun4GjTPsyF3I/nlN525SFq8Jh91mx4BK0Voj6tJb4J
 3vmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=C44Nsc/2DIW6Metz8grkN1P5aC9GoqP/aiWhLmCWYm0=;
 b=cUqhbZZB+hg4C+DWB5hY7ZivQn7Tx5EXC1nQ2MHtndHDK8klh5HLeXuPyW+iq+ri68
 VoA5lJLAGGuoFa0L1sZgBYVlSf+fHtvPn0Pj8wgCF07g0MpxTft3TfDhVWcLhDfOl3zH
 wXLYcssZY19IFaBYB8Ovpm3e55fJ4T4c/x/o+dcF7w4VCVg84xVU7yz7kyk7GXPO5mia
 UuKyxDVelz9RiOvca2GU2dvT4plpidFgroDmwe625RrNgBygvX6uZKrdbnHQ2z6gXAPg
 PEiw/Elb9rsB3I2Vo/XffOgNZibEvJEvDgzo1G15+jw1egOpk6MA3iqEV91hbhlKiyCo
 kyFQ==
X-Gm-Message-State: AOAM532yM1g3K1Wzevil9GpYoejOAuaGMmJvzn5hHjTwgKCtsiTzD0Wc
 nnE7d0FDsamwrowfzUsYWY2MM/Hg
X-Google-Smtp-Source: ABdhPJyzkFjstWBKqkNeC9D/EqTSECbYtWtK8eK6FyzOzcNjrjI9Yvnp4KlsK1Vh4JOKaoROr+NLAQ==
X-Received: by 2002:a1c:c302:: with SMTP id t2mr9619055wmf.72.1592172944411;
 Sun, 14 Jun 2020 15:15:44 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 a7sm20718527wmh.14.2020.06.14.15.15.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 14 Jun 2020 15:15:43 -0700 (PDT)
Subject: Re: [PATCH 3/3] ARM: bcm: Select ARM_TIMER_SP804 for ARCH_BCM_NSP
To: Matthew Hagan <mnhagan88@gmail.com>
References: <c19be985a3e7abc8ac05fc30678475aeadb73c50.1591719237.git.mnhagan88@gmail.com>
 <afd290238d7a7b392aa477590f3d05f3ebb2f9b9.1591719237.git.mnhagan88@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <6e506d16-3147-d18d-c7e3-603bdc93892f@gmail.com>
Date: Sun, 14 Jun 2020 15:15:37 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <afd290238d7a7b392aa477590f3d05f3ebb2f9b9.1591719237.git.mnhagan88@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_151549_406576_AC1B135E 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Russell King <linux@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/9/2020 9:58 AM, Matthew Hagan wrote:
> The NSP SoC includes an SP804 timer so should be enabled here.
> 
> Signed-off-by: Matthew Hagan <mnhagan88@gmail.com>

Applied to soc/fixes with:

Fixes: a0efb0d28b77 ("ARM: dts: NSP: Add SP804 Support to DT")

Thanks
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
