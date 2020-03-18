Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EDB9189588
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 07:03:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/DBGmQMJPMteLXylKHXTQzML2zzU1eWvIdbjBhviEho=; b=eBZWuY7ZzFMeas
	wGf4OrADPd/i1l8xcyMwuW/XgucRVj5rolv7QYu3HUMtom9FSjzy3fCgbmgP13ttbhWWMF6oaODbX
	D5mmqqsQ7Ix/hck2L531UhlOkF0VR3DINvU5mfq+ZmqLmnoK5QJCGmCdZvRWjXvf0qlnMBKWcl+Rw
	fjat1ymhsvwohLZtNbN8pU8HqkX3EPOPsiIX6d3UY+UFYBJsaouCzfbwvSon5yXDVAhliBZhLQnen
	Wcsl8NzD6iOw1Mnajz/yZnI+Fiqu09983YVebgBgQc0uRB85ad+VcPdGfsSUod9xbHbnPMBVi6/Ls
	r4oEITe1Ev56CNgBhc/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jERnO-0005dB-FU; Wed, 18 Mar 2020 06:03:14 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jERnE-0005bx-Gg; Wed, 18 Mar 2020 06:03:05 +0000
X-UUID: 0010e68ef9d542c4a1e19e54408ef303-20200317
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=JtfsImJ1VhBceXif49tzk/48LaZcVQ1FVbSnBovfdT8=; 
 b=lkfUPx7g/8ZbGbhJ0ml3nUUU84sJF8s40F748F1YqvxvRENnG6VQ28Jss4VnhdnvKJNiFJAamenKri+7x95wDhVVt3tmDwLCnsMJYaQ3imIVTXO6aG3uRNoOY0ORo4MuIth6ti1ye759IJ7r5JWhp9zE7cUJ8hrJnWiJ1HyHLak=;
X-UUID: 0010e68ef9d542c4a1e19e54408ef303-20200317
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1401561184; Tue, 17 Mar 2020 22:03:01 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 17 Mar 2020 23:02:59 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Mar 2020 14:00:40 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 18 Mar 2020 14:03:37 +0800
Message-ID: <1584511378.14250.55.camel@mtksdccf07>
Subject: Re: [SPAM]Re: [PATCH v6 3/7] scsi: ufs: introduce common delay
 function
From: Stanley Chu <stanley.chu@mediatek.com>
To: Bart Van Assche <bvanassche@acm.org>
Date: Wed, 18 Mar 2020 14:02:58 +0800
In-Reply-To: <b7a6045e-9615-0cd2-9812-2871bf9ba44c@acm.org>
References: <20200316085303.20350-1-stanley.chu@mediatek.com>
 <20200316085303.20350-4-stanley.chu@mediatek.com>
 <fdf91490-9c7d-df34-1c1f-e03e12855378@acm.org>
 <1584404000.14250.28.camel@mtksdccf07>
 <b7a6045e-9615-0cd2-9812-2871bf9ba44c@acm.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_230304_568610_5FEF7174 
X-CRM114-Status: GOOD (  22.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-scsi@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>, andy.teng@mediatek.com,
 jejb@linux.ibm.com, chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, avri.altman@wdc.com, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, asutoshd@codeaurora.org,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bart,

On Mon, 2020-03-16 at 20:59 -0700, Bart Van Assche wrote:
> On 2020-03-16 17:13, Stanley Chu wrote:
> > On Mon, 2020-03-16 at 09:23 -0700, Bart Van Assche wrote:
> >> On 3/16/20 1:52 AM, Stanley Chu wrote:
> >>> +void ufshcd_wait_us(unsigned long us, unsigned long tolerance, bool can_sleep)
> >>> +{
> >>> +	if (!us)
> >>> +		return;
> >>> +
> >>> +	if (us < 10 || !can_sleep)
> >>> +		udelay(us);
> >>> +	else
> >>> +		usleep_range(us, us + tolerance);
> >>> +}
> >>> +EXPORT_SYMBOL_GPL(ufshcd_wait_us);
> >>
> >> I don't like this function because I think it makes the UFS code harder 
> >> to read instead of easier. The 'can_sleep' argument is only set by one 
> >> caller which I think is a strong argument to remove that argument again 
> >> and to move the code that depends on that argument from the above 
> >> function into the caller. Additionally, it is not possible to comprehend 
> >> what a ufshcd_wait_us() call does without looking up the function 
> >> definition to see what the meaning of the third argument is.
> >>
> >> Please drop this patch.
> > 
> > Thanks for your review and comments.
> > 
> > If the problem is the third argument 'can_sleep' which makes the code
> > not be easily comprehensible, how about just removing 'can_sleep' from
> > this function and keeping left parts because this function provides good
> > flexibility to users to choose udelay or usleep_range according to the
> > 'us' argument?
> 
> Hi Stanley,
> 
> I think that we need to get rid of 'can_sleep' across the entire UFS
> driver. As far as I can see the only context from which 'can_sleep' is
> set to true is ufshcd_host_reset_and_restore() and 'can_sleep' is set to
> true because ufshcd_hba_stop() is called with a spinlock held. Do you
> agree that it is wrong to call udelay() while holding a spinlock() and
> that doing so has a bad impact on the energy consumption of the UFS
> driver?

Thanks for your positive suggestion.

Indeed using udelay() with spinlock held may have performance or power
consumption concerns. However the concern in ufshcd_hba_stop() could be
ignored in most cases since the execution period of changing bit 0 in
REG_CONTROLLER_ENABLE from 1 to 0 shall be very fast. In my local
environment, it could have only several 'ns' latency thus udelay() was
never executed during the stress test. The delay here may be required
for rare cases that host is under an abnormal state.


> Has it already been considered to use another mechanism to
> serialize REG_CONTROLLER_ENABLE changes, e.g. a mutex?

I think mutex is not suitable for REG_CONTROLLER_ENABLE case because
stopping host (by what ufshcd_hba_stop does) will reset doorbell bits in
the same time by host, and those doorbell bits are looked up by UFS
interrupt routine for request completion flow as well.

I agree that "can_sleep" can be improved and may have other optimized
way but this is beyond this patch set. I would like to remove the
"can_sleep" related modification from this patch set first.

Thanks,
Stanley Chu
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
