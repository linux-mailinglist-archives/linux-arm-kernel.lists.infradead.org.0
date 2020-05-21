Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C2A1DD267
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 17:54:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vt75hUS7pk/+iCp6j1OHvdGybSsvbcm5O1rGtwuyQkw=; b=SwPOfOlCH4g5tk
	Wgw+ZjxiebPZYfwb/M+NqM2KNdMTf2OofWNVhJdO0RUGaaNm9Moyvl0Q3BhDkhatc8jIS6CxllRhw
	VaaG4mXL2trEwf6z1SbB5VxxcOXCI9FHBMJw7wxHus/4axDiOvtHLaFP/nGPeupYoJoHU78jxVfCU
	ALgMNbFWcBbAKAgocdyQmjCxlkfmDI9sNOyDYh/1m4INZI3HWD8ondz8T+YkdrFDH2reZa0CuhxKs
	RyWTtBhw/WGGhSF4r9QPPDwzR0GBNtU1h4nx47zTVfi1ssyBkT83eksjhubG6i7a62PzLI17wxaCo
	msEyP7/BAVAS2+wfPAug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbnWV-00082Z-Dz; Thu, 21 May 2020 15:54:19 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbnWK-00081s-UR
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 15:54:10 +0000
Received: by mail-il1-x143.google.com with SMTP id b71so7540695ilg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 08:54:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BfWoobLVAKfzMCiMZcNvEFreCxWJpDiylD9YHTs2DM8=;
 b=hkPi3G6+ffqyy54W13omYGNYelo1z8fPDbEUIslyzE6p6/MRNAcoFKAll6dV0rPZz/
 PLNHi8p7h/L1GdxnH8/vwJ7NSNrlNRk7ApAZoyU/lC1q6V+dfUtYlfBOp933NFKHP+Fb
 0atY4zRCNh71xBRkXSsNFrl6eb2bihQL9IuAT2tgeLH6NTGE4gsYD/e5f82DT3SCKUM3
 F574RYdrLYgihpu0nk9vJ1yksIcajeqrWo4Tev1/KKpd9LEIXu+ZVbTukPwYHjYqIoCV
 j2TWKcnqMoSgTNTpRO/+kxvWzZI4fsioPJ2IjGzsk96RppbCTPeLa07Og0UZY2vZcj78
 f2Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BfWoobLVAKfzMCiMZcNvEFreCxWJpDiylD9YHTs2DM8=;
 b=QcszLF2KJnBzYlJRMaxoj3whIlGsrSU7P6ykA9bIXb/sADRPRNqe6e68s1XXUTeumL
 30OoXFLEMkVd0ctJRcN/m1jxYOz2bSvkrBTx6zq9TjUEdfvS9WlaB4fzIq8yVprGMk9a
 ExgDjm8tPv3LXribFF5T4oQcFKJCITNRElxvCIBnNWNd6j9zoNmgpYqK1eMZctX0bOwD
 Q55IdTJt8Q+9mBwOw5tpyK4olCqShF4ufZPgSRhU9soHAXZCagWBDWPN26a+e87pHb7x
 1aum6yzX0fJ9u+HObeqr+SDD6yyL8MPwoVr+7ntAxszm00LkVx8qsBx8/PzM3jHm6pkk
 jmPQ==
X-Gm-Message-State: AOAM532x/o9mDWhSsLldh+DcbKAN+16v7br9V7xeefbuWgBfvMsIekbw
 IJ/M/xdR9BJUycHhPpCVf4/nCN/fW4zqUT4kKC9SdA==
X-Google-Smtp-Source: ABdhPJxSeqc9p+cZk7hCXVAfU51UL+rEUcfznzd6rZk0t9zdDUQgpdG5YvcK8wwCvzBe2YCoqfVICx4SnejEqjj53MI=
X-Received: by 2002:a92:89cf:: with SMTP id w76mr8990688ilk.57.1590076444041; 
 Thu, 21 May 2020 08:54:04 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1589558615.git.saiprakash.ranjan@codeaurora.org>
 <7b69c9752713ce22f04688e83ec78f8aa67c63dc.1589558615.git.saiprakash.ranjan@codeaurora.org>
In-Reply-To: <7b69c9752713ce22f04688e83ec78f8aa67c63dc.1589558615.git.saiprakash.ranjan@codeaurora.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 21 May 2020 09:53:53 -0600
Message-ID: <CANLsYkx9FsCXPYPzXhR5C6rFKEvBrYr5A6Reu=zAnLG_HVk7AQ@mail.gmail.com>
Subject: Re: [PATCHv3 2/2] dt-bindings: arm: coresight: Add support to skip
 trace unit power up
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_085408_985398_85839015 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Tingwei Zhang <tingwei@codeaurora.org>, Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 15 May 2020 at 10:23, Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> From: Tingwei Zhang <tingwei@codeaurora.org>
>
> Add "qcom,skip-power-up" property to identify systems which can
> skip powering up of trace unit since they share the same power
> domain as their CPU core. This is required to identify such
> systems with hardware errata which stops the CPU watchdog counter
> when the power up bit is set (TRCPDCR.PU).
>
> Signed-off-by: Tingwei Zhang <tingwei@codeaurora.org>
> Co-developed-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>  Documentation/devicetree/bindings/arm/coresight.txt | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
> index 846f6daae71b..e4b2eda0b53b 100644
> --- a/Documentation/devicetree/bindings/arm/coresight.txt
> +++ b/Documentation/devicetree/bindings/arm/coresight.txt
> @@ -108,6 +108,13 @@ its hardware characteristcs.
>         * arm,cp14: must be present if the system accesses ETM/PTM management
>           registers via co-processor 14.
>
> +       * qcom,skip-power-up: boolean. Indicates that an implementation can
> +         skip powering up the trace unit. TRCPDCR.PU does not have to be set
> +         on Qualcomm Technologies Inc. systems since ETMs are in the same power
> +         domain as their CPU cores. This property is required to identify such
> +         systems with hardware errata where the CPU watchdog counter is stopped
> +         when TRCPDCR.PU is set.
> +
>  * Optional property for TMC:

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

>
>         * arm,buffer-size: size of contiguous buffer space for TMC ETR
> --
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
