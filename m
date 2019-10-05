Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4028CC79C
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 06:03:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5JNM/haUj/Hc+k8O2t1G7YlEO/DaUmihRFzqsZ1ZRWo=; b=mZIDOKi7ln286F
	jFqsPImsbC7hEjuIqcJTRGiiSPBCyMFH3tDhEfn4O2WgIDas0kM1j+Ds4VQzFFQa8/0yDMnPg0wQv
	6xrZDUKdyTHleanW4lxuG1qYT1StPTrHPBtXt5wRf27bqdVFNQg4hMmIoLl1jM+GSRN7qHn7UYwDJ
	VUzRj5W2xQAksRI6egPdRG/K1AmP+XDWWTjA6MZt6RrIxDujg7BPy04AeguQ7bXXyqNSjk74L3msT
	W8gxP2GY/Ml1RBCGdTMMdjdxGBmQ/80h88fssbTgx73lc61Y5tqb2mZGaWwxBkXYH2PuzMJuF2RuI
	mSL9KwwlJzePiFoiTIKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGbID-0000eD-F2; Sat, 05 Oct 2019 04:03:41 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGbI2-0000dj-KT
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 04:03:32 +0000
Received: by mail-pf1-x441.google.com with SMTP id x127so5062456pfb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 21:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ep+T4ZjSmgVgmfOmjNJkzXbXl0FrJoxYAHDsSkcqpX0=;
 b=Ym13/luvCh4HRz9APPjske1u+h0i1SJvJ/OhgaVzdzAtnKWjlspe8o7xEmP+7IbY7f
 sJcI8dgcp/8xe2szkey2GF1l42mvdGVRx2mI8/KL+8QXBgillBcxrPfY+6808U57GFeD
 S6JqnpqljXqfWpOYoBxju6COK3d8eNXCzpyqmu2I58UXR5daXXiBIZGqcxp/+f3eN+QZ
 SJkNy+5P/fpY17vkKSu5RAX8TK9qXn0UdH360eT+NJjnvoVFeeWCK5D9XR9we5BGFxCN
 83vhwmNyiMbrxr6MLwb/bts1DpkdL9eTRdCA6Eu9mKObTZm/GSOgTo3ylyLrWc7e6Pdy
 5M9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ep+T4ZjSmgVgmfOmjNJkzXbXl0FrJoxYAHDsSkcqpX0=;
 b=tn88+43Q9LDqHoNQRID+mz3tXwPLWTdBqNqAKz+OQGMlhP8Ty3BnRLwNtxEZNIgvMq
 ErScGSYlITH33WPzPc4t+HTkdMDbcst1BWtrhzbBtsP93imIzMzzQ33/SM7uk8fMGIXR
 1kLqFFQKushsNF6JQqme7DgB5sVgTTsdz3KQnXDryKMg43ar9lPgcAqYXFVnjzKPo+ca
 TE5CM7n8uxEZxTquVYCcc5ocfaDEUHTCWIZXxruEhWogl0ctPKClDBqO51Fl9gUP4yMV
 Sz7WtAFi30Hvm0JbKOJsf4NqTA7GDfq7Efk58KHLo8qKI9N3UUksg4yos9yN9S+7PqQP
 WyJA==
X-Gm-Message-State: APjAAAVDDfo1ZObUosKIUSNCSN+iWlgm3ja/LsZU5knCw2os8Vhfx0cO
 6g4GuMBQ2VTREWSL4hSWmDPoEw==
X-Google-Smtp-Source: APXvYqy6CR1/CTAJi3zeL2dzdM9xntro53i8Tmw4S9q3dLx7SjGWLW2+lCDDvRKQ255GHtt9quen0w==
X-Received: by 2002:a17:90a:cb18:: with SMTP id
 z24mr20149664pjt.108.1570248209669; 
 Fri, 04 Oct 2019 21:03:29 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id e14sm7692470pjt.8.2019.10.04.21.03.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 21:03:29 -0700 (PDT)
Date: Fri, 4 Oct 2019 21:03:26 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Fabien Dessenne <fabien.dessenne@st.com>
Subject: Re: [PATCH] remoteproc: stm32: fix probe error case
Message-ID: <20191005040326.GB5189@tuxbook-pro>
References: <1570190555-12465-1-git-send-email-fabien.dessenne@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570190555-12465-1-git-send-email-fabien.dessenne@st.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_210331_031826_359647C6 
X-CRM114-Status: GOOD (  18.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Loic Pallardy <loic.pallardy@st.com>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 04 Oct 05:02 PDT 2019, Fabien Dessenne wrote:

> If the rproc driver is probed before the mailbox driver and if the rproc
> Device Tree node has some mailbox properties, the rproc driver probe
> shall be deferred instead of being probed without mailbox support.
> 
> Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
> ---
>  drivers/remoteproc/stm32_rproc.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> index 2cf4b29..410b794 100644
> --- a/drivers/remoteproc/stm32_rproc.c
> +++ b/drivers/remoteproc/stm32_rproc.c
> @@ -310,7 +310,7 @@ static const struct stm32_mbox stm32_rproc_mbox[MBOX_NB_MBX] = {
>  	}
>  };
>  
> -static void stm32_rproc_request_mbox(struct rproc *rproc)
> +static int stm32_rproc_request_mbox(struct rproc *rproc)
>  {
>  	struct stm32_rproc *ddata = rproc->priv;
>  	struct device *dev = &rproc->dev;
> @@ -328,11 +328,15 @@ static void stm32_rproc_request_mbox(struct rproc *rproc)
>  		cl->dev = dev->parent;
>  
>  		ddata->mb[i].chan = mbox_request_channel_byname(cl, name);
> -		if (IS_ERR(ddata->mb[i].chan)) {
> +		if (PTR_ERR(ddata->mb[i].chan) == -EPROBE_DEFER) {

You may not use PTR_ERR() without first checking IS_ERR(), apart from
that your patch looks good.

Regards,
Bjorn

> +			return -EPROBE_DEFER;
> +		} else if (IS_ERR(ddata->mb[i].chan)) {
>  			dev_warn(dev, "cannot get %s mbox\n", name);
>  			ddata->mb[i].chan = NULL;
>  		}
>  	}
> +
> +	return 0;
>  }
>  
>  static int stm32_rproc_set_hold_boot(struct rproc *rproc, bool hold)
> @@ -596,7 +600,9 @@ static int stm32_rproc_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto free_rproc;
>  
> -	stm32_rproc_request_mbox(rproc);
> +	ret = stm32_rproc_request_mbox(rproc);
> +	if (ret)
> +		goto free_rproc;
>  
>  	ret = rproc_add(rproc);
>  	if (ret)
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
