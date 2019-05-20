Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C8123E3F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 19:18:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lu7HwQ6junXUEOurljjWDTVqdzLTst1U0bdTYh78j6I=; b=TZB1gJFB7/P5M+
	4gGyDiOn94W+HmLVwBw2GupWaqjmaJi31cnQUuwDh/gGEn/G2fsf32ucbhAy9dQ0bFRtgoODjQnz3
	KuebFLhu6k1Bd8cZ6F6eJme0i1viCwJFuFV6rN//AQ7VsNRCmTe4FgQPSuUBurZ1Oh4WQEZ7dcC3U
	NKEoq+6XeCyz0EH5ph3up063LGtzkCKTW/qmvQHZFvH5uGzBf2vr+1RleAneqCounGSELpFqR49fj
	N+VLumkQLTLuXer9jPEiRK7pKDl9DJpi1mJFiXb6OzDZx4zKC4Nf4VjPtjlxbY/xcRiQJmHyQ0Dj+
	ohUg/N2jqngdWVLHtwSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSlvB-0004cQ-1k; Mon, 20 May 2019 17:17:57 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSluz-0004Zc-Gl
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 17:17:49 +0000
Received: by mail-pf1-x441.google.com with SMTP id v80so7545857pfa.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 10:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2FjhOwFKrVIJAl2LxDN32kEB+6yjli62tiwHSqu8m3Y=;
 b=W6H3wrKJKcaUjX12VWVVjTzD+FZk9cPmlEyg+n4tTPMRomuqZN8oGiT8ftSwORrLWu
 SrU1sNgEtcmMHUQTG5Q+SGNl1x4eWyTP86Wa72FlIcB6b23JStrVyE4xHjlS7usHaDNb
 At223MiDbKz8gzE6A3qG9pLtUnhxudhyFQeBmLqGQLc2gwhMkrIzVaaBPyi3S0ZQ4JNk
 +i6gOtm8/AxGiZ8TnZJT5tuZOrKikNFZz96dr/BoRQFccYpQnuMedMXUdbXaJ7sVkU5+
 jaQ+yGo4yqEBt6urvlbJm6Xe4n9DzeSTKBnvXSp/Y0cnamgtP3DqTCSRheQVi9muWH6D
 dTMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2FjhOwFKrVIJAl2LxDN32kEB+6yjli62tiwHSqu8m3Y=;
 b=Bxd5sWYMv57NaglgtOYGh0DgIIUEJCst0Gn7YEH5c4KPJH+JTjErHSg9xLypfHNiK1
 hYNr/b51uX6X0CtG802Oa+80OTnAzyAmMIZeZfmWfXKjOS7yXJtxNk8+jKBr0O5io2Rr
 Td/KwPKNDGB1bPX1R/LEHpH483CGKClPOeYes4xQQ6pZ9C+f9/eBDsHKVxEjiy8ro3Oe
 7OamJHDkc5Ykpbj/q4R/a2vLGXf4eO/TRI5ZNOjdRGltzPevML6oYbQhTMhxH+1+pOqE
 QfCZnqadTrDMfrLsNO/Tq2vys5/WsoPOKL84Czf9iY06xtumQ3bwtWRiK/uLtnzP0FR6
 ypmg==
X-Gm-Message-State: APjAAAVKwcZj3JBm5VnqYHiZ53ppsELxQ5PLJ6/WtbTWjjOXY07hIALF
 aaXqT5PnX73FTToQYKmIIN1F6A==
X-Google-Smtp-Source: APXvYqxGJODZVZZkYCQrDnuhEME1l3MVyx+Qrn7x3ga7XFxkr9lg/WGqNAAC5bsYmf2gHA+/s9ScVw==
X-Received: by 2002:a65:42ca:: with SMTP id l10mr23345678pgp.181.1558372664547; 
 Mon, 20 May 2019 10:17:44 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id h11sm20833183pfn.170.2019.05.20.10.17.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 10:17:44 -0700 (PDT)
Date: Mon, 20 May 2019 10:18:11 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Alex Elder <elder@linaro.org>
Subject: Re: [PATCH 8/8] net: introduce "include/linux/if_rmnet.h"
Message-ID: <20190520171811.GW2085@tuxbook-pro>
References: <20190520135354.18628-1-elder@linaro.org>
 <20190520135354.18628-9-elder@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520135354.18628-9-elder@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_101745_554473_9ADC73F3 
X-CRM114-Status: GOOD (  17.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: syadagir@codeaurora.org, ejcaruso@google.com, arnd@arndb.de,
 netdev@vger.kernel.org, ilias.apalodimas@linaro.org,
 linux-kernel@vger.kernel.org, evgreen@chromium.org, david.brown@linaro.org,
 agross@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, subashab@codeaurora.org, davem@davemloft.net,
 cpratapa@codeaurora.org, benchan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 20 May 06:53 PDT 2019, Alex Elder wrote:

> The IPA driver requires some (but not all) symbols defined in
> "drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h".  Create a new
> public header file "include/linux/if_rmnet.h" and move the needed
> definitions there.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> Signed-off-by: Alex Elder <elder@linaro.org>
> ---
>  .../ethernet/qualcomm/rmnet/rmnet_handlers.c  |  1 +
>  .../net/ethernet/qualcomm/rmnet/rmnet_map.h   | 31 -------------
>  .../qualcomm/rmnet/rmnet_map_command.c        |  1 +
>  .../ethernet/qualcomm/rmnet/rmnet_map_data.c  |  1 +
>  .../net/ethernet/qualcomm/rmnet/rmnet_vnd.c   |  1 +
>  include/linux/if_rmnet.h                      | 45 +++++++++++++++++++
>  6 files changed, 49 insertions(+), 31 deletions(-)
>  create mode 100644 include/linux/if_rmnet.h
> 
> diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_handlers.c b/drivers/net/ethernet/qualcomm/rmnet/rmnet_handlers.c
> index 5fff6c78ecd5..8e00e14f4ac9 100644
> --- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_handlers.c
> +++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_handlers.c
> @@ -18,6 +18,7 @@
>  #include <linux/netdev_features.h>
>  #include <linux/if_arp.h>
>  #include <net/sock.h>
> +#include <linux/if_rmnet.h>
>  #include "rmnet_private.h"
>  #include "rmnet_config.h"
>  #include "rmnet_vnd.h"
> diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
> index 775b98d34e94..d101cabb04c3 100644
> --- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
> +++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
> @@ -39,37 +39,6 @@ enum rmnet_map_commands {
>  	RMNET_MAP_COMMAND_ENUM_LENGTH
>  };
>  
> -struct rmnet_map_header {
> -	u8  cmd_pad_len;	/* RMNET_MAP_* */
> -	u8  mux_id;
> -	__be16 pkt_len;
> -}  __aligned(1);
> -
> -#define RMNET_MAP_CMD_FMASK		GENMASK(0, 0)   /* 0: data; 1: cmd */
> -#define RMNET_MAP_RESERVED_FMASK	GENMASK(1, 1)
> -#define RMNET_MAP_PAD_LEN_FMASK		GENMASK(7, 2)
> -
> -struct rmnet_map_dl_csum_trailer {
> -	u8  reserved1;
> -	u8  flags;		/* RMNET_MAP_DL_* */
> -	__be16 csum_start_offset;
> -	__be16 csum_length;
> -	__be16 csum_value;
> -} __aligned(1);
> -
> -#define RMNET_MAP_DL_CSUM_VALID_FMASK	GENMASK(0, 0)
> -#define RMNET_MAP_DL_RESERVED_FMASK	GENMASK(7, 1)
> -
> -struct rmnet_map_ul_csum_header {
> -	__be16 csum_start_offset;
> -	__be16 csum_info;	/* RMNET_MAP_UL_* */
> -} __aligned(1);
> -
> -/* NOTE:  These field masks are defined in CPU byte order */
> -#define RMNET_MAP_UL_CSUM_INSERT_FMASK	GENMASK(13, 0)
> -#define RMNET_MAP_UL_CSUM_UDP_FMASK	GENMASK(14, 14)   /* 0: IP; 1: UDP */
> -#define RMNET_MAP_UL_CSUM_ENABLED_FMASK	GENMASK(15, 15)
> -
>  #define RMNET_MAP_COMMAND_REQUEST     0
>  #define RMNET_MAP_COMMAND_ACK         1
>  #define RMNET_MAP_COMMAND_UNSUPPORTED 2
> diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_command.c b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_command.c
> index f675f47c3495..6832c5939cae 100644
> --- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_command.c
> +++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_command.c
> @@ -11,6 +11,7 @@
>   */
>  
>  #include <linux/netdevice.h>
> +#include <linux/if_rmnet.h>
>  #include "rmnet_config.h"
>  #include "rmnet_map.h"
>  #include "rmnet_private.h"
> diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
> index 61b7dbab2056..370aee7402e0 100644
> --- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
> +++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
> @@ -18,6 +18,7 @@
>  #include <linux/ip.h>
>  #include <linux/ipv6.h>
>  #include <net/ip6_checksum.h>
> +#include <linux/if_rmnet.h>
>  #include "rmnet_config.h"
>  #include "rmnet_map.h"
>  #include "rmnet_private.h"
> diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_vnd.c b/drivers/net/ethernet/qualcomm/rmnet/rmnet_vnd.c
> index d11c16aeb19a..6b39d4d8e523 100644
> --- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_vnd.c
> +++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_vnd.c
> @@ -17,6 +17,7 @@
>  #include <linux/etherdevice.h>
>  #include <linux/if_arp.h>
>  #include <net/pkt_sched.h>
> +#include <linux/if_rmnet.h>
>  #include "rmnet_config.h"
>  #include "rmnet_handlers.h"
>  #include "rmnet_private.h"
> diff --git a/include/linux/if_rmnet.h b/include/linux/if_rmnet.h
> new file mode 100644
> index 000000000000..ae60472ecc79
> --- /dev/null
> +++ b/include/linux/if_rmnet.h
> @@ -0,0 +1,45 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +/* Copyright (c) 2013-2018, The Linux Foundation. All rights reserved.
> + * Copyright (C) 2019 Linaro Ltd.
> + */
> +#ifndef _LINUX_IF_RMNET_H_
> +#define _LINUX_IF_RMNET_H_
> +
> +#include <linux/types.h>
> +
> +/* Header structure that precedes packets in ETH_P_MAP protocol */
> +struct rmnet_map_header {
> +	u8  cmd_pad_len;	/* RMNET_MAP_* */
> +	u8  mux_id;
> +	__be16 pkt_len;
> +}  __aligned(1);
> +
> +#define RMNET_MAP_CMD_FMASK		GENMASK(0, 0)   /* 0: data; 1: cmd */
> +#define RMNET_MAP_RESERVED_FMASK	GENMASK(1, 1)
> +#define RMNET_MAP_PAD_LEN_FMASK		GENMASK(7, 2)
> +
> +/* Checksum offload metadata header for outbound packets*/
> +struct rmnet_map_ul_csum_header {
> +	__be16 csum_start_offset;
> +	__be16 csum_info;	/* RMNET_MAP_UL_* */
> +} __aligned(1);
> +
> +/* NOTE:  These field masks are defined in CPU byte order */
> +#define RMNET_MAP_UL_CSUM_INSERT_FMASK	GENMASK(13, 0)
> +#define RMNET_MAP_UL_CSUM_UDP_FMASK	GENMASK(14, 14)   /* 0: IP; 1: UDP */
> +#define RMNET_MAP_UL_CSUM_ENABLED_FMASK	GENMASK(15, 15)
> +
> +/* Checksum offload metadata trailer for inbound packets */
> +struct rmnet_map_dl_csum_trailer {
> +	u8  reserved1;
> +	u8  flags;		/* RMNET_MAP_DL_* */
> +	__be16 csum_start_offset;
> +	__be16 csum_length;
> +	__be16 csum_value;
> +} __aligned(1);
> +
> +#define RMNET_MAP_DL_CSUM_VALID_FMASK	GENMASK(0, 0)
> +#define RMNET_MAP_DL_RESERVED_FMASK	GENMASK(7, 1)
> +
> +#endif /* _LINUX_IF_RMNET_H_ */
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
