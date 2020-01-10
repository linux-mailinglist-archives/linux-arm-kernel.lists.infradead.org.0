Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 571A51367FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 08:09:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uhS8R9lGQQVdKcrlAvbxBOIWOZPkDnK2wGl04cZSzzc=; b=ICr5ONP+EAA6cc
	URqQnjVI95hCzUXwqC5K28ke3x3PlELyu9ojmhYCwod13nikEMU0JnlRx/Gq5ieAktZlkn8z7YhrE
	XDE1iv/a1/is7LoQkkYSxu39RX8ipN8VHvFX8ryUk3VthvZLNgX0ISI+/yP7I8KdGjMruWmnaRyfJ
	xmNiBeMKwOPAHEfnbJeQi6XkVT79HMDMYVHqKHFKE4r2B/+skd//xZJjdFLg5tJGfV7aPJCiO0rV2
	iXnsRq3WMqwNrE0TjBypu3e5hHn5ZigjuGXgzNIDWrbzEDFYcYOYLHIieRxUa+F+Dn6Y6Nk6EbLGt
	XF/kBUqIG7w9d3oxMPXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipoQH-0007Lu-Fj; Fri, 10 Jan 2020 07:09:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipoPY-0006f6-0O; Fri, 10 Jan 2020 07:08:49 +0000
X-UUID: 051adf20a9ad47ed852432d33dddd02c-20200109
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=ffhcrwjsBwsjrgzkid/yOQ1liD4E9HyfxuER96MEH2g=; 
 b=ayGQqiUWEf6Ot02/A+ME7PCtwFS9rvCN3bTRfL5Ubp5cZC6itfr/vewvWrWfJlv4TTranHZvzva+GLM8V2yVLUcmvNhKFD47gN6joQoTzR/sLn2stuPzhKyaHM//434KpARA/T3FXhHRMdIB4lY+HI0yL1LHn78gVvHkIIKVBm0=;
X-UUID: 051adf20a9ad47ed852432d33dddd02c-20200109
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 618961714; Thu, 09 Jan 2020 23:08:44 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 9 Jan 2020 23:09:21 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 10 Jan 2020 15:07:43 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 10 Jan 2020 15:07:04 +0800
Message-ID: <1578640121.17435.7.camel@mtkswgap22>
Subject: Re: [PATCH v2 1/2] scsi: ufs: pass device information to
 apply_dev_quirks
From: Stanley Chu <stanley.chu@mediatek.com>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Date: Fri, 10 Jan 2020 15:08:41 +0800
In-Reply-To: <yq136cnx1yo.fsf@oracle.com>
References: <1578270431-9873-1-git-send-email-stanley.chu@mediatek.com>
 <1578270431-9873-2-git-send-email-stanley.chu@mediatek.com>
 <yq136cnx1yo.fsf@oracle.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_230848_107405_8A901C62 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: bvanassche@acm.org, linux-scsi@vger.kernel.org, andy.teng@mediatek.com,
 jejb@linux.ibm.com, chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, avri.altman@wdc.com, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, beanhuo@micron.com,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Martin,

On Fri, 2020-01-10 at 01:25 -0500, Martin K. Petersen wrote:
> Stanley,
> 
> > Pass UFS device information to vendor-specific variant callback
> > "apply_dev_quirks" because some platform vendors need to know such
> > information to apply special handlings or quirks in specific devices.
> 
> This doesn't compile. You missed adding the additional argument to one
> caller of ufshcd_tune_unipro_params().
> 

Sorry for this. I'll fix it in next version and try to separate vendor's
implementation and common driver to different commits if this is the
root cause of compile issue.

Thanks.
Stanley

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
