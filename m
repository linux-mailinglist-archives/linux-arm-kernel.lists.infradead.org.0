Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1688E11ABF1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 14:21:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bNHQAhAlowLfvxjTvGxbkJgdmYCQBcu1lDDwtn8/aGk=; b=Scyz8TBinsed7Ym3zXKPDpyCQg
	U/8r2aWuTQ4xfdbsePSiwPKv+r0zqYIHrXwyH3C4/mLDzoeQMi12niqGXWL4R7ZKI/Z569lneFYYz
	PTlkaktQrpC7k29hwCyKdeU5dPNYQ+O2jXUfdK/yBU9cJUThZNjaS5SG3zVzyZZxjRfcDb/X3htdr
	fdXdEkYwt9sTmpvjbwXUNq0sW/s6+CGjgI4YkMV3tYcJfJ7mtLYhKEE8SxdFx8RzWormVkKr4X6Ap
	SzXDIdozSpNexXJQtRrCvpg56DKh3wm6Eglj1jTgIWpucTwG6a88A6HJOU8apsWuvh/d0c91BKhiZ
	zawKgRqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if1vh-0004kp-Kf; Wed, 11 Dec 2019 13:21:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if1vZ-0004iz-TE
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 13:21:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C66521FB;
 Wed, 11 Dec 2019 05:21:14 -0800 (PST)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 562E43F6CF;
 Wed, 11 Dec 2019 05:21:14 -0800 (PST)
Subject: Re: [PATCH 05/15] firmware: arm_scmi: Add versions and identifier
 attributes using dev_groups
To: Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20191210145345.11616-1-sudeep.holla@arm.com>
 <20191210145345.11616-6-sudeep.holla@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <91d5617d-85da-b3a3-1ef3-2438baa93ba7@arm.com>
Date: Wed, 11 Dec 2019 13:21:13 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191210145345.11616-6-sudeep.holla@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_052117_989451_7DF9E80E 
X-CRM114-Status: GOOD (  17.58  )
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
> Platform drivers now have the option to have the platform core create
> and remove any needed sysfs attribute files. Using the same, let's add
> the scmi firmware and protocol version attributes as well as vendor and
> sub-vendor identifiers to sysfs.
> 
> It helps to identify the firmware details from the sysfs entries similar
> to ARM SCPI implementation.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/arm_scmi/driver.c | 47 ++++++++++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
> 
> diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
> index 0bbdc7c9eb0f..26b2c438bd59 100644
> --- a/drivers/firmware/arm_scmi/driver.c
> +++ b/drivers/firmware/arm_scmi/driver.c
> @@ -979,6 +979,52 @@ static int scmi_remove(struct platform_device *pdev)
>  	return ret;
>  }
> 
> +static ssize_t protocol_version_show(struct device *dev,
> +				     struct device_attribute *attr, char *buf)
> +{
> +	struct scmi_info *info = dev_get_drvdata(dev);
> +
> +	return sprintf(buf, "%u.%u\n", info->version.major_ver,
> +		       info->version.minor_ver);
> +}
> +static DEVICE_ATTR_RO(protocol_version);
> +
> +static ssize_t firmware_version_show(struct device *dev,
> +				     struct device_attribute *attr, char *buf)
> +{
> +	struct scmi_info *info = dev_get_drvdata(dev);
> +
> +	return sprintf(buf, "0x%x\n", info->version.impl_ver);
> +}
> +static DEVICE_ATTR_RO(firmware_version);
> +
> +static ssize_t vendor_id_show(struct device *dev,
> +			      struct device_attribute *attr, char *buf)
> +{
> +	struct scmi_info *info = dev_get_drvdata(dev);
> +
> +	return sprintf(buf, "%s\n", info->version.vendor_id);
> +}
> +static DEVICE_ATTR_RO(vendor_id);
> +
> +static ssize_t sub_vendor_id_show(struct device *dev,
> +				  struct device_attribute *attr, char *buf)
> +{
> +	struct scmi_info *info = dev_get_drvdata(dev);
> +
> +	return sprintf(buf, "%s\n", info->version.sub_vendor_id);
> +}
> +static DEVICE_ATTR_RO(sub_vendor_id);
> +
> +static struct attribute *versions_attrs[] = {
> +	&dev_attr_firmware_version.attr,
> +	&dev_attr_protocol_version.attr,
> +	&dev_attr_vendor_id.attr,
> +	&dev_attr_sub_vendor_id.attr,
> +	NULL,
> +};
> +ATTRIBUTE_GROUPS(versions);
> +
>  static const struct scmi_desc scmi_generic_desc = {
>  	.max_rx_timeout_ms = 30,	/* We may increase this if required */
>  	.max_msg = 20,		/* Limited by MBOX_TX_QUEUE_LEN */
> @@ -997,6 +1043,7 @@ static struct platform_driver scmi_driver = {
>  	.driver = {
>  		   .name = "arm-scmi",
>  		   .of_match_table = scmi_of_match,
> +		   .dev_groups = versions_groups,
>  		   },
>  	.probe = scmi_probe,
>  	.remove = scmi_remove,
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
