Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E42F45F9C7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 16:10:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ARG1BfeSVrMhwr4OI/M5NnpMuGy/CrdmbzQsQULnGhQ=; b=C+mPSAMxto28OJ
	4f0P7Z4U3100+YOFqpawU+DP5BBD5qJKfphqKPhYfar7PmHKhtSlg53PtiEH+UYrAI/PGxUY3dywt
	gBBmuPk9q3IdgWIIuVxgYFP+drxR8GkW7lGjIJdzus85WyaPkEfxzJ0cH9uJGnfnTq1xD6/2NHRD9
	NCK70VfE+padhDyT3pZ/KYmQ2rEGNxUSl7AyUAB8zyX3IhXzm2iV7br4wH+o97DXSdqZxJ7BJswL/
	d0L0PAuZkfwqH/L2bZLVoN9aSCkA15+NqL1j8yWSkUDqQqvxNRgQqi8bf3ADVAf6D31z9LBqg0ZoO
	boDckECtGYW8bTzLxKtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj2R6-0006mc-G6; Thu, 04 Jul 2019 14:10:08 +0000
Received: from mail-ua1-x935.google.com ([2607:f8b0:4864:20::935])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj2Qr-0006ls-0J
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 14:09:54 +0000
Received: by mail-ua1-x935.google.com with SMTP id j21so1183185uap.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 07:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mQ5m8rYbT8Z2US94ZaqcngLhWVtKzNxmo7qmupLUZ7w=;
 b=oIqiaWuC6upmXjZw83Sk7A7AN228dkex7qLAmW3GCy+0EdImPA38Kk1jNfvfdrZi3V
 bhdR7xb6+PRPFieFo6k5xXWKmR1zWZO2TNP+7r3I4FGpkkwc588AR5j7TJ2l9+07uWmG
 mptGkWYKyHhVPxQUywF6hQOLXeX4k+q4AzscwADbbBwmytmPpN1YtLs1e6RLR/uOVoJO
 e7Lqkp7Ol5BKEYqrzorBo+PvwCgZJrMN6FLWd5OgJgmMDIjmSC/Dtrvj0F6QbItWmz8Q
 GEnvd5zoUJsbxd7atboADB4j8JGLKNWGEET4JkCvbgvTP8bv1aeCrtb10TIA3tScAfw/
 lQ+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mQ5m8rYbT8Z2US94ZaqcngLhWVtKzNxmo7qmupLUZ7w=;
 b=gzQB7UxZlFTJMiOV4OEY8QUIJpCwviMfprfHTiEWhQs14K0UlwfgmDbYjRHgoTErat
 sgJwhfXVrRl/6dAxE13Fg6uh/pmqRXoEC1doI4SH3sOGIajF5so5QMbdurhMzx8m6y3O
 NH8jof6djZBvfRvZO9Sdlg5XO3BEGe4tpLdPf/8PBVYEvJGezqz5ORCPmNM4G18BdZzS
 gAZ7+CRymKwqYexn+iSz8I3cYiiaIIBHSBPGfmWLpyg8Ww+NmP/iz2YPQJ2cudDBsKAa
 u65vc2eOzJ2DRuWBT+PTEQDcsV62CuLKyC1hT5cH2r6f6h2+QTJ9YIv6pdrByLfB19e1
 f8dw==
X-Gm-Message-State: APjAAAUcaNUAlnH8/X3I5iX/lLw24WgzOAcmmqnt7F7jS+bOxOVvCF2h
 FtAj0j0SzS3dGxkSQ+aLIVHz6tiekukB6Eadl9Q=
X-Google-Smtp-Source: APXvYqw2dNxxbf+8Wi66NiMCCn2WzNJSfu4KOQyo4/Q4ZNqttIe/PSYYLn2ptK9W58HniHDZdcr9VegpbZ4mY00GnBg=
X-Received: by 2002:ab0:2556:: with SMTP id l22mr16501064uan.46.1562249390682; 
 Thu, 04 Jul 2019 07:09:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190704023436.4456-1-huangfq.daxian@gmail.com>
In-Reply-To: <20190704023436.4456-1-huangfq.daxian@gmail.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Thu, 4 Jul 2019 15:09:59 +0100
Message-ID: <CACvgo50s0oh3tRjpUxeTkpFGJXahwB72hW=cc-de=2MG587m3Q@mail.gmail.com>
Subject: Re: [Patch v2 01/10] drm/exynos: using dev_get_drvdata directly
To: Fuqian Huang <huangfq.daxian@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_070953_056751_2F2A198C 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:935 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (emil.l.velikov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: "moderated list:ARM/S5P EXYNOS AR..." <linux-samsung-soc@vger.kernel.org>,
 David Airlie <airlied@linux.ie>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 4 Jul 2019 at 08:26, Fuqian Huang <huangfq.daxian@gmail.com> wrote:
>
> Several drivers cast a struct device pointer to a struct
> platform_device pointer only to then call platform_get_drvdata().
> To improve readability, these constructs can be simplified
> by using dev_get_drvdata() directly.
>
> Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
Thanks for the update. This patch is:
Reviewed-by: Emil Velikov <emil.velikov@collabora.com>

-Emil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
