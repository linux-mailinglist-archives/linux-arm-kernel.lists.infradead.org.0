Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3CBDCBF7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:53:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PpKlIgfuDUAN0VflP2up7guMb6sApRIvZEQGmF3jBd8=; b=MY7rfzo8F0/NAb
	XJRVfN8CPAPFJBtYPaFTqyPhel0hlSbf3ZFEFWOWRots25MtG9Lag1JD2heYQQ0WNfF1UZSFpbU5E
	fF+4BnHWEE692fHtOGoths0+TWaiBW8gTu/upwP5Y87bjLVPVxC5DR9vmdbYy05DWuBdo5aWD3ooM
	oa6e7nqrN02Shxa1mUZJWhDxBTlzcxkTS2VsfzCvx/46JOJJn2BxK7hcm/szQU3lpK+qN/EUNqFPc
	J3qWvoXBNP0OslRWUXaOfeLuFfdcoBIhVIq3rv33/boVWAYj4U9uhuFsoU5XIRYoMdEDpav+z+gU1
	cPufxyGtHJVKlq5gbPaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLVVB-0003On-VN; Fri, 18 Oct 2019 16:53:21 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLVV2-0003Np-5G
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:53:13 +0000
Received: by mail-pg1-x543.google.com with SMTP id e15so3664353pgu.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 09:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NlVpUWWb77Jgx8c6AKiFTKsV64mXcIM59rzR3NbF5X0=;
 b=l/5bNc1UOgviL8cXU+xAaLQOtmOhi56H7mopre3Lu97/kYO2lo5DMOwuqzo16GPpU7
 en2sBDgJn/rwquPVBU6NOvsJuW2lX6njpbipp3wFM2DBhFIibFMM7Ji7fEC+5JJ3IyVd
 xmgPjfeDjfUjmiuPFwMOJKKQPuPQXWocZgmkWMoeUMAGd+Y1IMhD+QsOMDWHzASPJjmn
 lB5yUIilNr+WEfcrkyxzN7+9VZZe/t2KW0WOBj8DSGeKn0smaVryK+M4jM3Lud2alJ9k
 WAQharx87X1yFjofhhWaCKeNztbH7vyUakUyu1a+f2UZ/C/+XEK3z2xhCu3JouqnP4le
 Y57w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NlVpUWWb77Jgx8c6AKiFTKsV64mXcIM59rzR3NbF5X0=;
 b=ryEap5aaLWXh/s5XCmvEpa1epOzyozDmlHlI9URPDYx5sNd3x0DGvueFSZVjeUljZi
 07Yy+ashxhLnveKvWSxbTD9MMBER5HVRWZEv21HJ4N0AhVhAd8UP6Rq+j11FSeKxAIE3
 BM7S9IKKCSUmo2vsf0gSN3GHmX4piIMgSZdqJbC+IA05qnVlLI9lfyTU+OV4KeSR0fc/
 Qw1BnWEFdJOKZ4c6qRL2dQmRn+Qa0rT9x3XV1O58jBKn2OVDJ0Y6+DMhUgKfSX5RZXpS
 fLToL5umTWyFBNnw8eNUMce4yUoZTr1+rlQBzybrxfjXUwJC/32g0NHD7YFVtNRuh7w0
 eLMA==
X-Gm-Message-State: APjAAAUlkmHbx/RDSRqmRoAMEHKaSyBPKrhxBpzqodvdVRllb4C0Idew
 GAxPp1yTFVqGrMz0MUJL5q+Rew==
X-Google-Smtp-Source: APXvYqy4EO909F7HnCUZ2Fmo7UCAUkdG66jUJnEgoxHT/sDHoXa2mMyp6Et3xVZh7h0kG3B3iUDOAg==
X-Received: by 2002:a17:90a:a00c:: with SMTP id
 q12mr12481013pjp.102.1571417590960; 
 Fri, 18 Oct 2019 09:53:10 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id k66sm6624950pjb.11.2019.10.18.09.53.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 09:53:10 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:53:07 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Sibi Sankar <sibis@codeaurora.org>
Subject: Re: [PATCH] arm64: defconfig: Enable Qualcomm remoteproc dependencies
Message-ID: <20191018165307.GD1669@tuxbook-pro>
References: <20191009001442.15719-1-bjorn.andersson@linaro.org>
 <95a80ff0e89a568d223fab6eb1f9362a@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <95a80ff0e89a568d223fab6eb1f9362a@codeaurora.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_095312_202917_5646B243 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel-owner@vger.kernel.org, Anson Huang <Anson.Huang@nxp.com>,
 Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Alex Elder <elder@linaro.org>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-msm@vger.kernel.org, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 18 Oct 03:38 PDT 2019, Sibi Sankar wrote:

> On 2019-10-09 05:44, Bjorn Andersson wrote:
[..]
> > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
[..]
> > @@ -780,6 +783,8 @@ CONFIG_PWM_ROCKCHIP=y
> >  CONFIG_PWM_SAMSUNG=y
> >  CONFIG_PWM_SUN4I=m
> >  CONFIG_PWM_TEGRA=m
> > +CONFIG_RESET_QCOM_AOSS=y
> 
> I should probably fix this ^^
> 

Please do, afaict this driver should be tristate.

Regards,
Bjorn

> > +CONFIG_RESET_QCOM_PDC=m
> >  CONFIG_RESET_TI_SCI=y
> >  CONFIG_PHY_XGENE=y
> >  CONFIG_PHY_SUN4I_USB=y
> 
> -- 
> -- Sibi Sankar --
> Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
> a Linux Foundation Collaborative Project.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
