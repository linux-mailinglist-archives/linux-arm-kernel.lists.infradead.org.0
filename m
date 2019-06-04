Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCCE3429A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 11:06:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WfmhrI7xkDUePLrghgCo6o74PBHcya7UL0D0Nb5L/58=; b=V16vpq4drA7kab
	pJsk0fBjX3sLM3tHEjrWUtRCTNmwKUWETvScdEUkOXUGl/yw8WPshku6OLbtMYh1sbW8JyH0L1oeR
	0woI2xlx03vQlB4Rj8Qv3JAQzDMoeKrTWn0WF1Jj1c936YYqxEQWwdB2vBLV6hgJLKTjC93WinCg1
	N2joxCiNhywiy3crpB/HJMtmlQC7zhOyLsdFHlQeKUgKFd3PvqdFbtSupDj9E3UqftYaWK5rmlPfP
	/KiJsVHc1QhQg4J8vWGF7fyj2GJ+QeQveNA9zA40/c5pPjNbaf4T0VArMQhToy8FVnaPWF1lIFvo8
	YCCzlnUyb815UEobS7GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY5OR-0003On-TT; Tue, 04 Jun 2019 09:06:07 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY5OL-0003Nl-C1
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 09:06:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D7099A78;
 Tue,  4 Jun 2019 02:05:58 -0700 (PDT)
Received: from e107533-lin.cambridge.arm.com (unknown [10.37.9.40])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 775CA3F246;
 Tue,  4 Jun 2019 02:05:57 -0700 (PDT)
Date: Tue, 4 Jun 2019 10:05:54 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Joseph Lo <josephl@nvidia.com>
Subject: Re: [PATCH] arm64: tegra: add CPU cache topology for Tegra186
Message-ID: <20190604090554.GD23250@e107533-lin.cambridge.arm.com>
References: <20190604023535.7115-1-josephl@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604023535.7115-1-josephl@nvidia.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_020601_409509_954BA9FE 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org,
 Jonathan Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 10:35:35AM +0800, Joseph Lo wrote:
> Tegra186 has two CPU clusters with its own cache hierarchy. This patch
> adds them with the cache information of each of the CPUs.
> 

Please add geometry information if you prefer to expose the same to the
user-space. We removed support to read the system registers to fetch
these information. In-fact it was for one of the Tegra platforms that
geometry in those registers don't match the actual values, at-least
that was the argument to drop the support for the same.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
