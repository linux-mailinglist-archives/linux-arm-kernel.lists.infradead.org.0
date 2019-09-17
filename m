Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE29B5323
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 18:36:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8t9jw8S6w4U3SF9OVdclsBoPMHWx4ZIRHIqqGPvyTNg=; b=WO/tzmWlQfX0Qj
	gQxUSBdcqDlBMzQSYVDfdOXcSHRcgmjaAzgE5UGQ7ZWjaMRyjV9XgDj9X0yi4T/HyFy16xxTfl4Pu
	ouJu60I7nq+CBdEjOSFdO/fwi/LImuzFY26QtqoFRFmTNQjVHhvhWF69QCnFhmSOa2tW0CUNz54hg
	P7yEywGBdcDtZ2pJ0ue9/hI7K4d61uhl1cnfiBN8cheAINn7v8gEW7jhLoudA9GjZt4T5iaensVYz
	REmeKMselDhYaByW8TPxhcw7W8LomTYcIsuhN6N50KKsQfJB7ew9fe/DNqQTue9zYUlyjnQrTZnFz
	c8T0DrT8CKn4FVl21y+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAGTB-0002Vs-Lo; Tue, 17 Sep 2019 16:36:49 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAGT0-0002Uu-Ba
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 16:36:39 +0000
Received: by mail-pf1-x441.google.com with SMTP id y22so2490933pfr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 09:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6oL27CCsiCgWC+s9QdRYX453QCLZxLS2++aHbtnJhwo=;
 b=YA0FtVOqhPZ+x3BfaIoVZIEZexqC9TyNKApW9YBx6UryG5ITeV5G/PcVyovxlcN+mC
 os44E6Ij+VtAx8kdLvm5CDW3dSDIYirj+oo2lcs2vH01UDW4bGLLNb9WTGyjObDvjKoj
 fBuR+TQerwfgIFxcGZl8M9n99ztxdoJWyHTr3aKJskQWgCTjdqc3CzWAMMCPIWWV27uk
 r6QlYUhCtyjRpnvTXR0DG8uzBazHmw40E5sw5yAMAHs41eotxnNZMhM36rvMkaTMxCjz
 4Q5hfisagPglftlQNRwob/iecOFYUAkervhL5SGw2H57K6310ejYzOFpMM61c3xeiltY
 gc0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6oL27CCsiCgWC+s9QdRYX453QCLZxLS2++aHbtnJhwo=;
 b=msp7R/nPvqW8HKaxEbgGpd6CphHuy685P+vgopSEbvE9JPdTrLSSGNKUN4zrDWfCg0
 7F/GgrthdFz9NQj32/pjNK2ppFEHSXIiuegaWwwK14uTS3M6tp3bZqCRhacQlnuEW8oq
 neV4VzYEFAt3mXiREHgK6BKLRBXYLm8PvtSYhWLg/qvpZxjShKrDmypPhXNN+/4dzbdJ
 8JsAEzSFSLuT0S9z+M15eW1slTHy787rP34VvxauXt6fcm1wZmh2BkrvnU7vKy3+qK2Q
 wBrr5F1EgLOdIEqR2Yf5sfTbY2GWc+IiiQfc41PbCD9Y8zf+enzZWl9PNhIXWMGGUILM
 mBxQ==
X-Gm-Message-State: APjAAAUNWwqcia2zlqHD9c38eylAUoNgobWnA0YnF2GPhD7GrQVKr9gm
 p9Iq0+P93juCj57YvRWWK1u6
X-Google-Smtp-Source: APXvYqylABHbwwGnTpG+yB/f0dYMRAjI9T2OAHarx7EJA+9sLbutDPD4P64xC24J0U/cyFBf2nmCMw==
X-Received: by 2002:a17:90a:fa0c:: with SMTP id
 cm12mr5692720pjb.137.1568738197253; 
 Tue, 17 Sep 2019 09:36:37 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:111:7ed:2c13:36f7:e70f:4a47])
 by smtp.gmail.com with ESMTPSA id w6sm8080461pfw.84.2019.09.17.09.36.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 17 Sep 2019 09:36:36 -0700 (PDT)
Date: Tue, 17 Sep 2019 22:06:28 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v4 1/7] clk: actions: Fix factor clk struct member access
Message-ID: <20190917163628.GA2615@Mani-XPS-13-9360>
References: <20190916154546.24982-1-manivannan.sadhasivam@linaro.org>
 <20190916154546.24982-2-manivannan.sadhasivam@linaro.org>
 <20190917163419.4C4DD20665@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917163419.4C4DD20665@mail.kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_093638_392349_D543DE73 
X-CRM114-Status: GOOD (  13.50  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 linux-actions@lists.infradead.org, linus.walleij@linaro.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 thomas.liau@actions-semi.com, linux-clk@vger.kernel.org, robh+dt@kernel.org,
 afaerber@suse.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 09:34:18AM -0700, Stephen Boyd wrote:
> Quoting Manivannan Sadhasivam (2019-09-16 08:45:40)
> > Since the helper "owl_factor_helper_round_rate" is shared between factor
> > and composite clocks, using the factor clk specific helper function
> > like "hw_to_owl_factor" to access its members will create issues when
> > called from composite clk specific code. Hence, pass the "factor_hw"
> > struct pointer directly instead of fetching it using factor clk specific
> > helpers.
> > 
> > This issue has been observed when a composite clock like "sd0_clk" tried
> > to call "owl_factor_helper_round_rate" resulting in pointer dereferencing
> > error.
> > 
> > While we are at it, let's rename the "clk_val_best" function to
> > "owl_clk_val_best" since this is an owl SoCs specific helper.
> > 
> > Fixes: 4bb78fc9744a ("clk: actions: Add factor clock support")
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> > ---
> 
> I can apply this to clk-next?

Yes, please :-) Rest can go through Ulf's tree.

Thanks,
Mani

> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
