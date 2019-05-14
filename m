Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DD51CEE2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 20:17:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6cyuGmdnGPLTsslpOn41HcnrpKvTd6zoqUhKEkNGyQ4=; b=U+mpdWvm5lR6Pt
	q4ipN7RG7r4qlr/HWetj6/v/PA5YtcUnO/RuO97lBnyOV39YsKMfNnxKEdDxnC4d3dhnOkwqa0sZ5
	6erlZl6bXbujrvEAEjGDDjiDhGLAseNyyxrBFEVhCt8zPc9vafnoay66AzoYSrmn3Pb79NKGnQYRa
	cP+z09yAbbMCa5TzKOCn1NAp04nvftgXNQhnTBjuJRHF1cw3aFVOnnXa5pf4NysFEbZok6Nqrkqwo
	2/kLLTQ+RdzFyMGsX9z9Zjy5iAaNfi/FGPwv38qQo1cg0qOpVTnJzmBSeZsQT9422dBm0TISvuXkz
	k+SwvUtDZywRuSldtMkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQbzu-0007lZ-8J; Tue, 14 May 2019 18:17:54 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQbzm-0007kk-Az; Tue, 14 May 2019 18:17:47 +0000
Received: by mail-ot1-f66.google.com with SMTP id u11so5737624otq.7;
 Tue, 14 May 2019 11:17:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=j6KYSa7mFmT8IdJQKzPSI3WBRVrEj+tTk4TrQEJlJp8=;
 b=LAWzP6B6xnZVWJPNJqtBuEYSiKCH1Rxk7M6sh4n/xXEd4izkNmnUrDiOCnAdGcEU3J
 6cHjtrw/9uuD9XLm7qrwenB/u90wEnRPfDTQmgVQLB69j1DJpKF6jb/aArMDJRFk6EVx
 fzN+OI3oJDvpDGymximW+ENHZBTfZqC2S7bbJCJrgHyjYANfvzByT9B8OCpq+4sZw/vU
 0UBvnO4n8U9s8NpMt0JDDcSYtxeHXQlZnvNxfw2ZYYl6EbKBdkIhmmW0k1tlAFan1VmG
 0886lOCcsFvrhu3nwnAaYRV/TGQw2U4jh/rj1ndpzWOCOzjx+pqe1W6yWzXA2LRWSxk5
 ZRxw==
X-Gm-Message-State: APjAAAVA5RUDkvi+maBr3Rm6/8U/8noI/K8aXJhGJsnyy7eEv87nJSD/
 0aifjrLpmlYXffTeRiPb8g==
X-Google-Smtp-Source: APXvYqxnIsAes2oxtS3pa7msjo6X0Zei3YQDzQ8HtcaPk4a7Y58c4+nemeuTSKJtzH/2q8RiQazUKw==
X-Received: by 2002:a9d:7c84:: with SMTP id q4mr15400106otn.98.1557857864775; 
 Tue, 14 May 2019 11:17:44 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m63sm6408810otc.76.2019.05.14.11.17.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 11:17:43 -0700 (PDT)
Date: Tue, 14 May 2019 13:17:43 -0500
From: Rob Herring <robh@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH v5 3/6] dt-bindings: usb: mtu3: add properties about USB
 Role Switch
Message-ID: <20190514181743.GA21612@bogus>
References: <1557823643-8616-1-git-send-email-chunfeng.yun@mediatek.com>
 <1557823643-8616-4-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557823643-8616-4-git-send-email-chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_111746_379006_CE037B3D 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Hans de Goede <hdegoede@redhat.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Biju Das <biju.das@bp.renesas.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 linux-mediatek@lists.infradead.org, Min Guo <min.guo@mediatek.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 14 May 2019 16:47:20 +0800, Chunfeng Yun wrote:
> Now the USB Role Switch is supported, so add properties about it,
> and modify some description related.
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
> v5 changes
>  1. modify decription about extcon and vbus-supply properties
>  2. make this patch depend on [1]
> 
>  [1]: [v3] dt-binding: usb: add usb-role-switch property
>       https://patchwork.kernel.org/patch/10934835/
> 
> v4: no changes
> v3: no changes
> 
> v2 changes:
>   1. fix typo
>   2. refer new binding about connector property
> ---
>  .../devicetree/bindings/usb/mediatek,mtu3.txt          | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
