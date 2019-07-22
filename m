Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 048D37079F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 19:40:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qih97L+9I5/lcYYPXEkk/WP+LtyI9smvmk8aTSlDpTU=; b=nHS8fh+9AB0OgC
	zRd+FkSNbbL4G8fFc+bkQ5ToUqQIT2cO5yTNmOVFLDwhT2HAHY4ARlXiNA8zF0OGRKot54bM8f3xj
	PZ7dZDHAM1Rm6CIoq1xoFqlAB7m81sggbCY4YWKmHKIiUqpdw5q46h/ee5Zo5rYCkwHbfXciMHm4N
	jTiAKkrNXZigRtHxwgH/EoXegeqbpIIt8jgT5NzKLeSvlZAkkxBYIyEegdDAvmJikmyx2UKwJIu/m
	ZJ0Bfbb/0MmKvukfUIaZCwCU4Lt5gM9bsAZ3U5LkcvWVvuhTyMOPWvZ95mRYjUGtIpe+DkauDsSMA
	lyhP3P44j9boQuJ4Uc0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpcIY-000830-4V; Mon, 22 Jul 2019 17:40:30 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpcHl-0007wm-Fv; Mon, 22 Jul 2019 17:39:45 +0000
Received: by mail-io1-f67.google.com with SMTP id m24so75823669ioo.2;
 Mon, 22 Jul 2019 10:39:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yuyB8pILujpflF/Q/M9APeaT5IXpHOGkbQKNsVipriU=;
 b=kg+GhoZruKmlX1DnZXYtQLKGZWwI9gJq+JyBxa6tde9TP7omzhhODFRXfcG6l59CAr
 4QassbFQOz5/v+rEz4VVhbAMJIpRJHHbdPMSOEriXTXXUj7rLtw7FGeU72s2w0SDCx1g
 GpMvKPMkSLIGJAbweREdP+uPltdBMnzSUYut8PI3k1anbvJVWoJURxw5yCdIr9teJ+pX
 uP+RrdSjKi6VcGA1k+sMivMOwWILqM4CvbCdT3tRCfDGeqXh0sYZdA+Z4rmCTTTJ9zY5
 AhD4Yz6dJkq/sC2iRcphm8SnoZzUc5igGCFqMD67vwAd76UYRyxTdeHjZQDDVqK8uKqd
 tBsQ==
X-Gm-Message-State: APjAAAVbiqe4PsrZlw1imcbmRaDoPswwwyyYndIYVhlQziCcAp6ToNSU
 AZxQRWXtmrfCUHJb8JvlxQ==
X-Google-Smtp-Source: APXvYqxNSkCw3W+oC2a+dAbLpos4fIcmpa8N1UVKkDaxst8+m0rwQM+coXmVvshQIkATlSLf6D7EeA==
X-Received: by 2002:a02:b713:: with SMTP id g19mr74167358jam.77.1563817177425; 
 Mon, 22 Jul 2019 10:39:37 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id i3sm37295539ion.9.2019.07.22.10.39.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 10:39:36 -0700 (PDT)
Date: Mon, 22 Jul 2019 11:39:36 -0600
From: Rob Herring <robh@kernel.org>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [v3 3/4] dt-bindings: display: panel: add auo kd101n80-45na
 panel bindings
Message-ID: <20190722173936.GA26950@bogus>
References: <20190626025400.109567-1-jitao.shi@mediatek.com>
 <20190626025400.109567-4-jitao.shi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626025400.109567-4-jitao.shi@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_103942_378442_E038C304 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 David Airlie <airlied@linux.ie>, stonea168@163.com,
 dri-devel@lists.freedesktop.org, yingjoe.chen@mediatek.com,
 Sam Ravnborg <sam@ravnborg.org>, Ajay Kumar <ajaykumar.rs@samsung.com>,
 Vincent Palatin <vpalatin@chromium.org>, cawa.cheng@mediatek.com,
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Thierry Reding <treding@nvidia.com>, linux-pwm@vger.kernel.org,
 Jitao Shi <jitao.shi@mediatek.com>, Sascha Hauer <kernel@pengutronix.de>,
 Pawel Moll <pawel.moll@arm.com>, Ian Campbell <ijc+devicetree@hellion.org.uk>,
 Inki Dae <inki.dae@samsung.com>, linux-mediatek@lists.infradead.org,
 Andy Yan <andy.yan@rock-chips.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org,
 Rahul Sharma <rahul.sharma@samsung.com>, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 26 Jun 2019 10:53:59 +0800, Jitao Shi wrote:
> Add documentation for auo kd101n80-45na panel.
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> ---
>  .../display/panel/auo,kd101n80-45na.txt       | 34 +++++++++++++++++++
>  1 file changed, 34 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/auo,kd101n80-45na.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
