Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5905617068F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 18:49:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YO1HbVaKOc3BNA8QkiI2Rg9uXOUaaMSDiN+xBLoq+fo=; b=iXnDyqWHqQd/Kq
	H7eddEFVS6YVXu/V9XehheL/mlrqtpj00jOCblUKcIrLxWY8foMJT9Rl2WScgXpAeC1v0+gfp3jrZ
	4waAKy2DjtYxX+sYtvSY+NJKcEeda6Vu/I6GIYc0o4xqA3Nm1MBnHK3tcXtFopO9msZ5qRDgevQhT
	/4GaxBx0nyx1EcLaif6zYEjhbgE4xjh1Kodp/emFypqvwbD8P/0wrEMLXNJNwwvklU0gXLfbmF8fd
	MVWjKrVKo1T8EldVuOzg/QOpcKbXkkrIhHUURMPfp6r/q9EtLa65G7N31ijryi9zDuRk7Ov5XxgO8
	JAznKcDAv5adOymh4xvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j70oZ-0008MV-Sy; Wed, 26 Feb 2020 17:49:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j70oO-0008Li-Ah
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 17:49:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 475F130E;
 Wed, 26 Feb 2020 09:49:31 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BFC373F881;
 Wed, 26 Feb 2020 09:49:29 -0800 (PST)
Subject: Re: [PATCH 2/3] EDAC: synopsys: Reorganizing the output message for
 CE/UE
To: Sherry Sun <sherry.sun@nxp.com>
References: <1582537357-10339-1-git-send-email-sherry.sun@nxp.com>
 <1582537357-10339-3-git-send-email-sherry.sun@nxp.com>
From: James Morse <james.morse@arm.com>
Message-ID: <39c63f4c-2e39-4478-1de1-b0b564a7f4e1@arm.com>
Date: Wed, 26 Feb 2020 17:49:28 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1582537357-10339-3-git-send-email-sherry.sun@nxp.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_094932_457579_6BC76563 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: tony.luck@intel.com, frank.li@nxp.com, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, rrichter@marvell.com, bp@alien8.de,
 linux-imx@nxp.com, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sherry,

On 24/02/2020 09:42, Sherry Sun wrote:
> The origin way which call sprintf() function two or three times to

(original? 'The current way' may be better)


> output message for CE/UE is incorrect, because it won't output all the
> message needed, instead it will only output the last message in
> sprintf().

Nice!


> So the simplest and most effective way to fix this problem
> is reorganizing all the output message needed for CE/UE into one
> sprintf() function.

This is a bug, but its in the middle of a series doing some cleanup, meaning the
maintainer can't easily pick it up in isolation. Could you post it separately?

'Reorganize' in the subject makes this sound like cleanup. Would "EDAC: synopsys: Fix back
to back snprintf() messages for CE/UE" be better?


Please add:
Fixes: b500b4a029d57 ("EDAC, synopsys: Add ECC support for ZynqMP DDR controller")

in the signed-off-by area so that stable trees pick this up.

and for what its worth:
Reviewed-by: James Morse <james.morse@arm.com>


Thanks!

James



> diff --git a/drivers/edac/synopsys_edac.c b/drivers/edac/synopsys_edac.c
> index 7046b8929522..ef7e907c7956 100644
> --- a/drivers/edac/synopsys_edac.c
> +++ b/drivers/edac/synopsys_edac.c
> @@ -485,20 +485,14 @@ static void handle_error(struct mem_ctl_info *mci, struct synps_ecc_status *p)
>  		pinf = &p->ceinfo;
>  		if (!priv->p_data->quirks) {
>  			snprintf(priv->message, SYNPS_EDAC_MSG_SIZE,
> -				 "DDR ECC error type:%s Row %d Bank %d Col %d ",
> -				  "CE", pinf->row, pinf->bank, pinf->col);
> -			snprintf(priv->message, SYNPS_EDAC_MSG_SIZE,
> -				 "Bit Position: %d Data: 0x%08x\n",
> +				 "DDR ECC error type:%s Row %d Bank %d Col %d Bit Position: %d Data: 0x%08x",
> +				 "CE", pinf->row, pinf->bank, pinf->col,
>  				 pinf->bitpos, pinf->data);
>  		} else {
>  			snprintf(priv->message, SYNPS_EDAC_MSG_SIZE,
> -				 "DDR ECC error type:%s Row %d Bank %d ",
> -				  "CE", pinf->row, pinf->bank);
> -			snprintf(priv->message, SYNPS_EDAC_MSG_SIZE,
> -				 "BankGroup Number %d Block Number %d ",
> -				 pinf->bankgrpnr, pinf->blknr);
> -			snprintf(priv->message, SYNPS_EDAC_MSG_SIZE,
> -				 "Bit Position: %d Data: 0x%08x\n",
> +				 "DDR ECC error type:%s Row %d Bank %d BankGroup Number %d Block Number %d Bit Position: %d Data: 0x%08x",
> +				 "CE", pinf->row, pinf->bank,
> +				 pinf->bankgrpnr, pinf->blknr,
>  				 pinf->bitpos, pinf->data);
>  		}
>  
> @@ -515,10 +509,8 @@ static void handle_error(struct mem_ctl_info *mci, struct synps_ecc_status *p)
>  				"UE", pinf->row, pinf->bank, pinf->col);
>  		} else {
>  			snprintf(priv->message, SYNPS_EDAC_MSG_SIZE,
> -				 "DDR ECC error type :%s Row %d Bank %d ",
> -				 "UE", pinf->row, pinf->bank);
> -			snprintf(priv->message, SYNPS_EDAC_MSG_SIZE,
> -				 "BankGroup Number %d Block Number %d",
> +				 "DDR ECC error type :%s Row %d Bank %d BankGroup Number %d Block Number %d",
> +				 "UE", pinf->row, pinf->bank,
>  				 pinf->bankgrpnr, pinf->blknr);
>  		}
>  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
