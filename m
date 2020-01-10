Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE1E136B34
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 11:40:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G8JggpscpdAwlwE9Nhj46umiK94PTmQBQ2tCmVJ3fzM=; b=p/pbNryILUrEMb
	9wEu4wDp2zn3HyegXFZJGz+x21iMp7GbIIdcuSvbEsMDBmhi8gUKjSSudTAiA2hhuPwaAohUep16Q
	fGz9QAx+lbAwJ4umy62epVHQZZG9Rh6AUwqBDjK2ix9jEYoYjOFiQPWecp3BtJ9rgQlJjQiED7b+L
	oWIbrFEpzF87EZXXZ+9MSB+ascWnUpO8DX3ZBrGkUGGK+qgS9Lc8ORTlXSBccFo7uijKD8OL0S35E
	jjBd1XveG80bqX+bqTblPLqIPn3cGe0lxMMeaiP2Fv8Cal2Vu/pQgcPdZKRAlpCe5feQucqCD7mjK
	l9jR5hHHewaHjGHWX4jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipriA-00046A-LB; Fri, 10 Jan 2020 10:40:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iprht-00045m-8Y
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 10:39:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9AC6E1396;
 Fri, 10 Jan 2020 02:39:56 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 669B93F703;
 Fri, 10 Jan 2020 02:39:55 -0800 (PST)
Date: Fri, 10 Jan 2020 10:39:24 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Hanjun Guo <guohanjun@huawei.com>
Subject: Re: [PATCH v1] ACPI/IORT: Workaround for IORT ID count "minus one"
 issue
Message-ID: <20200110103924.GA15314@e121166-lin.cambridge.arm.com>
References: <1577708824-4873-1-git-send-email-guohanjun@huawei.com>
 <2ce224b2-d926-67b0-f9dd-85ac53d967c5@arm.com>
 <20200109160220.GA27079@e121166-lin.cambridge.arm.com>
 <4cee4a91-6459-819b-d4d4-f5e8899103b9@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4cee4a91-6459-819b-d4d4-f5e8899103b9@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_023957_348718_A8267118 
X-CRM114-Status: GOOD (  12.00  )
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
 Pankaj Bansal <pankaj.bansal@nxp.com>, John Garry <john.garry@huawei.com>,
 linuxarm@huawei.com, linux-acpi@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 02:22:22PM +0800, Hanjun Guo wrote:

[...]

> > I am fine either way. We need test coverage since I feel this may
> > break a number of systems (ie I don't think it should be merged as
> > a fix).
> 
> Will you resend this patch with commit log and the updated code? or
> let me do that? Both are ok to me, let's get it tested for longer time
> if we merge it ASAP.

I will write the commit log in reply to the original patch, please
update the code and repost the whole thing (it is better you
repost it to avoid confusing Catalin and Will).

This technically is not a fix; we can try to get it into v5.6 but
I am a bit nervous since it can break other platforms, we have to
fix it though so better sooner than later.

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
