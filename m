Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F57F1987E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 01:16:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yJgK0oUc1plzTjKYWeFHGQ9jB8YjCNzef/tQZK/IYhA=; b=qlpbs4ENa7dxxi
	aJMtfqMmul8NrY+j9T8aN6m/Ldt/c42M3ZW8YJ8j018j+kYUwEDmVkDAQj1FatSH0+nNXsQ3C1CKr
	qunUiVoiBuR9NNOSluDdF/iR4tc3NDT/sF2mG4yGovD5eS6KlVImOHSAFpw1gHZxhDCRX+9p/5b4e
	M2iDLP1fXcIW74hSaEPPq6n/t2yVHujC08AQYkNCxqq7FcqxnmvOu1wGq0F+jWZQMj7vZLEjZsf3O
	Ravk/ZKoGJZETsoYiBjwqtyPSRedLsWEKPkkv6nBFBQ8o/m2C99tcqNAHb64Kef87Fi6TJAI/cj3n
	1ZSGd9RV5YV6tHg8rlcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ3dZ-0001Bg-3i; Mon, 30 Mar 2020 23:16:09 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ3dQ-0001B0-4a
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 23:16:01 +0000
Received: by mail-io1-f67.google.com with SMTP id r25so7903431ioc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 16:15:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MzTiIR9WIdGk4sSFyoVRaphe8GsQGc2l1TSUK2PTluM=;
 b=fT4T/rkQxotnRi4VYygX85Jg0QYqwm6RM6TkAwmaX/PUVsre28K8HaT+Otnh3q3GZm
 WSONbsSDmLVBrUGUt1ukwtMJNfsegr4xFJ4rtGVizxyBQ6zQsDEOOpnk5vWi0xRkz3h7
 TSMzxmdr9fOM16baAIMxSbn52qCLO5zxb6umECOI+0BYKPWlb6kMHTvDHSxZeLHM9BKR
 pYP9eBmHjwLblz8kRkJfSqY4cXVi4EbGdydRTRyRECpM5UkoCpjYnQ2+KE/Vds2/ujfO
 KECedQg5uZe1gNNe/EqCNY2PtK6UPR5JOD6e8hTtMBMxBw/zujDOvlJMMDuVc3Ais1dU
 WpKA==
X-Gm-Message-State: ANhLgQ1Pivb2CPt8BqhhhZefozw6yl3frWPizHS4ujR0ydMESyPdADtf
 lZ+HGjcxr7rk0b4QOR+rLQ==
X-Google-Smtp-Source: ADFU+vt9bzeSBDXZlx6pjw+tK/wi5g5Qw+8DG1MTXxR4RKIA4KRk2Ttwqfq05dNY7X2wF9Y9Ih/Veg==
X-Received: by 2002:a02:c605:: with SMTP id i5mr1593116jan.26.1585610158133;
 Mon, 30 Mar 2020 16:15:58 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id q17sm5442226ilk.48.2020.03.30.16.15.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 16:15:57 -0700 (PDT)
Received: (nullmailer pid 9828 invoked by uid 1000);
 Mon, 30 Mar 2020 23:15:56 -0000
Date: Mon, 30 Mar 2020 17:15:56 -0600
From: Rob Herring <robh@kernel.org>
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v4 1/5] media: dt-bindings: media: i2c: Deprecate usage
 of the clock-frequency property
Message-ID: <20200330231556.GA5102@bogus>
References: <1584620363-2255-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584620363-2255-2-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584620363-2255-2-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_161600_179799_A2278495 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 12:19:19PM +0000, Lad Prabhakar wrote:
> Deprecate usage of the clock-frequency property. The preferred method to
> set clock rates is to use assigned-clock-rates.

Somewhere here and in the subject you should have 'ov5645'. Otherwise,

Acked-by: Rob Herring <robh@kernel.org>

> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  Documentation/devicetree/bindings/media/i2c/ov5645.txt | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
