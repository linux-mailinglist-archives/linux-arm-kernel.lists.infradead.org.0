Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8BD12D56D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 02:08:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uvo9yIqKy891eszLMJWlembBTDataGUUzTFCrVXqNO8=; b=PCQOsMENDXjbb3
	Zl/BRni90fEZnjMq07oI0YB9TVH80inbjolXCMS0kWO64wj5c3Ql1T8KJyi6Y35UJJ3ekNmNeaR/c
	JdiRlMEWCsDnyzAAZ4JwuLsnEXtqifUI2FcqZgfZnhC/ZlIVsjcGS/qYPdMqTcudMtcovPcOnAWLe
	M2hDVq7iXa8oX7WGNBp0u/yAPm/gHo+2f01mzlJaU8kPoLb8+jwtKMgDqcqwpKBGIo1XCeN3gQDTD
	A9bh7VzcJIurHf48z9yx+94/uiwQ/3ZvXDUwXLfsyabBzAMAhbjntDwYTHXctg2AZhbUeWkjRHetJ
	3Wyi6Gbs0MjvdbDR1gaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im614-0005ng-TI; Tue, 31 Dec 2019 01:08:10 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im60t-0005lg-Fl; Tue, 31 Dec 2019 01:08:00 +0000
X-UUID: f991c476c9dc47cbb586414859d8b7d4-20191230
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=1DALIjMAa3VPAHp/FXzxCF3UEMNVielZSGUhpi/fyng=; 
 b=ZEFc5YVkfvPBqZykwQQzGG+GCahQGaCHadcVU9sJzVjusN32npqTX3MgSbLcKHO7lmsx6ri3uXnOSC/qZctadWZB8UzF3+iMmqkOkw1Zc4crBPQW/RJu6DtdqSU1ZGZg5CLWdyeFiz8TniwSEdjhQZNe5mR5590Ue08DLtsFWWE=;
X-UUID: f991c476c9dc47cbb586414859d8b7d4-20191230
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1059180248; Mon, 30 Dec 2019 17:07:52 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 30 Dec 2019 17:08:08 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 31 Dec 2019 09:07:03 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 31 Dec 2019 09:08:13 +0800
Message-ID: <1577754469.13164.5.camel@mtkswgap22>
Subject: Re: [PATCH v1 1/2] scsi: ufs: set device as default active power
 mode during initialization only
From: Stanley Chu <stanley.chu@mediatek.com>
To: <asutoshd@codeaurora.org>
Date: Tue, 31 Dec 2019 09:07:49 +0800
In-Reply-To: <fd129b859c013852bd80f60a36425757@codeaurora.org>
References: <1577693546-7598-1-git-send-email-stanley.chu@mediatek.com>
 <1577693546-7598-2-git-send-email-stanley.chu@mediatek.com>
 <fd129b859c013852bd80f60a36425757@codeaurora.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_170759_557557_F9ABACAE 
X-CRM114-Status: UNSURE (   6.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-scsi-owner@vger.kernel.org, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, subhashj@codeaurora.org, jejb@linux.ibm.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, avri.altman@wdc.com,
 cang@codeaurora.org, linux-mediatek@lists.infradead.org,
 peter.wang@mediatek.com, alim.akhtar@samsung.com, andy.teng@mediatek.com,
 matthias.bgg@gmail.com, beanhuo@micron.com, pedrom.sousa@synopsys.com,
 linux-arm-kernel@lists.infradead.org, bvanassche@acm.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Asutosh,


> I see that there's a get_sync done before.
> So, how would the suspend be triggered in that case?
> 

Would you mean pm_runtime_get_sync() in ufshcd_init()?
If yes, it will only happen during initialization.

The runtime resume path may go through ufshcd_probe_hba() without
ufshcd_init() invoked before, for example,

ufshcd_probe_hba+0xe10/0x1874
ufshcd_host_reset_and_restore+0x114/0x1a4
ufshcd_resume+0x1d0/0x480
ufshcd_runtime_resume+0x40/0x188
ufshcd_pltfrm_runtime_resume+0x10/0x18
pm_generic_runtime_resume+0x24/0x44
__rpm_callback+0x100/0x250
rpm_resume+0x548/0x7c8
rpm_resume+0x2b4/0x7c8
rpm_resume+0x2b4/0x7c8
rpm_resume+0x2b4/0x7c8
pm_runtime_work+0x9c/0xa0
process_one_work+0x210/0x4e0
worker_thread+0x390/0x520
kthread+0x154/0x18c
ret_from_fork+0x10/0x18

This case happens if link is in "off" state while resume.

Thanks,
Stanley
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
