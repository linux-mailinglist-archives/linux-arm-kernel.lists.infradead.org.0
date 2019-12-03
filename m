Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E917210FEF7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 14:40:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bTCcsnwLvt11Lv09tcMC1ngW8hZJILuMsB/Tsxp6yU0=; b=ZxYMzsvuBBPkl8
	oM+7OipBati4ic4CHxmJYBKtwFxKC06WLz3Q37gCmy18WS1Q0pTTSg5GhszC2+XgOtCpJqhjpv902
	n0xFo6XMbqenL5/MeTjmjvIYcqKZF3wD+5sFfVi3Bs0Bid1zVXny9nPwMxuMuK2dNgr2It0rWOOrY
	XTr6/77Lm1FpvC90BOOwyvUotryy/kXpTnVyeXiRjLgJkyoBOlKMUKdOFH0u8gkKnFWCb+HygT4ba
	EBcJ4AXBr3EimxJ6ltxItgaOV4fyXwlKlpAnDajyKxx1ZSKn6ZPDM3+7ArTR7BXCI96ZlD1lS0iGf
	8ZEyQEdf1UjNjp0c7kcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic8Pv-0005f6-HN; Tue, 03 Dec 2019 13:40:39 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic8Pn-0005eR-CK
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 13:40:34 +0000
Received: by mail-yb1-xb42.google.com with SMTP id a11so1496902ybc.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 05:40:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PWU/7wWJMqFgQOzJgxgiFIVxjVPFwmXizK0TOekZqDg=;
 b=C1wT1exzI2+JnqAQvtk5yzcIapZj8L6gj8q4NmvEZU6boLKk35ngTnivJE6SSaWttN
 thEPw+fkAmaa6Ye7t/7fSQav4HsPD5z+u1qy01HvbBGa7bc7lyCUNgTm4Xh6D8KK2XbG
 eq8GR+xu6toCsxCSrw9fi02f42jNOlCOdJIUnr3qJ5MQrNmpULkuYoUHL5Hfog4ZA7nq
 DEIH3S3pHNNVfS82/mabk7UDpPbdOIPqA8YkiXlWWA7L6g+mhWT+IFpu856wVa4gPQEu
 rAZ3iSXNY2Sm+PVEAO/drBgBFSK5ubZoyANNhnL+FHbH3v/sn6MTRnKR1KPLy/12jJ12
 g5Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=PWU/7wWJMqFgQOzJgxgiFIVxjVPFwmXizK0TOekZqDg=;
 b=XTZmm/yDiEr3ws8Y965/O/vH+2nuzKKT0EIgtvFXPPB0tf426ceR17WpRYafeCNX3q
 uvo6hj+7ml2WWvisPGIHsBPlcXTiGgrwbFiQbz+BVdnoTCCNneWKg4C1o08zvk+Hse/h
 labtw54XYFdyjf9oYXAPyQa93n7GGYt05IvFsktLMR25T0arh5CMlXLg0G4Rbe3DaVIR
 lSEyZdmq/NKN3QRd+bYmSNTpAXdvuSVUA8Ffqa5CLTXieQ0J5df9rUr4VSRKqImWp0l9
 G6C7vVYFHGFqMMZwvMDxXEOpp9A8f8btouvfNhD2kjO+AitNCZN8h3Wu9amOPUfMQ0Gp
 I5DA==
X-Gm-Message-State: APjAAAUokI8eSEGZiK+h0BAZ7xebKk1pR+8nf7InIAlGfgcdIV/YsYi7
 mER4PMilhCUv06vIZO5/Vg==
X-Google-Smtp-Source: APXvYqzlVb+uzUqOoJ7sKz3DGqmH2x4xZFKhoXvP+qn/NpgdBgUv9H8D7Fy3Mg2T7hXTvflhiXmg6A==
X-Received: by 2002:a25:d052:: with SMTP id h79mr4265588ybg.345.1575380429014; 
 Tue, 03 Dec 2019 05:40:29 -0800 (PST)
Received: from serve.minyard.net ([47.184.136.59])
 by smtp.gmail.com with ESMTPSA id u2sm1451301ywi.61.2019.12.03.05.40.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 05:40:28 -0800 (PST)
Received: from minyard.net (unknown [192.168.27.180])
 by serve.minyard.net (Postfix) with ESMTPSA id 95ED9180059;
 Tue,  3 Dec 2019 13:40:27 +0000 (UTC)
Date: Tue, 3 Dec 2019 07:40:26 -0600
From: Corey Minyard <minyard@acm.org>
To: Andrew Jeffery <andrew@aj.id.au>
Subject: Re: [PATCH 2/3] ipmi: kcs: Finish configuring ASPEED KCS device
 before enable
Message-ID: <20191203134026.GI18165@minyard.net>
References: <cover.5630f63168ad5cddf02e9796106f8e086c196907.1575376664.git-series.andrew@aj.id.au>
 <84315a29b453068373c096c03433e3a326731988.1575376664.git-series.andrew@aj.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <84315a29b453068373c096c03433e3a326731988.1575376664.git-series.andrew@aj.id.au>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_054031_444834_11DF4F6E 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tcminyard[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Reply-To: minyard@acm.org
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Haiyue Wang <haiyue.wang@linux.intel.com>, linux-aspeed@lists.ozlabs.org,
 arnd@arndb.de, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, joel@jms.id.au, openipmi-developer@lists.sourceforge.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 03, 2019 at 11:08:24PM +1030, Andrew Jeffery wrote:
> The currently interrupts are configured after the channel was enabled.

How about:

The interrupts were configured after the channel was enabled, configure
them before so they will work.

-corey

> 
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> Reviewed-by: Joel Stanley <joel@jms.id.au>
> Reviewed-by: Haiyue Wang <haiyue.wang@linux.intel.com>
> ---
>  drivers/char/ipmi/kcs_bmc_aspeed.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
> index 3c955946e647..e3dd09022589 100644
> --- a/drivers/char/ipmi/kcs_bmc_aspeed.c
> +++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
> @@ -268,13 +268,14 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
>  	kcs_bmc->io_inputb = aspeed_kcs_inb;
>  	kcs_bmc->io_outputb = aspeed_kcs_outb;
>  
> +	rc = aspeed_kcs_config_irq(kcs_bmc, pdev);
> +	if (rc)
> +		return rc;
> +
>  	dev_set_drvdata(dev, kcs_bmc);
>  
>  	aspeed_kcs_set_address(kcs_bmc, addr);
>  	aspeed_kcs_enable_channel(kcs_bmc, true);
> -	rc = aspeed_kcs_config_irq(kcs_bmc, pdev);
> -	if (rc)
> -		return rc;
>  
>  	rc = misc_register(&kcs_bmc->miscdev);
>  	if (rc) {
> -- 
> git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
