Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 451BDA57E4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 15:41:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Subject:From:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=32l9z4+uKSKu/uwRaFQh7to/GNhHUpeWFJuKxXloSoE=; b=Au3iMkB5O55mDN1i8azlqztYo3
	blX2+JTQbsUzws/oNuQXqmZkINc19LJ94Mp1Yc5HBagysy0LWZeeGD4vy/dajSAqbEZyOrg6B+C+h
	PWLm4kWw8V75TgNw6s+ElSTqhczIyjWA6DmuBsPF/16U/gn9HL1GAa5d9ujzz9tEll0acYaLgEZQI
	GACccEEjzWFpNDsabcmmh3na0P5XixGUdKKSKnJTltQetIodMskhwYVNhWCkl3NcKUta9CSNNsxQF
	SCe9rFk87sOorkJ/c0TxY+Be3+mBsgCba+jsCa0aT9IB8h1VmCeuuguar3bxRlozPz/mtHrupSa25
	gJnkptgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4ma3-0004jJ-4T; Mon, 02 Sep 2019 13:41:15 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4mXw-0001RL-Rv; Mon, 02 Sep 2019 13:39:06 +0000
Received: by mail-wm1-f66.google.com with SMTP id g207so10660620wmg.5;
 Mon, 02 Sep 2019 06:39:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:subject:references
 :in-reply-to:cc:cc:to;
 bh=c4HshC9nAsXvh0CM4Xw/Kywl+VsuIg86CWeyWDCZNw8=;
 b=Ri7Rh+Pgxiqzga7wY0kDUIiDN+oX/7pFO8ZNQts8hoej4MeXkXZETWmixQtI0qobSk
 xH8l5cKbIzPpWpemSw3RQ6S76RhYstz+hXtDk7VoL2CWo/39B6vbSL7EIy7G5D8RpFIS
 Y3mYgdxjlWxamRbHz+VrpU2x3EU0ePudCAiIvXcoJmewnDlKlNXFCBVyXxtSS5xJupvz
 K9M2JCP1QgqHQKurJHNkY4hJGcLTWGJPCJaQt7qoHI3rA8EuWwuHdHlP8IRjXFX5pObY
 Gu/AKX0UBr14Ox0jwZDkiX8X3CGvHHYMx76RkAcryCV/hw5b9EfaZkFU6QkMRu9l8UZt
 LhhA==
X-Gm-Message-State: APjAAAVXl8UZnagVxOticIa1T2pdhiZ9wnnqvF3o4axKN6PkbzyqqZCl
 J8uTkM5aUQV15t99hlG7/Q==
X-Google-Smtp-Source: APXvYqwO6HHhku+0rZz6bR1PsEOF/M9tdBQBZMCOO26c8+wfPqrArykir4NPZWmSRZbUxaOgadevqw==
X-Received: by 2002:a1c:c5cb:: with SMTP id
 v194mr14382889wmf.108.1567431543614; 
 Mon, 02 Sep 2019 06:39:03 -0700 (PDT)
Received: from localhost ([212.187.182.166])
 by smtp.gmail.com with ESMTPSA id s12sm3868057wra.82.2019.09.02.06.39.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 06:39:03 -0700 (PDT)
Message-ID: <5d6d1b77.1c69fb81.59c07.0f29@mx.google.com>
Date: Mon, 02 Sep 2019 14:39:02 +0100
From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 1/7] dt-bindings: usb: mtu3: support USB wakeup for
 MT8183
References: <1567150854-30033-1-git-send-email-chunfeng.yun@mediatek.com>
 <1567150854-30033-2-git-send-email-chunfeng.yun@mediatek.com>
In-Reply-To: <1567150854-30033-2-git-send-email-chunfeng.yun@mediatek.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_063904_925461_46D20765 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 30 Aug 2019 15:40:48 +0800, Chunfeng Yun wrote:
> Support USB wakeup by ip-sleep mode for MT8183
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
> v2~v3: no changes
> ---
>  Documentation/devicetree/bindings/usb/mediatek,mtu3.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
