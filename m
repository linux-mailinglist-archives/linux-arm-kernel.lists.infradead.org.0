Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E214E137C0B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 08:17:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ELcjcI5zIU4wwE5ICvATMomcNvDs/Wc/dBOzGRb82Q=; b=Ka4rR/NdPSyg9m
	/GSArFvfjkeaTVu7Re0q5/v0436pqp+ibfRUhZH+a2SgYH7ce0QXaxK/JxVn6jc/65NPOx7APcCB2
	Q2EbmJU224cMc/jknIit9TlmIP1cwO/5goLWJbWBT8l9mFZfmiQkUCiht/7Hp+cQsJJOI7BAGDq34
	x9PEqZVN7G+mcMSH61uiwDX9YcwkqRYi/S7+KvsPv9M+sReMJyCRa7b9hnuKeVvzIUXOCiHB4GbmA
	2OSOulNk4sHf8ebqs8gMNdBrNOxHs2T3O73tKfTevDtqRfRfQnQ7ZBf0ADMIhSVD6XwS5Qwk/OdaF
	Uo0W5EBmzG39BB5bdIgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqB1l-0005h8-JK; Sat, 11 Jan 2020 07:17:45 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqB1c-0005fw-Jt; Sat, 11 Jan 2020 07:17:37 +0000
X-UUID: 02f300f8cd1d41a28ead8cf8c50a2012-20200110
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=k/r+E+rZ5TVzR0eoZZhVyF7N7msarS1XBPeVmbXXWk4=; 
 b=ZVBa5wrB4rvX+2AEe5YsQqcasDmFRy0Cmbk0jkZdfRkeAdUBlAj+Z3U2n1wNiNX3s5SLP3+Ngb5FXXMulIqDqm3SNm+9RTu8R1GLB7BNvc7UkN4dWadBhnLJTRHNR8NgjeZr+XXVu7laUKuPOFFaz/+cQuJow+Fso+diSDgm++o=;
X-UUID: 02f300f8cd1d41a28ead8cf8c50a2012-20200110
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1884920828; Fri, 10 Jan 2020 23:17:32 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 10 Jan 2020 23:18:10 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 11 Jan 2020 15:16:29 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 11 Jan 2020 15:18:03 +0800
Message-ID: <1578727042.17435.8.camel@mtkswgap22>
Subject: Re: [PATCH v1 0/3] scsi: ufs: fix error history and complete device
 reset history
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>
Date: Sat, 11 Jan 2020 15:17:22 +0800
In-Reply-To: <1578147968-30938-1-git-send-email-stanley.chu@mediatek.com>
References: <1578147968-30938-1-git-send-email-stanley.chu@mediatek.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: BE6CDD5CE9F68F62515C03A4103563C2B33C58080B14D1E2DA17F98058B84D642000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_231736_659290_F5D679DC 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: bvanassche@acm.org, martin.petersen@oracle.com, andy.teng@mediatek.com,
 jejb@linux.ibm.com, chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, avri.altman@wdc.com, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, beanhuo@micron.com,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Gentle ping for this set.

On Sat, 2020-01-04 at 22:26 +0800, Stanley Chu wrote:
> Hi,
> 
> This series targets on UFS error history fixes and feature add-on,
> 
> 1. Fix empty check logic while outputing error history.
> 2. Add device reset history events for vendor's implementations.
> 3. Remove dummy word in output format.
> 
> Stanley Chu (3):
>   scsi: ufs: fix empty check of error history
>   scsi: ufs: add device reset history for vendor implementations
>   scsi: ufs: remove "errors" word in ufshcd_print_err_hist()
> 
>  drivers/scsi/ufs/ufshcd.c | 9 +++++----
>  drivers/scsi/ufs/ufshcd.h | 6 +++++-
>  2 files changed, 10 insertions(+), 5 deletions(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
