Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B60F10D6C8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 15:16:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PHELGnQt2vIzhzrCYRlAV8xThbKYYolVM2byyQQIIy8=; b=J1Zx1gcZsbo7kHGDHZ7hj/Xjg
	gzmZtGPsoZRxW6U0kVY5HDoPBDZVefCIsN7Qlbuuvb3W3dDELv8LSQzMIv9WCdHsXWXNWBxE1knmy
	9etEVieG/fV8QfySMGaQXcgCQWIbu4DRIQYVVD788t8bGgfHmJzkaurNHGvnmG4ia4cOJcDQL8Q9E
	IiTWASzL49gCVg6Vmkurt0SCS3698OWFbqfIE739VC+0MDO6f6U1qDbJA7ziyXw5o1IwR+9JPM6+e
	D/Ipw/6XcyO8lTigNL7q9/lTMQTUsE/SB50oa4QsDYyYOnLo34Na0H7F7czqVvLmhtSHHEWxzR/Wg
	Jga0oW1mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iah4i-0000o1-8K; Fri, 29 Nov 2019 14:16:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iah4W-0000nb-Ft
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 14:16:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9D1AC1FB;
 Fri, 29 Nov 2019 06:16:35 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D18E03F52E;
 Fri, 29 Nov 2019 06:16:34 -0800 (PST)
Subject: Re: [PATCH v5 07/14] coresight: cti: Add device tree support for
 custom CTI.
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>
References: <20191119231912.12768-1-mike.leach@linaro.org>
 <20191119231912.12768-8-mike.leach@linaro.org> <20191125212258.GB18542@xps15>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <35357ff3-2b1e-764e-cfbd-65bcc7a4faa6@arm.com>
Date: Fri, 29 Nov 2019 14:16:33 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191125212258.GB18542@xps15>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_061636_576573_58AD96DD 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25/11/2019 21:22, Mathieu Poirier wrote:
> On Tue, Nov 19, 2019 at 11:19:05PM +0000, Mike Leach wrote:
>> Adds support for CTIs whose connections are implementation defined at
>> hardware design time, and not constrained by v8 architecture.
>>
>> These CTIs have no standard connection setup, all the settings have to
>> be defined in the device tree files. The patch creates a set of connections
>> and trigger signals based on the information provided.
>>
>> Signed-off-by: Mike Leach <mike.leach@linaro.org>
>> ---
>>   .../coresight/coresight-cti-platform.c        | 250 +++++++++++++++++-
>>   .../hwtracing/coresight/coresight-cti-sysfs.c |  11 +
>>   2 files changed, 257 insertions(+), 4 deletions(-)

>> +static int cti_plat_create_impdef_connections(struct device *dev,
>> +					      struct cti_drvdata *drvdata)
>> +{
>> +	int rc = 0;
>> +	struct fwnode_handle *fwnode = dev_fwnode(dev);
>> +	struct fwnode_handle *child = NULL;
>> +
>> +	if (IS_ERR_OR_NULL(fwnode))
>> +		return -EINVAL;
>> +
>> +	fwnode_for_each_child_node(fwnode, child) {
>> +		if (cti_plat_node_name_eq(child, CTI_DT_CONNS))
>> +			rc = cti_plat_create_connection(dev, drvdata, child);
>> +		if (rc != 0)
>> +			break;
>> +	}
>> +	fwnode_handle_put(child);
> 
> As far as I can tell we don't need to call fwnode_handle_put()?

Actually we do, if we break the scan in between, at least for of_nodes.
I had to literally look it down all the way down to confirm this.

So for CONFIG_OF it ends up in of_get_next_available_child(), which
drops the ref on "prev" and grabs the "next". So in case we break
the loop, we must drop the ref on the child. Otherwise, the last
result would be NULL, which would have dropped the ref on the "last"
valid entry. And this is harmless with a NULL ptr.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
