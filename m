Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 838C51DCE60
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 15:45:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gleHNy3tQhkWl8+AjA216Jawa1Y9FcnCubd5LtrItQ8=; b=UhVqgQ1gH7NcEy
	D997YjdpzxkfcVpPlJsvC10A3m85eXtWvyXTpJl7i1h04bb4g0TJ2Wic+utaPNVr0/vLq0Fgad+oV
	iVjb5kkzFd6vFan0jmpBN/XMmvmKcgDElEqfw/H4TQa1O2RL/muAYOQFFMQ4a609MPS6xxivA2fuS
	+F3Jv6Cwj53MLPAEMtmSncV7e8n8SbONaZ6ZgM4cqHn+qEXVpt1zeI4WSgiDUKGfRrqJx0qz/w/2V
	C12EVRemEYgGtFjWxvYBeaMruxWWhOWnA9sj3/DX3+FbuYYSd+yNYuKfTfUmz0t4gazWxuD5Xszq4
	ONHiOIlUFuP+XYLG35aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jblW2-0005G7-Jr; Thu, 21 May 2020 13:45:42 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jblVs-0005En-SQ
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 13:45:34 +0000
Received: by mail-wm1-x341.google.com with SMTP id w64so6392661wmg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 06:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=MIZbow6oCp6jhBPcKsqdy9EnMAR8LQb1Wb+CIClZf0I=;
 b=dGmoucgrWl3fcaqDll9a/qRPLlA7s730yc2z/WBzNFxuL2a+M1qwz4OOCwGd++fhKy
 p8H1ZqTfH5xn8dw70XzKJISp6Vd7YqNQ/dPn7g8DE4Th7Ys7glQVxU1ajIvWn44+3/e0
 7gWzJKL3HsAPQXv9L62UgO6S71k5LFILN3dbQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=MIZbow6oCp6jhBPcKsqdy9EnMAR8LQb1Wb+CIClZf0I=;
 b=J4EZUoOfR+dBHy8HbfNQzs1VsIA4hNLG06yuseDMKZhpMUyYZ3uY11CAFTGJu0X6Qt
 1E+BoEm2i/EyzavB6gR5NZIs4pclhbcegrtDTd2QCMz1+QtCSwLB9oFidoefC5NxfZ0Y
 OPdUXoRZJY8OiQIB7GiLBmD3QGQ5TnvVISDXfu0DPUKbxbeBMPehl/o+dyjZ1KnkKrCQ
 4jNhuxTwjhkVzRWxvgw25ZtAIb3oeYhlD9JVhCt0Ymlil37yZoxF+o6qwMrLE9nZM4zb
 tpZt1p79HLajaRMJ6XQjswWp+U4V3fo3Ap84TdTrg7lbG3dpgfKFM3NeVT33t8CCZvlu
 8yRQ==
X-Gm-Message-State: AOAM531LJv2acs9nnpaKbzn3UX87nO/fp2HHIs6OxbXA6PgLzc3zAS7H
 9wNKOZ3lppsxzWden0b6ZKygug==
X-Google-Smtp-Source: ABdhPJzga0snvqqhabMrMb1GYaE9P70IQw0mFqh2Y8F+1nN0c5PVJEQNf6mkgxlQ/6SKai9ltVpOxA==
X-Received: by 2002:a7b:c4cc:: with SMTP id g12mr8844805wmk.168.1590068728336; 
 Thu, 21 May 2020 06:45:28 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id e29sm296309wra.7.2020.05.21.06.45.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 06:45:27 -0700 (PDT)
Date: Thu, 21 May 2020 13:45:26 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Xia Jiang <xia.jiang@mediatek.com>
Subject: Re: [PATCH v8 01/14] media: platform: Improve subscribe event flow
 for bug fixing
Message-ID: <20200521134526.GA209565@chromium.org>
References: <20200403094033.8288-1-xia.jiang@mediatek.com>
 <20200403094033.8288-2-xia.jiang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403094033.8288-2-xia.jiang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_064532_924638_C4601AEF 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Fri, Apr 03, 2020 at 05:40:20PM +0800, Xia Jiang wrote:
> Let v4l2_ctrl_subscribe_event() do the job for other types except
> V4L2_EVENT_SOURCE_CHANGE.
> 
> Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> ---
> v8: no changes
> ---
>  drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
