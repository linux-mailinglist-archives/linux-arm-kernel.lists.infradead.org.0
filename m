Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8CB18656E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 08:08:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/XaWXl113K5T7McyOGXcGSkoXbwnns0sejHAuGVfd1M=; b=iVo+k6Ct5z0+B3
	q1VfFPP6RmNQ0tenac+gn0YyHpQDQi2illV1Adzyt4rlqD2zK3negc1OYkdWE4zKIzSXtW5EgtjHg
	TuLS9AvCBFqfWsHGe05XguAIMAPlwiYGRm9FayripZPAMYm6Z64k2tZhajZtkRthu9hBHfoEMuPgO
	YdTgBOVDfFd9qO/korXCdaMHmeO2l1GAfPFy0f2rYw8rD35mcboq3JEdTKFcbauMIh3hzVZsNP+VE
	QJwvO/wWWG1siaVYMMLRcN4S6GYIgKb5m3wtx8tlD+S8FAUS/sycMVTMnEoLldnsp6+3xU9crsXXY
	BMp83eDY0IB+NFvcc3YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDjrR-0005GB-7w; Mon, 16 Mar 2020 07:08:29 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDjrH-0005Ei-SM; Mon, 16 Mar 2020 07:08:21 +0000
X-UUID: f6c7d6a3a48247bba713358b62d20c56-20200315
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=dau95JaNBGsRunTGBlpYGDM3JLIWHp3+4y4tNiux/2U=; 
 b=BpGDmAXQShE3p/Mx8LKdOiQqUicz4QnmplojYZIxOeNrkR811wDSTmULr7hR3BaU6XsbhvpfEfDFXbgQgRBSivkElfFnZPEq1JfZMcyuSZCfrq8YplhJslOemcJOGinVkbCxZmWGi9OHWMXY7oaeda19he2Lv1JE/i9ViCW+mLU=;
X-UUID: f6c7d6a3a48247bba713358b62d20c56-20200315
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1196337945; Sun, 15 Mar 2020 23:08:14 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Mar 2020 00:08:30 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Mar 2020 15:05:15 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 16 Mar 2020 15:07:28 +0800
Message-ID: <1584342487.14250.11.camel@mtksdccf07>
Subject: Re: [PATCH v5 2/8] scsi: ufs: remove init_prefetch_data in struct
 ufs_hba
From: Stanley Chu <stanley.chu@mediatek.com>
To: Can Guo <cang@codeaurora.org>
Date: Mon, 16 Mar 2020 15:08:07 +0800
In-Reply-To: <51fde835f4f03fcca6e83ba6d3579f2e@codeaurora.org>
References: <20200316034218.11914-1-stanley.chu@mediatek.com>
 <20200316034218.11914-3-stanley.chu@mediatek.com>
 <51fde835f4f03fcca6e83ba6d3579f2e@codeaurora.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 91130EEECD614F04B26B8D968427210292287D7953CE94BE6ED417119E909D972000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_000819_925214_872B06FA 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: bvanassche@acm.org, linux-scsi@vger.kernel.org, andy.teng@mediatek.com,
 jejb@linux.ibm.com, chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, avri.altman@wdc.com, martin.peter~sen@oracle.com,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, beanhuo@micron.com,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Can,

On Mon, 2020-03-16 at 14:25 +0800, Can Guo wrote:
> On 2020-03-16 11:42, Stanley Chu wrote:
> > Struct init_prefetch_data currently is used privately in
> > ufshcd_init_icc_levels(), thus it can be removed from struct ufs_hba.
> > 
> > Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> > Reviewed-by: Asutosh Das <asutoshd@codeaurora.org>
> > Reviewed-by: Avri Altman <avri.altman@wdc.com>
> 
> Hi Stanley,
> 
> Earlier, I have one similar patch for this, but it does more than this.
> Please check the mail I just sent.
> 
> Thanks,
> Can Guo.

OK! Thanks to remind me this. Then I can drop this cleanup patch #2 in
its series to not conflict with your proposed one.

Thanks,
Stanley Chu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
