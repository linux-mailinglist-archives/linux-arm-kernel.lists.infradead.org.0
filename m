Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0806C138E12
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 10:44:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XF9HLEH7CBEno1fDKpOV5INGVpNDitd5vVDo7kS/Df4=; b=tP42PVIhKgYDYC
	sQcsKJpWAoPXWHU0Gfjog+Rjcxsol8M4dRqdDOZkR+n+iyfHmjoXdsX6FXJj1HYHojlU9iuOYj/Ai
	TIncjHb65wBDK3eXhj63rGUuTr0nv1T6/PWtCb6nn3Y/gC6jKBsIL3rU6z3ufnqOz+YqY80ZxGB6D
	oYI0fONtgrisop374Imv9okFq8WebAvO3HowZVIoe5c8L2W1vopnAf1XuloywXts5wWTIDKefGcq5
	VD99fIcVdLWfxydTxNowUZmpQHOesAeOSQDzofQODjCRAFY1VJ7ef9imIVCJpPDHrPLCZMqApcLjx
	/hTen5oUqpTTifkTfYvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqwGt-0000Ha-NU; Mon, 13 Jan 2020 09:44:31 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqwGO-0008Qh-Sx; Mon, 13 Jan 2020 09:44:02 +0000
X-UUID: 3d95b25487884a1d9a2477db12bd5452-20200113
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=noXFWD818Dq+jF4a9F98f3vlDXsWrqXwFtIlauFJG+o=; 
 b=O5mblPXUPPoqu1XDQ1PgPL2XFjBMI9Cbdy6qQVITdxVNm8AD51kTdM0QjIfSvT9WAuH+v2LcD5mWtvQNSKruE+sT9V7PoojnQxGn20INbspilCcn/sSLSvx5vDSSfNUK+ej2wlNUpY49v0htzOLio5qfQddncLPXL/4x+cPUIDI=;
X-UUID: 3d95b25487884a1d9a2477db12bd5452-20200113
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1143793970; Mon, 13 Jan 2020 01:43:57 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 13 Jan 2020 01:44:39 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 13 Jan 2020 17:42:52 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 13 Jan 2020 17:44:25 +0800
Message-ID: <1578908621.17435.18.camel@mtkswgap22>
Subject: RE: [EXT] [PATCH v1 1/3] scsi: ufs: fix empty check of error history
From: Stanley Chu <stanley.chu@mediatek.com>
To: "Bean Huo (beanhuo)" <beanhuo@micron.com>
Date: Mon, 13 Jan 2020 17:43:41 +0800
In-Reply-To: <BN7PR08MB56841F049CEF89CD8F40B4E3DB350@BN7PR08MB5684.namprd08.prod.outlook.com>
References: <1578147968-30938-1-git-send-email-stanley.chu@mediatek.com>
 <1578147968-30938-2-git-send-email-stanley.chu@mediatek.com>
 <BN7PR08MB56841F049CEF89CD8F40B4E3DB350@BN7PR08MB5684.namprd08.prod.outlook.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 0B6A6572D0047A1634FF6C19BE1983D218D296312C76252440D25A87F28CA4082000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_014400_941523_D5A58B8A 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bean,

On Mon, 2020-01-13 at 09:28 +0000, Bean Huo (beanhuo) wrote:
> Hi, Stanley
> 
> > 
> > Currently checking if an error history element is empty or not is by its "value". In
> > most cases, value is error code.
> > 
> > However this checking is not correct because some errors or events do not
> > specify any values in error history so values remain as 0, and this will lead to
> > incorrect empty checking.
> > 
> Do you think this is a bug of UFS host controller? According to the UFS host Spec, 
> If there had error detected in each layer, at least bit31 in its error code register
> Should be set to 1.
> 
> Why there was an error happening, but host didn't set this bit31?
> 

Thanks so much for review.

Yes, the case bit[31] set is true for UIC errors.

However the users of UFS error history, i.e., users of
ufshcd_update_reg_hlist(), are not only UIC errors. Some other essential
events will update history too, for example, device reset events and
abort events.

Take "device reset events" as example: parameter "val" may be 0 while
invoking ufshcd_update_reg_hlist(). If this happens, the device reset
event will not be printed out because its err_hist->reg[p] is 0
according to the original logic in ufshcd_print_err_hist().

Feel free to correct above description if it is wrong.

Thanks,
Stanley
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
