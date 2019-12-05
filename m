Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0DF113CC9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 09:06:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FJRyVA1nUMM6muOx/s2QJCmIRhEShshd7RSbhfZde6s=; b=uoNv25bVLem0Ut
	vp7FKvpZxAF3Y044ivCSGO1o+WwrCTO5x68Oxog2s22F8F4CWfY8a2up5vOShpP2KzURb2xQ3DHIY
	488kGtVqtj+AybQ1KFd0ChXbVT0JiZigK+xBkekKQYH8z3UcIlQRs6PFZtlHO8xUDiXSjMZ6gfg6B
	hxAADhKSlYV9Qhp6Z+dV7pRBfG2GRwsiFXtO9bcqwiQsdqQQyvd4FRKhM706VHxTRgQdoh4Z+xlQY
	CAnPzLBf70KaAwEbrjLk5hZol0WmU88bj2iWEdogpCRfFy1UNZWF1fMdVGMU4KpgM++GknqlBQsQo
	CGyOsghzCoVa7r3FcbvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icm9Y-0003os-87; Thu, 05 Dec 2019 08:06:24 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icm9P-0003nI-P9; Thu, 05 Dec 2019 08:06:17 +0000
Received: by mail-pg1-x544.google.com with SMTP id k3so588213pgc.3;
 Thu, 05 Dec 2019 00:06:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sbOWUl/LYyug4BpNjD/sLnbb5ya8VzzTl8Cu9V2yvRY=;
 b=nmGXMlWXu2JCqHKwG7oK8kS1mCgH+HBN4/eM/NOEeCk2in3RGF5oWu656B48kWYzV4
 mY3bSWyZ30MR/SPNmvS/GgUUll2YMsfMQo4qX+RVLHY0NPjYtazSfiBM5ugleCHjtKdG
 /Pbz/f5x5rYSo2Hy4VnzwlqqGlLPdKzWeC6AtTnUUMau3dNCpKjv7aAy3QyOCwm8dRb9
 s41ylI9rrYu3yOGBb4X3BRQLyBLwUu77hjkAhn3AKb1ti3c9OPbwoPdLzlc1yuCbLZrO
 P8A/jaKiNBktktPIGGLu3Ewlo84+vLm4GxiQksazqDrPb7d4VxWAHjyWP95q5eFbVCuR
 KDNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sbOWUl/LYyug4BpNjD/sLnbb5ya8VzzTl8Cu9V2yvRY=;
 b=q3+IxsjLU2HZHTisIutDuFleuRC+FCAx+0LWTVNKFgzGTGMtnd44zwsXf8vNRg7PrH
 7G078XjthGe1VIVg7ksA5BEqABRwuzOyxtnXoQhm8TYaPXrffZzpJguSP4izvY83/HYa
 MWel0bdOb02UydeYLOnqyRxjY9Y8fFSz+b3oX8K/WxGMGP0a0NpRDdd2SI48Lz/8KgXh
 OowlRjWL/3Uj+GTVnCJbvgvn0ZNm4ze2krbnx2iUV7jM9LJUmZKz0dgI/TB+LSTe5dlI
 sP1bGEHJQMbfSRf7Ff+82bEPZ4ZIBtMov7QsiJsK8dQW8yAj+ch2Fxvl4nwRsh8Ft0mA
 RuUA==
X-Gm-Message-State: APjAAAWAy9cD5VHlXqnTaX7fJnv0BdNgNyPL0yLko5PXgsCnxlYq7SDV
 FSXASeYkgQWlVyi51e8fpCk=
X-Google-Smtp-Source: APXvYqyk7FdG4hnofsNwSjWrXOupDwiMK/1MsIp6Jp00Uhte+xvNi4jEmcD2YJExVKTWuST0cGuFFg==
X-Received: by 2002:a63:3cb:: with SMTP id 194mr8219400pgd.123.1575533173934; 
 Thu, 05 Dec 2019 00:06:13 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:250d:e71d:5a0a:9afe])
 by smtp.gmail.com with ESMTPSA id w4sm8996292pjt.21.2019.12.05.00.06.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 00:06:12 -0800 (PST)
Date: Thu, 5 Dec 2019 17:06:11 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH] media: meson: add missing allocation failure check on
 new_buf
Message-ID: <20191205080611.GY93017@google.com>
References: <20191204141159.1432387-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191204141159.1432387-1-colin.king@canonical.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_000615_819623_FB9E29B0 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sergey.senozhatsky.work[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Maxime Jourdan <mjourdan@baylibre.com>, devel@driverdev.osuosl.org,
 Kevin Hilman <khilman@baylibre.com>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On (19/12/04 14:11), Colin King wrote:
[..]
> diff --git a/drivers/staging/media/meson/vdec/vdec.c b/drivers/staging/media/meson/vdec/vdec.c
> index 0a1a04fd5d13..8dd1396909d7 100644
> --- a/drivers/staging/media/meson/vdec/vdec.c
> +++ b/drivers/staging/media/meson/vdec/vdec.c
> @@ -133,6 +133,8 @@ vdec_queue_recycle(struct amvdec_session *sess, struct vb2_buffer *vb)
>  	struct amvdec_buffer *new_buf;
>
>  	new_buf = kmalloc(sizeof(*new_buf), GFP_KERNEL);
> +	if (!new_buf)
> +		return;
>  	new_buf->vb = vb;

So the buffer is not getting recycled? IOW is leaked?

	-ss

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
