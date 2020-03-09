Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6777717ECAD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 00:31:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5E3ZzDKQokEYAMK6PweocsxGXSzVd8tie62Uqfj6xGk=; b=YSc1YXXrTYDNmE
	W/iLoQFXsHA9VFC/2Uk866ME34ebYoP7/tv6YWxWOF4agx3qD+wY/wWbkrxEza8Pt1eijHAu1fqRk
	XXlfyvySvUXIg87OEk8M+TqQXP1x2MBxqkbD0FdQrVw3l8AN3gsRdYCiTwMI5J3KX9jN8Gb/ycvcU
	TLYDSdkTN/zI+Zrs6QEHlWL2BS0A3nxoUx/zADQwq6AU4zZYqbquuIRkHIADOvmJYq1yiRoSg22Em
	LHBrNIgCjEztSU7DucCAi4NfPe/4TuTzIeBfaznEY0kxWITgoxBH/2nxaP887ZINr1rUVcFrytkFU
	7p4k3WgPAfrXJEm3uh2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBRrp-0007Ch-0o; Mon, 09 Mar 2020 23:31:25 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBRrg-0007C7-Lv; Mon, 09 Mar 2020 23:31:18 +0000
X-UUID: 61cec5a51ff94b26b9524ffaad2b2e0b-20200309
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=/ML3Ledtqy4m3bKFwbFWPyytmDkR4UuhLn++0IipQ84=; 
 b=TZorDZQcjDTH8lhmhgwVC1EltnoyQvnZ/vx2FIVo0ORShoGzK930oQGd0abkK3LzJNKUE19zlwu7m2pdA0eea2zZRC3XoEikCEDXxOvcqsZgLl02BezOl57hK1Lui4QRqPs9SLiyu6/0PwW7+3KAMnBP9WGJMZK5ox+whgKW4H0=;
X-UUID: 61cec5a51ff94b26b9524ffaad2b2e0b-20200309
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chun-hung.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 989306467; Mon, 09 Mar 2020 15:31:09 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 9 Mar 2020 16:21:06 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Mar 2020 07:19:53 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 10 Mar 2020 07:18:21 +0800
Message-ID: <1583796065.23665.8.camel@mtkswgap22>
Subject: Re: [PATCH 1/4] [1/4] mmc: core: expose MMC_CAP2_CQE* to dt
From: Chun-Hung Wu <chun-hung.wu@mediatek.com>
To: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 10 Mar 2020 07:21:05 +0800
In-Reply-To: <CACRpkdauCe-zAcsO5q_79+Ux_a2=bktA5UqKjWs4XdBJZ3wWeg@mail.gmail.com>
References: <1581921111-24172-1-git-send-email-chun-hung.wu@mediatek.com>
 <1581921111-24172-2-git-send-email-chun-hung.wu@mediatek.com>
 <CACRpkdauCe-zAcsO5q_79+Ux_a2=bktA5UqKjWs4XdBJZ3wWeg@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_163116_729137_1F45ED83 
X-CRM114-Status: GOOD (  21.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, wsd_upstream@mediatek.com,
 linux-mmc <linux-mmc@vger.kernel.org>, Pan Bian <bianpan2016@163.com>, Pavel
 Machek <pavel@ucw.cz>, Chaotian Jing <chaotian.jing@mediatek.com>,
 kernel-team@android.com, "open list:OPEN FIRMWARE AND FLATTENED
 DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thomas
 Gleixner <tglx@linutronix.de>, Stanley Chu <stanley.chu@mediatek.com>,
 Allison Randal <allison@lohutok.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Mathieu Malaterre <malat@debian.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kuohong Wang <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-02-21 at 15:33 +0100, Linus Walleij wrote:
> On Mon, Feb 17, 2020 at 7:32 AM Chun-Hung Wu <chun-hung.wu@mediatek.com> wrote:
> 
> > Expose MMC_CAP2_CQE and MMC_CAP2_CQE_DCMD
> > to host->caps2 if
> > 1. "supports-cqe" is defined in dt and
> > 2. "disable-cqe-dcmd" is not defined in dt.
> >
> > ---
> >  drivers/mmc/core/host.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/drivers/mmc/core/host.c b/drivers/mmc/core/host.c
> > index 105b7a7..efb0dbe 100644
> > --- a/drivers/mmc/core/host.c
> > +++ b/drivers/mmc/core/host.c
> > @@ -319,6 +319,14 @@ int mmc_of_parse(struct mmc_host *host)
> >                 host->caps2 |= MMC_CAP2_NO_SD;
> >         if (device_property_read_bool(dev, "no-mmc"))
> >                 host->caps2 |= MMC_CAP2_NO_MMC;
> > +       if (device_property_read_bool(dev, "supports-cqe"))
> > +               host->caps2 |= MMC_CAP2_CQE;
> 
> I don't understand why this is even a DT property as it should
> be clear from the hosts compatible whether it supports CQE or
> not. But it's too late to do anything about that I suppose, and
> I just assume there is something I don't understand here.
"supports-cqe" as my understanding is like HS400 HS200 is a host
capability.
> 
> > +       /* Must be after "supports-cqe" check */
> > +       if (!device_property_read_bool(dev, "disable-cqe-dcmd")) {
> > +               if (host->caps2 & MMC_CAP2_CQE)
> > +                       host->caps2 |= MMC_CAP2_CQE_DCMD;
> > +       }
> 
> This is the right place to do this I suppose. Disabling CQE
> selectively is something you might wanna do for debugging.
> Acked-by: Linus Walleij <linus.walleij@linaro.org>
> 
> I see that some drivers are already parsing this DT property
> on their own, should we follow up with patches so that these:
> 
> $ git grep 'supports-cqe'
> drivers/mmc/host/sdhci-brcmstb.c:       if
> (device_property_read_bool(&pdev->dev, "supports-cqe")) {
> drivers/mmc/host/sdhci-msm.c:   if (of_property_read_bool(node, "supports-cqe"))
> drivers/mmc/host/sdhci-tegra.c: if
> (device_property_read_bool(host->mmc->parent, "supports-cqe"))
> 
> Make use of the central parsing instead?
In v4, I will remove the vendor driver dt setting and use central
parsing instead.
> 
> Yours,
> Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
