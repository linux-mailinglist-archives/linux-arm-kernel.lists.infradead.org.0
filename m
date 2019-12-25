Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 285A612A5D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 05:08:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NTuZjQ+qbP1ejgptUpCj+p6sGuPqnw11GQpRBhLgwuE=; b=Ek9oXXnoXZ2uQn
	qVCwq9E35nLcUkts4frU+g7kK6hU30PiHeLinmu/BWPSysySsDdE+35YDVuqp7i41sIuL+OzFz2+T
	j4VIwagwNkzBfsdfd2/2xzbjnE8sg+yq1uHI2TxCPHiFfCAdaSdtywz2WQakFo9b3jxOr3E1vLLUS
	GwXqdvv9iYCDnCZpQAgsB6LZ/TE//0ULa+LjYdpVd5q6EwTdw0TXw1Nf4qT2k0TVYt0DFjSdPh0Bs
	h/h/S+Y8OPG1s1P6ZxMJarbV5IFFkIcTFv12iJJipLvVFc3u1OjI6RcQg15H7ZaQvztMZN4lW6tsp
	cga7gj7aSodEDUeigvHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijxxs-0007QH-PH; Wed, 25 Dec 2019 04:08:04 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijxxh-0007Pm-J6; Wed, 25 Dec 2019 04:07:56 +0000
X-UUID: 19f56466645b48839fe89ca042e80b1d-20191224
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=NIJENyJKlWoqwgHXAL2hevvVed09oj9yO9raXuRmiUo=; 
 b=KJdu55EYy+80qNsVPMOL7NDDG08LDp+O6eYTpnlPC/V+GNUmBvd1jF8+epGwtUDgMsDwmKIWFO1q1vB4vpCNTFlgpuYQHpVWBl0Qkqf4NMqnQJdoROo7h+I/tIMexNOQSwixTQYo9VcC6b6XAWN9zXKUoZTkCDGpsPixO5zHb+g=;
X-UUID: 19f56466645b48839fe89ca042e80b1d-20191224
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 539590126; Tue, 24 Dec 2019 20:07:47 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 24 Dec 2019 20:08:21 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 25 Dec 2019 12:07:14 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 25 Dec 2019 12:07:21 +0800
Message-ID: <1577246863.13056.48.camel@mtkswgap22>
Subject: Re: [PATCH v1 1/2] scsi: ufs: unify scsi_block_requests usage
From: Stanley Chu <stanley.chu@mediatek.com>
To: Bart Van Assche <bvanassche@acm.org>
Date: Wed, 25 Dec 2019 12:07:43 +0800
In-Reply-To: <e9a8fbc0-5f08-75f5-b23b-2bbaa28a6222@acm.org>
References: <1577192466-20762-1-git-send-email-stanley.chu@mediatek.com>
 <1577192466-20762-2-git-send-email-stanley.chu@mediatek.com>
 <e9a8fbc0-5f08-75f5-b23b-2bbaa28a6222@acm.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 9E8AC75994A9931C91CCCF1ABA221DC9F8391A441FA39B78CDE8538966CF3BFE2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_200753_642769_F05214F8 
X-CRM114-Status: UNSURE (   9.18  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 andy.teng@mediatek.com, jejb@linux.ibm.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, avri.altman@wdc.com,
 cang@codeaurora.org, linux-mediatek@lists.infradead.org,
 peter.wang@mediatek.com, alim.akhtar@samsung.com, matthias.bgg@gmail.com,
 pedrom.sousa@synopsys.com, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bart,


> Hi Stanley,
> 
> From the SCSI core:
> 
> void scsi_block_requests(struct Scsi_Host *shost)
> {
> 	shost->host_self_blocked = 1;
> }
> 
> In other words, neither scsi_block_requests() nor
> ufshcd_scsi_block_requests() wait for ongoing ufshcd_queuecommand()
> calls to finish. Is it required to wait for these calls to finish before
> exceptions are handled? If not, can the scsi_block_requests() and
> scsi_unblock_requests() calls be left out? If it is required to wait for
> ongoing ufshcd_queuecommand() calls to finish then I think the
> scsi_block_requests() and scsi_unblock_requests() will have to be
> changed into something else.

ASFAIK, ufshcd_exception_event_handler() is not required to wait for
ongoing ufshcd_queuecommand() calls to finish.

The scsi_block_requests() call here is trying to increase successful
rate of requests sent by ufshcd_exception_event_handler() because
timeout may happen if device is too busy to handle those requests.
Blocking any future incoming requests can help.

As time goes by, actually current UFS driver allows more waiting time by
below changes for ufshcd_exception_event_handler(), and thus the
successful rate shall be raised much nowadays.

- Enlarge QUERY_REQ_TIMEOUT time from 100 ms to 1.5 seconds
- Allow retry if query requests are timed out

Therefore, the scsi_block_requests() call is actually a "helper" to help
ufshcd_exception_event_handler() successful. I think it could be better
kept to make UFS device recover its performance as soon as possible.

> 
> Thanks,
> 
> Bart.

Thanks,
Stanley

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
