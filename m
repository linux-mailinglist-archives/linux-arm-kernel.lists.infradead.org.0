Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB13C11BB0E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 19:09:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=C7fg8mHq+OWwGmwICyP2BJBSGRjHG5q0LHyhzI7UjnA=; b=Z3dYqZnOtW2Ixdr99nK9DvzFkj
	npoCTXAfN9ygXZvIQvjMoDYRCAQVnDwnaaIK86amcDDDartJWLgosGMacZCKFpx25aMnGdZlUndpz
	XkpdTeNd50GqMfhW3YyxkLmRxel8eX3yILpZ+2si1UfPEOwL0v8ujVmvfL1B8sWxQDomGAFW9Awjx
	7T0NQs3DxLqpTLXBTz5B3zAGol03jlab7W7zSaLaOPeIJaULzd2EGAVVagw0ZAqLMtsLVclt7CXZQ
	/nojmzxMGG+Ve5vq5YpFn7jewA8OriYnc+NMveYE0C1vgTlRSfOnXrLfMiG/Mjy2i1869j7EHVPwy
	ji6WLi4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if6Pu-0004X0-03; Wed, 11 Dec 2019 18:08:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if6Pl-0004WB-Jk
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 18:08:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BD57A31B;
 Wed, 11 Dec 2019 10:08:44 -0800 (PST)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 406183F6CF;
 Wed, 11 Dec 2019 10:08:44 -0800 (PST)
Subject: Re: [PATCH 09/15] firmware: arm_scmi: Add scmi protocol version and
 id device attributes
To: Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20191210145345.11616-1-sudeep.holla@arm.com>
 <20191210145345.11616-10-sudeep.holla@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <06f14189-c871-9b71-0029-293476e1c6b7@arm.com>
Date: Wed, 11 Dec 2019 18:08:43 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191210145345.11616-10-sudeep.holla@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_100845_693925_360C54BB 
X-CRM114-Status: GOOD (  16.85  )
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
> Linux kernel bus driver management layer provides way to add set of
> default attributes of the devices on the bus. Using the same, let's add
> the scmi per protocol version and id attributes to the sysfs.
> 
> It helps to identify the individual protocol details from the sysfs
> entries similar to the SCMI protocol and firmware version.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/arm_scmi/bus.c | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/drivers/firmware/arm_scmi/bus.c b/drivers/firmware/arm_scmi/bus.c
> index f619da2634a6..ed0ed02f7158 100644
> --- a/drivers/firmware/arm_scmi/bus.c
> +++ b/drivers/firmware/arm_scmi/bus.c
> @@ -92,11 +92,38 @@ static int scmi_dev_remove(struct device *dev)
>  	return 0;
>  }
> 
> +static ssize_t protocol_version_show(struct device *dev,
> +				     struct device_attribute *attr, char *buf)
> +{
> +	struct scmi_device *scmi_dev = to_scmi_dev(dev);
> +
> +	return sprintf(buf, "%u.%u\n", PROTOCOL_REV_MAJOR(scmi_dev->version),
> +		       PROTOCOL_REV_MINOR(scmi_dev->version));
> +}
> +static DEVICE_ATTR_RO(protocol_version);
> +

Similar issue related to proto/device mixup as said.
Here bus exposes sysfs attributes depending on an scmi_dev

Cristian


> +static ssize_t protocol_id_show(struct device *dev,
> +				struct device_attribute *attr, char *buf)
> +{
> +	struct scmi_device *scmi_dev = to_scmi_dev(dev);
> +
> +	return sprintf(buf, "%u\n", scmi_dev->protocol_id);
> +}
> +static DEVICE_ATTR_RO(protocol_id);
> +
> +static struct attribute *versions_attrs[] = {
> +	&dev_attr_protocol_version.attr,
> +	&dev_attr_protocol_id.attr,
> +	NULL,
> +};
> +ATTRIBUTE_GROUPS(versions);
> +
>  static struct bus_type scmi_bus_type = {
>  	.name =	"scmi_protocol",
>  	.match = scmi_dev_match,
>  	.probe = scmi_dev_probe,
>  	.remove = scmi_dev_remove,
> +	.dev_groups = versions_groups,
>  };
> 
>  int scmi_driver_register(struct scmi_driver *driver, struct module *owner,
> --
> 2.17.1
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
