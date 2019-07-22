Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DFE67078B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 19:39:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QvbElKxFotQVrPtoB/9z7uIpPYa6OMW+cNARPbLlOCw=; b=SCstnA/pO8//Cr
	H68TbLsDwAqxVlxiBM4x0UFygEqUfgZIEH0Sr7psSkjW7pTbpNaDhPlDaavGXTuc052tKmyBbVX7R
	Zgkl29EbFy0ID47LdZBjXWwErKrXKSR3Ds3z14Q5KT3Fvo3iijQEXw1hvHLMRFmEN+4uswb4raUGu
	6tlzPGpPKHIFXr/bNjaryZTEy9m7QlKuZaxBGQnNtx1pbZaBnRrXdma67Rcb9qJqamptsoHB0gzkj
	J0sTIosZ3wV/4OEZP1cbCkg+WT/XF4w3eWZfRpiKl7VKladZHmzfRuy5tYRlqnwkGdv+gRGG2alfc
	Mnr7gwYh+0A3+nOiLuxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpcHj-0007ll-RE; Mon, 22 Jul 2019 17:39:39 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpcHO-0007lA-As; Mon, 22 Jul 2019 17:39:19 +0000
Received: by mail-io1-f66.google.com with SMTP id h6so75747573iom.7;
 Mon, 22 Jul 2019 10:39:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wjVlpYQpZUbO09orLG9AZ6U1/SPFAZfxcKpbcS0Hb5E=;
 b=QDMbAfezhBwNoByYnokm6yFK94r9Bf7kyVec9GoG5ttZER8bray4yhfvSOa2PNNYaI
 e3D7o6iAeTjSOVLtoUPCe7EsXm/PmRcICw2cRkvmx6a+Yi/te3ypN1Ht/Uklw2kinIpp
 Ak18jR0N4ESVrOT1e3CZ/K2pOWsZwApO20lyyjI5MpMEE/BNplEdVvhXCXTRLibrz0aY
 1zw7lD3JpIHIfBOKa2bSv4BbAEHOmqpt7GGL9bQhxPzAlZGDLY5RU1/BjpCKdFu7/Cms
 IZ5IVjd3LpFgTshsWUVksl23SK+6q8hxWvooARQwoLbzjHk/nI8Xs+Wdaz1hFpaVQPdo
 HJsw==
X-Gm-Message-State: APjAAAU3iRUjisRfQbGSGD/E6ZgdpDQxTq/k0fNJIAb5gLzAR666Nuxt
 yw8JV28ztbN18snwlzRREA==
X-Google-Smtp-Source: APXvYqxApqbNIx0zyoWtwrvfuA/FYi/DJQeGo5LXD2cSKwEdYujoOCwjHXvKo/HVr55kQ3JiI42Arg==
X-Received: by 2002:a6b:7606:: with SMTP id g6mr11597267iom.288.1563817157557; 
 Mon, 22 Jul 2019 10:39:17 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id z19sm52082738ioh.12.2019.07.22.10.39.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 10:39:16 -0700 (PDT)
Date: Mon, 22 Jul 2019 11:39:16 -0600
From: Rob Herring <robh@kernel.org>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [v3 1/4] dt-bindngs: display: panel: Add BOE tv101wum-n16 panel
 bindings
Message-ID: <20190722173916.GA26308@bogus>
References: <20190626025400.109567-1-jitao.shi@mediatek.com>
 <20190626025400.109567-2-jitao.shi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626025400.109567-2-jitao.shi@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_103918_382249_0155B49F 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
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
 Ajay Kumar <ajaykumar.rs@samsung.com>, Vincent Palatin <vpalatin@chromium.org>,
 cawa.cheng@mediatek.com, bibby.hsieh@mediatek.com, ck.hu@mediatek.com,
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

On Wed, 26 Jun 2019 10:53:57 +0800, Jitao Shi wrote:
> Add documentation for boe tv101wum-n16 panel.
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  .../display/panel/boe,tv101wum-nl6.txt        | 34 +++++++++++++++++++
>  1 file changed, 34 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
