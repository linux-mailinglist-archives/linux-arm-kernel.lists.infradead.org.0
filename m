Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC742434AF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 11:31:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HgMSPl2PJ4++xXodgf4dBRt5+8Ha/Pr50czkUHFWaz4=; b=YnZKR9aTXEOdmj26nS0huBmjK
	XU9/aMlMoPLad5FcoA1ZXbXjAvosf0c1/8Kvet5P3hiF7Y9AYu+H92x+aVmrJ3d+Sj9GC93QjBC9D
	Q7rtNv6o3djbZmPE6vdzO3H8C+jkPhOttIYiEBDrF7rTgUYbyYomI6tBi1w1oJIoypVLKz9o93qxn
	GCNYrK8MavKAJoq0jzhUexSv5cmTjsTBjfFb9KBlVqCSscrEq+0ZOAGfleU2JKHet6pRZ+vHDY7B+
	FpsEZrIZhUGXNlZiXLDWU2BOL9slEs+2tIh1z1e0va0Bh7t8B7ywoubuZ7R0uUUImc4qM3AzQUSle
	6OX8C4SCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbM4Z-0004sV-OE; Thu, 13 Jun 2019 09:31:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbM4Q-0004s9-9G
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 09:30:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CC43C367;
 Thu, 13 Jun 2019 02:30:55 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3FF5A3F694;
 Thu, 13 Jun 2019 02:30:55 -0700 (PDT)
Subject: Re: [bug report] ACPI: Add new IORT functions to support MSI domain
 handling
To: Dan Carpenter <dan.carpenter@oracle.com>, tn@semihalf.com
References: <20190613065410.GB16334@mwanda>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <425b5d78-b38f-270b-94e2-7ece1e5498e5@arm.com>
Date: Thu, 13 Jun 2019 10:30:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190613065410.GB16334@mwanda>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_023058_366625_CAF990D0 
X-CRM114-Status: GOOD (  19.30  )
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
Cc: linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/06/2019 07:54, Dan Carpenter wrote:
> Hello Tomasz Nowicki,
> 
> The patch 4bf2efd26d76: "ACPI: Add new IORT functions to support MSI
> domain handling" from Sep 12, 2016, leads to the following static
> checker warning:
> 
> 	drivers/acpi/arm64/iort.c:628 iort_dev_find_its_id()
> 	warn: array off by one? 'its->identifiers[idx]'
> 
> drivers/acpi/arm64/iort.c
>     589  /**
>     590   * iort_dev_find_its_id() - Find the ITS identifier for a device
>     591   * @dev: The device.
>     592   * @req_id: Device's requester ID
>     593   * @idx: Index of the ITS identifier list.
>     594   * @its_id: ITS identifier.
>     595   *
>     596   * Returns: 0 on success, appropriate error value otherwise
>     597   */
>     598  static int iort_dev_find_its_id(struct device *dev, u32 req_id,
>     599                                  unsigned int idx, int *its_id)
>     600  {
>     601          struct acpi_iort_its_group *its;
>     602          struct acpi_iort_node *node;
>     603
>     604          node = iort_find_dev_node(dev);
>     605          if (!node)
>     606                  return -ENXIO;
>     607
>     608          node = iort_node_map_id(node, req_id, NULL, IORT_MSI_TYPE);
>     609          if (!node)
>     610                  return -ENXIO;
>     611
>     612          /* Move to ITS specific data */
>     613          its = (struct acpi_iort_its_group *)node->node_data;
>     614          if (idx > its->its_count) {
>                      ^^^^^^^^^^^^^^^^^^^^
> I wasn't able to find any information about how its->its_count is set
> but it looks to me that is off by one.

its->count is read directly from the firmware table. Currently it seems 
this condition can never be hit anyway, since this is only ever called 
with idx == 0. TBH I can't really see how the code could evolve such 
that this check should ever be necessary (i.e. it makes no sense for 
callers to pull idx values out if thin air, so they'd presumably end up 
being derived from its->count in the first place), but if we are going 
to have it then I agree it should be ">=".

Robin.

> 
>     615                  dev_err(dev, "requested ITS ID index [%d] is greater than available [%d]\n",
>     616                          idx, its->its_count);
>     617                  return -ENXIO;
>     618          }
>     619
>     620          *its_id = its->identifiers[idx];
>     621          return 0;
>     622  }
> 
> regards,
> dan carpenter
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
