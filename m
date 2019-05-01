Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F5610DFF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 22:28:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M962T9gL7oMHgygnnzP5TDRRwK914FnbTMGBAZvCNNo=; b=AWeojYF+dC0ljE
	WzEVbgIkprpQ4TNHpcSEY3eSToUdG+C9YTW1CIbmLJtYl/EVTUQNfdGg2d5TPCUTrmSRYe2Jkunsg
	9ZRVuYUNSRXE/PL/p+XsiIBCH75VFFj/rX7rpp0GsgNSp8tEwqU9hBJzUkQsU0j1FvpKMYenKsazA
	kRSxVB78YoRTMK8ubNTe9xxMtckfLjTr59kz6lRMjYnQpB2fIvWCzFbX15cdns3y17s7mYA2ooXzp
	hK41zwIb7+vqkxJ74z/ouqGDYMEjpTkfoZAKc9IV/8uDDMMOuxyUz7diLYf0U248yqmB3Zxt2bFNv
	gVzJNt3kUvUXFEMUEpmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLvpi-0003pK-JJ; Wed, 01 May 2019 20:28:02 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLvpb-0003ow-OR; Wed, 01 May 2019 20:27:57 +0000
Received: by mail-ot1-f67.google.com with SMTP id e108so102171ote.10;
 Wed, 01 May 2019 13:27:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KS4hKGNIVioMcRHyezKTJtPmApQ7+oYbfRHxucc7wGI=;
 b=nci5POOf19hVYwF8V2HRqRGGFuNk8nidDcmTMdfUea2v1t1xcyQp6CIbyC/WoFEPB6
 4VIinf8ZsNWfIpwtGgLFs5rV1gvp2gG3fgwbzlO9fWEYdmp4busfux3/7S4ChSAc9UXR
 MAorfE+GVPu2DdBEbrGpzSk+m+eCHhaYo3hbrQ76yfJ3792BaR/Wxr0XED0t3i13hYpn
 SchK778X4T+SlK8iyrzEi2+67nXkTdDpyYuKuwdy4eunYhHpJvLNJoBa/kJljFfCjnN8
 JxG/cD858rPn4qOQvhZDaWlNtjfH7RWDCkArq3N6Xcld4N7f5k5x3aoCZweogfglMa+f
 usmQ==
X-Gm-Message-State: APjAAAW+ygYZz1/dqvXtBA27k6Zsbqw9UtXJ3LWGLPYZ3uMBaOqrECYP
 k+EaK71zXfXIDIiUYu/dmA==
X-Google-Smtp-Source: APXvYqy2rYdK9ldoX9mWUXMnNnuvyEUUSkKlODoSZcJLLwSinumT9uIuGEHWyxrQzf0cIfbbiVfBAw==
X-Received: by 2002:a05:6830:c7:: with SMTP id x7mr335551oto.67.1556742474995; 
 Wed, 01 May 2019 13:27:54 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id b51sm18601731otc.8.2019.05.01.13.27.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 01 May 2019 13:27:53 -0700 (PDT)
Date: Wed, 1 May 2019 15:27:53 -0500
From: Rob Herring <robh@kernel.org>
To: Henry Chen <henryc.chen@mediatek.com>
Subject: Re: [RFC V2 08/11] dt-bindings: interconnect: add MT8183
 interconnect dt-bindings
Message-ID: <20190501202753.GA2862@bogus>
References: <1556614265-12745-1-git-send-email-henryc.chen@mediatek.com>
 <1556614265-12745-9-git-send-email-henryc.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556614265-12745-9-git-send-email-henryc.chen@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_132755_797803_A1796491 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Nicolas Boichat <drinkcat@google.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 James Liao <jamesjj.liao@mediatek.com>, Viresh Kumar <vireshk@kernel.org>,
 linux-kernel@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 Fan Chen <fan.chen@mediatek.com>, devicetree@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 04:51:02PM +0800, Henry Chen wrote:
> Add interconnect provider dt-bindings for MT8183.
> 
> Signed-off-by: Henry Chen <henryc.chen@mediatek.com>
> ---
>  .../bindings/interconnect/mtk,mt8183.txt           | 24 ++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/interconnect/mtk,mt8183.txt
> 
> diff --git a/Documentation/devicetree/bindings/interconnect/mtk,mt8183.txt b/Documentation/devicetree/bindings/interconnect/mtk,mt8183.txt
> new file mode 100644
> index 0000000..1cf1841
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/interconnect/mtk,mt8183.txt
> @@ -0,0 +1,24 @@
> +Mediatek MT8183 interconnect binding

This should be part of the dvfsrc binding.

> +
> +MT8183 interconnect providers support dram bandwidth requirements. The provider
> +is able to communicate with the DVFSRC and send the dram bandwidth to it.
> +Provider nodes must reside within an DVFSRC device node.
> +
> +Required properties :
> +- compatible : shall contain only one of the following:
> +			"mediatek,mt8183-emi-icc"
> +- #interconnect-cells : should contain 1
> +
> +Examples:
> +
> +dvfsrc@10012000 {
> +	compatible = "mediatek,mt8183-dvfsrc";
> +	reg = <0 0x10012000 0 0x1000>;
> +	clocks = <&infracfg CLK_INFRA_DVFSRC>;
> +	clock-names = "dvfsrc";
> +	ddr_emi: interconnect {
> +		compatible = "mediatek,mt8183-emi-icc";
> +		#interconnect-cells = <1>;

No need for a child node here. Just move #interconnect-cells to the 
parent.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
