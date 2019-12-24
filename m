Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BB812A3F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 19:35:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MFCxjLABaTBT81TniYPitiQ/XVaa+jSUU5PjTOxbWAI=; b=mxNOa2UPPF1ZQO
	GEKIxpTbqNDJ2rsoSO9bYN9mWm1KC/1FofGPQnVeiZM7u02kPICTwchSvFL0015IxzW6yqdmtIddJ
	AN4+l3jqHeMBTu561DEIvPPtWFF0deywmFyGTA0noMBJ9s3VQnTeMIkbSOZoW7hsySTA022QpSyUL
	6khNecn6wAQ3wKCox7mfMbvQ8M3juKPyjZtDD+58IwN5n9c+aaTvA+8wYgPIB6EIjEsTdDD/T2VnC
	We/2YG+bLbG9hnp6Zv8jwjyvFbwOGR+thM90h+OHC//ky7P2SbsC+TgVj9NTBpCtPX2QMa8hW3SIC
	Qce3Lngr3UI5IpHrXh0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijp1Y-0005Bs-Id; Tue, 24 Dec 2019 18:35:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijp1K-0004c2-Hz
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 18:35:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DB3371FB;
 Tue, 24 Dec 2019 10:34:55 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DAC233F68F;
 Tue, 24 Dec 2019 10:34:54 -0800 (PST)
Date: Tue, 24 Dec 2019 18:34:49 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: lukasz.luba@arm.com
Subject: Re: [PATCH v2 1/2] include: trace: Add SCMI header with trace events
Message-ID: <20191224183403.GA13926@bogus>
References: <20191217134345.14004-1-lukasz.luba@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217134345.14004-1-lukasz.luba@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_103502_646067_3C68E89E 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, rostedt@goodmis.org, mingo@redhat.com,
 james.quinlan@broadcom.com, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 01:43:44PM +0000, lukasz.luba@arm.com wrote:
> From: Lukasz Luba <lukasz.luba@arm.com>
>
> Adding trace events would help to measure the speed of the communication
> channel. It can be also potentially used helpful during investigation
> of some issues platforms which use different transport layer.
>
> Update also MAINTAINERS file with information that the new trace events
> are maintained.
>

Applied both the patches for v5.6

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
