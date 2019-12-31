Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCB312D5B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 03:11:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z7Er9M+qRdvBZ8Gk4+rAFyXewXDGlgLNxt774gCPOf8=; b=KG1S5hT0NlCxFI
	ENrm7mDkA7nLOIIqm2VzRc/Owp4T/lj5hW228eJub0o6pQqGSEXqIsCzwJYljAeHKCywdKfoqoB4a
	TAa+fGMYPM2P0MS2w0T1Uoool+f938wzN+JfJzqc4+vFPRGZSDPVl7Jx6mGkK3DLNI7zomGXI6/6y
	iUTQypd6fs+Wm07NsiTpfEG3ARDRrMsdS4cNAImP4IO3Uo92nGbFuSCmiUEtTAU/293C7EZ1JjWAF
	wgma+0zq8t/tIeGSMIdOuq9PQ1zJk8aQcnN+ChIZSg5A4II/gIOXEoy1gYuRkvOXenYVHi6jqqOIG
	XHz1gv53ozrAwHoPAl5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im70N-0001MV-Ah; Tue, 31 Dec 2019 02:11:31 +0000
Received: from [2601:1c0:6280:3f0::34d9]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im70I-0001MA-0O; Tue, 31 Dec 2019 02:11:26 +0000
Subject: Re: [PATCH] stmmac: debugfs entry name is not be changed when udev
 rename device name.
To: Jiping Ma <jiping.ma2@windriver.com>, peppe.cavallaro@st.com,
 alexandre.torgue@st.com
References: <20191231020302.71792-1-jiping.ma2@windriver.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <5b10a5ff-8428-48c7-a60d-69dd62009716@infradead.org>
Date: Mon, 30 Dec 2019 18:11:24 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191231020302.71792-1-jiping.ma2@windriver.com>
Content-Language: en-US
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, joabreu@synopsys.com,
 mcoquelin.stm32@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 12/30/19 6:03 PM, Jiping Ma wrote:
> Add one notifier for udev changes net device name.
> 
> Signed-off-by: Jiping Ma <jiping.ma2@windriver.com>
> ---
>  .../net/ethernet/stmicro/stmmac/stmmac_main.c | 38 ++++++++++++++++++-
>  1 file changed, 37 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> index b14f46a57154..c1c877bb4421 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> @@ -4038,6 +4038,40 @@ static int stmmac_dma_cap_show(struct seq_file *seq, void *v)
>  }
>  DEFINE_SHOW_ATTRIBUTE(stmmac_dma_cap);
>  
> +/**

Just use /* here since this is not a kernel-doc comment.
/** is reserved for kernel-doc comments/notation.

> + * Use network device events to create/remove/rename
> + * debugfs file entries
> + */
> +static int stmmac_device_event(struct notifier_block *unused,
> +			       unsigned long event, void *ptr)
> +{


> @@ -4050,7 +4084,6 @@ static int stmmac_init_fs(struct net_device *dev)
>  
>  		return -ENOMEM;
>  	}
> -
>  	/* Entry to report DMA RX/TX rings */
>  	priv->dbgfs_rings_status =
>  		debugfs_create_file("descriptors_status", 0444,

I don't see a problem with the blank line.  Why remove it?


thanks.
-- 
~Randy


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
