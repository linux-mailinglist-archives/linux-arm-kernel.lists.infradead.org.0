Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1EE69F183
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 19:25:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IMpFjDsAVRI7Dj63ydI81jhaLlR6WPp5/7hBg84lDAw=; b=avotF1HV0O231j
	yvTz8glY7zYYQK3UzordIs2YFFrO4xSvYDBzw8bEwSfhp9/DYydRAoE/GDEBFFrM4ixmuzgzfnn5y
	sRtHfkwKsRLKsMgtqHpchS1SC+f0d1Hdj1JOHQe8BKml+kHnIwoP5RqG9+6ham2XTd4PeRXnIJmwM
	hc5OE9dmd49fFFLCqHcNI9AtIE7g9+RIve+440CnRSWOrv13VdVekM0s5w2EOYUWBojLIAZOPhHv9
	Q+P+mCoAHFt4rfuLlDT/JKqFiXZfXDgLIxLUqghv8yUm9uxmU3VvW8ailcginoj8PTRLRzeoKoyFi
	7sbhLu8Z84RFjqtG3whQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2fDZ-0005zM-AM; Tue, 27 Aug 2019 17:25:17 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2fDO-0005aF-Er
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 17:25:07 +0000
Received: by mail-oi1-f195.google.com with SMTP id l2so15601385oil.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 10:25:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EjM7jzuwyaCH9suwOcoqt23F6ratx04VI7mr/XZ4IN4=;
 b=LwySyDX/UYlADRUTQU9omKWwH5/DFiJjqrY8lMhSvC6L/nGELSmFih5xfR6RwchAT2
 kemVq52tKwgWn30WIhD9uPm2Q/tbkYx+FRTX2+AU0VxKZG36c1YFGEC1+0ujP5gqTztd
 Jqw1TEorCJ5+IEP+VQM3LQTAwNkRdYiyN0YrMcR6hLT4F6RgIPDOeG5FtpiE8PL4N20q
 ruNA6Bce2gIXQPxzGimSvi3heshnOYEUXPOfMasqR4ZFN8x8Lx73NFcHZOy2uQfTnVyj
 3nTNXEHlPQvQs2FO1aRkY/31+0PgePO/Y9wIrAo2dYYvzvX7pxJoeCBt+z0czEhBjmAR
 UpEA==
X-Gm-Message-State: APjAAAW7M28ti0YqLTWf7SBvDqCaJKB/DoWOLGigfB669tnLtKk3ny3A
 vw1pphcRgWj7X4TKONjCzA==
X-Google-Smtp-Source: APXvYqwNobMD75awqFzunTVadMpb1x0jg67Rt2MOGSA5oaDz3ZLFqDi5igEHZfZ6DhAfesboGrIJdQ==
X-Received: by 2002:aca:3388:: with SMTP id z130mr17051307oiz.81.1566926705408; 
 Tue, 27 Aug 2019 10:25:05 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u5sm6241844ote.27.2019.08.27.10.25.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 10:25:04 -0700 (PDT)
Date: Tue, 27 Aug 2019 12:25:04 -0500
From: Rob Herring <robh@kernel.org>
To: Robert Chiras <robert.chiras@nxp.com>
Subject: Re: [PATCH v3 10/15] dt-bindings: display: Add max-memory-bandwidth
 property for mxsfb
Message-ID: <20190827172504.GA15786@bogus>
References: <1566382555-12102-1-git-send-email-robert.chiras@nxp.com>
 <1566382555-12102-11-git-send-email-robert.chiras@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566382555-12102-11-git-send-email-robert.chiras@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_102506_511660_68A8B4D8 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
 linux-kernel@vger.kernel.org, Stefan Agner <stefan@agner.ch>,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 21 Aug 2019 13:15:50 +0300, Robert Chiras wrote:
> Add new optional property 'max-memory-bandwidth', to limit the maximum
> bandwidth used by the MXSFB_DRM driver.
> 
> Signed-off-by: Robert Chiras <robert.chiras@nxp.com>
> ---
>  Documentation/devicetree/bindings/display/mxsfb.txt | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
