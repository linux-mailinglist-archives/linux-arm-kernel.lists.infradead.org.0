Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B477BF784C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 17:04:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HZSqehar7OSWRhc+8FKM3wG+1g2liofIhg5e96Li27Y=; b=QVfg9XRwCiXObl
	NCaWwJ5xGKddKBzFiLNd6Yr3258DgeW2PnxsC8dt/2d97OMEJJSFeMDTI3BojGEZUAqYb7TgcLcE1
	ts8jtmZVhFrBJxaQ65ZNPSdab3ICCwXGmGYIr4EKA/7DL8yRagbIXWgtMcxwgDNGPc5U8MsNuXpU0
	O3wftE84nCpCt8+g6NFZgI7cwuJayVRND6oT2vODsrcNI1vzI9zGIz+Vs4Q6BWn6aAocdlSiNbp72
	h0hHtgosYhKIQsFW+AgZS9Wb01XyKn4JyMDtv5fvniMKCWdmMYTj9z03n/zJsYIkSPPGdiSTFbi4F
	3/mmnLHTE1nr59VLAxCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUCAp-00024q-TN; Mon, 11 Nov 2019 16:04:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUCAh-000244-Ey
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 16:04:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7FEDE31B;
 Mon, 11 Nov 2019 08:04:06 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B2A9B3F534;
 Mon, 11 Nov 2019 08:04:05 -0800 (PST)
Date: Mon, 11 Nov 2019 16:04:03 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Robin Murphy <robin.murphy@arm.com>,
 Zheng Yongjun <zhengyongjun3@huawei.com>
Subject: Re: [PATCH] firmware: arm_scmi: Remove set but not used variable 'val'
Message-ID: <20191111160403.GB10020@bogus>
References: <20191110103010.117132-1-zhengyongjun3@huawei.com>
 <64a46661-40a6-eb7e-d225-1085b86572d0@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <64a46661-40a6-eb7e-d225-1085b86572d0@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_080407_542876_89006031 
X-CRM114-Status: GOOD (  17.27  )
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
Cc: Hulk Robot <hulkci@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 03:49:55PM +0000, Robin Murphy wrote:
> On 10/11/2019 10:30, Zheng Yongjun wrote:
> > Fixes gcc '-Wunused-but-set-variable' warning:
> >
> > drivers/firmware/arm_scmi/perf.c: In function scmi_perf_fc_ring_db:
> > drivers/firmware/arm_scmi/perf.c:323:7: warning: variable val set but not used [-Wunused-but-set-variable]
> >
> > val is never used, so remove it.
> >
> > Reported-by: Hulk Robot <hulkci@huawei.com>
> > Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
> > ---
> >   drivers/firmware/arm_scmi/perf.c | 4 +---
> >   1 file changed, 1 insertion(+), 3 deletions(-)
> >
> > diff --git a/drivers/firmware/arm_scmi/perf.c b/drivers/firmware/arm_scmi/perf.c
> > index 4a8012e3cb8c..efa98d2ee045 100644
> > --- a/drivers/firmware/arm_scmi/perf.c
> > +++ b/drivers/firmware/arm_scmi/perf.c
> > @@ -319,10 +319,8 @@ static void scmi_perf_fc_ring_db(struct scmi_fc_db_info *db)
> >   		SCMI_PERF_FC_RING_DB(64);
> >   #else
> >   	{
> > -		u64 val = 0;
> > -
> >   		if (db->mask)
> > -			val = ioread64_hi_lo(db->addr) & db->mask;
> > +			ioread64_hi_lo(db->addr) & db->mask;
> >   		iowrite64_hi_lo(db->set, db->addr);
>
> FWIW, compared to the SCMI_PERF_FC_RING_DB() macro, this looks like the
> wrong "fix".
>

Yes, no idea how I didn't spot this earlier. That could be because this
was just added to fix 32-bit build and wasn't tested.

The below patch should fix the warning and also fixes the real bug.

Regards,
Sudeep

diff --git i/drivers/firmware/arm_scmi/perf.c w/drivers/firmware/arm_scmi/perf.c
index 4a8012e3cb8c..601af4edad5e 100644
--- i/drivers/firmware/arm_scmi/perf.c
+++ w/drivers/firmware/arm_scmi/perf.c
@@ -323,7 +323,7 @@ static void scmi_perf_fc_ring_db(struct scmi_fc_db_info *db)

                if (db->mask)
                        val = ioread64_hi_lo(db->addr) & db->mask;
-               iowrite64_hi_lo(db->set, db->addr);
+               iowrite64_hi_lo(db->set | val, db->addr);
        }
 #endif
 }


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
