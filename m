Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34DC64BC1A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 16:55:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x91AcP0G+g4zlzSjeQlJasNrm4pfWKD00MmifW6JMUA=; b=eQXYXQ7SXnIh/j
	cqdel35ExkX4Qm9r7bOrBsGL7VMMSRxVSIrZotGjaNkX5Ud4AZPKKQSbsaBWQ99SFOepNe2Thwluf
	GyfxmI+yFLC4v+nz3JpZzybew+0I5qvZD+lh072YKPJCakV2Y1hQWDl5D92SoMZecXdC2CiM+efpO
	94WLyio86bw1VGkeJryCVrGN//UnJLGyJAaCt4vvE0Mcs30QPrnAhiTSVkb4AVvyHfqkB/vGAmbic
	DPPW1elJWZ2EMQFggkzU2rQdoRSr/leHwsT/xGW9tmkb7dk0tXWTWj2v3i9rJu9U3xk/3Y43+G9bU
	k+XHbu1KTdwEdw4h5XCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdbzY-00058Y-RV; Wed, 19 Jun 2019 14:55:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdbzD-00057r-1i
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 14:54:57 +0000
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 77FEA2147A
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 14:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560956094;
 bh=1o2dMj31GORXJZyOFULgtIRqexZMCNTkB7pR8LOrtJ4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=UwNG/MZ9NAUUU45HfvfXlTO4Y5w2u0nCVkW3R2lkQPoMgvumSI1dh10HVqTD1VfDY
 aYSOj/HJuWqGHlYrDhlTogwc+BWUtWCA/A5Pb5LnyjX3R+vGlE2MbLMI/4gp0lvHdL
 JLwfHB5cWssPoWTzr1UKNF8d1KzN/nQ8j7q+29u0=
Received: by mail-qt1-f176.google.com with SMTP id s15so20195755qtk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 07:54:54 -0700 (PDT)
X-Gm-Message-State: APjAAAWirfpDVlDKWsI+o0tK0I0gsjU/Yi2TW6h18pMFyvMqIfLQQHPV
 DJPFsQ5qbk8//XM3b4YrjRYvAIH3Te5qTUYmFA==
X-Google-Smtp-Source: APXvYqyIsFoKeKt8JjG9xmjujYGTtwkYLYLaB8h+ix0Pl7lN0krfkUYZCEy8rme8HA3CdujMucRPRNSAzdKC1rAn+e4=
X-Received: by 2002:aed:3fb0:: with SMTP id s45mr53667104qth.136.1560956092103; 
 Wed, 19 Jun 2019 07:54:52 -0700 (PDT)
MIME-Version: 1.0
References: <1559754961-26783-1-git-send-email-sricharan@codeaurora.org>
 <1559754961-26783-3-git-send-email-sricharan@codeaurora.org>
In-Reply-To: <1559754961-26783-3-git-send-email-sricharan@codeaurora.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 19 Jun 2019 08:54:40 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+0TLtLiX17nRSyVWrJM2_UvLEVMsp7Hf2e3hU7fh4WGg@mail.gmail.com>
Message-ID: <CAL_Jsq+0TLtLiX17nRSyVWrJM2_UvLEVMsp7Hf2e3hU7fh4WGg@mail.gmail.com>
Subject: Re: [PATCH 2/6] dt-bindings: qcom: Add ipq6018 bindings
To: Sricharan R <sricharan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_075455_549389_D462FA30 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Stephen Boyd <sboyd@codeaurora.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andy Gross <agross@kernel.org>,
 "open list:ARM/QUALCOMM SUPPORT" <linux-soc@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 5, 2019 at 11:16 AM Sricharan R <sricharan@codeaurora.org> wrote:
>
> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
> Signed-off-by: speriaka <speriaka@codeaurora.org>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index f6316ab..7b19028 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -36,6 +36,7 @@ description: |
>         mdm9615
>         ipq8074
>         sdm845
> +       ipq6018

You need to add actual schema for this, not just a description.

>
>    The 'board' element must be one of the following strings:
>
> @@ -45,6 +46,7 @@ description: |
>         mtp
>         sbc
>         hk01
> +       cp01-c1
>
>    The 'soc_version' and 'board_version' elements take the form of v<Major>.<Minor>
>    where the minor number may be omitted when it's zero, i.e.  v1.0 is the same
> --
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, hosted by The Linux Foundation
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
