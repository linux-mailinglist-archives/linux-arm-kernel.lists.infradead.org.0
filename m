Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCFEF0DB2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 05:17:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FOVvMuIPYkViLARxQYQ1HYyJQQwI+g+RnKsd7JqJSs8=; b=D/8cXba7vMNluz
	0EMojdAf0clm6pEezfumT5caRzQLTE3CjeZqAGUNuFLlCkt3GhlXUnxBrkjfCGn9nD/W47tg6Q0MV
	e385RDu7y4JGunuPS8ZKs5lvnLy/3PC0ageLeS3jGXBREAsTRkHW6d6Au3SvsxvL1jonnmJv2sxve
	Cu+OTEe2vq6P5ug+jsd0fca1a8MWJldkGUXfsTDoPmNYh0K3KVYJZ8RXUiBX8GI22CtgU0HfBadLt
	4Q8ifsx1woxDFzpPJDfmOaIsSjLXZbGFypP41fG47MXq49odeAHCsn6I1kBF9+dTBafo+sg0xJjyw
	kEK48yAWlj9LMe9pimUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSCl2-00083D-JO; Wed, 06 Nov 2019 04:17:24 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSCko-00081U-Hz; Wed, 06 Nov 2019 04:17:13 +0000
Received: by mail-ot1-f66.google.com with SMTP id v24so14413848otp.5;
 Tue, 05 Nov 2019 20:17:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Pasjx8CSERkmvokF+MIWXBinQV2inOneX0DH/i8NKYE=;
 b=J9Ij3boPUbXHvFDIUHSoBpCPioLd+28r7dM05+/pJwGYf8F3u0KSMTaloOXsVu/Uvy
 sZoZOGffX5PmAnqSxEzQu5zan0pN4hPV4kfrmMGA2P9mq8UFJvujZvqSv1YJ/ER1jp2Q
 ItBNo19eoIwznsIYMzuB1ttfZ3vYsX8JZVxyrkYLsHjY+sdVwXOzvcwlcorfeVpnMded
 zakmsQQ+9338s9YPbM1C0pUi57/vtBOGA6Sa9wmREERxi+csgoOD7IIoFZlFtGYB+OOQ
 0VUMBmTpn5VFCov1Z5JVhzMTu9+0yeU5HaBxqdMbAjD6vrIgXO+ielwpuuMnkaUg+lIL
 peog==
X-Gm-Message-State: APjAAAVD4PH+lvZxwfGfHA8toaVAiEkslHYh9ZAdS3R/9RTVXUvLG6LT
 rKaVir1tHjFG5HLuQTiIbg==
X-Google-Smtp-Source: APXvYqymW3STVwrnKyM7oB8B3KKofNBMHecjlu2u2+qn0yFU8UaxgzxpuvOLNAN28Z1FkkCBVB69Ew==
X-Received: by 2002:a05:6830:1e84:: with SMTP id
 n4mr262047otr.233.1573013829794; 
 Tue, 05 Nov 2019 20:17:09 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e193sm837103oib.53.2019.11.05.20.17.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 20:17:09 -0800 (PST)
Date: Tue, 5 Nov 2019 22:17:08 -0600
From: Rob Herring <robh@kernel.org>
To: Chun-Hung Wu <chun-hung.wu@mediatek.com>
Subject: Re: [PATCH 3/3] [3/3] dt-bindings: mmc: mediatek: Add document for
 mt6779
Message-ID: <20191106041708.GA26489@bogus>
References: <1572590582-11056-1-git-send-email-chun-hung.wu@mediatek.com>
 <1572590582-11056-3-git-send-email-chun-hung.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572590582-11056-3-git-send-email-chun-hung.wu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_201710_592565_7D8899B5 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, wsd_upstream@mediatek.com,
 devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Kuohong Wang <kuohong.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Pavel Machek <pavel@ucw.cz>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mmc@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Stanley Chu <stanley.chu@mediatek.com>, Pan Bian <bianpan2016@163.com>,
 Chaotian Jing <chaotian.jing@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 02:43:02PM +0800, Chun-Hung Wu wrote:
> Add compatible node for mt6779 mmc
> 
> Change-Id: Id36a136a75e892c9360ec95c7f52db06f5b308a4
> CR-Id:
> Feature:

Remove these tags.

> Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
> ---
>  Documentation/devicetree/bindings/mmc/mtk-sd.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/mtk-sd.txt b/Documentation/devicetree/bindings/mmc/mtk-sd.txt
> index 8a532f4..0c9cf6a 100644
> --- a/Documentation/devicetree/bindings/mmc/mtk-sd.txt
> +++ b/Documentation/devicetree/bindings/mmc/mtk-sd.txt
> @@ -12,6 +12,7 @@ Required properties:
>  	"mediatek,mt8173-mmc": for mmc host ip compatible with mt8173
>  	"mediatek,mt8183-mmc": for mmc host ip compatible with mt8183
>  	"mediatek,mt8516-mmc": for mmc host ip compatible with mt8516
> +	"mediatek,mt6779-mmc": for mmc host ip compatible with mt6779
>  	"mediatek,mt2701-mmc": for mmc host ip compatible with mt2701
>  	"mediatek,mt2712-mmc": for mmc host ip compatible with mt2712
>  	"mediatek,mt7622-mmc": for MT7622 SoC
> -- 
> 1.9.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
