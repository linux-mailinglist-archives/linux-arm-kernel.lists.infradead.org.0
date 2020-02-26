Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D52D517094B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 21:15:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G/nEzLSkt6MXespjEu3Gdm0EL+QJiZmKBQV4qkNykxE=; b=nQDL6pWxG1r7RI
	jEWHfHhmsz6esSyuuhK/K9vWHf9OHe2ogY8mUy7LhUoOsAgmaz9HYFIJLef1W+1xDwkxe697k0I+A
	WBC5NIu0cdLKL1fCOEyGO3odZ0eBjDyBKnz8aJO/2GEWnHjjleD/aX36T/iXw/B1wzTeIzvLX5LBl
	XQA+LBpLJSMfrxGa8a2RBPu5sUYHv1rze/wsrs8Z3KPtjsnuoWZFV7P67T8R7CX86uu7NTrzNbooP
	08aYtbkf/6+awVhr7lQiJv1IanVo8cJJPy4SZjUDm+iU6y2bQkhBMNngkbDAd9FefDtX8gI6Pfs2u
	1EocFmQ1YddGtFFDfwyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j735b-00065Q-Nu; Wed, 26 Feb 2020 20:15:27 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j735R-00064u-08; Wed, 26 Feb 2020 20:15:18 +0000
Received: by mail-oi1-f195.google.com with SMTP id v19so809103oic.12;
 Wed, 26 Feb 2020 12:15:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kQF8x8EL9Iw62X5whExL3LnIV7r+UiOPvcN0XmWfobM=;
 b=iovb3VXqyKlsnGjsgYKRAhMuX1jJ484I1pNufi049RMiGAqK1M9Fpk6ytgXV5WaLg7
 Kgi6OP9UbrL9flMU7hB1C7wj3d/eS2WktunyCZBqK418kOUswhCitst3KtxZ5/aoP10r
 gm+PsyQp0KBxrcYvgW+lJGUf/9vSNjA57ZQzeM8YTj4iHKbET9fzjVjY5wmSNMzlr5Jr
 LTL75+bK/y+fOU72t+AFZzsNxUJs5rJqscw20ZBoDX9iPYBVi/aRRdjmDeJRvmGpnXlh
 MzNUA5LmfRlWq8wyQcJREc8DMfl3Y03tAhg4yewPgC3fYKCoSIse/aReradgs1mQCHbD
 7VkA==
X-Gm-Message-State: APjAAAV/JTflzy+L2CjG3cttN1PV7ZTkF2yaaFSoP3nyc3h718UVNQ3G
 SU84Al+9yEIjTzcDc1SQNw==
X-Google-Smtp-Source: APXvYqzsmy77xTW6N6DsWtgxWAfgoYTUvEH+Ph/SNmuOR8ic4AabsTV0RsAJBzgOMNn/hLeBuz46Eg==
X-Received: by 2002:a54:4e8d:: with SMTP id c13mr594836oiy.27.1582748115485;
 Wed, 26 Feb 2020 12:15:15 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t22sm1149383otq.18.2020.02.26.12.15.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 12:15:14 -0800 (PST)
Received: (nullmailer pid 18502 invoked by uid 1000);
 Wed, 26 Feb 2020 20:15:14 -0000
Date: Wed, 26 Feb 2020 14:15:14 -0600
From: Rob Herring <robh@kernel.org>
To: Macpaul Lin <macpaul.lin@mediatek.com>
Subject: Re: [PATCH 1/5] dt-bindings: clock: mediatek: document clk bindings
 for Mediatek MT6765 SoC
Message-ID: <20200226201514.GA18452@bogus>
References: <1582278742-1626-1-git-send-email-macpaul.lin@mediatek.com>
 <1582278742-1626-2-git-send-email-macpaul.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582278742-1626-2-git-send-email-macpaul.lin@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_121517_043435_3210E4A6 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, Ryder Lee <Ryder.Lee@mediatek.com>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Loda Chou <loda.chou@mediatek.com>,
 linux-kernel@vger.kernel.org, CC Hwang <cc.hwang@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 21 Feb 2020 17:52:18 +0800, Macpaul Lin wrote:
> This patch adds the binding documentation for apmixedsys, audsys, camsys,
> imgsys, infracfg, mmsys, pericfg, topckgen
> 
> Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>
> Signed-off-by: Owen Chen <owen.chen@mediatek.com>
> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> ---
>  .../devicetree/bindings/arm/mediatek/mediatek,apmixedsys.txt     | 1 +
>  .../devicetree/bindings/arm/mediatek/mediatek,audsys.txt         | 1 +
>  .../devicetree/bindings/arm/mediatek/mediatek,camsys.txt         | 1 +
>  .../devicetree/bindings/arm/mediatek/mediatek,imgsys.txt         | 1 +
>  .../devicetree/bindings/arm/mediatek/mediatek,infracfg.txt       | 1 +
>  .../devicetree/bindings/arm/mediatek/mediatek,mmsys.txt          | 1 +
>  .../devicetree/bindings/arm/mediatek/mediatek,pericfg.txt        | 1 +
>  .../devicetree/bindings/arm/mediatek/mediatek,topckgen.txt       | 1 +
>  8 files changed, 8 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
