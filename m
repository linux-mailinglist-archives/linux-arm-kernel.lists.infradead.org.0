Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4DC1FFFCC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 03:38:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b+AcWogUmECzGN74Wqrm2sjNLph5H5vCSBldZmU6Xbk=; b=EraQ4IQ4XLlekW
	w+VywId8OEsrZ+mAbLafr8D1yHCDhIDz5zRDDdRNkNW8YkGxmGeXbXbQCjo9J8+lqtPhAbrmtrPXU
	EHd4RTuHBb/oHkCzDhaqDEejreLJ0smDHC9xi45lh1xQFoo3cGLOBOOPW3lVYrt9aG32n+f944Tvn
	jdLC9SDVt1unh7v42+1a0qZp05dLdaNtvGxQqzL4zxrOie8OVF2fC9yn1IQ2Ho84t36PQf+MaJb8g
	vxxtI12TBR/gNGrmNicbB0+/VlpOpqIzXwWsvhEkRrXk2tlwd8uelo9NcRurMDBq1Ivy7cz0B02lm
	vn2CtIMBRqjMe37RrXtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm5zQ-0003Dm-Oc; Fri, 19 Jun 2020 01:38:44 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm5zE-0003Cz-UY
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 01:38:34 +0000
Received: by mail-il1-f193.google.com with SMTP id 9so7836494ilg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 18:38:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XYe4dm89OvAp8NEAW4Mj6NX5Hz+7LzKddjXjWWo+/oA=;
 b=bz5sh9a8CHSHrsF/jdeAQt7lWd9EqY4TXqrjwNeQ/35lcO7eZc+rEtv+y/H0edaQo6
 XtATrQqtPqQQRrZI1xxGBfvsx9t1Iy8mEVmS90VlO0IAVHh2nkkOJeK0enpnsnjx1Qw0
 iNRPiMaHSaA3FUdzXVwEFMMtxLZRt2dAvSaxarUZDpfMmlCZqb+kkcovMvWeFmtE2GB9
 kVrG4kFWXWI1bIdNQZl5Y3+h7apuS5kl9sPipDwEOpqav6gZMabYP84ZLAo8iq81+qw6
 +WOOwn0OPEcNaFTgxU0HdIWPoOUba/+vp3bitrVedybOBAYs2tVIdb1MxhPQ3BtykCAs
 t4mg==
X-Gm-Message-State: AOAM532D3+1l5BCaCSAT9k7tUwDDrY5pzkqoRpSZLq9PlcB/mS2WKptV
 PHQghULcBnmaL3BQ+LCVBqc=
X-Google-Smtp-Source: ABdhPJxBolKVx4TEXm9JJNyf4PvqzmqX6Mg/A7H1vOeO8iTVX7Nm4yElXMnQyAEt9w4m2bvywoLVsg==
X-Received: by 2002:a92:d112:: with SMTP id a18mr1353053ilb.3.1592530711973;
 Thu, 18 Jun 2020 18:38:31 -0700 (PDT)
Received: from localhost ([2601:647:5b00:1161:a4cc:eef9:fbc0:2781])
 by smtp.gmail.com with ESMTPSA id z16sm2386746ilz.64.2020.06.18.18.38.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 18:38:31 -0700 (PDT)
Date: Thu, 18 Jun 2020 18:38:30 -0700
From: Moritz Fischer <mdf@kernel.org>
To: Luca Ceresoli <luca@lucaceresoli.net>
Subject: Re: [PATCH 3/5] fpga manager: xilinx-spi: remove unneeded, mistyped
 variables
Message-ID: <20200619013830.GC3685@epycbox.lan>
References: <20200611211144.9421-1-luca@lucaceresoli.net>
 <20200611211144.9421-3-luca@lucaceresoli.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200611211144.9421-3-luca@lucaceresoli.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_183832_982767_E4502095 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [moritz.fischer.private[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-fpga@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Moritz Fischer <mdf@kernel.org>,
 Anatolij Gustschin <agust@denx.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 11, 2020 at 11:11:42PM +0200, Luca Ceresoli wrote:
> Using variables does not add readability here: parameters passed
> to udelay*() are obviously in microseconds and their meaning is clear
> from the context.
> 
> The type is also wrong, udelay expects an unsigned long.
> 
> Signed-off-by: Luca Ceresoli <luca@lucaceresoli.net>
> ---
>  drivers/fpga/xilinx-spi.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/fpga/xilinx-spi.c b/drivers/fpga/xilinx-spi.c
> index 79106626c3f8..799ae04301be 100644
> --- a/drivers/fpga/xilinx-spi.c
> +++ b/drivers/fpga/xilinx-spi.c
> @@ -41,8 +41,6 @@ static int xilinx_spi_write_init(struct fpga_manager *mgr,
>  				 const char *buf, size_t count)
>  {
>  	struct xilinx_spi_conf *conf = mgr->priv;
> -	const size_t prog_latency_7500us = 7500;
> -	const size_t prog_pulse_1us = 1;
>  
>  	if (info->flags & FPGA_MGR_PARTIAL_RECONFIG) {
>  		dev_err(&mgr->dev, "Partial reconfiguration not supported.\n");
> @@ -51,7 +49,7 @@ static int xilinx_spi_write_init(struct fpga_manager *mgr,
>  
>  	gpiod_set_value(conf->prog_b, 1);
>  
> -	udelay(prog_pulse_1us); /* min is 500 ns */
> +	udelay(1); /* min is 500 ns */
>  
>  	gpiod_set_value(conf->prog_b, 0);
>  
> @@ -61,7 +59,7 @@ static int xilinx_spi_write_init(struct fpga_manager *mgr,
>  	}
>  
>  	/* program latency */
> -	usleep_range(prog_latency_7500us, prog_latency_7500us + 100);
> +	usleep_range(7500, 7600);
>  	return 0;
>  }
>  
> -- 
> 2.27.0
> 
Applied to for-next,

Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
