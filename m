Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6D21091A9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 17:13:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VNceExqydpf5g2Wnd+7Ht2FtFt/l/01B1iEFy8XqKsY=; b=d8p9vafOyyB9I1
	L05Oc040zPxp7+I8LNHip5k0YVoiI/zAAOrr+GuPDwy/kHp50JfMm5hsQdp4YIXZSQeGvIHJ2ZVRV
	9esrtiPC/2oZ3cMYusPqS4dvwHMxB0g8I9cSgw3zc3kLBEsbajtrQutDxR//5827BZPshmoYElMmS
	i5isUyo1joyIEuxOlrNZcadPGtUOH6+KJdrZ+0/SMpHzLeX9NJ0lKWaZZm9fTAhpYnTzYnx96oXCK
	Ywi4TuOMlYVTSOqTqOPnzNxZm/CRdVUSGO6K/GplAjpDkvxMTHojOvhAKpJYR4npMciz8NFsxqCCa
	5I3bXn5E5mR/XySV00Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZGzl-0006Zr-3f; Mon, 25 Nov 2019 16:13:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZGzd-0006Z1-6s
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 16:13:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B8F5A31B;
 Mon, 25 Nov 2019 08:13:38 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DD1BD3F6C4;
 Mon, 25 Nov 2019 08:13:37 -0800 (PST)
Date: Mon, 25 Nov 2019 16:13:31 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Wen Yang <wenyang@linux.alibaba.com>
Subject: Re: [PATCH] firmware: arm_scmi: avoid double free in error flow
Message-ID: <20191125161313.GA1157@bogus>
References: <20191125155409.9948-1-wenyang@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191125155409.9948-1-wenyang@linux.alibaba.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_081341_293773_2633F4E8 
X-CRM114-Status: GOOD (  12.11  )
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
Cc: Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 25, 2019 at 11:54:09PM +0800, Wen Yang wrote:
> If device_register() fails, both put_device() and kfree()
> are called, ending with a double free of the scmi_dev.
>

Correct.

> Calling kfree() is needed only when a failure happens between the
> allocation of the scmi_dev and its registration, so move it to
> there and remove it from the error flow.
>

kstrdup_const can fail and in that case device is not yet registered,
so we need to free. Since device_register() calls put_device() on failure
too, I would just drop it as it's unnecessary, not sure why I have added
it in the first place. Can you re-spin the patch dropping put_device
and renaming put_dev label to something like free_const.

--
Regards,
Sudeep


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
