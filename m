Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E981DCE74
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 15:46:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V4zYGY88NgD1vBxr1PrjWavF9V6I+f1mEFeEZx+Dkho=; b=AoXzz0cQkz7NF0
	WW0MjZjIp3TFE7NN5/9nwcp1zW3V+ekLjh07YK+5RCkMMfwJW0rUbNjcFgWSHX8fZm48EUHR5cgnK
	bKC4gFtP0w2bb9kKh7Kt0gmSDkXTWjQWWG5XlBr4Apa6a7xti59vhvbj7IurShzIPVtrz6Hrzf5Qy
	hZofyMiiFJ1gqPgKHifgI92yIRlY9ThXg79yMMfYVNelb0QXF3v7ft02CEf1SczkBK/zb9RzgpqyA
	0h7mi7YH7r2Wp0Pu+FZnVnUACXssQTipSrl/2v04WyRy4+bJsm3Mx/O3T354X+CFEGQ+SziwjSZC4
	VlsEJEINFUPX+As1apMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jblX8-0005wg-4c; Thu, 21 May 2020 13:46:50 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jblWu-0005uL-WB
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 13:46:38 +0000
Received: by mail-wr1-x443.google.com with SMTP id w7so6669765wre.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 06:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ioC6Q3HVvwh9td7JcekYBXwgG6Rm0JWudJ5rZTXChDU=;
 b=Z/tzAhAz8W/eG2mYxcKFp8KKWJhs36XabdHfyuvXnPY8DOreXETPs/WweazwIgydiJ
 jpbDx3OyuHOM1EtBdf1/4JLco99/fbJ06XTQ32t3r8hNyvFhLtEUM/0lGWROiBSNYLTc
 ExFC7STIDBPFVHvsLzXEMa9T35z6/KZzKV7Uk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ioC6Q3HVvwh9td7JcekYBXwgG6Rm0JWudJ5rZTXChDU=;
 b=eKJzaF751qijUpvhmu4fkfMws+kUK3Su2+jnKrkbpQTZLUCsNVGCx7t8SyGwOFHJHk
 5LXAoEMneUjpwNPoGDoyxTFrCJkqBXMxm9myGeCnhwFdy+/Yjnk04cID8H7P0kJ1RR/d
 B5hRsrZ/2vBKGWWTckJp03asqrqj0QMh/aXeUhBawodvIs1XNd/qBDEvHB7O9PgaSBDo
 UERwJTwsKUEF3hgVssUhQ+G+AAD3CeoJSN3HPcEAnwuLuyHJlQ9S0UvqFknGxwuQlHEv
 rGRPEYuqZkvSd+rXeDkivczY7R10bOsprKVzQITUMpjAMnfGdvfL7OkixxH+7rh/rXoO
 qeMQ==
X-Gm-Message-State: AOAM531KNyy4kG3BTXLnGPw7Qzl1PsUlmhB1fnrvYTQVYhCPNCLXiHtd
 JY/vVPg4e8PJIl9ZbUzEdZY8ZQ==
X-Google-Smtp-Source: ABdhPJw4SaKtpUrlRa8kqBZdL7Myt7YbEIE8Xk1YTd7NT9wAik061SrpazfKJ0RlkFO65Y19ocCOGA==
X-Received: by 2002:adf:9507:: with SMTP id 7mr4462650wrs.63.1590068795524;
 Thu, 21 May 2020 06:46:35 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id g69sm1720399wmg.15.2020.05.21.06.46.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 06:46:35 -0700 (PDT)
Date: Thu, 21 May 2020 13:46:33 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Xia Jiang <xia.jiang@mediatek.com>
Subject: Re: [PATCH v8 02/14] media: platform: Improve queue set up flow for
 bug fixing
Message-ID: <20200521134633.GB209565@chromium.org>
References: <20200403094033.8288-1-xia.jiang@mediatek.com>
 <20200403094033.8288-3-xia.jiang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403094033.8288-3-xia.jiang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_064637_034697_A997CA12 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

On Fri, Apr 03, 2020 at 05:40:21PM +0800, Xia Jiang wrote:
> Add checking created buffer size follow in mtk_jpeg_queue_setup().
> 
> Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> ---
> v8: no changes
> ---
>  drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
