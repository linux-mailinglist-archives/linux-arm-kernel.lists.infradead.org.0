Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC37D1222BF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 04:56:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KWdWHHA9kxByPqAaVA4Yv/i4l3Gq47G11cdyMGnEtNY=; b=BXcuR+mU2/koi/
	WUkJf4R+zA4cQkGoy32mA1zyI2PG2IVRtzi4DQWTB9GL8zfZ+vY+FGv5+WJ2GWOb5W9FhvbEGAlgf
	HZZAczLgDOR6nMXlJQwXMXd9wMNOLAs++foU4mYFJwsVCADMnX8dMZ3jkGrSEId4uO5sIvbxemLIZ
	4XssiEN9+MN+5Uxi/OlRYnBkoAPx5ZoARwaUAoAUVPMaCz6lWfX8YJhXIt3+Gq5s0Lv0ooGOR9xbo
	ZGoCHtF2EV7bRlw11rZfC450eJZEwBA7ogEN5NMR8r83IFSjf4x0yUGwx7goQYEtesxPm9koUyUkT
	YHc1SNK5Aez9t3bPM4DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih3yV-00050W-0Q; Tue, 17 Dec 2019 03:56:43 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih3yK-000501-I9; Tue, 17 Dec 2019 03:56:34 +0000
X-UUID: 3cf023cee9f841eaab3a3e9e9f705b5f-20191216
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=KkmyAsKPyDcGBnKBUKfiIEN/q+ZFhqtz1dZUrUzasmY=; 
 b=AQu47qdPYZ4rF19lIlMz96C/lzXnNcMWCmHvcKFBkN7ia+QDja/BWIQIJW7UscKdZo3hO4NxmAstqoAkxAbdoihaaUCMBxVawqE+Mxhl3qXjOH0tqFx87ArUwOMysDtM+cMOaxahDPJDxXDGBut14LYojDIF9NdizBocgGR+ibU=;
X-UUID: 3cf023cee9f841eaab3a3e9e9f705b5f-20191216
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 245397378; Mon, 16 Dec 2019 19:56:24 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Dec 2019 19:57:33 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs05n2.mediatek.inc
 (172.21.101.140) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 17 Dec 2019 11:55:59 +0800
Received: from [10.16.6.141] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 17 Dec 2019 11:55:59 +0800
Message-ID: <1576554988.19567.3.camel@mszsdaap41>
Subject: Re: [PATCH v3 0/2] clocks don't disable when pwm_mtk_disp suspend
From: Jitao Shi <jitao.shi@mediatek.com>
To: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 17 Dec 2019 11:56:28 +0800
In-Reply-To: <CAGb2v65v+W3-fNwiC_0uN2RpFUBRu3iL2t+OaGHLjVHHWFJVwQ@mail.gmail.com>
References: <20191217030438.26657-1-jitao.shi@mediatek.com>
 <CAGb2v65v+W3-fNwiC_0uN2RpFUBRu3iL2t+OaGHLjVHHWFJVwQ@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_195632_610872_E44CA9F8 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: linux-pwm@vger.kernel.org, linux-kernel <linux-kernel@vger.kernel.org>,
 CK Hu <ck.hu@mediatek.com>, sj.huang@mediatek.com,
 Thierry Reding <thierry.reding@gmail.com>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 Uwe Kleine-Koenig <u.kleine-koenig@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-12-17 at 11:26 +0800, Chen-Yu Tsai wrote:
> Hi,
> 
> On Tue, Dec 17, 2019 at 11:08 AM Jitao Shi <jitao.shi@mediatek.com> wrote:
> >
> > Changes since to v2:
> >  - Edit commit msg.
> >
> > Changes since to v1:
> >  - Edit commit msg.
> >  - Remove the register trigger in probe.
> >  - Rebase to v5.5-rc1.
> >
> > Changes in patches:
> >  - match pwm_mtk_disp clock when suspend/resume
> >  - trigger pwm_mtk_disp reg working after config
> >
> > Jitao Shi (2):
> >   pwm: fix pwm clocks not poweroff when disable pwm
> >   pwm: keep the trigger register after pwm setting.
> 
> Please add appropriate tags to your patches. These are not generic pwm
> patches, but are specific to one driver.
> 
> Consider the prefix: "pwm: mtk-disp: " so others can filter out the
> noise without looking at the content.
> 
> ChenYu

OK. I'll fix this prefix.

Best Regards
Jitao
> 
> >
> >  drivers/pwm/pwm-mtk-disp.c | 63 ++++++++++++--------------------------
> >  1 file changed, 19 insertions(+), 44 deletions(-)
> >
> > --
> > 2.21.0
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
