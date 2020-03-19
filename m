Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7907918A996
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 01:11:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FIwjEoMe8rfND9lWywBj48h8jtQVMqSGVGkYfq/C7oI=; b=UKucTZprNOgHW6
	VPWO5P32Jg84N+RY152XVwYUPfGJKzUrlPirtZxh1wsHaF3rB3Y21yPdwyU0niDbc0CqfkGco2xDU
	sEEzhISdER4nD6ZijxfsmLuuCdmj5WOxelP7HXOext+z2Eqx2HbjdeJF5KgH8lP15UYF4fz4rhg+g
	ROLRoO9Sd2BmZVOhR2x8HvOXxyz++muzFQy0G7uJho3uqQQUOBN/5XKBKBpSwY0vOWBUC+48RVL45
	DzuVen9epmzaaU6xaY5beuCduSeU/YtQQX/iG0ckz0aYQbgEKOqN1Bruq+t6qqnAfHyum84nhjQbm
	oH5unmg53XPPP9+mrFNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEilu-0007ym-C0; Thu, 19 Mar 2020 00:10:50 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEill-0007y9-2n; Thu, 19 Mar 2020 00:10:42 +0000
X-UUID: e0b328a22bc2409b8a2dbf978794d9ea-20200318
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=sraA/18wg1ANfXAVlyaQ+1II+H594amOEvAI6LBOxx4=; 
 b=VSmWT2xknC6i0fRW6FMoRlcDkCf0L89fo9L5RqvQWKV79UUboi36chXgI5uZX2rALQO2i2N91/yKoVHPN/kIkFBNN4p0ZhNat450Y04nhj14A6sEZwhC7ez5fFK7IsVRitgfER9H77ijQ8FVY4z3qNcJchjW8NMLmxwGfHQrVn8=;
X-UUID: e0b328a22bc2409b8a2dbf978794d9ea-20200318
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2047728987; Wed, 18 Mar 2020 16:10:38 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Mar 2020 17:11:10 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Mar 2020 08:08:17 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 19 Mar 2020 08:11:11 +0800
Message-ID: <1584576635.14250.63.camel@mtksdccf07>
Subject: RE: [EXT] [PATCH v7 3/7] scsi: ufs: introduce common and flexible
 delay function
From: Stanley Chu <stanley.chu@mediatek.com>
To: "Bean Huo (beanhuo)" <beanhuo@micron.com>
Date: Thu, 19 Mar 2020 08:10:35 +0800
In-Reply-To: <BN7PR08MB5684DA8C4FB4304CDAE39440DBF70@BN7PR08MB5684.namprd08.prod.outlook.com>
References: <20200318104016.28049-1-stanley.chu@mediatek.com>
 <20200318104016.28049-4-stanley.chu@mediatek.com>
 <BN7PR08MB5684DA8C4FB4304CDAE39440DBF70@BN7PR08MB5684.namprd08.prod.outlook.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_171041_131124_BE94161D 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "bvanassche@acm.org" <bvanassche@acm.org>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "martin.peter~sen@oracle.com" <martin.peter~sen@oracle.com>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bean,

On Wed, 2020-03-18 at 22:10 +0000, Bean Huo (beanhuo) wrote:
> Hi, Stanley
> > 
> > diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c index
> > 314e808b0d4e..a42a84164dec 100644
> > --- a/drivers/scsi/ufs/ufshcd.c
> > +++ b/drivers/scsi/ufs/ufshcd.c
> > @@ -597,6 +597,18 @@ static void ufshcd_print_pwr_info(struct ufs_hba *hba)
> >  		 hba->pwr_info.hs_rate);
> >  }
> > 
> > +void ufshcd_delay_us(unsigned long us, unsigned long tolerance) {
> > +	if (!us)
> > +		return;
> > +
> > +	if (us < 10)
> > +		udelay(us);
> > +	else
> > +		usleep_range(us, us + tolerance);
> > +}
> > +EXPORT_SYMBOL_GPL(ufshcd_delay_us);
> > +
> In this way, the callers of ufshcd_delay_us(), can directly call udelay() or usleep_range(), what is exist meaning of ufshcd_delay_us()?

Sure, the callers always can directly call udelay() or usleep_range().

The customizable delay (either by hosts or devices) value in UFS driver
is becoming more and more, like "reference clock gating delay" and
introduced "hce_enable_delay". The customized delay time could be 0, <
10 us, or >= 10 us in real cases. Hence this function can help driver
simplify the driver and user's decision of "just passed without any
delay" or "choosing a suitable delay function according to the delay
time".

Thanks,
Stanley Chu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
