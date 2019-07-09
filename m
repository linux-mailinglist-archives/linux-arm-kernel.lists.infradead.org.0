Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C68662D83
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 03:38:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2L+TaCjFv5dIfuR0dZx+XvC81vUv19Dk+6jwg9EAysU=; b=jM9bbs80Q8EjaV
	wZn9md/KbclBPWGpi0MZ28Wbyl6CmT8dZgq3zvBhBbm8hflz2JvAVllxHwfO/34cuJaeZxVEOE85H
	gcGEQHyYFhZvUo7I4UGR6z+6nGbaDAaJWByUKalQs9jQjWt+Y/sV1TyEaFV0Av2L+5xrbg9D/xPkd
	6C5lwbQbGHd2+4yGCw3zNu/aycPfGHJeoALoqrpUjT3uMZ3rtUbghsUEN1FGW+pSxI78D4NcsH7ES
	6TXH0+CX15fkI3fBhrX1i2zgR42s44Mdqu8YcdwC1X6BrjqL+XlzJtiWxiRh2P7ctwrvMqCTtr89m
	+ZFNlLG24kALJE3AacbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkf5I-0005Ze-Tz; Tue, 09 Jul 2019 01:38:21 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkf4r-0005PC-F7; Tue, 09 Jul 2019 01:37:55 +0000
Received: by mail-io1-f68.google.com with SMTP id f4so24160729ioh.6;
 Mon, 08 Jul 2019 18:37:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uOd/oGlrJQmGOyR3paSsUWyl32qF4mG/LZsN2EHNdm4=;
 b=n/1UwJ0Bwd6UvKSqoKM3KFe4UYiG/lQObxJpbnN7NfKyqkWCrt1O3nWfw1W12Td1X2
 fwBK0yKeRQ/714/W6Xvt8gi1Ki4kU95NYCfeUDsuPp14wFB+idXI2fh8zeuXWlKJvsNO
 JcsdcVQWHjHrq7zlIbApgFD0UT9lTgPEbXI+HeAyFRPAUB027yZdv2x7NwUKGKW49ci5
 p/O0vpx5zzhEIoFxDLWHD4PLgRZ1OClsGcOv1JPQJEsi1mxk4fu1Bu+n3UgerHRwxX/G
 9udD3trW81sirYv37iMW271YROvgOaZ9oytFJKRTII36DBqRDKgOsn7WBQ18QIFqg+IR
 hXBg==
X-Gm-Message-State: APjAAAXIqWMrvp6TRa/9lKmnraYbY02jbfi34xazPDBnzh0HqVBPFEnz
 8ZrNpa0NP5p6DLDxATKPpQ==
X-Google-Smtp-Source: APXvYqzGxBBE6CSBTeCLog4O9D6PQzOKAbZsak16GswGuWcEt/iesuaNho6fRp19X4r9iH6YUjkHcw==
X-Received: by 2002:a5e:9917:: with SMTP id t23mr7398839ioj.23.1562636272545; 
 Mon, 08 Jul 2019 18:37:52 -0700 (PDT)
Received: from localhost ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id s3sm13196924iob.49.2019.07.08.18.37.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 18:37:52 -0700 (PDT)
Date: Mon, 8 Jul 2019 19:37:50 -0600
From: Rob Herring <robh@kernel.org>
To: yongqiang.niu@mediatek.com
Subject: Re: [PATCH v3, 04/27] dt-bindings: mediatek: add dither description
 for mt8183 display
Message-ID: <20190709013750.GA30027@bogus>
References: <1559734986-7379-1-git-send-email-yongqiang.niu@mediatek.com>
 <1559734986-7379-5-git-send-email-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559734986-7379-5-git-send-email-yongqiang.niu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_183753_771138_8C607318 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Yongqiang Niu <yongqiang.niu@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 CK Hu <ck.hu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 5 Jun 2019 19:42:43 +0800, <yongqiang.niu@mediatek.com> wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> Update device tree binding documention for the display subsystem for
> Mediatek MT8183 SOCs
> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
