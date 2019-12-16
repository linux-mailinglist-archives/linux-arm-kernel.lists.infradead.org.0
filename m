Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 445CD11FF0F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 08:43:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cSuykY5Ksvtcq6lHJpWKNXClJcoN2TAynDf5yfQdbJg=; b=P+a56Dd476jow0
	CieDbJsIeYV7ULPkZU62x3KbTu2DMCQpzgVNICGuPQZctr70tlDIQpr5nxn09fPI5CGX3YFsJ8hwA
	Hd/6xPJdTOnK97bgoOSs917tL7LV7EElUJfdFxD2W0lyHPRKwE9m2jt1OOpH+xEVhe6MeBQdjaimc
	Xjm00ktg9IbkcgwxusCWopTJOQ7Wrro+F69r2aBOC02YOQbwEI9Qbc+qDmf3PdUmRQ+Dnz44Kw0if
	xN5+0+FxZemr+Qsh+ISNQIJTuq3Si1IzVm75pWv3FjCEPZWhnpcMmPgxg5QNMeV05ly6NrYnIt0UP
	LWeVQeI5MYoWQU0xP/lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igl1t-0003qJ-3w; Mon, 16 Dec 2019 07:42:57 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igl1i-0003pP-7c
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 07:42:47 +0000
Received: by mail-qv1-xf41.google.com with SMTP id t9so2333874qvh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Dec 2019 23:42:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=keYwZ/CIw81Q8Cz3kuUmGzB6KcfZrFvM2y9zPZnUX3A=;
 b=F7lQExjymC0jAXQuYrfQWnEeV+li1jrHiCWUC3toxdLUvy7gryXioe76XE9KNl0EL5
 1p+DfYuFrjAwzIxXIHQQo7Di+Ta4vk88rzX/l6w7+TJkxdwoy3hPi1wNgPGTae6FZ67N
 sual9RcCfTdOqz+QoiZXw+L41K7jncfVPB3Dw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=keYwZ/CIw81Q8Cz3kuUmGzB6KcfZrFvM2y9zPZnUX3A=;
 b=gdrnJnAD/zYlM41fld6Aba7W5s0oznmZxqARkTC/gI61/UgNz5h3x9r3WmBGq/20L9
 lWJe93sFvogmYHofKpjMRlfEjRtx/LEtY5Z9Oz5XOJROn7AUXcmjvHeOrb2cB8KaQVpe
 J0QDydCjQLEm4v/Kyj4Px81cicKs19csbTuJCMh0EVcRcrPXZf3QVKe6QtF2jEVzmnWZ
 rJTpeshnSdnRTR4juL11yTbfk5US7BI3KnHTckprovYQg229d9vzty5NVy3u/MtXwTdh
 lpEibMHrOfb9iqRpW/TvRoWxq5PvJft4rsOiWE+dk8G7XHZcfFAfKdMYQpDxCPNoJd4w
 SSDw==
X-Gm-Message-State: APjAAAUYLdi4uDnR3myfBfZKM9V3MLC5k6dYSH0qdtHNDoI2u8YZS/6g
 u4jmC4km797jyJqm90UqmlLRjkP4T/gG58/yEAXqmvUgCzM=
X-Google-Smtp-Source: APXvYqzAVzG3X2eMMGzUs9utrlUgztg1oZUTm5FQxljAgX7mY47YjrCiIGyz7hJKN4AC71cnKcaj/IqsHmNdC8dIfmk=
X-Received: by 2002:a0c:b5cd:: with SMTP id o13mr25785784qvf.47.1576482165124; 
 Sun, 15 Dec 2019 23:42:45 -0800 (PST)
MIME-Version: 1.0
References: <1575960413-6900-1-git-send-email-weiyi.lu@mediatek.com>
 <1575960413-6900-8-git-send-email-weiyi.lu@mediatek.com>
In-Reply-To: <1575960413-6900-8-git-send-email-weiyi.lu@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Mon, 16 Dec 2019 15:42:34 +0800
Message-ID: <CANMq1KBC=aZoXtcvEj92v1z6uUKWxFsMKHUQ++x5C8fFPWheRw@mail.gmail.com>
Subject: Re: [PATCH v9 7/9] soc: mediatek: Add MT8183 scpsys support
To: Weiyi Lu <weiyi.lu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_234246_296979_A6E88B0B 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rob Herring <robh@kernel.org>, srv_heupstream <srv_heupstream@mediatek.com>,
 James Liao <jamesjj.liao@mediatek.com>, lkml <linux-kernel@vger.kernel.org>,
 Fan Chen <fan.chen@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Yong Wu <yong.wu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Just a minor nit, but I can't really comment on the exact register
addresses (what I could find in register table made sense).

On Tue, Dec 10, 2019 at 2:47 PM Weiyi Lu <weiyi.lu@mediatek.com> wrote:
>
> Add scpsys driver for MT8183
>
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>

Otherwise:

Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>

> ---
>  drivers/soc/mediatek/mtk-scpsys.c | 226 ++++++++++++++++++++++++++++++++++++++
> [snip]
> @@ -1197,6 +1409,17 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>         .bus_prot_reg_update = true,
>  };
>
> +static const struct scp_soc_data mt8183_data = {
> +       .domains = scp_domain_data_mt8183,
> +       .num_domains = ARRAY_SIZE(scp_domain_data_mt8183),
> +       .subdomains = scp_subdomain_mt8183,
> +       .num_subdomains = ARRAY_SIZE(scp_subdomain_mt8183),
> +       .regs = {
> +               .pwr_sta_offs = 0x0180,
> +               .pwr_sta2nd_offs = 0x0184

Add a comma at the end.

> +       }
> +};
> +
>  /*
>   * scpsys driver init
>   */
> @@ -1221,6 +1444,9 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .compatible = "mediatek,mt8173-scpsys",
>                 .data = &mt8173_data,
>         }, {
> +               .compatible = "mediatek,mt8183-scpsys",
> +               .data = &mt8183_data,
> +       }, {
>                 /* sentinel */
>         }
>  };
> --
> 1.8.1.1.dirty

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
