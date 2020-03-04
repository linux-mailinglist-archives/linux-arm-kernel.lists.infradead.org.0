Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A011F178842
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 03:26:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KJqzP/i/alfzicvqi87QimJL9qdjPZFEKuo5nwRqXTQ=; b=HlH8QHvItoa2rr
	h89/lekmt4mgQQrvviwrEb9LSa3F3ccj8epeIxJwFVpE4bBUuco9dXIJqu7NUUO+F1epMqYHYPGmt
	c/HrKrSZk2rrgojWuddZKfe21UoSrPMUSMLnJfaUV7ZRNRj+LHZn7XYb1DSaQ7hrzvco2hhY/NISi
	GyNiBoggQVgzABsJ+29AI1RkBaKbTlT0VPS+ORnLwDuwPAmqe0oG1+oPJ4SnaN8r+I85IuG65sm8y
	GYMHi5xLHtlk74FN8TkyVs8yWofDlTxO3nz8B7u/JS19WZmXTuVfmdESYi7+8w+o50AWTbbHwaspT
	TrOA6FmMGPgOIxxHvAyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9JjW-0007lG-0z; Wed, 04 Mar 2020 02:26:02 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9JjJ-0007js-Q7; Wed, 04 Mar 2020 02:25:51 +0000
X-UUID: a1d8f66878334195943ad9bd250cf075-20200303
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=WRwJNL3/LSu9YAz4lzMmh4KqQ+Mz5WRqM0Z4EacS3BA=; 
 b=OpZDbhpry9lCxT8XBLFuk96dgH/gU7hMsiAKr6zInqpN7CzkwjGPHy3zWDyBWi64oEYyqAbJi7EE3/gTOpHiJuaelpeL2K05QNWxg3NK0tq64zyLBiJvKXWM1KTektECPOkVJRf+qysm9+bv+GggZwdj08lfoo2gyA1iFALswp4=;
X-UUID: a1d8f66878334195943ad9bd250cf075-20200303
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1366308211; Tue, 03 Mar 2020 18:25:45 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Mar 2020 18:27:01 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Mar 2020 10:23:40 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 4 Mar 2020 10:23:04 +0800
Message-ID: <1583288736.14250.2.camel@mtksdccf07>
Subject: Re: [RFC PATCH v1] scsi: ufs-mediatek: add inline encryption support
From: Stanley Chu <stanley.chu@mediatek.com>
To: Eric Biggers <ebiggers@kernel.org>
Date: Wed, 4 Mar 2020 10:25:36 +0800
In-Reply-To: <20200302180231.GB98133@gmail.com>
References: <20200302091138.10341-1-stanley.chu@mediatek.com>
 <20200302180231.GB98133@gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_182549_861268_F9BCBA82 
X-CRM114-Status: GOOD (  20.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 andy.teng@mediatek.com, jejb@linux.ibm.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org,
 light.hsieh@mediatek.com, satyat@google.com, avri.altman@wdc.com,
 linux-fscrypt@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Eric,

On Mon, 2020-03-02 at 10:02 -0800, Eric Biggers wrote:
> On Mon, Mar 02, 2020 at 05:11:38PM +0800, Stanley Chu wrote:
> > Add inline encryption support to ufs-mediatek.
> > 
> > The standards-compliant parts, such as querying the crypto capabilities
> > and enabling crypto for individual UFS requests, are already handled by
> > ufshcd-crypto.c, which itself is wired into the blk-crypto framework.
> > 
> > However MediaTek UFS host requires a vendor-specific hce_enable operation
> > to allow crypto-related registers being accessed normally in kernel.
> > After this step, MediaTek UFS host can work as standard-compliant host
> > for inline-encryption related functions.
> > 
> > This patch is rebased to the latest wip-inline-encryption branch in
> > Eric Biggers's git:
> > https://git.kernel.org/pub/scm/linux/kernel/git/ebiggers/linux.git/
> 
> Please don't use a random work-in-progress branch from my git repository (which
> hasn't been updated to the v7 patchset yet and will be rebased); use instead:
> 
> 	Repo: https://git.kernel.org/pub/scm/fs/fscrypt/fscrypt.git
> 	Tag: inline-encryption-v7
> 
> Also, this patch doesn't apply to either branch anyway:
> 
> Applying: scsi: ufs-mediatek: add inline encryption support
> Using index info to reconstruct a base tree...
> error: patch failed: drivers/scsi/ufs/ufs-mediatek.c:15
> error: drivers/scsi/ufs/ufs-mediatek.c: patch does not apply
> error: patch failed: drivers/scsi/ufs/ufs-mediatek.h:58
> error: drivers/scsi/ufs/ufs-mediatek.h: patch does not apply
> error: Did you hand edit your patch?

Sorry for this.
I rebased this patch as RFC v2 to below tag,

	Repo: https://git.kernel.org/pub/scm/fs/fscrypt/fscrypt.git
 	Tag: inline-encryption-v7


> > diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
> > index 53eae5fe2ade..12d01fd3d5e1 100644
> > --- a/drivers/scsi/ufs/ufs-mediatek.c
> > +++ b/drivers/scsi/ufs/ufs-mediatek.c
> > @@ -15,6 +15,7 @@
> >  #include <linux/soc/mediatek/mtk_sip_svc.h>
> >  
> >  #include "ufshcd.h"
> > +#include "ufshcd-crypto.h"
> >  #include "ufshcd-pltfrm.h"
> >  #include "ufs_quirks.h"
> >  #include "unipro.h"
> > @@ -24,6 +25,9 @@
> >  	arm_smccc_smc(MTK_SIP_UFS_CONTROL, \
> >  		      cmd, val, 0, 0, 0, 0, 0, &(res))
> >  
> > +#define ufs_mtk_crypto_ctrl(res, enable) \
> > +	ufs_mtk_smc(UFS_MTK_SIP_CRYPTO_CTRL, enable, res)
> > +
> >  #define ufs_mtk_ref_clk_notify(on, res) \
> >  	ufs_mtk_smc(UFS_MTK_SIP_REF_CLK_NOTIFICATION, on, res)
> >  
> > @@ -66,7 +70,27 @@ static void ufs_mtk_cfg_unipro_cg(struct ufs_hba *hba, bool enable)
> >  	}
> >  }
> >  
> > -static int ufs_mtk_bind_mphy(struct ufs_hba *hba)
> > +static void ufs_mtk_crypto_enable(struct ufs_hba *hba)
> > +{
> > +	struct arm_smccc_res res;
> > +
> > +	ufs_mtk_crypto_ctrl(res, 1);
> > +	if (res.a0) {
> > +		dev_info(hba->dev, "%s: crypto enable failed, err: %lu\n",
> > +			 __func__, res.a0);
> > +	}
> > +}
> > +
> > +static int ufs_mtk_hce_enable_notify(struct ufs_hba *hba,
> > +				     enum ufs_notify_change_status status)
> > +{
> > +	if (status == PRE_CHANGE && ufshcd_hba_is_crypto_supported(hba))
> > +		ufs_mtk_crypto_enable(hba);
> > +
> > +	return 0;
> > +}
> > +
> > +int ufs_mtk_bind_mphy(struct ufs_hba *hba)
> >  {
> >  	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
> >  	struct device *dev = hba->dev;
> > @@ -494,6 +518,7 @@ static struct ufs_hba_variant_ops ufs_hba_mtk_vops = {
> >  	.name                = "mediatek.ufshci",
> >  	.init                = ufs_mtk_init,
> >  	.setup_clocks        = ufs_mtk_setup_clocks,
> > +	.hce_enable_notify   = ufs_mtk_hce_enable_notify,
> >  	.link_startup_notify = ufs_mtk_link_startup_notify,
> >  	.pwr_change_notify   = ufs_mtk_pwr_change_notify,
> >  	.apply_dev_quirks    = ufs_mtk_apply_dev_quirks,
> > diff --git a/drivers/scsi/ufs/ufs-mediatek.h b/drivers/scsi/ufs/ufs-mediatek.h
> > index fccdd979d6fb..5ebaa59898bf 100644
> > --- a/drivers/scsi/ufs/ufs-mediatek.h
> > +++ b/drivers/scsi/ufs/ufs-mediatek.h
> > @@ -58,6 +58,7 @@
> >   */
> >  #define MTK_SIP_UFS_CONTROL               MTK_SIP_SMC_CMD(0x276)
> >  #define UFS_MTK_SIP_DEVICE_RESET          BIT(1)
> > +#define UFS_MTK_SIP_CRYPTO_CTRL           BIT(2)
> >  #define UFS_MTK_SIP_REF_CLK_NOTIFICATION  BIT(3)
> 
> But if this is all that's needed to get inline crypto working with Mediatek UFS,
> that's great news.

Thanks for your review :)

Stanley Chu



> 
> Thanks!
> 
> - Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
