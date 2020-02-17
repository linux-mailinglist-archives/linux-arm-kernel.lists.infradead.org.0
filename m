Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E4416139D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 14:34:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=077Td9HlJnbjSFKIyI8MvhaGijG9Oy0/tsrdVtCIchg=; b=ar3NOtV/yDHtWx
	a1s5DdhqWH6+7+HHhlXmUQciJOPX81tQj2svvhHXZDZRB1En4I7GA+abKQpULb4ZQVEk/GpDiXjP7
	gbB8Zpc4BWkfW1TOOv1nvA5tPNLFndYSn00KHWveLz1JqRhcH946agJ0WMlKMsrEVj6B56ORZ6Wbp
	cUbJqbWKX899RAYkI9JEy2mN4khymPLyWGiyhyfNRpP5WDq6/a0UkZriRxNvgcfyOnsF182l1S3ye
	kBGQdvd6AICrAvRRKFKi/mh3a/Vhv2J4sfrpLPU2odUKcF2wMxNIh7AU1Oq37Ju69WtEiDuPZDDfO
	AHxFa6sP71Qh7PeOABnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3gXe-0000js-N0; Mon, 17 Feb 2020 13:34:30 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3gXQ-0000iE-QI; Mon, 17 Feb 2020 13:34:18 +0000
X-UUID: f94a4cd370c14d6388e0c9b079a79b60-20200217
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=nY3Ke1klULAjNa7h8M2psxk/X6t7HIt3248sL2BxSR4=; 
 b=qnAHORGVI3aJQur92wg0N4iIHjRBAJ2WyAkPw72wSAFmFZixNwIeseOxTycH74gJfPzt0N//F7o/sRpOusTvI2sMaH3sc+BzSKd9TfOoAHcwWbWxADu12PsxQT3f3Eb3qWJWq4lI/O7FNO672Hl2b44/oW/9oCbc6oeVNaq2JVI=;
X-UUID: f94a4cd370c14d6388e0c9b079a79b60-20200217
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1012253574; Mon, 17 Feb 2020 05:34:12 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Feb 2020 05:34:10 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Feb 2020 21:32:35 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 17 Feb 2020 21:33:54 +0800
Message-ID: <1581946449.26304.15.camel@mtksdccf07>
Subject: Re: [PATCH v1 1/2] scsi: ufs: add required delay after gating
 reference clock
From: Stanley Chu <stanley.chu@mediatek.com>
To: Can Guo <cang@codeaurora.org>
Date: Mon, 17 Feb 2020 21:34:09 +0800
In-Reply-To: <e518c4d1d94ec15e9c4c31c34a9e42d1@codeaurora.org>
References: <20200217093559.16830-1-stanley.chu@mediatek.com>
 <20200217093559.16830-2-stanley.chu@mediatek.com>
 <c6874825dd60ea04ed401fbd1b5cb568@codeaurora.org>
 <1581945168.26304.4.camel@mtksdccf07>
 <e518c4d1d94ec15e9c4c31c34a9e42d1@codeaurora.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 2685DCB7C055937DC0B6D9BC68FB0DDE9E72F441D9E0C6E1EBB4875D879A48E92000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_053416_890729_B03C4F31 
X-CRM114-Status: GOOD (  15.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 andy.teng@mediatek.com, jejb@linux.ibm.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, avri.altman@wdc.com,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, asutoshd@codeaurora.org,
 bvanassche@acm.org, linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Can,

On Mon, 2020-02-17 at 21:22 +0800, Can Guo wrote:
> On 2020-02-17 21:12, Stanley Chu wrote:
> > Hi Can,
> > 
> > 
> >> >  			} else if (!on && clki->enabled) {
> >> >  				clk_disable_unprepare(clki->clk);
> >> > +				wait_us = hba->dev_info.clk_gating_wait_us;
> >> > +				if (ref_clk && wait_us)
> >> > +					usleep_range(wait_us, wait_us + 10);
> >> 
> >> Hi St,anley,
> >> 
> >> If wait_us is 1us, it would be inappropriate to use usleep_range() 
> >> here.
> >> You have checks of the delay in patch #2, but why it is not needed 
> >> here?
> >> 
> >> Thanks,
> >> Can Guo.
> > 
> > You are right. I could make that delay checking as common function so 
> > it
> > can be used here as well to cover all possible values.
> > 
> > Thanks for suggestion.
> > Stanley
> 
> Hi Stanley,
> 
> One more thing, as in patch #2, you have already added delays in your
> ufshcd_vops_setup_clocks(OFF, PRE_CHANGE) path, plus this delay here,
> don't you delay for 2*bRefClkGatingWaitTime in ufshcd_setup_clocks()?
> As the delay added in your vops also delays the actions of turning
> off all the other clocks in ufshcd_setup_clocks(), you don't need the
> delay here again, do you agree?

MediaTek driver is not using reference clocks named as "ref_clk" defined
in device tree, thus the delay specific for "ref_clk" in
ufshcd_setup_clocks() will not be applied in MediaTek platform.

This patch is aimed to add delay for this kind of "ref_clk" used by any
future vendors.

Anyway thanks for the reminding : )

> 
> Thanks,
> Can Guo.


Thanks,
Stanley

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
