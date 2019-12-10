Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D201118FC3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 19:27:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=T3VOJXVZ3/sSzB19h/+z0ad2KmuFj9r5DC9nudBeAqA=; b=h8dfngzFvJDyac0TnKrv3tZp9Y
	++26d5anWiGSND80Wwk/JKL3l//nFaghd0Rb9ueG05cjFMbfk2hLDjOVk24h85oZf9ZKa1lmwcnEQ
	FxGVMljlsIvYE3/sSNPfz/8SeOw3Jf/OcBNnzW32VhBfHwWGS5jRI1i3UJpEp048D0Oo9hy+OAnFK
	GvzdS1x9if7VRDXntXDKH5S+T4a3pSEfh4Wg71+tzFCurJ6hZE04AblP8BtZmB9lOlcS+CJ0FjteK
	exu5sW5ONqa56dgmVFeZOastKBR2SQ/NrvVpCp7BbzfxUDKbYaNzOetJHVJxluwrdReBpHhBgMeLT
	DZCrnpDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iekDi-00071w-Ty; Tue, 10 Dec 2019 18:26:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iekDc-00071W-LS
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 18:26:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 060981FB;
 Tue, 10 Dec 2019 10:26:44 -0800 (PST)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 86FA53F6CF;
 Tue, 10 Dec 2019 10:26:43 -0800 (PST)
Subject: Re: [PATCH 04/15] firmware: arm_scmi: Add names to scmi devices
 created
To: Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20191210145345.11616-1-sudeep.holla@arm.com>
 <20191210145345.11616-5-sudeep.holla@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <22634361-320b-e08e-d7f2-34a95038e838@arm.com>
Date: Tue, 10 Dec 2019 18:26:42 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191210145345.11616-5-sudeep.holla@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_102644_744789_4E420502 
X-CRM114-Status: GOOD (  19.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

On 10/12/2019 14:53, Sudeep Holla wrote:
> Now that scmi bus provides option to create named scmi device, let us
> create the default devices with names. This will help to add names for
> matching to respective drivers and eventually to add multiple devices
> and drivers per protocol.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/arm_scmi/driver.c | 36 +++++++++++++++++++++++++++++-
>  1 file changed, 35 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
> index 2952fcd8dd8a..0bbdc7c9eb0f 100644
> --- a/drivers/firmware/arm_scmi/driver.c
> +++ b/drivers/firmware/arm_scmi/driver.c
> @@ -829,6 +829,40 @@ scmi_create_protocol_device(struct device_node *np, struct scmi_info *info,
>  	scmi_set_handle(sdev);
>  }
> 
> +#define MAX_SCMI_DEV_PER_PROTOCOL	2
> +struct scmi_prot_devnames {
> +	int protocol_id;
> +	char *names[MAX_SCMI_DEV_PER_PROTOCOL];
> +};
> +
> +static struct scmi_prot_devnames devnames[] = {
> +	{ SCMI_PROTOCOL_POWER,  { "genpd" },},
> +	{ SCMI_PROTOCOL_PERF,   { "cpufreq" },},
> +	{ SCMI_PROTOCOL_CLOCK,  { "clocks" },},
> +	{ SCMI_PROTOCOL_SENSOR, { "hwmon" },},
> +	{ SCMI_PROTOCOL_RESET,  { "reset" },},
> +};
> +
> +static inline void
> +scmi_create_protocol_devices(struct device_node *np, struct scmi_info *info,
> +			     int prot_id)
> +{
> +	int loop, cnt;
> +
> +	for (loop = 0; loop < ARRAY_SIZE(devnames); loop++) {
> +		if (devnames[loop].protocol_id != prot_id)
> +			continue;
> +
> +		for (cnt = 0; cnt < ARRAY_SIZE(devnames[loop].names); cnt++) {
> +			const char *name = devnames[loop].names[cnt];
> +
> +			if (name)
> +				scmi_create_protocol_device(np, info, prot_id,
> +							    name);
> +		}
> +	}
> +}
> +
>  static int scmi_probe(struct platform_device *pdev)
>  {
>  	int ret;
> @@ -897,7 +931,7 @@ static int scmi_probe(struct platform_device *pdev)
>  			continue;
>  		}
> 
> -		scmi_create_protocol_device(child, info, prot_id, NULL);
> +		scmi_create_protocol_devices(child, info, prot_id);
>  	}
> 
>  	return 0;
> --
> 2.17.1
> 

I'm a little bit puzzled by the builtin fixed define MAX_SCMI_DEV_PER_PROTOCOL, but
I have not really an alternative solution as of now, so looks good to me.

Reviewed-by: Cristian Marussi <cristian.marussi@arm.com>

Cheers

Cristian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
