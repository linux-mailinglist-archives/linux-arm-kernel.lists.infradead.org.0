Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B819A1B124D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 18:53:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s/yMtmULwKS4UogEqt1Xa/0rxcgxLk6mIoYVRZJzeBM=; b=X5Y4ztbcnBSwtA
	MJZSFHMwGNHMn8YpxxLsD1YvzxA+OwwbbiDlV+ORycWyU2+j/+VFAbF+NGRCmGzhCX77SKgxO9J2s
	n0wcwcvv06fEjfBR1J3eDVqKhvwaa8UWsnnsSYhD2wEarwWS3zwvvmH4ivXEF5ST5p2tx5JhGPcqO
	o6uYZuCQsXARYiGWxZSqwFpxo2uT1kiWeDUdeL21+QuQIr/joAlpfKMAl1lRXcIMorW4c6v7TngkZ
	302/uIh6kAjDXo+ltd0OLGzx6zlAIkSdtdYs+kD//Yr0JWDYfCFTl0bLDQ+C5w32n7eNlPc/e+U9L
	mX/2J1ZlS50yX/BJPzWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQZfF-0008W9-Ie; Mon, 20 Apr 2020 16:52:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQZf5-0008Vl-Nr
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 16:52:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3FD7F31B;
 Mon, 20 Apr 2020 09:52:47 -0700 (PDT)
Received: from bogus (unknown [10.37.12.118])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1DDA03F73D;
 Mon, 20 Apr 2020 09:52:45 -0700 (PDT)
Date: Mon, 20 Apr 2020 17:52:43 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Etienne Carriere <etienne.carriere@linaro.org>
Subject: Re: [PATCH] firmware: arm_scmi: Fix return error code in
 smc_send_message
Message-ID: <20200420165243.GB5081@bogus>
References: <20200417103232.6896-1-sudeep.holla@arm.com>
 <CAN5uoS8vGCABXvscR160=Dy_iZytinB2y+E2wbp6_KyQMFW5Tg@mail.gmail.com>
 <20200420145712.GA307@bogus>
 <CAN5uoS_C7QxhjhqtMq5s9ZP22Lh-yqwTO4FUmF_-FhXB5NQf8g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAN5uoS_C7QxhjhqtMq5s9ZP22Lh-yqwTO4FUmF_-FhXB5NQf8g@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_095247_840159_4824A3B1 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Peng Fan <peng.fan@nxp.com>, linux-arm-kernel@lists.infradead.org,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 06:25:31PM +0200, Etienne Carriere wrote:
[...]

> Sure you can add my Reviewed-by as well as my Tested-by, assuming I

Thanks.

> tested this change over the right version.
> I used your branch for-next/scmi, from commit a2fe6324.
>

That's correct.


--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
