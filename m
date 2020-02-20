Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57389165ED3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 14:31:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YrYS6j0GNvuOKGMDgH/mr8DzLKoAKZ+8V1zNGCv5hFE=; b=DzX8SED5zK9RYn
	XkHWqNkuwKm4CRQVhCJE0fIF4WKO45I0O50FpMyp/Ci5G4JEFhepun5MpEf4sEjHJmhVDflYejfhB
	SBAMsol1wmK3DJS6Unu9WSCTRoW6rh51LhGQ4iavC/64qbLU6ojB5OaiIHD09WuPla4+NU+YB9CoE
	+7Tabst2hwbftd4dvjYHg3/gsLkpNTuNCDpA3KMi7uZawJjej9dDJzq5MziN061bjexvWbT1va+iX
	EjKmOMXxPDDFORtqJTjc0Nqq+QSS5/UONCc9f3UslnDLoIHjsUQ9sq0nt1+Fn1SH0yUjnieZlJB1R
	1g/CWC8RwanjBhZqfrWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4lv1-0007bA-9N; Thu, 20 Feb 2020 13:31:07 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4luq-0007WW-HE; Thu, 20 Feb 2020 13:30:58 +0000
X-UUID: 5077218484e34b079bcc58cbb3197cb3-20200220
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=djf6C0Eeez3RoBVkU7r/xsvLyT1pkg0ulRptnAvpIIw=; 
 b=pKCHkOqttH21TlFjUvPYdX4gP4MsLYjUlXJZ4qiGeJo9YQmACakGqJB0nOloXDd/Ag3dD53pWbyk9ggCo+FJNhVcfBu3IVFdrYiV0W4fhUUmNh6It2eCQMj2BGHTC1zPob6Wp/abAa9q/4V09OZlUTONwEf6TnGVv4SaKtTmUdk=;
X-UUID: 5077218484e34b079bcc58cbb3197cb3-20200220
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 518899328; Thu, 20 Feb 2020 05:30:50 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 20 Feb 2020 05:30:48 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 20 Feb 2020 21:28:54 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 20 Feb 2020 21:31:13 +0800
Message-ID: <1582205440.26304.50.camel@mtksdccf07>
Subject: Re: [PATCH v1 1/2] scsi: ufs: add required delay after gating
 reference clock
From: Stanley Chu <stanley.chu@mediatek.com>
To: Can Guo <cang@codeaurora.org>
Date: Thu, 20 Feb 2020 21:30:40 +0800
In-Reply-To: <bbb0b0637d9667d4691a9a28f9988dea@codeaurora.org>
References: <20200217093559.16830-1-stanley.chu@mediatek.com>
 <20200217093559.16830-2-stanley.chu@mediatek.com>
 <c6874825dd60ea04ed401fbd1b5cb568@codeaurora.org>
 <1581945168.26304.4.camel@mtksdccf07>
 <e518c4d1d94ec15e9c4c31c34a9e42d1@codeaurora.org>
 <1581946449.26304.15.camel@mtksdccf07>
 <56c1fc80919491d058d904fcc7301835@codeaurora.org>
 <a8cd5beee0a1e12a40da752c6cd9b5de@codeaurora.org>
 <1582103495.26304.42.camel@mtksdccf07>
 <bbb0b0637d9667d4691a9a28f9988dea@codeaurora.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_053056_583042_F8B828F7 
X-CRM114-Status: GOOD (  21.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: chun-hung.wu@mediatek.com, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, andy.teng@mediatek.com, jejb@linux.ibm.com,
 peter.wang@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, avri.altman@wdc.com,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, beanhuo@micron.com,
 bvanassche@acm.org, hongwus@codeaurora.org,
 Asutosh Das <asutoshd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Can,

On Wed, 2020-02-19 at 18:33 +0800, Can Guo wrote:
> Hi Stanley,
> 
> On 2020-02-19 17:11, Stanley Chu wrote:
> > Hi Can,
> > 
> > On Wed, 2020-02-19 at 10:35 +0800, Can Guo wrote:
> > 
> >> Since we all need this delay here, how about put the delay in the
> >> entrence of ufshcd_setup_clocks(), before vops_setup_clocks()?
> >> If so, we can remove all the delays we added in our vops since the
> >> delay anyways delays everything inside ufshcd_setup_clocks().
> >> 
> > 
> > Always putting the delay in the entrance of ufshcd_setup_clocks() may
> > add unwanted delay for vendors, just like your current implementation,
> > or some other vendors who do not want to disable the reference clock.
> > 
> > I think current patch is more reasonable because the delay is applied 
> > to
> > clock only named as "ref_clk" specifically.
> > 
> > If you needs to keep "ref_clk" in DT, would you consider to remove the
> > delay in your ufs_qcom_dev_ref_clk_ctrl() and let the delay happens via
> > common ufshcd_setup_clocks() only? However you may still need delay if
> > call path comes from ufs_qcom_pwr_change_notify().
> > 
> > What do you think?
> > 
> 
> I agree current change is more reasonable from what it looks, but the 
> fact
> is that I canont remove the delay in ufs_qcom_dev_ref_clk_ctrl() even 
> with
> this change. On our platforms, ref_clk in DT serves multipule purposes,
> the ref_clk provided to UFS device is actually controlled in
> ufs_qcom_dev_ref_clk_ctrl(), which comes before where this change kicks 
> start,
> so if I remove the delay in ufs_qcom_dev_ref_clk_ctrl(), this change 
> cannot
> provide us the correct delay before gate the ref_clk provided to UFS 
> device.

> > Always putting the delay in the entrance of ufshcd_setup_clocks() may
> > add unwanted delay for vendors, just like your current implementation,
> > or some other vendors who do not want to disable the reference clock.
> 
> I meant if we put the delay in the entrance, I will be able to remove
> the delay in ufs_qcom_dev_ref_clk_ctrl(). Meanwhile, we can add proper
> checks before the delay to make sure it is initiated only if ref_clk 
> needs
> to be disabled, i.e:
> 
> if(!on && !skip_ref_clk && hba->dev_info.clk_gating_wait_us)
>      usleep_range();
> 
> Does this look better to you?

Firstly thanks so much for above details.

Again this statement may also add unwanted delay if some other vendors
does not have "ref_clk" in DT or they don't/can't disable the reference
clock provided to UFS device.

> 
> Anyways, we will see regressions with this change on our platforms, can 
> we
> have more discussions before get it merged? It should be OK if you go 
> with
> patch #2 alone first, right? Thanks.

Now the fact is that this change will impact your flow and it seems no
solid conclusion yet. Sure I could drop patch #1 and submit patch #2
only first : )

Thanks,
Stanley Chu



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
