Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFAEF1766A1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 23:13:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZMiwBO1oI+Qry6DT4ZDbjjOsryvpcDaR9tH+oL0Mhkw=; b=G6TM7GRZ9u3y3D
	E9Ymqgc8kyvs+frTgofqhRtthIrGAbq5ciZb6W0wIQFFoQVLhnpAfLuCohGENrpRNQ2+KEAIrPfEs
	RvHxI1VYPFgukg9GygSUmulMpIU2MZycBvCPhIS3InpEM35orc7okVF2MOoTXkyxQgzdT2RNFz/4/
	A5ICa8HNWw4M74iIL8okgPfZTdynscEVtFpqlUPGQym2MIqErONqWg/syMFICG6mP1B/xvqlpafun
	/tHbEGvkhkQY4a5Wg9ntyXFcoNV2duCOOt6f2anZA0w1FrNcxghB5kC89FuYdImdTA83ey9tHchkE
	hvHU1/JOgxhv1GuGL3Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8tJi-0006kz-2M; Mon, 02 Mar 2020 22:13:38 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8tJZ-0006ja-Db; Mon, 02 Mar 2020 22:13:30 +0000
Received: by mail-ot1-f66.google.com with SMTP id j16so992272otl.1;
 Mon, 02 Mar 2020 14:13:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uGARtVGb5GQcRJdnLbZgGSdPsUcgBwNPE/vctX/sjkM=;
 b=iqfAFkvQzppBn7vVbybBMLycF98gemoLXqm5Jn4CzjAgx0mybGLOTRsfSRXw1r5c0p
 i9+zM8hzPxbAtTVyU+hBtl4jdk1TpZtCXdG39Rs6/IptHU0sJsYpjyWV0x1SBS1NCFH7
 7Ly5hKZzfqS+kROb7toTkZ6Jgn34Cxh9NTpsc2upQTHCH9XLzdYqUiEwfUPrOit8EuXp
 AxxJgFA79maZNM9iienH2t+GnfgiXxsJKMo9Jrc/TArGYl2uLBV21tXXFSA1Rd1Vhmui
 SqvMwMI22fbCvfBOR5d9Hmhz70tfQAnXayn1N8J0sZTfDn5tR4WXi+XyFsL+VOAAA8RI
 5lRg==
X-Gm-Message-State: ANhLgQ0CVCRPlOYKNM9iUc0/DqKewFCDof8UEoBSSag6soXqdPPzzU6G
 JbUXabljH8Bq0k9bk2UxwQ==
X-Google-Smtp-Source: ADFU+vsW/Ftc+zw0bkyoQI7ygt1in3IUwH41Y0ReqXzak1w+/RwutHp8ko7jGUtVL4RV0SiqGHVaZg==
X-Received: by 2002:a9d:21b4:: with SMTP id s49mr998093otb.294.1583187208115; 
 Mon, 02 Mar 2020 14:13:28 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p65sm6809911oif.47.2020.03.02.14.13.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 14:13:27 -0800 (PST)
Received: (nullmailer pid 24401 invoked by uid 1000);
 Mon, 02 Mar 2020 22:13:26 -0000
Date: Mon, 2 Mar 2020 16:13:26 -0600
From: Rob Herring <robh@kernel.org>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [PATCH v2 1/4] dt-binds: display: mediatek: add property to
 control mipi tx drive current
Message-ID: <20200302221326.GA17941@bogus>
References: <20200225114730.124939-1-jitao.shi@mediatek.com>
 <20200225114730.124939-2-jitao.shi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225114730.124939-2-jitao.shi@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_141329_458656_8BE0A41E 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 bibby.hsieh@mediatek.com, srv_heupstream@mediatek.com,
 David Airlie <airlied@linux.ie>, huijuan.xie@mediatek.com, stonea168@163.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 cawa.cheng@mediatek.com, ck.hu@mediatek.com,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 25, 2020 at 07:47:27PM +0800, Jitao Shi wrote:
> Add a property to control mipi tx drive current:
> "mipitx-current-drive"

'dt-bindings: display: ...' for the subject prefix.

> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,dsi.txt     | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
> index a19a6cc375ed..780201ddcd5c 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
> @@ -33,6 +33,9 @@ Required properties:
>  - #clock-cells: must be <0>;
>  - #phy-cells: must be <0>.
>  
> +Optional properties:
> +- mipitx-current-drive: adjust driving current, should be 1 ~ 0xF

Perhaps should be a common property and use the existing 
'drive-strength-microamp'.

> +
>  Example:
>  
>  mipi_tx0: mipi-dphy@10215000 {
> @@ -42,6 +45,7 @@ mipi_tx0: mipi-dphy@10215000 {
>  	clock-output-names = "mipi_tx0_pll";
>  	#clock-cells = <0>;
>  	#phy-cells = <0>;
> +	mipitx-current-drive = <0x8>;
>  };
>  
>  dsi0: dsi@1401b000 {
> -- 
> 2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
