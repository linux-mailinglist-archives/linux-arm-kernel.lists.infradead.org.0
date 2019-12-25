Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA5A12A69B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 08:35:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=coCY5BeFf0uwo5pKULiwatjGICifvOhuqKZsREkM/eU=; b=pYde3/tTyVm5zd
	OSaKYlkx9kclgFDlQZVEfT+oS3eNDa/XU+zBsvnT2MXNiPR0Uem83BqeUxSTThlC/nTVU1fCXcJDv
	lF3rcfO6+OZDHyPthl31ANyrZUD1PAHrTIW6QbyOeIuF01g6iabJmdEYZ42GhMuzUNi7f7gLT80Kb
	nRi+qneg17Eh2E+tZjd6HgZi/2VD3HaxNVnPheggtVbXE4xYU65ejiM/hjShiLORl6zibegT0rt/u
	t5pVEb9rXp1Vpns7NebrwxllBidFEEYh0z/w6od1jZdrCfNNbu/Rvuzy/8QTxZCiqu5UaDdiAr8R2
	SUtNwdFi+VmIhOc8hWmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ik1C1-0006jQ-4d; Wed, 25 Dec 2019 07:34:53 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ik1Bq-0006iH-L7; Wed, 25 Dec 2019 07:34:44 +0000
X-UUID: 2627886deff14469874a0d31fddd8438-20191224
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=3JsaGytja2s0ajkjRHpfBvJl0ga0ZN42HUPzYb0ma90=; 
 b=Khx0xUkh8FmsBa3JL6plIqjqti5oH22TgB+YA7eRm5kFIg7/+61XtMfij71nd+pfTCnzXqMzG5vEDRJxtt8wb+SJwPI23f0KVV+qmvYl54dWLg46lDYcp8sQz/Ob+DkjyUCAkadFI7Er/oxrTuiBWNmCRtuIkV9bzK/wf94hjY8=;
X-UUID: 2627886deff14469874a0d31fddd8438-20191224
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1051648185; Tue, 24 Dec 2019 23:34:40 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 24 Dec 2019 23:35:14 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 25 Dec 2019 15:33:58 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 25 Dec 2019 15:34:13 +0800
Message-ID: <1577259276.13056.54.camel@mtkswgap22>
Subject: Re: [PATCH v2 1/2 RESEND] soc: mediatek: add header for SiP service
 interface
From: Stanley Chu <stanley.chu@mediatek.com>
To: Alim Akhtar <alim.akhtar@gmail.com>
Date: Wed, 25 Dec 2019 15:34:36 +0800
In-Reply-To: <1576804540.13056.22.camel@mtkswgap22>
References: <1576468137-17220-1-git-send-email-stanley.chu@mediatek.com>
 <1576468137-17220-2-git-send-email-stanley.chu@mediatek.com>
 <CAGOxZ50RKYAEw=HwYMH=Jm7cagUV12C-fwhauJhJqx6HscAmFA@mail.gmail.com>
 <1576804540.13056.22.camel@mtkswgap22>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 2EF099EE7E0791DEE4F5F3D3D0CACF2D26DB662205C351BEF72A3A062DA5475D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_233442_705586_C546F845 
X-CRM114-Status: GOOD (  12.85  )
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
Cc: "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>, "Martin K.
 Petersen" <martin.petersen@oracle.com>,
 Leon Chen =?UTF-8?Q?=28=E9=99=B3=E6=96=87=E9=8F=98=29?=
 <Leon.Chen@mediatek.com>, "Andy
 Teng \($B{}G!9\(\(B\)" <Andy.Teng@mediatek.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Chun-Hung Wu =?UTF-8?Q?=28=E5=B7=AB=E9=A7=BF=E5=AE=8F=29?=
 <Chun-hung.Wu@mediatek.com>,
 Kuohong Wang =?UTF-8?Q?=28=E7=8E=8B=E5=9C=8B=E9=B4=BB=29?=
 <kuohong.wang@mediatek.com>, open list <linux-kernel@vger.kernel.org>, Avri
 Altman <avri.altman@wdc.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Peter Wang =?UTF-8?Q?=28=E7=8E=8B=E4=BF=A1=E5=8F=8B=29?=
 <peter.wang@mediatek.com>, Alim Akhtar <alim.akhtar@samsung.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Pedro Sousa <pedrom.sousa@synopsys.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "Bean Huo \(beanhuo\)" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alim,

Would you think below explanation is OK to you?

BTW, FYI, this series was combined to the new series "scsi: ufs: add
MediaTek vendor implementations" with this same patch in it.

Thanks,
Stanley


On Fri, 2019-12-20 at 09:15 +0800, Stanley Chu wrote:
> Hi Alim,
> 
> On Fri, 2019-12-20 at 02:00 +0800, Alim Akhtar wrote:
> > > +/* UFS related SMC call */
> > > +#define MTK_SIP_UFS_CONTROL \
> > > +       MTK_SIP_SMC_CMD(0x276)
> > > +
> > How about moving UFS specific stuff to MTK UFS driver and include this
> > header in driver file?
> > Rest looks fine.
> 
> Thanks so much for your review.
> 
> Our intention is to collect all SMC call command types in MediaTek
> Chipsets here for easier management.
> 
> This is the first time we show this header thus only UFS related stuff
> is present here.
> 
> > > +#endif
> > > --
> > > 2.18.0
> > 
> > 
> 
> Thanks,
> Stanley
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
