Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34ECB1F498D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 00:47:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IfkcsXxI5jbeZ7pSiqktrTqM316B4/JDjK0rWLU9et8=; b=hHMacUdy58eunH
	n882OzwmVx5CV+0N93IMmuoy4yoX9+Ugq7GZL8qe3kn0SLAiBY6zxS/6M3maDujS90H/scJe8wIOC
	h8CnGXaJG9w45o/RQ7B4WJsFNKkhETQVAFoY8FUt9Vd4MRJARM3KV4L0gVI2J8JmQ/RBI3FAorJRN
	y9W/Cc09Uc0NuHmPcvkzFNjhUIasZ4ILlYaR58JfPvfBHMNiZxtdwzldXXWtrvgam2H/mCL3VGEff
	mF9SHfmfc2D9JAAZ9cYQ7faLEnmNuAw2OAD+dYAKu4nGkvzdQoG2fOysmA7IQJtEMfZWZYOXffvvr
	65nFQKMF8BRZVhCR119A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jin1n-0007ws-JI; Tue, 09 Jun 2020 22:47:31 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jin1b-0007vp-CJ; Tue, 09 Jun 2020 22:47:20 +0000
Received: by mail-il1-f195.google.com with SMTP id c75so68631ila.8;
 Tue, 09 Jun 2020 15:47:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=NfEOBWG4bfCTzsmuuXO6TDc1+wX47eGNPT7jG0QcyfA=;
 b=Jd0vDit1029UzjWBSh7Mx/QKaIELXUh/M8Hd/bZ1o9aDAilIxoc834p9QUSlONiuAU
 hMtdYYT+PRNtrF9PRuyAytGxGhyj1c8QW8ugngg9ZbVFPXSyV7iF0OShLS2oruKAfZgx
 KUC8hV3HD/eqdOu4K3rEOqQSDieYow3WpjVnlCBqjLsBrB4fwuuYsxTAqmIeIgWbEIc3
 83pSikYYBZlAHXDRBS1lbO6/961nrWhsPsjLPc9Ai/4d9/gURnLIWXPQHBCu3pTeUO06
 dkDfasUWtfQ5U6daH5IjmHisnT9niOLwi0+J7uO+TZ820HrT2LMX1MRDsR/1ApYRmgpj
 cdBw==
X-Gm-Message-State: AOAM5323iACuPlCEzIXRqA17exP5qaEWZP7nxNW/8fcIOiDfQDwzUNmV
 0wpcy8/WPRJPx98WGxjUAw==
X-Google-Smtp-Source: ABdhPJw4TjhCLUC3JtF2gFwOM9IISGo+ofbNQgZdzsGMcolwz4Zwq/ktiVssfj1x7zDBsW5xmWFO6w==
X-Received: by 2002:a92:4810:: with SMTP id v16mr274790ila.75.1591742838798;
 Tue, 09 Jun 2020 15:47:18 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id b13sm9835891ilq.20.2020.06.09.15.47.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 15:47:17 -0700 (PDT)
Received: (nullmailer pid 1646943 invoked by uid 1000);
 Tue, 09 Jun 2020 22:47:16 -0000
Date: Tue, 9 Jun 2020 16:47:16 -0600
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?Myl=E8ne?= Josserand <mylene.josserand@collabora.com>
Subject: Re: [PATCH v4 2/2] dt-bindings: clocks: rk3288: add rk3288w compatible
Message-ID: <20200609224716.GA1646913@bogus>
References: <20200602080644.11333-1-mylene.josserand@collabora.com>
 <20200602080644.11333-3-mylene.josserand@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200602080644.11333-3-mylene.josserand@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_154719_420214_7C37C9F0 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, sboyd@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, kernel@collabora.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 02 Jun 2020 10:06:44 +0200, Myl=E8ne Josserand wrote:
> Add the possible compatible "rockchip,rk3288w-cru" that handles
> the difference between the rk3288 and the new revision rk3288w.
> =

> This compatible will be added by bootloaders.
> =

> Signed-off-by: Myl=E8ne Josserand <mylene.josserand@collabora.com>
> ---
>  .../devicetree/bindings/clock/rockchip,rk3288-cru.txt     | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> =


Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
