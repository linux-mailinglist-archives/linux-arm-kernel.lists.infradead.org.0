Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 015C989B8B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 12:33:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cREViqySuqGO/u9CtpfWfCmn3+C62ICrItqxPI7Z+Kc=; b=g6K3c4uII2uuJg
	jqT6+17cLF1fSNfRb/CQGIYGPq6bdN2h1+ioLa2xNVtsqeWsaH+MDre7OetWMmDoZGvs/LHXXPcI4
	ehWX+NnDX1g39fP5xJRd0bU89tteFC+Tt6G6E8RVFGz88LXYzUfgv0BGBcGeeJbcMQvmx1l3EMMEp
	fZybwFoG7xSt4FZotdFFHuf1le1tpw4oiqVn68Nt6uY2KimkOu4NOo0EeCQWS1xrwH0lmVapvEUo3
	BxK6J4WD4bsUhLzTboBOT2y0gmS/Ph/ZQ8Gp0sKut1yHC7kKmseC8ei0tKwpJDDPsIrKqAPb6Kluu
	48yYuyibhXYtnzgbIuSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7dS-00018O-QR; Mon, 12 Aug 2019 10:33:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7dI-00017U-L2
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 10:32:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 53F7315AB;
 Mon, 12 Aug 2019 03:32:54 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A1D193F706;
 Mon, 12 Aug 2019 03:32:53 -0700 (PDT)
Date: Mon, 12 Aug 2019 11:32:48 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH] firmware: arm_scmi: Eliminate local db variable in
 SCMI_PERF_FC_RING_DB
Message-ID: <20190812103246.GA28585@e107155-lin>
References: <20190810044910.114015-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190810044910.114015-1-natechancellor@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_033256_737330_47E2DB20 
X-CRM114-Status: GOOD (  14.80  )
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
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 09:49:10PM -0700, Nathan Chancellor wrote:
> clang warns four times:
>
> drivers/firmware/arm_scmi/perf.c:320:24: warning: variable 'db' is
> uninitialized when used within its own initialization [-Wuninitialized]
>                 SCMI_PERF_FC_RING_DB(db, 64);
>                 ~~~~~~~~~~~~~~~~~~~~~^~~~~~~
> drivers/firmware/arm_scmi/perf.c:300:31: note: expanded from macro
> 'SCMI_PERF_FC_RING_DB'
>         struct scmi_fc_db_info *db = doorbell;          \
>                                 ~~   ^~~~~~~~
>
> This happens because the doorbell identifier becomes db after
> preprocessing:
>
>         if (db->width == 1)
>                 do {
>                         u8 val = 0;
>                         struct scmi_fc_db_info *db = db;
>                         if (db->mask)
>                                 val = ioread8(db->addr) & db->mask;
>                         iowrite8((u8)db->set | val, db->addr);
>                 } while (0);
>
> We could swap the doorbell and db identifiers within the macro and that
> would resolve the issue; however, there doesn't appear to be a good
> reason for having two copies of the same variable. Eliminate the one in
> the do while loop to prevent this warning and make the code clearer.
>

I originally had exactly what we will after this patch applied. I think
one of the tool complained about argument 'db' reused in the macro
might have possible side-effects. That's the reason I moved it. I will
dig it up and fold this in the original patch as before.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
