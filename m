Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A565364463
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 11:30:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5+YfIQixdgZRu6z+mThoHz5pocucfL9jh/Om76hK/ig=; b=hX2Z2IMJX3JQwX
	RXMIDzbz7pRkL8X9aXTxGtt9Q7oX3HJmPPvbI4Ncq2eajjIqlceK7eK3L8A1bRmJ3qpKEFF3lPbkp
	4c2EtGp4F6WoaQEWwjoRZUc4CsIShjaOleeHFIvcy/mlLpfcfcWEIirirWgMv0EgOb/1scgSYje0E
	0+xHGToyOYp5PO/gQsGv+1N9rL496xN0VEacQaQBpY1eeB3Cthqr2esjYEc6xMG/wpNV2DemauPDM
	cuNVKj3rjDEvovLK1zh+pZs+fPxed1WJhwHJKri7kzGkNlDkiQfDogaM26yzakapElEUO2kzBiBX5
	PBs0e/qmcOA9ySiYyAXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl8vR-0001qX-Iq; Wed, 10 Jul 2019 09:30:09 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl8uZ-0001on-Ag; Wed, 10 Jul 2019 09:29:30 +0000
X-UUID: 2ce05d5c6727429f872eda1f17152f2b-20190710
X-UUID: 2ce05d5c6727429f872eda1f17152f2b-20190710
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 379415551; Wed, 10 Jul 2019 01:29:00 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 10 Jul 2019 02:28:58 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 10 Jul 2019 17:28:56 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 10 Jul 2019 17:28:56 +0800
Message-ID: <1562750936.7235.3.camel@mtkswgap22>
Subject: RE: [PATCH v2 4/4] scsi: ufs: Add history of fatal events
From: Stanley Chu <stanley.chu@mediatek.com>
To: Avri Altman <Avri.Altman@wdc.com>
Date: Wed, 10 Jul 2019 17:28:56 +0800
In-Reply-To: <SN6PR04MB4925D29D16757A57B25DE369FCF00@SN6PR04MB4925.namprd04.prod.outlook.com>
References: <1562736017-29461-1-git-send-email-stanley.chu@mediatek.com>
 <1562736017-29461-5-git-send-email-stanley.chu@mediatek.com>
 <SN6PR04MB4925D29D16757A57B25DE369FCF00@SN6PR04MB4925.namprd04.prod.outlook.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 5119A67BB2928397B5A654C3EA45125DE60CF336EA6D500ED74F4F4ACE9CE82C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_022921_637422_15F1DF06 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "sthumma@codeaurora.org" <sthumma@codeaurora.org>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "evgreen@chromium.org" <evgreen@chromium.org>,
 "subhashj@codeaurora.org" <subhashj@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "ygardi@codeaurora.org" <ygardi@codeaurora.org>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "pedrom.sousa@synopsys.com" <pedrom.sousa@synopsys.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Avri,

On Wed, 2019-07-10 at 08:04 +0000, Avri Altman wrote:
> Hi Stanley,
> 
> > +					       (u32)ret);
> >  			goto out;
> > +		}
> >  	} while (ret && retries--);
> > 
> >  	if (ret)
> Here also link startup fails...

Thanks! Will track this place as well in next version.

> >   * ufshcd_update_uic_error - check and set fatal UIC error flags.
> >   * @hba: per-adapter instance
> > @@ -6043,6 +6056,7 @@ static int ufshcd_abort(struct scsi_cmnd *cmd)
> >  	 */
> >  	scsi_print_command(hba->lrb[tag].cmd);
> >  	if (!hba->req_abort_count) {
> > +		ufshcd_update_reg_hist(&hba->ufs_stats.task_abort_err,
> > 0);
> Here you are collecting abort events statistics, not abort errors.
> If this is what you meant, then it's not task_abort_err, but task_abort.
> And if indeed you are tracking task aborts, maybe add lun resets as well?

Good suggestion! I would add history of lun reset and host reset as well
in next version.

> > diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
> > index c6ec5c749ceb..f9f109da7f18 100644
> > --- a/drivers/scsi/ufs/ufshcd.h
> > +++ b/drivers/scsi/ufs/ufshcd.h
> > @@ -438,6 +438,10 @@ struct ufs_err_reg_hist {
> >   * @dme_err: tracks dme errors
> >   * @fatal_err: tracks fatal errors
> >   * @auto_hibern8_err: tracks auto-hibernate errors
> > + * @tsk_abort_err: tracks task abort events
> > + * @linkup_err: tracks link-startup fail events
> > + * @suspend_err: tracks suspend fail events
> > + * @resume_err: tracks resume fail events
> >   */
> >  struct ufs_stats {
> >  	u32 hibern8_exit_cnt;
> > @@ -453,6 +457,12 @@ struct ufs_stats {
> >  	/* fatal errors */
> >  	struct ufs_err_reg_hist fatal_err;
> >  	struct ufs_err_reg_hist auto_hibern8_err;
> > +
> > +	/* fatal events */
> Maybe move here fatal_err as well?

OK! these could be classified as fatal errors as well.
Will fix them in next version.

> 
> > +	struct ufs_err_reg_hist task_abort_err;
> > +	struct ufs_err_reg_hist link_startup_err;
> > +	struct ufs_err_reg_hist suspend_err;
> > +	struct ufs_err_reg_hist resume_err;
> >  };
> > 
> >  /**
> > --
> > 2.18.0
> 
> 
> Thanks,
> Avri
> 

Thanks,
Stanley




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
