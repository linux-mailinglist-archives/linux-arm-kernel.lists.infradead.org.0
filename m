Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 485911BF2F4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 10:35:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x1oDrkXrmiRO0HqxTXh15Nz0MaNLy0znVxe0qt9Fcnw=; b=t63Pb54r9PgJlR
	inDA2t3yk9GlBsZQLMvl8oXnAYGKOKCVp02h0bsLEkOKN5BJb00WIONAAaTDcPREwEiqtuZXiEe25
	S11Y85A/pE9IYSnYwqNjBZ6YIrLlvg6bpe73uaOOlB0Mlux7Uff4IMCIaxvTO1WNHbedRbRQ8+h68
	R2a9Mg27tt2yEafmCeOZW6FlEBhiIR1hE4BzK2RW/TYpY56edJqJm7CjCAe3eokrW6HUKJDO+eCE5
	ZL0rmapdHizFi9CZLWFf2IKBHK6wQ8M6sYYRQDLekVhcEPUSdY5rizoO3JXeVHRtpP3HzcuLNIR6q
	ZpsbbYQtkkyvJbxqpC9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU4fA-00044Q-Vt; Thu, 30 Apr 2020 08:35:21 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU4ee-00040Y-W1; Thu, 30 Apr 2020 08:34:50 +0000
X-UUID: 36aa161e6d1c4bae8cedf3faddfb33a2-20200430
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=y3dVWlbJZTjwoFW54DLo0jxBmIShjMB5D+SoEOe2dsw=; 
 b=NJXEF7jNt2L2Tjt3F6okEWGHouC8xG61jl5leFJxco5bypXIXsqK9IA3fGlW5BdCJmyP1C5qyNtbbHgVXx8crgn6fUmmkqYY1vao8q3m6E4W2tYtUDOhVPbN9NZmWESFflNnliorucM/JRc0NvdJ9ClKBLd9vNlg76whtne/PYM=;
X-UUID: 36aa161e6d1c4bae8cedf3faddfb33a2-20200430
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1135168007; Thu, 30 Apr 2020 00:34:39 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 30 Apr 2020 01:34:43 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 30 Apr 2020 16:34:36 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 30 Apr 2020 16:34:37 +0800
Message-ID: <1588235677.3197.2.camel@mtkswgap22>
Subject: RE: [PATCH v2 1/5] scsi: ufs: allow legacy UFS devices to enable
 WriteBooster
From: Stanley Chu <stanley.chu@mediatek.com>
To: Avri Altman <Avri.Altman@wdc.com>
Date: Thu, 30 Apr 2020 16:34:37 +0800
In-Reply-To: <BYAPR04MB4629B87143D7BD7693141D39FCAA0@BYAPR04MB4629.namprd04.prod.outlook.com>
References: <20200429135610.23750-1-stanley.chu@mediatek.com>
 <20200429135610.23750-2-stanley.chu@mediatek.com>
 <BYAPR04MB4629B87143D7BD7693141D39FCAA0@BYAPR04MB4629.namprd04.prod.outlook.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_013449_045858_59BA45A4 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Avri,

On Thu, 2020-04-30 at 07:44 +0000, Avri Altman wrote:
> Hi Stanley,
>  
> > 
> > WriteBooster feature may be supported by some legacy UFS devices
> > (i.e., < 3.1) by upgrading firmware.
> > 
> > To enable WriteBooster feature in such devices, relax the entrance
> > condition of ufshcd_wb_probe() to allow host driver to check those
> > devices' WriteBooster capability.
> > 
> > WriteBooster feature can be available if below both conditions are
> > satisfied,
> > 
> > 1. Device descriptor has dExtendedUFSFeaturesSupport field.
> > 2. WriteBooster support is specified in above field.
> > 
> > Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> > Reviewed-by: Bean Huo <beanhuo@micron.com>
> WB was first introduced as part of UFS3.1, and lately as part of UFS2.2.
> Any non-standard behavior should be classified as a quirk.

OK! I will try to revise this patch to allow only standard devices
handled by normal path and non-standard devices handled by device
quirks.

Thanks,
Stanley Chu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
