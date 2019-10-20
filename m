Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6A7DDF26
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 17:27:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TNNC55FGPp14fGxofwSYnD23b908h798zbCz466C7Xs=; b=k42KUCRAV8UEwM
	5qL7TVF8y3lejLCUkzHxhlnVqCA4KacYKP8TDdjh76nw6zA/kCW2NyQA4SpSjJpgmPW3f9QNzf8TP
	MWl24FDvSLWOv5I5fjAoPRVD9/qts5W1/Kx/enVlD95NHQl5i36heNUAcKoPLva2LeXMcc0OHaW+E
	Hzua0FkAC5HGd2LdXl0bkNG+tziTrv2dKo7YYyFLxR25Ve3k0Ge6eSxN7fRqEPSkvrqx1J8h5klCJ
	jpI4H+8SY6yt018J+VeS/r0Fp0hqlMRso8weeSanKG1p2N+cbywwUMZBkUczguvgHuBiBwbAoLj6I
	iowDZrOUckOTIP+eWO6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMD76-0006Zu-34; Sun, 20 Oct 2019 15:27:24 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMD6o-0006NY-JE
 for linux-arm-kernel@lists.infradead.org; Sun, 20 Oct 2019 15:27:07 +0000
Received: by mail-pg1-x541.google.com with SMTP id p12so6096973pgn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 20 Oct 2019 08:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=w2Zv3HNUNvEUlGbiP8S0+092JhdRJqXxS9fnpsLG4iI=;
 b=PtgdLdUwnrWFnJOz5gJvi3BiIDxy+S7gPcoCoYksIkA//BpTzN2oX+JtNk4tMmwLUO
 Etw1tquOBI0VQLbzCiNVhQO26kJvstsHisiJcmxN72pmqSpW3xUBoa35WvnXi/2sSt+K
 mhRZoLUCMcudqk6frRppSkM+nRF+PLZT1Vm+GsVLD7tTko9BkEfrExihtC4YpEGRZVsa
 22HMfMyFZjuiZyEpy69wCHrg+V+2TbDcIMh9fsq5Ss9zIoIz6koxouav4j8gbDlEAJI9
 QCIw8cpY4lSNqHILW2D5IwUZ9MC5C/rXOXm6TtZhSLkXUKpEDM4U9dYNnfkngmga++RE
 rpRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=w2Zv3HNUNvEUlGbiP8S0+092JhdRJqXxS9fnpsLG4iI=;
 b=epZfSj2j+LvmgdptT7Zw/tfv6rsd3u/fSz0VSahyge0Ofe0CITzYepLXdRKHUl1gSQ
 0gqdLJYREGjy31wjW8p7U3J8042l6W4GIbhQN3OgoTtHRlorEgVIgnttw0gL/5rchDfg
 541YkF1gUKb6D2fCwak/d6ycR+E0clxbvpYmUCiCpg9bcrJzBqn/mf/hMcBESrxVJ+MC
 UyN2D9RNylEgAnP7GF4NXYzJs4gUPoAXMg+MIZ+pqJ3PLXiMo5m7waegRHvpGi66LDnA
 bV3pCTrbzc0PVbDc8vcnQx9IK75WPNVORSzZwRc/cKNlTzOsM+a9vGfQpqZ33CztqPwe
 R5vA==
X-Gm-Message-State: APjAAAXMjzvzgkcyd3T19f9Yo67NaYoxkSOJdExHAb28YSROXr/zi3Xz
 h39sV6QTHzy7m0+oKBXw/tFy
X-Google-Smtp-Source: APXvYqzHj2mGchufEakers/95JHOcu48NokH6SL9q1fsY1Xo9ttGYQDtdbsumhCbdlHImScX/HTZWA==
X-Received: by 2002:a17:90a:2522:: with SMTP id
 j31mr23189515pje.123.1571585225946; 
 Sun, 20 Oct 2019 08:27:05 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:619e:9471:81c6:faf1:b3a2:6750])
 by smtp.gmail.com with ESMTPSA id h4sm13651404pfg.159.2019.10.20.08.27.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 20 Oct 2019 08:27:05 -0700 (PDT)
Date: Sun, 20 Oct 2019 20:56:58 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v5 3/8] clk: Add clk_hw_unregister_composite helper
 function definition
Message-ID: <20191020152658.GC12864@Mani-XPS-13-9360>
References: <20190916161447.32715-1-manivannan.sadhasivam@linaro.org>
 <20190916161447.32715-4-manivannan.sadhasivam@linaro.org>
 <20190917204042.D69A52054F@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917204042.D69A52054F@mail.kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_082706_681050_B0C03F9B 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, darren.tsao@bitmain.com, robh+dt@kernel.org,
 haitao.suo@bitmain.com, fisher.cheng@bitmain.com, alec.lin@bitmain.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 01:40:42PM -0700, Stephen Boyd wrote:
> Quoting Manivannan Sadhasivam (2019-09-16 09:14:42)
> > This function has been delcared but not defined anywhere. Hence, this
> > commit adds definition for it.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> 
> Can you add a fixes tag?
> 
> Fixes: 49cb392d3639 ("clk: composite: Add hw based registration APIs")
> 

sure.

Thanks,
Mani


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
