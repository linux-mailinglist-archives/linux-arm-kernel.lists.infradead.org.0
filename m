Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35559161E47
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 01:50:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8/g4sWwYXSAvJOqVWkHbe613RUAaZnXxfZKZNgiCxro=; b=pkE1BesFkU7Otc
	k2QzVHaHvqiuf2xwKkRWhn94BfVTM8KCT4uQEBH/ZrAwhuQ5e9cjwWsmWcqkXcM1MYGekDO1A7w3d
	pMGbwlMNVYml9abSTm3sMEuz4hTPJc0ExAgSjRH7bH+giooBwMNHa5vlDgqlpiwh9kWwq9cPLZhJP
	2m+gxO6KCVXeVgmomRXDMXTPBqxOL8/XcfvuRnfkXZdyvgSH++sLVP8M9mhgOw3ngJl07G8UIoChd
	+6MoYlntcripnGMEjXAioWGY2KvN5UREVDyH2WHlGHjjzd4VjCu/61Jw2EHMgQ4BL1l4ypZf9+FYa
	pOTe0jOPlr24jYUwC1/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3r6A-0004zf-V4; Tue, 18 Feb 2020 00:50:50 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3r62-0004z5-6M; Tue, 18 Feb 2020 00:50:43 +0000
X-UUID: 307131bbc75747df9a2d69654b108153-20200217
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=aYb7eYVcWGhu/tm1bPl140Be8k4HkWRqF47wgIfyVRY=; 
 b=aNg9N86MZL7lAVcfmKvwzIhCL9FpIAhuQZL871hfpxwRQzBS0IHL+xCzTCghNyxzHP3EBjUiB04yyZmlvvVMri1nZDoxeVHTkkj6zpXBa+aLH64f1zzeibOFEkgX2V9HzQBVVrlpeh68QuUT1Bed6ijkhGxiXOWuJAmDE8ceMDw=;
X-UUID: 307131bbc75747df9a2d69654b108153-20200217
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 967725832; Mon, 17 Feb 2020 16:50:37 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Feb 2020 16:50:57 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 18 Feb 2020 08:51:45 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 18 Feb 2020 08:49:59 +0800
Message-ID: <1581987023.26304.22.camel@mtksdccf07>
Subject: Re: [PATCH v1 1/2] scsi: ufs: add required delay after gating
 reference clock
From: Stanley Chu <stanley.chu@mediatek.com>
To: Bart Van Assche <bvanassche@acm.org>
Date: Tue, 18 Feb 2020 08:50:23 +0800
In-Reply-To: <87f03ff5-445b-25c2-308d-5c9e18942a0f@acm.org>
References: <20200217093559.16830-1-stanley.chu@mediatek.com>
 <20200217093559.16830-2-stanley.chu@mediatek.com>
 <87f03ff5-445b-25c2-308d-5c9e18942a0f@acm.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_165042_241601_45ABF020 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 andy.teng@mediatek.com, jejb@linux.ibm.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, avri.altman@wdc.com,
 cang@codeaurora.org, linux-mediatek@lists.infradead.org,
 peter.wang@mediatek.com, alim.akhtar@samsung.com, matthias.bgg@gmail.com,
 asutoshd@codeaurora.org, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bart,

On Mon, 2020-02-17 at 08:17 -0800, Bart Van Assche wrote:
> On 2020-02-17 01:35, Stanley Chu wrote:
> > -			if (skip_ref_clk && !strcmp(clki->name, "ref_clk"))
> > +			ref_clk = !strcmp(clki->name, "ref_clk") ? true : false;
> > +			if (skip_ref_clk && ref_clk)
> 
> Since the " ? true : false" part is superfluous, please leave it out.

Will fix this in next version.

> Thanks,
> 
> Bart.

Thanks,
Stanley Chu
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
