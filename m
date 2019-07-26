Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D12376C0D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 16:51:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uLkBIRldOwGUBYHukFYpEf8hlsdwEoiPQFFvpFWzRVc=; b=MYXI0BOKlSSgEb
	rUMeQPiWkMUOCAdyy0j5YJ1r9m5Q0lz2XQevfy2GwG7qof064xIogvf0sMqTnB9Mjl82lsie1Vwxo
	s7XSJFTPjotVoJl4AiokBEGFwWUqPsyB+SWvjsCRs04LI3i23e7cpJsG7Svc8s5ztwL0M/wUvym1k
	mW588LVjN7R8pbfc1ixA8TEtss8OyWbKXZrAVmIoTIMZPXm+OzhzCPnP6YDrvVdzOIx4qzJ0LwTaD
	UMYf0SbqTMI01RI62ZzcrEa05mTGvKkWNcBKhqHKstADM8paBXdUzwqaaOEnz7Dx1X7U6V6PD0KR5
	U9CnChdLIkU1ZzOCQo3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr1ZG-000862-Ky; Fri, 26 Jul 2019 14:51:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hr1Z0-00085M-Vf
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 14:51:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6476D337;
 Fri, 26 Jul 2019 07:51:18 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E782E3F71F;
 Fri, 26 Jul 2019 07:51:16 -0700 (PDT)
Subject: Re: [PATCH v9 8/8] EDAC: armada_xp: Add support for more SoCs
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
References: <20190712034904.5747-1-chris.packham@alliedtelesis.co.nz>
 <20190712034904.5747-9-chris.packham@alliedtelesis.co.nz>
From: James Morse <james.morse@arm.com>
Message-ID: <128016c1-380f-70c4-3a89-2d3b0edf9f88@arm.com>
Date: Fri, 26 Jul 2019 15:51:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712034904.5747-9-chris.packham@alliedtelesis.co.nz>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_075120_319733_F62220F1 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jlu@pengutronix.de,
 linux-edac@vger.kernel.org, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, bp@alien8.de,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 patches@armlinux.org.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chris,

On 12/07/2019 04:49, Chris Packham wrote:
> The Armada 38x and other integrated SoCs use a reduced pin count so the
> width of the SDRAM interface is smaller than the Armada XP SoCs. This
> means that the definition of "full" and "half" width is reduced from
> 64/32 to 32/16.

> diff --git a/drivers/edac/armada_xp_edac.c b/drivers/edac/armada_xp_edac.c
> index 3759a4fbbdee..7f227bdcbc84 100644
> --- a/drivers/edac/armada_xp_edac.c
> +++ b/drivers/edac/armada_xp_edac.c
> @@ -332,6 +332,11 @@ static int axp_mc_probe(struct platform_device *pdev)
>  
>  	axp_mc_read_config(mci);
>  
> +	/* These SoCs have a reduced width bus */
> +	if (of_machine_is_compatible("marvell,armada380") ||
> +	    of_machine_is_compatible("marvell,armadaxp-98dx3236"))
> +		drvdata->width /= 2;

So the hardware's SDRAM_CONFIG_BUS_WIDTH value is wrong? Yuck.

Is it too late for the DTs on these two systems to provide a DT version of the 'bus_width'
to override the hardware's mis-advertised value?

This way you don't need to grow this list.

Acked-by: James Morse <james.morse@arm.com>


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
