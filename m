Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C0412E323
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 07:39:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=br4g/HzJebjEgl26Qq35+NmTAXtQStQ6Hu7hUZE6r00=; b=sOkr8jI5v1Zjpy
	gm95BNiiKlgux0WFc6ixihUdWdaZ3xbJwoq6X6gGidyzqJenxKmv/ZlumHQyI4M3yYhg7K9N4/n7O
	KzNBe30DGnRJzTbgabRNA4vvM4xghQdek1lLQ97+ZfpUxvQIxbRREKsoDzk1CveQsn+s589R1VX0V
	N3JBdxmkCtItHHpdoiSuxfFAJGRDKiuROupMPgoQjPPeSKCHL9ZbK8l5B+8HBo3VTGZuDAOlxZjd/
	G4GcFUNtCCRvOVxJKYCsb8HrEFxaBos2hl1P71hQIolDh6b8DZlOI9WYPBVPd+KorCN4dBviDLFcQ
	yhEHcDj0CqtIwKSPGfIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imu8Q-0000Tq-16; Thu, 02 Jan 2020 06:39:06 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imu8C-0000SL-2x; Thu, 02 Jan 2020 06:38:53 +0000
X-UUID: c8792bb17f1d44fb90064a49e5cb4cef-20200101
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=EY8CHJ1MOwpTVq0/F8e5ITYSow6Z2y2qYGrDALgu+g0=; 
 b=pJXkWvF37dqw5HMuhYArqf40LDfY6vEeWuJv+6ij/MSLg4rCvjnOYACql3gZWmbFBPpxGhzMQ05Xs8LfANxbX8hIGahW42esE5XHwspiatuUM/0vyxW/2ox/jcKFz2WOPy4798wqBx/YPXUyq/gfzeljK/wB41Qx8+X+dD0ZYSM=;
X-UUID: c8792bb17f1d44fb90064a49e5cb4cef-20200101
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1538395788; Wed, 01 Jan 2020 22:38:48 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 1 Jan 2020 22:39:09 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 Jan 2020 14:37:59 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 2 Jan 2020 14:38:03 +0800
Message-ID: <1577947124.13164.75.camel@mtkswgap22>
Subject: Re: [PATCH v1 1/2] scsi: ufs: set device as default active power
 mode during initialization only
From: Stanley Chu <stanley.chu@mediatek.com>
To: Can Guo <cang@codeaurora.org>
Date: Thu, 2 Jan 2020 14:38:44 +0800
In-Reply-To: <44393ed9ff3ba9878bae838307e7eec0@codeaurora.org>
References: <1577693546-7598-1-git-send-email-stanley.chu@mediatek.com>
 <1577693546-7598-2-git-send-email-stanley.chu@mediatek.com>
 <fd129b859c013852bd80f60a36425757@codeaurora.org>
 <1577754469.13164.5.camel@mtkswgap22>
 <836772092daffd8283a97d633e59fc34@codeaurora.org>
 <1577766179.13164.24.camel@mtkswgap22>
 <1577778290.13164.45.camel@mtkswgap22>
 <44393ed9ff3ba9878bae838307e7eec0@codeaurora.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 6DF2DA8F51F0E1171061F223F8110C3970D122A74F33AAB3D5F7588FEE5DB6412000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_223852_138561_5F280E36 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alim.akhtar@samsung.com, beanhuo@micron.com, bvanassche@acm.org,
 linux-scsi@vger.kernel.org, peter.wang@mediatek.com, cc.chou@mediatek.com,
 andy.teng@mediatek.com, jejb@linux.ibm.com, chun-hung.wu@mediatek.com,
 ron.hsu@mediatek.com, avri.altman@wdc.com, linux-mediatek@lists.infradead.org,
 linux-scsi-owner@vger.kernel.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org, martin.petersen@oracle.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, subhashj@codeaurora.org, pedrom.sousa@synopsys.com,
 asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Can,

On Tue, 2019-12-31 at 16:35 +0800, Can Guo wrote:

> Hi Stanley,
> 
> I missed this mail before I hit send. In current code, as per my 
> understanding,
> UFS device's power state should be Active after ufshcd_link_startup() 
> returns.
> If I am wrong, please feel free to correct me.
> 

Yes, this assumption of ufshcd_probe_hba() is true so I will drop this
patch.
Thanks for remind.

> Due to you are almost trying to revert commit 7caf489b99a42a, I am just 
> wondering
> if you encounter failure/error caused by it.

Yes, we actually have some doubts from the commit message of "scsi: ufs:
issue link startup 2 times if device isn't active"

If we configured system suspend as device=PowerDown/Link=LinkDown mode,
during resume, the 1st link startup will be successful, and after that
device could be accessed normally so it shall be already in Active power
mode. We did not find devices which need twice linkup for normal work.

And because the 1st linkup is OK, the forced 2nd linkup by commit "scsi:
ufs: issue link startup 2 times if device isn't active" leads to link
lost and finally the 3rd linkup is made again by retry mechanism in
ufshcd_link_startup() and be successful. So a linkup performance issue
is introduced here: We actually need one-time linkup only but finally
got 3 linkup operations.

According to the UFS spec, all reset types (including POR and Host
UniPro Warm Reset which both may happen in above configurations) other
than LU reset, UFS device power mode shall return to Sleep mode or
Active mode depending on bInitPowerMode, by default, it's Active mode.

So we are curious that why enforcing twice linkup is necessary here?
Could you kindly help us clarify this?

If anything wrong in above description, please feel free to correct me.

> 
> Happy new year to you too!
> 
> Thanks,
> 
> Can Guo

Thanks,

Stanley

> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
