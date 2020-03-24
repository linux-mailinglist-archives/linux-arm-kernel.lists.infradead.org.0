Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF924190E38
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 13:56:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Kxo5Cl2WQcomlftuujZc5h2tGbuEnkZsKQ7BUrqn38=; b=bCjEWDe8LdHASn
	wWgi40IfItfiSzNzrn571dQInMAIibOaaDaioE08qn7MtxonjK/Ey/t1r3MujiluT6pLX+d7F/mRW
	QU4UScyB8xHFXB1+TKdjrQEEaRfzWlRwxyCD8PCCCLFerV4NswPfW28HEG2geSAoKyZNGwMh6fVT8
	VI2Hrdqy9w0IvgZfzBqbqiAQLATB97JM6zER8iqp8DaMmWsybRJatnrgbn9OkCMpVEOLcTA2I1htZ
	K9YhlKDZOOVm5vhp9tS2BJyTxlgW3d89rBCwQUUsunELe5IzXnE12TvokFjLh2hCpxgJisXuGBN0V
	l45ZgjWne0DVfuQbQi1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGj6f-0005yT-Q8; Tue, 24 Mar 2020 12:56:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGj6W-0005y1-4e; Tue, 24 Mar 2020 12:56:25 +0000
X-UUID: 9afae080985e435ea3294473d703d4d7-20200324
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=ik4urh0s9/sTZNn7i7tAqN7eathzuR+7EqLI9vueugY=; 
 b=fu+Yy7CI4h1f5rxfvRKCQ5QJ5dfNiAccwbs5lldVLq3gsoF3Cs3kXaTjE/w5ViQnMQFA8jYCnYMGqX6DpKAgJjtuATgFiewPB3wbxu/QogHhJmSGXom7fTSPGM0qlJjGAOHd1urNQJrgPA1YnZikwpj5qs2k9hqMPS7G8vWbh9w=;
X-UUID: 9afae080985e435ea3294473d703d4d7-20200324
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <gtk_ruiwang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 671653240; Tue, 24 Mar 2020 04:56:22 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 24 Mar 2020 05:56:20 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 24 Mar 2020 20:56:16 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 24 Mar 2020 20:56:16 +0800
Message-ID: <1585054582.6276.24.camel@mhfsdcap03>
Subject: Re: [PATCH] media: mtk-vpu: load vpu firmware from the new location
From: gtk_ruiwang <gtk_ruiwang@mediatek.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Date: Tue, 24 Mar 2020 20:56:22 +0800
In-Reply-To: <396021fd-ec2e-1ec1-602e-08b9393c5ae9@xs4all.nl>
References: <20200322075745.6133-1-gtk_ruiwang@mediatek.com>
 <396021fd-ec2e-1ec1-602e-08b9393c5ae9@xs4all.nl>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: C39E2D690E3AA5905C6E84713D6ABD87D4D1C41A2322D8E148CE3102567C89072000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_055624_192112_31E026AB 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew-CT
 Chen <andrew-ct.chen@mediatek.com>, Maoguang Meng <maoguang.meng@mediatek.com>,
 srv_heupstream@mediatek.com, Alexandre Courbot <acourbot@chromium.org>,
 Erin Lo <erin.lo@mediatek.com>, linux-kernel@vger.kernel.org,
 Houlong Wei <houlong.wei@mediatek.com>, Tomasz
 Figa <tfiga@chromium.org>, Sj Huang <sj.huang@mediatek.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear Hans,

Patch V2 has sent, thanks a lot.

Sincerely Regards

On Tue, 2020-03-24 at 13:20 +0100, Hans Verkuil wrote:
> On 3/22/20 8:57 AM, gtk_ruiwang@mediatek.com wrote:
> > From: gtk_ruiwang <gtk_ruiwang@mediatek.com>
> > 
> > mt8173 VPU firmware has been moved to a sub-folder of
> > linux-firmware, so load vpu-fw from the new location first,
> > if it fails, then from the old one.
> > 
> > Signed-off-by: Rui Wang <gtk_ruiwang@mediatek.com>
> 
> Hmm, I'm getting this from checkpatch.pl --strict:
> 
> WARNING: Missing Signed-off-by: line by nominal patch author 'gtk_ruiwang <gtk_ruiwang@mediatek.com>'
> 
> Rather than sending this from 'gtk_ruiwang@mediatek.com', can you send this from
> 'Rui Wang <gtk_ruiwang@mediatek.com>'?
> 
> Then the two are the same.
> 
> Regards,
> 
> 	Hans
> 
> > ---
> >  drivers/media/platform/mtk-vpu/mtk_vpu.c | 16 +++++++++++++---
> >  1 file changed, 13 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/media/platform/mtk-vpu/mtk_vpu.c b/drivers/media/platform/mtk-vpu/mtk_vpu.c
> > index a768707abb94..89274842e07b 100644
> > --- a/drivers/media/platform/mtk-vpu/mtk_vpu.c
> > +++ b/drivers/media/platform/mtk-vpu/mtk_vpu.c
> > @@ -46,6 +46,8 @@
> >  /* binary firmware name */
> >  #define VPU_P_FW		"vpu_p.bin"
> >  #define VPU_D_FW		"vpu_d.bin"
> > +#define VPU_P_FW_NEW		"mediatek/mt8173/vpu_p.bin"
> > +#define VPU_D_FW_NEW		"mediatek/mt8173/vpu_d.bin"
> >  
> >  #define VPU_RESET		0x0
> >  #define VPU_TCM_CFG		0x0008
> > @@ -477,16 +479,24 @@ static int load_requested_vpu(struct mtk_vpu *vpu,
> >  	size_t tcm_size = fw_type ? VPU_DTCM_SIZE : VPU_PTCM_SIZE;
> >  	size_t fw_size = fw_type ? VPU_D_FW_SIZE : VPU_P_FW_SIZE;
> >  	char *fw_name = fw_type ? VPU_D_FW : VPU_P_FW;
> > +	char *fw_new_name = fw_type ? VPU_D_FW_NEW : VPU_P_FW_NEW;
> >  	const struct firmware *vpu_fw;
> >  	size_t dl_size = 0;
> >  	size_t extra_fw_size = 0;
> >  	void *dest;
> >  	int ret;
> >  
> > -	ret = request_firmware(&vpu_fw, fw_name, vpu->dev);
> > +	ret = request_firmware(&vpu_fw, fw_new_name, vpu->dev);
> >  	if (ret < 0) {
> > -		dev_err(vpu->dev, "Failed to load %s, %d\n", fw_name, ret);
> > -		return ret;
> > +		dev_info(vpu->dev, "Failed to load %s, %d, retry\n",
> > +			 fw_new_name, ret);
> > +
> > +		ret = request_firmware(&vpu_fw, fw_name, vpu->dev);
> > +		if (ret < 0) {
> > +			dev_err(vpu->dev, "Failed to load %s, %d\n", fw_name,
> > +				ret);
> > +			return ret;
> > +		}
> >  	}
> >  	dl_size = vpu_fw->size;
> >  	if (dl_size > fw_size) {
> > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
