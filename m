Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A76911BB27
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 19:10:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cbul7k/kRQJow6+VFqU5NhU3vTUY15NoKTk4i1VMqUs=; b=WGIfTC9XrYy0TjwWZwHaKETady
	Reg3MYyqfghAAyWoTC/anDfgdAUrz58G7CStZz+nKjk3/g8vfwe3IL3dVAIS1uEaH9eD5kwXgvldr
	2Iiy+mNfdtw8hTQUNN9V/1qGnfz6KkxlZgKnu10f65yxLA/gnQEdEo+tFvkaLwd4saaNp93tSIMAT
	H1mipt8MSGtLfS8Ggwf6bnbLmFIGYSPv01UsIjmEMX1344ff3AvKfpJxUd1COuB+eL5akb+HIxkK2
	KYF9WUb+W1r3gPFE6Srfvqc73ihxsOrIJ0/+CCDSUPIfLLnwCn0O1/5KXkwL8EQFX2a2YQdzTd5D+
	6pEjG0Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if6Ri-00072b-OU; Wed, 11 Dec 2019 18:10:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if6RT-0006yQ-4G
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 18:10:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 83F7431B;
 Wed, 11 Dec 2019 10:10:30 -0800 (PST)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 014073F6CF;
 Wed, 11 Dec 2019 10:10:29 -0800 (PST)
Subject: Re: [PATCH 11/15] firmware: arm_scmi: Match scmi device by both name
 and protocol id
To: Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20191210145345.11616-1-sudeep.holla@arm.com>
 <20191210145345.11616-12-sudeep.holla@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <9f30c06f-df22-a1cd-5ed2-c382348162a0@arm.com>
Date: Wed, 11 Dec 2019 18:10:28 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191210145345.11616-12-sudeep.holla@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_101031_238175_142EFAAF 
X-CRM114-Status: GOOD (  18.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/12/2019 14:53, Sudeep Holla wrote:
> The scmi bus now has support to match the driver with devices not only
> based on their protocol id but also based on their device name if one is
> available. This was added to cater the need to support multiple devices
> and drivers for the same protocol.
> 
> Let us add the name "genpd" to scmi_device_id table in the driver so
> that in matches only with device with the same name and protocol id
> SCMI_PROTOCOL_POWER.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/arm_scmi/scmi_pm_domain.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/firmware/arm_scmi/scmi_pm_domain.c b/drivers/firmware/arm_scmi/scmi_pm_domain.c
> index 87f737e01473..bafbfe358f97 100644
> --- a/drivers/firmware/arm_scmi/scmi_pm_domain.c
> +++ b/drivers/firmware/arm_scmi/scmi_pm_domain.c
> @@ -112,7 +112,7 @@ static int scmi_pm_domain_probe(struct scmi_device *sdev)
>  }
> 
>  static const struct scmi_device_id scmi_id_table[] = {
> -	{ SCMI_PROTOCOL_POWER },
> +	{ SCMI_PROTOCOL_POWER, "genpd" },
>  	{ },
>  };
>  MODULE_DEVICE_TABLE(scmi, scmi_id_table);
> --
> 2.17.1
> 
LGTM.

Reviewed-by: Cristian Marussi <cristian.marussi@arm.com>


Cristian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
