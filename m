Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0805A5B844
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 11:44:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UrgI46ZJEKMeko7+Z9DnJEvhzW3rXqS6impzJvFGm5E=; b=Cj7hSGjujx3+RkSCWExWyFS0Vx
	N0xVlClZYi8Dl5Emg+pjtEMWCJDdTlwbW0ru6SnaoSAe23QaJzWFgGuAXs4Otc9xNiSJ2cqlViu+7
	B12CxM0SvUtBa3IZdiZSvxzm3n36Xqo5X9yq2vc+lR3CBzdyw1emEMbw9W2UTz4hsyIUlRWQ4DviY
	8Ook6KLCB6EEFD3Krg8kow8imw1HZIzHU1ZpoP3ugZRIyTz5uinC+8v3mstlU4pplpBlrTlXbSiiH
	kvjqocuFJR+K5smsY9tHMrsMfeZhhyiWOyTbZLivwF6OHDqVYRH+ED3PMItEyMuCsaXrBxwpGI6cj
	ENiWjwEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhsrH-0002Lr-Qp; Mon, 01 Jul 2019 09:44:23 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhsr6-0002LX-8d
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 09:44:14 +0000
Received: by mail-wm1-x344.google.com with SMTP id f17so15126954wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 02:44:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=Wpl34t7pEEK79q3TGA4TYVX4j5sGst2FWPYV+cG9ZgQ=;
 b=FqCGWxP07Zk0mb9fi11yD9qbrg46ZxDMf6TAAhLTryUorNkAmjegD69qSKZQzKeIAn
 0s89ug6dEwg8L0+BEBBSAbCf3g7qTgsCUBh9aAp/nvNjGM8ZrPGOJ280HS1mn3PPt6Z7
 FkiCK9ryGXe48hSKSavf2BCdkAKZu00flMMqEcqN/jFRxbVO3clzXy/B8lAGQZUlUVDO
 n1l1VBVNK+FV3ZQJub7OuYXT9EBfLgwg2wubv9lMt4KR4F4cylnh2M6SjInEyoyQCXKW
 kc8jNbl3hlbq5zuOc2yJ9EOknAXMTPdnQNsJSJxTTDIFVtpvdh3rG4ZzuKYfGwhpSLPD
 afbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=Wpl34t7pEEK79q3TGA4TYVX4j5sGst2FWPYV+cG9ZgQ=;
 b=EPZwduQdJrGoAC91ea6mBxTXfq3e4fLso/qAh8Aoyt42bbl6zVhbl8YmHsoLLBI2Cu
 gn1Bnny4IdqLaqa6tvRlC3O9ERBB3SaumpTXILQJg32tk75P1GLBaV8WiSeRdqSiz9Tv
 t6IvohpTFVbExjjANYLP7oLFViW3xbZO3HfMHy5+whzHjEPA3HXz5/1hTss+P6Qs1YsV
 YZhn1cp9P0EXkzxLq/h/MyI4x6IWG/3AfrAursUXYDsrjtnUc5H62TWuxKv62gkWwkqC
 z31vHNHiXVPh7ol+dMYsll/gfRRKJPlAlxgiQIsVx6HU82QtTJvzE4zzkaeLhVtRvw92
 3Luw==
X-Gm-Message-State: APjAAAULV55oliflZMs8Z06bwkvbLZGKbqIleGSOZEV5dNsu23V2jyqD
 EAcI9hZTLxWNk/senZA4Yw0=
X-Google-Smtp-Source: APXvYqwE+Q7AnLDk4oMLFL/k5V2IsWF4NCm7kbDDvvTbUOZGjDlQHcN8+h+kh/QLkteSGPRbtaW/5w==
X-Received: by 2002:a1c:9d86:: with SMTP id g128mr17778545wme.51.1561974250603; 
 Mon, 01 Jul 2019 02:44:10 -0700 (PDT)
Received: from arch-late (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id f21sm9951878wmb.2.2019.07.01.02.44.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 02:44:09 -0700 (PDT)
References: <20190630034905.7124-1-chinmaya.mahesh@disroot.org>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Chinmaya Krishnan Mahesh <chinmaya.mahesh@disroot.org>
Subject: Re: [PATCH] media: imx7-media-csi: Remove unneeded break after return
In-reply-to: <20190630034905.7124-1-chinmaya.mahesh@disroot.org>
Date: Mon, 01 Jul 2019 10:44:07 +0100
Message-ID: <m3o92egkd4.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_024412_302828_83188EB9 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rmfrfs[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devel@driverdev.osuosl.org, Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chinmaya,
Thanks for your patch.

On Sun 30 Jun 2019 at 04:49, Chinmaya Krishnan Mahesh wrote:
> This patch fixes the checkpatch.pl warning:
>
> WARNING: break is not useful after a goto or return

but this is already fixed in the media subsystem tree, by a patch
from Fabio:

964fcacddf media: imx7-media-csi: Remove unneeded break

It is better to use that tree as reference for media fixes,
sometimes some are already fixed there.

Nevertheless many thanks for the patch.

---
Cheers,
	Rui


>
> Signed-off-by: Chinmaya Krishnan Mahesh <chinmaya.mahesh@disroot.org>
> ---
>  drivers/staging/media/imx/imx7-media-csi.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
> index a708a0340eb1..c15acca1dc0d 100644
> --- a/drivers/staging/media/imx/imx7-media-csi.c
> +++ b/drivers/staging/media/imx/imx7-media-csi.c
> @@ -1021,7 +1021,6 @@ static int imx7_csi_try_fmt(struct imx7_csi *csi,
>  		break;
>  	default:
>  		return -EINVAL;
> -		break;
>  	}
>  	return 0;
>  }


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
