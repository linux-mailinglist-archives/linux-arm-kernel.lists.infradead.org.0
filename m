Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0281E124C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 18:02:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yj4z5byFY1muR7ohYDk2qPaa/w+McbC7tYezbUQtdFQ=; b=sJPRhwhO7RkK98
	tggjr6mzBg+YTO6FDbZIxVX/DMFrZz9+GiCJOVbP9ABE0lRQm6m6xheIBkRMTXtN9FW3Dcpm7qzF2
	v0kr/EfRa9wv8bwAh+hsK08Q5BpFae0juYz7yieYVndnISbitg3zKUTmago8WAXCK9FrTHHv9uQHq
	U9HHrP0kEkfFtQq16Dm4OwgrCU/nLIEfNMGF6CL/InVgELXGhvU+pTTtoVSf36IImBuruEfbi66Hd
	Q/GygQ9Bh2bp3I8dmRvdxy1xXBQnP2i6Ko9g++FCXYAgyMMRAtWWNsgCCDct+Jof/my5IuVmT8rmp
	Gr+kczkF0swGdHjwhKgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdFYH-0001Tt-TA; Mon, 25 May 2020 16:02:09 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdFY8-0001T9-Bn
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 16:02:01 +0000
Received: by mail-il1-x143.google.com with SMTP id j2so17720643ilr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 09:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ndTklb7/SAZk4bUIoOKID+ziy4QQzei1SxmS+QITaNQ=;
 b=Okfa0myw3gWvHcsvCG+LrNu8vo8bECwM1NcFblymMQAiGT7+y9eHEr8NC5z6+N8JzK
 mzlw3h7rltmPg5jkXMl04Me9kIbZlJYjsG8Urh65mRdyktu03LLIpv77czeeIpVw8Sru
 x6DqR6REiEic6JH/kXXTOsijnyICa34jR95UnPtu86+3N8w52mTLttUjUQRtPFCY/AZA
 vG6P/pea15LJdJxDU3EvCTPMiuu5DCbxndnPe4cnBnNZF2ZxKEZ4qbok33u/ix0NGgf/
 NluPSBy63jZnk1Nbp5nADhjP36FybTKqPGJNjjHqjN3ow+fOetbQDP+cAHrBoMqBGVCR
 wFmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ndTklb7/SAZk4bUIoOKID+ziy4QQzei1SxmS+QITaNQ=;
 b=aGrNTWIK0FjqET4ou6R/+6Q8Jw5Q+MVlFGezP7wNceZqGda0b4W1VBGAX0W5C5B0/Z
 qgP9n35awZ1voKXvnlTj6tDuhIlzHckf9ee9Zf8PmJBogVkpqmqkW187NNlVgj/kOFuG
 aYndsgate3aZAsn0WnJA3nqhq0ZF/DGK7v++stQPkqzRkY8ecaIVuSELWdAs3wObatLJ
 qAfRuQM20fZ0jIda3By6cktKX/h6W7Z2GkhnLGqbaorP/Q/RNcLVSemzgaOc/+6AKRo8
 X0s6QXK6T/wou8/hj0r6C5ZTlLE/m/wYHDsLouU6wmOCIPJSF09s/DtyKKsABVoQZNgU
 Y+qA==
X-Gm-Message-State: AOAM531LZDo+lrAnMo9YXhOkYMBRbV8aMbkeW1fIykaCmB8JHAeTehYX
 FhihP1ZjKFfVYkWaLE72kr2/Ypl5J6mh25bAVaDTxQ==
X-Google-Smtp-Source: ABdhPJzdCyCnVR8DkEpN7qEDDAtmWOw4EM3xPxchVD4sgi/TBYuoYYkIjzb27DvgzVuornpYLqRjO0idnxc4E75ZQnI=
X-Received: by 2002:a92:89cf:: with SMTP id w76mr24457702ilk.57.1590422517999; 
 Mon, 25 May 2020 09:01:57 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1590171891.git.saiprakash.ranjan@codeaurora.org>
 <ccfe8a5ede0523436508e31085322ccdab8f972a.1590171891.git.saiprakash.ranjan@codeaurora.org>
In-Reply-To: <ccfe8a5ede0523436508e31085322ccdab8f972a.1590171891.git.saiprakash.ranjan@codeaurora.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Mon, 25 May 2020 10:01:47 -0600
Message-ID: <CANLsYkwhjbyspLjbnp4XYCcRNFUkBs46QjWYBTza1scGDtNSmQ@mail.gmail.com>
Subject: Re: [PATCHv3 2/2] dt-bindings: arm: coresight: Add optional property
 to replicators
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_090200_472294_E184BDD4 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 22 May 2020 at 12:37, Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> Add an optional boolean property "qcom,replicator-loses-context" to
> identify replicators which loses context when AMBA clocks are removed
> in certain configurable replicator designs.
>
> Reviewed-by: Mike Leach <mike.leach@linaro.org>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>  Documentation/devicetree/bindings/arm/coresight.txt | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
> index 846f6daae71b..b598a5f0037d 100644
> --- a/Documentation/devicetree/bindings/arm/coresight.txt
> +++ b/Documentation/devicetree/bindings/arm/coresight.txt
> @@ -121,6 +121,12 @@ its hardware characteristcs.
>         * interrupts : Exactly one SPI may be listed for reporting the address
>           error
>
> +* Optional property for configurable replicators:
> +
> +       * qcom,replicator-loses-context: boolean. Indicates that the replicator
> +         will lose register context when AMBA clock is removed which is observed
> +         in some replicator designs.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> +
>  Graph bindings for Coresight
>  -------------------------------
>
> --
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
