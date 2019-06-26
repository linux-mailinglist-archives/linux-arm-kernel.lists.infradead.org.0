Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 247B8570C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 20:36:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XeSruUJ+E4YtGMRxw4wyv5eEgcxscAzzobnhVCBxr6U=; b=sPMoZHZZtkRh0Dlqj5RouZvAu
	IN34UWBypgex+mOlbKxm6lSokr2DLjAKwSUV1nLgKkLN+7G6aIhq5EWcjbOeplwJDGzN5I7Q0sw+o
	We9LKA7N9QQwb16KFjI+Os5ZbSgr5aB7CpaafaYIrSU29/KCaBGHS6HNt7UPSxIlg7M/dwb7uWSsY
	GS7MZEyDfeIt7DEY7g4cW1IbYNO+FiZchd3MTeFWryUKJ1G0jUCroaooZN9XfX2drH7ivPNamTTuL
	cz164T8LdUrrFL8cJsoJgDEdl1bXy5y1g5Q66LQIPHd1Ypr2jViynoBpU52cX/FEENPH93Hdo6hsv
	c3V1RkVSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgCmW-0005K0-JJ; Wed, 26 Jun 2019 18:36:32 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgCll-0004vW-Jm
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 18:35:47 +0000
Received: by mail-wm1-x344.google.com with SMTP id u8so3101527wmm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 11:35:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=JwwlhRes3eA1e/9Q/hAaa2AfY6tnj486mE1SbBlz0rU=;
 b=fqEUFEYw9qv3t6ezbWG5URRezYfRHUtrM1lTZFignM+UEuk6nmumDvMNaEbwV8B6/U
 a88d3u1uY3AW5HO8EX/hZ+2slvvCnfRIbnPSlcsmlmXRwSqLJKSSMw521Rcf/frdz8Ju
 VCQlnrE3gKEwXtlFjm7d+FqSMzecYPrY0CbuPatlexyVySbprIjAZgJO1Fxmoh2IkP1c
 76xAzTct5LXCtynhA/ro/Ue7Z5yg6qHLXPvOZe9FE32Juvcfc4YZcHpcbSYEugFCIW1D
 5tP0QtmDMGKaIhWSfXuIlEQeHyjZrKrYIQpPDv5i2zTX5oqbc39/LKvxigMd6OIKPshr
 DOTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=JwwlhRes3eA1e/9Q/hAaa2AfY6tnj486mE1SbBlz0rU=;
 b=kMw7V8k/Z+nHqp/MFeejKc9wXUfahqqL2d18ijrWkURxiUFKpTsljWrlwv2utALnnS
 DVh361FBNcDNeyeYWmwDIEg0I/72Z08Zz1QWmsT7PMqDNGfcFwqrkJ7EvGvtD2XOG3g0
 2hZFRp9u+45iGWXnXxveInjip9bdfvAbtNvs+fPVW4xcxlm+/dq3+RwNxiXM1g4cTOhC
 bWV2aizxK9Fd4Kjkmz9syxku4vVSATTJn9llRvswW1/1KevyrUKtfGlG/0aL68VVuAtr
 POq3PJ1Y1EpN6qB/N7qt/BMLo9dPSzyeN9ImwvvDzHL1r76h4SDHmQ+N33YCJN7xtDj7
 gNuA==
X-Gm-Message-State: APjAAAXaw0XBHj1Ygo3LvZh/DWsHCa7PxVjd9Gt6iSFTr/kRQ7sYgXAS
 zZqm/7KYtPfgiai/6ZIkyLI=
X-Google-Smtp-Source: APXvYqyq7eim+ZRBTCdydue2wqc7N3iBFvdNRciIZbxjR7OLY0XqW731SSbiJw0uh41ze5RKeO5kEg==
X-Received: by 2002:a7b:c8d4:: with SMTP id f20mr287046wml.90.1561574143412;
 Wed, 26 Jun 2019 11:35:43 -0700 (PDT)
Received: from [172.30.90.108] (sjewanfw1-nat.mentorg.com. [139.181.7.34])
 by smtp.gmail.com with ESMTPSA id c1sm36562604wrh.1.2019.06.26.11.35.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 11:35:42 -0700 (PDT)
Subject: Re: media: staging/imx: Improve pipeline searching (bug report)
To: Colin Ian King <colin.king@canonical.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Rui Miguel Silva <rmfrfs@gmail.com>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-arm-kernel@lists.infradead.org
References: <9b6d7f0e-f191-e5d5-e20b-9244800678fe@canonical.com>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <fa12f7f7-c2c8-6777-0359-8bdd8290f517@gmail.com>
Date: Wed, 26 Jun 2019 11:35:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <9b6d7f0e-f191-e5d5-e20b-9244800678fe@canonical.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_113545_762490_8E3E187A 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slongerbeam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks for catching,

On 6/26/19 11:27 AM, Colin Ian King wrote:
> Hi,
>
> Static analysis with Coverity on Linux next has found a potential issue
> with the following commit:
>
> commit 3ef46bc97ca2c918b7657a08220c7340a9bb07a2
> Author: Steve Longerbeam <slongerbeam@gmail.com>
> Date:   Fri May 10 17:50:11 2019 -0400
>
>      media: staging/imx: Improve pipeline searching
>
>
> The issue is in drivers/staging/media/imx/imx-media-utils.c in function
> find_pipeline_entity:
>
>          struct media_pad *pad = NULL;
>
> pad is assigned a NULL
>
>          struct video_device *vfd;
>          struct v4l2_subdev *sd;
>
>          if (grp_id && is_media_entity_v4l2_subdev(start)) {
>                  sd = media_entity_to_v4l2_subdev(start);
>                  if (sd->grp_id & grp_id)
>                          return &sd->entity;
>          } else if (buftype && is_media_entity_v4l2_video_device(start)) {
>                  vfd = media_entity_to_video_device(pad->entity);
>
> ..and above the null pad is being dereferenced causing a kernel oops.

yes, this is a typo and should be:

vfd = media_entity_to_video_device(start);


Sending a patch...

Steve


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
