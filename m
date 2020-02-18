Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E7E162148
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 08:03:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uty3s1hm0pwpa+3WdEoExMHQC6lspBqpayRZGxIZMJI=; b=Nrcm+6BMA0Wtrj
	7WgnXZAAOJKIT9lF7t4LxBlPrRlWsqj2sd/7WVYb81N5Q8xbcLc1tEcdlFeFFykMWPM6Ud1BB5GFs
	vUK7ijqM4XCTEf338v+eAKIXFn39qsWEiPDZCeWXofe359A5IJzYkX5s4sU1KVG7U8QCmKNh2CVmO
	N1lQN0geuDc92GBy/tJJTrVHhSDaecp0JJ0o/uAjbL0xA6XztF2lwpvCUHBVAhs2gABR4awtOoEB/
	gLeHaxS8n2oxZ0WxLhJ9bJC/HdC9nnNZbDQDU4UkYuLPrLqNJGRSoPViUsVl7pbsGLpwWydpcR4Ad
	jJTl9aFddk2Lb64hnGIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3wuE-0000mA-Sr; Tue, 18 Feb 2020 07:02:54 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3wu6-0000lB-WF; Tue, 18 Feb 2020 07:02:48 +0000
X-UUID: 81e7c4f1824642d6b337fce76713c2d1-20200217
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=SfQLOOesViht8zuhVZth6gVEBbimYGDRoLRh1mE3SdQ=; 
 b=hGs1vrG84S+Pz2nTgA2P2nTRze0MIZaTGrFJUASFtwVira+GpWynxZrNlUhlyzdyX37T1sNlrykeNd83BAhFNIDWiBaoMaA4M91p+CZ402Oj3EKvMgJoLfqxKtKJVhpoNA6lWhW7M6QYf1SzhCOovGtJjlL4XfbgyytIJ7ssWVY=;
X-UUID: 81e7c4f1824642d6b337fce76713c2d1-20200217
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1241533735; Mon, 17 Feb 2020 23:02:43 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Feb 2020 23:02:40 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 18 Feb 2020 15:00:11 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 18 Feb 2020 15:02:11 +0800
Message-ID: <1582009359.26304.29.camel@mtksdccf07>
Subject: Re: [PATCH v3 1/2] scsi: ufs: pass device information to
 apply_dev_quirks
From: Stanley Chu <stanley.chu@mediatek.com>
To: Can Guo <cang@codeaurora.org>
Date: Tue, 18 Feb 2020 15:02:39 +0800
In-Reply-To: <2a8fc44914b7ed8777a4a99ba6b8647a@codeaurora.org>
References: <1578726707-6596-1-git-send-email-stanley.chu@mediatek.com>
 <1578726707-6596-2-git-send-email-stanley.chu@mediatek.com>
 <2a8fc44914b7ed8777a4a99ba6b8647a@codeaurora.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 73E60B1B862E9A9A7A34435771FBADD9483B4202554A334657B8DC4403A419B82000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_230247_047711_C5281745 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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


> Hi Stanley,
> 
> Is this series merged? If no, would you mind moving
> ufshcd_vops_apply_dev_quirks(hba, card); a little bit? Like below.
> 
> @@ -6852,14 +6852,14 @@ static void ufshcd_tune_unipro_params(struct 
> ufs_hba *hba)
>                  ufshcd_tune_pa_hibern8time(hba);
>          }
> 
> +       ufshcd_vops_apply_dev_quirks(hba, card);
> +
>          if (hba->dev_quirks & UFS_DEVICE_QUIRK_PA_TACTIVATE)
>                  /* set 1ms timeout for PA_TACTIVATE */
>                  ufshcd_dme_set(hba, UIC_ARG_MIB(PA_TACTIVATE), 10);
> 
> In this way, vendor codes have a chance to modify the dev_quirks
> before ufshcd_tune_unipro_params() does the rest of its job.
> 

This patch has been merged to 5.6-rc1.

Basically I am fine with your proposal. But if you need to move it to
new mentioned position, our apply_dev_quirks callback also need
corresponding change so it might need our co-works : )

For example, you could just post your proposed changes and then we would
provide corresponding change as soon as possible?

Besides, I would like to remind that allowing vendor to "fix" device
quirks in advance imply that current common device quirks have some
problems? If so, would you consider to fix common device quirks instead?


> Thanks,
> Can Guo.

Thanks,
Stanley Chu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
