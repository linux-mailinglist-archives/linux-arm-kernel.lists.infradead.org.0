Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0825D1C254A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 14:30:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7yk3vxkzyi+DffFqkjJhhlVHFkuZMiRIDotLiBTyUVc=; b=W4RaoR5+gyDB3z
	LE12XbLICVcZZHLbqtD0ivHjWxHTdqGAfnjiXKqQUPiDTTfhFo0Ao4XLlPLbm6FOt60vyq4/CEPgT
	s4hyZgrj5py8ygwbnSU9YbeTl1HCuIRDfNptqil9X20uVe6dkQpIMi1IwA5LBlGiPZ3UBY2BgQ8BL
	T31nGEwuue4Tncd0uRx9lVsOTD17HNRUD5mdAKxwlpnJCBC+nY02MPcBkd0SzqErSF+/XVu88hzui
	1+A1JoS/ukjEDEEWAmadNVLpVbWmtBnRKalMWk5YwAnWLqFAYvpSHvmV1/QP98BM2lUUrBl09Ka7h
	Ao3ijDykn6e46Disa9Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUrHt-0004Jc-I2; Sat, 02 May 2020 12:30:33 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUrHm-0004HH-CC
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 12:30:27 +0000
Received: by mail-io1-xd41.google.com with SMTP id f3so7442566ioj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 02 May 2020 05:30:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3uQvbmBtPfau0c36fVvnAuHUvWsyQdwrd424BAs7J+Y=;
 b=UXBFXl71pOYoRRRS+69JMI7kA/Bv6mS1Yx+8Xjs48McZ4AtgCisNneooKsURx+qMF7
 Z+Ip8/VkFZrYl9mSllXS27y8/l7stxnKMnQIkg3V+0at2HAPkOAn0ubBy0qTwQcfNWmq
 c1rTKavWivbWGyjxRL7erEIvFW8NNEoL8VipSxHt8aBnhoMrFVpNWndaMbuaSUJDEDnx
 4EryewuRfShz3kyrMYL/8f8DLxsPShSc0ikmbJi2zNTZXhAB2q4/zWbFr9SRr12T1CfD
 vjbm49l37Dea5S76BW66SYUWH6UpWFanaAL3lff4eM7zokC/NDBCy0iT4t+J9tHcBklB
 o/Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3uQvbmBtPfau0c36fVvnAuHUvWsyQdwrd424BAs7J+Y=;
 b=DOXwBV0lArLZ240IbRcTA9k901r+5sHHjFY9ajuvgsGtVURBKnhpQ6VgNprUM0fvAo
 cb8XIZoxv5YzrnIeKM2QnWRReQisfX+X9S84PIEU6Hn7Hp4ut7HEpSY6ABQvk5uvy6pm
 R7GHieYUqJB/FNVoG9hnlnpFiWDgWyy0fGz9TJ5YWI8pkBPCYnOnjiFrib9DTEYJ8K+M
 /XdRsKSEThL8TB8Wd4q9LzQW4NUOlJbQ3TNcR2ezuCVtqYCEcrL6cRj/qGMqXO84VaeG
 ylxZKc0Vg0elgVeN+YFX4yM+irr37Co2E2cLx08+1wRpykoWCQtt4v9nBP2TWAZ/gsMX
 YCsw==
X-Gm-Message-State: AGi0PuaYqnn9m7z7ZLSBJ5Z/GX8OkjwZYvomU3Jo5IWX4psJA5gkVSA7
 kGCWi+nuOJmg0nQcgdgHr7UvI9YF6HpmS3zVbPxAl5nI
X-Google-Smtp-Source: APiQypKjQEJr50SSD+wZTKC4UtIKG9oBaPBilJhbM81K49d+oej84dCFNh0SFdsE2H8POwnSgGZvyGv9VRtL6QGheUo=
X-Received: by 2002:a5e:8203:: with SMTP id l3mr4649643iom.35.1588422624364;
 Sat, 02 May 2020 05:30:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200306103839.1231057-1-aford173@gmail.com>
In-Reply-To: <20200306103839.1231057-1-aford173@gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Sat, 2 May 2020 07:30:13 -0500
Message-ID: <CAHCN7xJ+3kvkt2TGe3j2JC6YVbxgsOzrSrDN6jaae2TZskOu4Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: defconfig: Enable IMX27 PWM controller
To: arm-soc <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_053026_443667_44CD6CB5 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Adam Ford-BE <aford@beaconembedded.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 6, 2020 at 4:38 AM Adam Ford <aford173@gmail.com> wrote:
>
> The i.MX8M Mini and others use the i.MX27 PWM controller.
> This patch enables it as a module so various boards can use it.
>
> Signed-off-by: Adam Ford <aford173@gmail.com>

I don't know who the right person is to ping for this, but it's still
awaiting approval.

>
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index a8de3d327d03..d19ca82b3c40 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -830,6 +830,7 @@ CONFIG_MPL3115=m
>  CONFIG_PWM=y
>  CONFIG_PWM_BCM2835=m
>  CONFIG_PWM_CROS_EC=m
> +CONFIG_PWM_IMX27=m
>  CONFIG_PWM_MESON=m
>  CONFIG_PWM_RCAR=m
>  CONFIG_PWM_ROCKCHIP=y
> --
> 2.25.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
