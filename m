Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1E61FAF02
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 13:19:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fnM2sRewsTOZRN3VoUsOdJ51R59ZFRCvYkF14Xbb/cs=; b=hgk5xn3rM2Vxdy
	J+OhY4ii3c1k5bjTi/5Ip0F+XefzoGy0W5F0TBAMHxv1euoe2YfpM39keIoCpfoTCRSOW2QloDNgs
	Vmle99wub6DXaG0ZypezkIsxN8FCTYthYcmZkhNpP6KpC2W2TPG92x54awNp57aRoxc+7xcs1zjHQ
	+CunVFk77tQ8Y1H7xFey4CEYuV1GU1shjk4y59MMveQPIINuoR+l/XfGXjLGHOciDg1UwljPJbvjD
	hnl/Oqblko5hn9DTrKAmaeUIPr55KcrNYdlq7GYqqXQ+hZaXvUib/Gx5B/xXNpZHoL0+tYQqj85XD
	/sWgrl8xZCLbcIJ3u2Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl9cy-0004AV-He; Tue, 16 Jun 2020 11:19:40 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl9cc-00047a-Ts
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 11:19:25 +0000
Received: by mail-wr1-x441.google.com with SMTP id b6so1201247wrs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 04:19:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nuviainc-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WwC2Emuw5/ilnMRm4G3eM8wt43KxbXAl63WH+7ihd3U=;
 b=X1yeojWj8vFgyVUXSv2DkkgdcvgwcOwt8tq8Yh3keBKJmhffFGsEkx1645NnGtGIJc
 yMZ4Z6NaWxUP1HAyHkk6BtFvzi3WLG4fQHod69NFzwzwsEA1nKQLHD63Io5iSYeAVtW1
 pfesWyQpi80mAt5cBymvoejWV3ibyl64fgbFYqQUjEIcsrK67F5rrFXJFZO6JivBUQ/Z
 /J+vtiBKh6SxakJwq04sdJVNVKUeAUQVHYY0ZFkWwRJQILysyTCbd/yxVe40VfB1bTRi
 ZOJX62T7FSS1osOzS00FvSeoWwBjxoLTHffjpK2gw70h/QFeQDedaMbiULBG6ZlJiACz
 C0Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WwC2Emuw5/ilnMRm4G3eM8wt43KxbXAl63WH+7ihd3U=;
 b=fMxGH/u7wx0ff6Db9ZKUwJlPKyp6QDTlsdzdClaKfW1EsLi+pedd21d8QtUFFVhuG2
 Ha9T0N+R88Wiff0NLfMyPyaC4EeCE6JqrOWxNUbAgAhd3gs3uY3iZNul3S4SNTKfbIUx
 UqaYAyvvzLxQdNIfQnD4P7gk9pWeM2oa11w/OH3TWAokRhWJDs45oE4e7oKGD42qcodL
 qILvhpALIFcjauGY4TfzlzmjNfbcqXK5Vp8oi0Si1HSd86kNRCttmsgu05Usj1QvlGbj
 F8oi4teN3rpOcy7jyd0AGu1POemv9KVptG1oq5b8b2DLKg9S8nL1bju1+uRKd+6fqCtm
 /5mA==
X-Gm-Message-State: AOAM5330VfHleS/Gd8CSycMAQ+qCzbmd5x6vSNA7Q4gixHs9fg7Y1wpM
 ORI2fZCfhrro0dq6KQTvuEXi2g==
X-Google-Smtp-Source: ABdhPJzpxJzOiDXP2NRlBv/phRFjDMCxcTzQOKN5dBK8VrJPmUTOe+rdbOl9hkQdEvXZ95AgSS2sBA==
X-Received: by 2002:a5d:4a45:: with SMTP id v5mr2488839wrs.223.1592306357384; 
 Tue, 16 Jun 2020 04:19:17 -0700 (PDT)
Received: from vanye ([2001:470:1f09:12f0:b26e:bfff:fea9:f1b8])
 by smtp.gmail.com with ESMTPSA id z2sm27560929wrs.87.2020.06.16.04.19.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 04:19:16 -0700 (PDT)
Date: Tue, 16 Jun 2020 12:19:14 +0100
From: Leif Lindholm <leif@nuviainc.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] efi/libstub: arm: Omit arch specific config table
 matching array on arm64
Message-ID: <20200616111914.GD6739@vanye>
References: <20200616110030.1054015-1-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616110030.1054015-1-ardb@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_041918_997465_0D3ABCF2 
X-CRM114-Status: GOOD (  17.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: xypron.glpk@gmx.de, linux-efi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 13:00:30 +0200, Ard Biesheuvel wrote:
> On arm64, the EFI stub is built into the kernel proper, and so the stub
> can refer to its symbols directly. Therefore, the practice of using EFI
> configuration tables to pass information between them is never needed,
> so we can omit any code consuming such tables when building for arm64.
> 
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
>
> ---
> 
> This will be applied before 'efi/libstub: arm: Print CPU boot mode and MMU 
> state at boot' [v3] sent out today

With that, for *both* patches:
Reviewed-by: Leif Lindholm <leif@nuviainc.com>

>  drivers/firmware/efi/arm-init.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/firmware/efi/arm-init.c b/drivers/firmware/efi/arm-init.c
> index c697e70ca7e7..6f4baf70db16 100644
> --- a/drivers/firmware/efi/arm-init.c
> +++ b/drivers/firmware/efi/arm-init.c
> @@ -62,7 +62,8 @@ static void __init init_screen_info(void)
>  {
>  	struct screen_info *si;
>  
> -	if (screen_info_table != EFI_INVALID_TABLE_ADDR) {
> +	if (IS_ENABLED(CONFIG_ARM) &&
> +	    screen_info_table != EFI_INVALID_TABLE_ADDR) {
>  		si = early_memremap_ro(screen_info_table, sizeof(*si));
>  		if (!si) {
>  			pr_err("Could not map screen_info config table\n");
> @@ -116,7 +117,8 @@ static int __init uefi_init(u64 efi_system_table)
>  		goto out;
>  	}
>  	retval = efi_config_parse_tables(config_tables, systab->nr_tables,
> -					 arch_tables);
> +					 IS_ENABLED(CONFIG_ARM) ? arch_tables
> +								: NULL);
>  
>  	early_memunmap(config_tables, table_size);
>  out:
> -- 
> 2.27.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
