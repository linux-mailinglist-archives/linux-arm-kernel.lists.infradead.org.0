Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 989F51FAEBD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 12:56:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9oHsE3U6rvqAVuR1YoYWS7T9S0C6yKdebrtjCvr1e7Y=; b=oWD3P078M9O0Pe
	TjqEAcNRyxepzTtOu3UumKjItg0cV2gKvgM3Hl6S5jTG+Zfc15DQ3mqWtF38ZmZ2VLqXrf/kwHrE1
	l/dex+FIIC9NIAR8kb1u/Oqe72Sw8uD09dCcVp06AeaVb3y8uzr3lsoTJSD2vNTt6o9G6fzDyQwut
	nyHFotxMchjd1qysRxhZo/aWKR33MX8AX0bVzzqjPFMt4Al4beHczy66RmpZqrG9YHQisNPxolCnq
	GZBWQEuzyjgJCTRdOOwMWDkQSYonPjz4DgzRzvmR/KO4yoVk0quuq1/VMtLGSGn6xq3IMS2aeuyMO
	+HojlExsgH2qaECHVWlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl9GT-0006Hx-Mw; Tue, 16 Jun 2020 10:56:25 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl9GM-0006HR-2j
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 10:56:19 +0000
IronPort-SDR: BLjGE3pwdAVY70Os+45WkKgfk9spkiB9nVxSXAUpPkzf9u5Fwi3ZckS/Lv91Taq/ewIYPMFLA4
 3pIfcK/ObFpw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 03:56:16 -0700
IronPort-SDR: iS5GbzbjKPiXqDKhZpPrConT0bcq2eWASHaqzKGx4fvllcs2ZidupIXhxZrWjdC+Jga7qklkly
 S/l/9R7DZuJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="382837797"
Received: from kuha.fi.intel.com ([10.237.72.162])
 by fmsmga001.fm.intel.com with SMTP; 16 Jun 2020 03:56:12 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation);
 Tue, 16 Jun 2020 13:56:12 +0300
Date: Tue, 16 Jun 2020 13:56:12 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Amelie Delaunay <amelie.delaunay@st.com>
Subject: Re: [PATCH 2/6] usb: typec: add typec_find_pwr_opmode
Message-ID: <20200616105612.GL3213128@kuha.fi.intel.com>
References: <20200615161512.19150-1-amelie.delaunay@st.com>
 <20200615161512.19150-3-amelie.delaunay@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615161512.19150-3-amelie.delaunay@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_035618_138650_AC58872E 
X-CRM114-Status: GOOD (  16.34  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 06:15:08PM +0200, Amelie Delaunay wrote:
> This patch adds a function that converts power operation mode string into
> power operation mode value.
> 
> It is useful to configure power operation mode through device tree
> property, as power capabilities may be linked to hardware design.
> 
> Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>

Acked-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>

> ---
>  drivers/usb/typec/class.c | 15 +++++++++++++++
>  include/linux/usb/typec.h |  1 +
>  2 files changed, 16 insertions(+)
> 
> diff --git a/drivers/usb/typec/class.c b/drivers/usb/typec/class.c
> index c9234748537a..59e1837ef85e 100644
> --- a/drivers/usb/typec/class.c
> +++ b/drivers/usb/typec/class.c
> @@ -1448,6 +1448,21 @@ void typec_set_pwr_opmode(struct typec_port *port,
>  }
>  EXPORT_SYMBOL_GPL(typec_set_pwr_opmode);
>  
> +/**
> + * typec_find_pwr_opmode - Get the typec power operation mode capability
> + * @name: power operation mode string
> + *
> + * This routine is used to find the typec_pwr_opmode by its string @name.
> + *
> + * Returns typec_pwr_opmode if success, otherwise negative error code.
> + */
> +int typec_find_pwr_opmode(const char *name)
> +{
> +	return match_string(typec_pwr_opmodes,
> +			    ARRAY_SIZE(typec_pwr_opmodes), name);
> +}
> +EXPORT_SYMBOL_GPL(typec_find_pwr_opmode);
> +
>  /**
>   * typec_find_orientation - Convert orientation string to enum typec_orientation
>   * @name: Orientation string
> diff --git a/include/linux/usb/typec.h b/include/linux/usb/typec.h
> index 5daa1c49761c..f7c63ee3d443 100644
> --- a/include/linux/usb/typec.h
> +++ b/include/linux/usb/typec.h
> @@ -254,6 +254,7 @@ int typec_set_mode(struct typec_port *port, int mode);
>  
>  void *typec_get_drvdata(struct typec_port *port);
>  
> +int typec_find_pwr_opmode(const char *name);
>  int typec_find_orientation(const char *name);
>  int typec_find_port_power_role(const char *name);
>  int typec_find_power_role(const char *name);
> -- 
> 2.17.1

thanks,

-- 
heikki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
