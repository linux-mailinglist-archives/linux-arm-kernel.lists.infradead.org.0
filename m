Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2391CDEA84
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:12:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7fVE+YOgjc4rqOaI1GjNnwZuXIo2BaaJTl+wGE+52Fs=; b=dh7SjK+3FjxdPv
	EiMo2SdHfhGZfxKiHx59Scub4LKt4gv4HF+5dRYAfOq+cP/f5TRTu+TFBh1oU25SnBC0Kn2yTmHJ4
	5ypQ2jQEBkh0rglsf/hu72Q4xPW4O4IcOwqJKjLeMErHEJxVaDSFXPwpMDihL4FTOk08pgjNoRPVx
	e5r1kRcNie0AQrzWvmicpwWXq3s3fKjWYXZRpm9Ecfu+Sz4Akfq0cRiN/9Ftmeatit712w0esXXvT
	PJ6mN5vO1pTDVHI0jCxErNrhP9LkOamuMYnA8JDuQQFyKu8imqSQq8oxAUJg8fTK0mabgjJTWabat
	RTPZ2spD+39Vky4KeMBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVbe-0000Rz-5P; Mon, 21 Oct 2019 11:12:10 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVbC-0000CN-FQ
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 11:11:44 +0000
Received: by mail-wr1-x444.google.com with SMTP id q13so8489440wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 04:11:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=qsofjz6mshTaTSConAGSTps6s034Gbt4rNbvJmgPEqI=;
 b=Qw/aS0HGq3uA01t/yK2JtENn3tenwrVO/oinZ+LDdFPK4K7lSstYeFd09mmDdBc6jA
 3BktjSCm9JK61WZrxMyUBtJz729Va8PGXWcVkr9koxvT3rnLTo5fjjcPgUMRhtwZ+3bA
 sENUFHX9WqL6LaQkdYyAwMeUmEJtYE0uPFHMxp+ONNs5OD7z2cnfd0FAvZEtHHWaU3PO
 T/bLU0Q43Xa0jrWmnJKSEC0CnvkvdEfZhjLnoiW/kNYB+TzxTiyUc6sJUIcKkUGyRJ63
 8RbLCwZ4mqIdbyYVvo6/AX+k1Y4rpIlq82KgLKKsNJ/9L/UOMU3VYVlR5FwLDxHqxlmx
 Lk2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qsofjz6mshTaTSConAGSTps6s034Gbt4rNbvJmgPEqI=;
 b=VigVXtLyd9nJatf9Cte5jS7EOM8Z/Kt78MeBRE+q1Wg5KCfBZ2Mad6GMyUuzlRW7bk
 hvpmggG7jkx8/iPclYXqvGS8+zXKg9LUzWJ3zLNcrl5j9Abb0soQUmAj+1ekcCriuooC
 dMxfF+lNRssKLDyMJVFfCaCh1aJekN8HhmW2CBLlFD+KtdcrBbTrXdYnTkd9rsma65Pn
 4ABMPo0EheCKMjH2XmLaOMo1v9LE9LYSh5jxgrNgxwnBmYDLTFJLA5JtV8VMtyxJ0VUj
 7YeJtUl6poqZhhD1Cj+CJHFuGJvrpJqq1dMXe+0bBGeZ986ci1Uz+NZMoL/iGCzfIBFQ
 uvJA==
X-Gm-Message-State: APjAAAXPYIxpMpUM/1UAmO9bXDi5unCkF5bUqLLSbL/2xN7zPT23GFQ7
 lGn7VFzgmyKUTrmy4e6LUHd0aA==
X-Google-Smtp-Source: APXvYqyEz+wOiJ9o9r1cn1J6DkUMs1jnwJCJCpIDNRnyLkmBeyFlC0rvOrNwlbB3d87ARm18YQ94qQ==
X-Received: by 2002:a05:6000:149:: with SMTP id
 r9mr14617479wrx.90.1571656300623; 
 Mon, 21 Oct 2019 04:11:40 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id r81sm7985522wme.16.2019.10.21.04.11.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 04:11:39 -0700 (PDT)
Date: Mon, 21 Oct 2019 12:11:37 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v2 2/9] mfd: cs5535-mfd: Remove mfd_cell->id hack
Message-ID: <20191021111137.ey6cbrrb2af3wj5i@holly.lan>
References: <20191021105822.20271-1-lee.jones@linaro.org>
 <20191021105822.20271-3-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021105822.20271-3-lee.jones@linaro.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_041142_540821_CA030466 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 11:58:15AM +0100, Lee Jones wrote:
> The current implementation abuses the platform 'id' mfd_cell member
> to index into the correct resources entry.  If we place all cells
> into their numbered slots, we can cycle through all the cell entries
> and only process the populated ones which avoids this behaviour.
> 
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
>  drivers/mfd/cs5535-mfd.c | 31 +++++++++++++------------------
>  1 file changed, 13 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/mfd/cs5535-mfd.c b/drivers/mfd/cs5535-mfd.c
> index 2c47afc22d24..9ce6bbcdbda1 100644
> --- a/drivers/mfd/cs5535-mfd.c
> +++ b/drivers/mfd/cs5535-mfd.c
> @@ -62,26 +62,22 @@ static int cs5535_mfd_res_disable(struct platform_device *pdev)
>  static struct resource cs5535_mfd_resources[NR_BARS];
>  
>  static struct mfd_cell cs5535_mfd_cells[] = {

This array is sized from the initializer...

> -	{
> -		.id = SMB_BAR,
> +	[SMB_BAR] = {
>  		.name = "cs5535-smb",
>  		.num_resources = 1,
>  		.resources = &cs5535_mfd_resources[SMB_BAR],
>  	},
> -	{
> -		.id = GPIO_BAR,
> +	[GPIO_BAR] = {
>  		.name = "cs5535-gpio",
>  		.num_resources = 1,
>  		.resources = &cs5535_mfd_resources[GPIO_BAR],
>  	},
> -	{
> -		.id = MFGPT_BAR,
> +	[MFGPT_BAR] = {
>  		.name = "cs5535-mfgpt",
>  		.num_resources = 1,
>  		.resources = &cs5535_mfd_resources[MFGPT_BAR],
>  	},
> -	{
> -		.id = PMS_BAR,
> +	[PMS_BAR] = {
>  		.name = "cs5535-pms",
>  		.num_resources = 1,
>  		.resources = &cs5535_mfd_resources[PMS_BAR],
> @@ -89,8 +85,7 @@ static struct mfd_cell cs5535_mfd_cells[] = {
>  		.enable = cs5535_mfd_res_enable,
>  		.disable = cs5535_mfd_res_disable,
>  	},
> -	{
> -		.id = ACPI_BAR,
> +	[ACPI_BAR] = {
>  		.name = "cs5535-acpi",
>  		.num_resources = 1,
>  		.resources = &cs5535_mfd_resources[ACPI_BAR],
> @@ -115,16 +110,16 @@ static int cs5535_mfd_probe(struct pci_dev *pdev,
>  		return err;
>  
>  	/* fill in IO range for each cell; subdrivers handle the region */
> -	for (i = 0; i < ARRAY_SIZE(cs5535_mfd_cells); i++) {
> -		int bar = cs5535_mfd_cells[i].id;
> -		struct resource *r = &cs5535_mfd_resources[bar];
> +	for (i = 0; i < NR_BARS; i++) {

... which means this translation from ARRAY_SIZE() to NR_BARS
is rather odd.

I don't care whether the array is sized using NR_BARS or the loop
uses ARRAY_SIZE() but IMHO the loop boundary condition must match
the array declaration.

With that fixed free to throw the following onto the next rev:
Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>


Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
