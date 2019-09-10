Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16856AE5CC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 10:43:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RVFjhIbvCSf9DXOaA/jlkGe0HJRBpJH48veXZK4opCs=; b=ubshqJTGEHmuyt5rXg6h3AGa7r
	ImU1c2Dw0arGfot5+XcrF0oqtB4B7MmP03bAHhelZFYZOqH1osQhRqXuRawJn1s2hCbmfdMIu6pp8
	hYGhKqM5M3TG7qIQVN8cmppaJOljsV8iDtMVSZLG+B574tepZFcVYhcNbFE1C9hELjve+cQub/d6+
	VU2+DLb1uUlfX+tZJcv4APBLYboT5YFAO4D8pGPHS3pLFjHjnrLsfC35hKE48kOCDPKBFI7AO2gR0
	/0zYY+cy3ErQDh804pCJIDBf2BsGLDHd+ORZ5yOMKYf3qYAjMpZlKfw0PWh6EbpPgMdIGyKFk1M18
	mzSHFtRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7bkD-0003vJ-DH; Tue, 10 Sep 2019 08:43:25 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7bjv-0003uU-9Y
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 08:43:08 +0000
Received: by mail-wr1-x442.google.com with SMTP id i1so17779430wro.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 01:43:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=nfdC2GGtaooPtZtmidwW3K7yrWTHhue1SpTbAz123sM=;
 b=jKHppvFkO5Gt5906dogykoF3lYe9HZbBaPvbhIUFyv+x7WW/g8Sdj17t4VhfEqZpEB
 q4k4j3WBTG90HOZP1t2HW994ApnivdCukvcifEY+8RQbGxHF4oTeiUeCH1ywXaT/bcZT
 GTxMMZ5NKWsd1gCNCOZ25vYup9pxunGCqnTVnrJ6EOLCk5U328VUNYDCrrYSymggX6On
 18z3mD1KH5AyFou6teiXOU/rPf+/P6ZIrWLNzyBIJC6FMQKDcIrAqyOc6YAdmgDej+2F
 7T49SC1PwKbY8Uyz1vvf3trKAh/IHBpzSKvh6uUF2YuTxi9OlJq4A3CrPj483kpYWcUr
 4Rrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=nfdC2GGtaooPtZtmidwW3K7yrWTHhue1SpTbAz123sM=;
 b=UMxCU/7frePzpKgUQvU7eZTTTX2w4BcIA+zbOwJPG7AzTo4N7kg3/MckDAxZgk5Yhw
 zGvL2JxynQuizf2mTcEBDaGP8kgV/X1Gt5Qowvb3Oyq8cOiNRwa1PK4Qaco+CmUsrN06
 JHPvcKyKQJef66N5dI69oPv4aR4DsnXuowUIVlCY7PBI1gXra+ysQ6u4In0K4lKHZPuD
 38ZTDh6S2IrmXFfsdhEe2wTU0Ofbkt+mcZs/dYcVkPcTVHkEskkGK42GR8MkWFjABk8S
 OXSxCuxpEPpLQg3Nb2f+2F6fNwUE6fyiAuWNqkemmuPBcVslaPNGLASsI5aRhs/FcR0o
 JncA==
X-Gm-Message-State: APjAAAWdukKjGZPQxF2A2tKk7aQOkFdxLm6e/6BCkS4Voco7xnkn6Qyy
 TTg+2AChSJc55QeA9RlM15Y=
X-Google-Smtp-Source: APXvYqydvCw8RjIL5trT9vYV+h75kxjAAQgjOhtgr/ThwUm0YuVUtshKI2bG//L18ev46IW1+a6HAA==
X-Received: by 2002:a5d:6604:: with SMTP id n4mr24405862wru.267.1568104984503; 
 Tue, 10 Sep 2019 01:43:04 -0700 (PDT)
Received: from arch-late ([148.69.85.38])
 by smtp.gmail.com with ESMTPSA id n8sm3473721wma.7.2019.09.10.01.43.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Sep 2019 01:43:03 -0700 (PDT)
References: <20190906150823.30859-1-colin.king@canonical.com>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH] media: imx7-mipi-csis: make array 'registers' static
 const, makes object smaller
In-reply-to: <20190906150823.30859-1-colin.king@canonical.com>
Date: Tue, 10 Sep 2019 09:43:01 +0100
Message-ID: <m3y2ywley2.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_014307_361089_9F8EA588 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rmfrfs[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Colin,
Thanks for the patch.

On Fri 06 Sep 2019 at 16:08, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
>
> Don't populate the array 'registers' on the stack but instead make it
> static const. Makes the object code smaller by 10 bytes.
>
>
> Before:
>    text	   data	    bss	    dec	    hex	filename
>   20138	   5196	    128	  25462	   6376	staging/media/imx/imx7-mipi-csis.o
>
> After:
>    text	   data	    bss	    dec	    hex	filename
>   20032	   5292	    128	  25452	   636c	staging/media/imx/imx7-mipi-csis.o
>
> (gcc version 9.2.1, amd64)
>
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Looks very good to me.
Reviewed-by: Rui Miguel Silva <rmfrfs@gmail.com>

Cheers,
   Rui
> ---
>  drivers/staging/media/imx/imx7-mipi-csis.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
> index 73d8354e618c..f8a97b7e2535 100644
> --- a/drivers/staging/media/imx/imx7-mipi-csis.c
> +++ b/drivers/staging/media/imx/imx7-mipi-csis.c
> @@ -293,7 +293,7 @@ static int mipi_csis_dump_regs(struct csi_state *state)
>  	struct device *dev = &state->pdev->dev;
>  	unsigned int i;
>  	u32 cfg;
> -	struct {
> +	static const struct {
>  		u32 offset;
>  		const char * const name;
>  	} registers[] = {


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
