Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 048921F675A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 14:00:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jLpx1zwDv3FMVwbLDlSy3+1Y4wDyKyLBm5Kpgkvm+II=; b=FYFYT/8DGZ8d6q
	njLRPmHjrkHZxybQr1FMfyDbtzEAiVjTNtLoa9CLEEApoPjqqSaVkOXplDIjklV4kfC6YKs41IB5X
	U0W6GYIYfL+qd3EtIY4d4DnwHPD8pRF9cC8KIbm/ZacHU2XGFCt8Yu9hBl4yNuUSKgzDccLDe/vrk
	VuZQsi1oERm4DG6zJ+7arqMYhuNrJWyYqafLbZeOb7AP9F8R1XJEwon6UEc9A7dWsGL7iZVJf+Ahm
	lkPKxRKFWMV2SJpTYYGc/Puk3ENr2bieI6dyqFiIn2XRYeS80WKipNl0PfGruy8EWRRxDZ/19dajv
	ULQQOlThcaaoATayPZHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjLsQ-000821-0f; Thu, 11 Jun 2020 12:00:10 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjLsD-00081K-QX
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 11:59:59 +0000
Received: by mail-wr1-x442.google.com with SMTP id e1so5867932wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 04:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=aQJ2/OQ0INtUqdOhCi+aNYRvOxWn9KeZfAUmUQdqgWM=;
 b=jwiYu/7L6j2sAYGVwtKRrycnxxCH9y03CsnXRJ8z3ly0et9m6tC9Gde+Yz+sPiMXXD
 QdTydr/V9aBC/hz/4sWIycY/BZDsNBVmWxLuaaTgoH+Bi7fsDz+VoIekGDOKRW/xZEG2
 GUVQPJN0MVSzz7sivc/AnoR9ZlIepkjQqaSPM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=aQJ2/OQ0INtUqdOhCi+aNYRvOxWn9KeZfAUmUQdqgWM=;
 b=jQ+u/pJq7nUcyV1VjRN7enQclQDnMkl94sNEqHLrvegI+geIAHxBk6V+q4AQJBkhzE
 xdWv55+iOe6B3bmZXQOlqqZo/p6pjsaFpFDpwvK79ieaOv2beYEikKMDK6h/msRPkGnq
 +VD45YHtQ9j6kgX9+XdM1dEz39pKXwHx7lqPizmSODp2wZFVslMYq3D+dmnCi2KN+zYv
 K/0QAoG12sMwx+dv8nPgCPtQFvjiI4G1SmwAI5y5Ksn4rQjdwCkNmjKozq36wC7s1XBg
 9QpAGp8s2hcq1VBMuE5DaTAfnB5uzNelExmaMKLl167j/MR0J3yOkZu/W/hH8WezRuZD
 boiA==
X-Gm-Message-State: AOAM5321vRaOdGKDMamAjmu5YNDZL44AyMbilB4XEjCws6/tf7SVPLoV
 gcWJL+/3Ae/aXvPkBeLx+Kd8jQ==
X-Google-Smtp-Source: ABdhPJxvbPyTd8RhVR3eBjnPhFunZ9jzxWDwTxaX1ZFBKznlJyB1xYBlLPEro/H0Z6e06/M4GOnLDg==
X-Received: by 2002:adf:ed01:: with SMTP id a1mr9859784wro.271.1591876796211; 
 Thu, 11 Jun 2020 04:59:56 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id j16sm5307254wre.21.2020.06.11.04.59.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 04:59:55 -0700 (PDT)
Date: Thu, 11 Jun 2020 11:59:54 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Xia Jiang <xia.jiang@mediatek.com>
Subject: Re: [PATCH RESEND v9 06/18] media: platform: Delete the resetting
 hardware flow in the system PM ops
Message-ID: <20200611115954.GB135826@chromium.org>
References: <20200604090553.10861-1-xia.jiang@mediatek.com>
 <20200604090553.10861-8-xia.jiang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604090553.10861-8-xia.jiang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_045957_861668_7312D2FD 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: drinkcat@chromium.org, devicetree@vger.kernel.org, mojahsu@chromium.org,
 srv_heupstream@mediatek.com, Rick Chang <rick.chang@mediatek.com>,
 senozhatsky@chromium.org, linux-kernel@vger.kernel.org,
 maoguang.meng@mediatek.com, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 sj.huang@mediatek.com, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-mediatek@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Xia,

On Thu, Jun 04, 2020 at 05:05:41PM +0800, Xia Jiang wrote:
> Delete the resetting hardware flow in suspend and resume function
> because that resetting operation will be done in device_run().
> 
> Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> ---
> v9: new patch
> ---
>  drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c | 2 --
>  1 file changed, 2 deletions(-)
> 

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
