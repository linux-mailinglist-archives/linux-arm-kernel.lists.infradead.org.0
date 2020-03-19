Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E57A18B0F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 11:12:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FnPT3ehzM1XakguRUPWhbartceo9griB60nLLrTIVVE=; b=PV+2T5gW0XgtEC
	/8rFd4F3rRF/cOeHOyiI3xPIeOl9S8FXheQVxxK/6dBIXC1CY9QHjduxlbdLDPR+NCzHRm7ceDp/t
	v+jOm8ycVzxSkJpQ1QwsuaRThIrfYkwSR48RQX0uI28vKSN9LI3tqvpbcHtqIGQjzWXhtoqBvfU9u
	ZEuWflFaKjUrt0eTv4LQ95JuqWIxko9gnBEdiB4nWCqdSC2o+nJb4IApp4WjRBBjf/DwWGjHP5OtY
	HUd8quDEnKpOV1ZgLJm/16+DVM5xaRyVxRxpPq+MUN5upLIXY0yW9mBGZSkxOc7eAqVXRA8zP0j3R
	VAKnfMG8otTgCwX97FMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEsAM-0000fB-UW; Thu, 19 Mar 2020 10:12:43 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEsAB-0000ZR-N0; Thu, 19 Mar 2020 10:12:33 +0000
X-UUID: 020d3d86fb8c45adb1f4bb4880deaeb9-20200319
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=NQc97c+bFcajvwqMNAIU5Im4/Ht7RtZjA7gAha/i0is=; 
 b=PzQZfb2qdoPZppyDhZw2qodlmIbRahFn37M/cZS+fJSV1IO6WkDJ4jmxpHehxJpkTEcT6QiJD5RQkKj4eH9n0wce63YBduPXBOLmEDsjFScNVeE/Cw/CRemAUyNOQBqiVnPKDlQUB3g1+/Y2WHa4i4irDIekYFfx2ZI8EYgb8V0=;
X-UUID: 020d3d86fb8c45adb1f4bb4880deaeb9-20200319
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1364288879; Thu, 19 Mar 2020 02:12:30 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Mar 2020 03:04:09 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 19 Mar 2020 18:03:25 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 19 Mar 2020 18:03:24 +0800
Message-ID: <1584612215.5781.62.camel@mhfsdcap03>
Subject: Re: [V3, 2/2] media: i2c: Add DW9768 VCM driver
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 19 Mar 2020 18:03:35 +0800
In-Reply-To: <CAHp75Vf5km-YitoTUAFkr8LZVq2QMep1rC19ZpR-YRbeXgJOVQ@mail.gmail.com>
References: <20200228155958.20657-1-dongchun.zhu@mediatek.com>
 <20200228155958.20657-3-dongchun.zhu@mediatek.com>
 <20200305120516.GQ5379@paasikivi.fi.intel.com>
 <CAHp75Vf5km-YitoTUAFkr8LZVq2QMep1rC19ZpR-YRbeXgJOVQ@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: AAF735A607185470B296EBAC9A1830596A83AB95D1C73C00CFE0BC853D96BD352000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_031231_760582_465C7132 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Nicolas Boichat <drinkcat@chromium.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, srv_heupstream@mediatek.com,
 devicetree <devicetree@vger.kernel.org>, shengnan.wang@mediatek.com,
 Tomasz Figa <tfiga@chromium.org>, louis.kuo@mediatek.com,
 sj.huang@mediatek.com, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, bingbu.cao@intel.com,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>, Linux Media
 Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andy,

On Tue, 2020-03-10 at 12:10 +0200, Andy Shevchenko wrote:
> On Thu, Mar 5, 2020 at 2:07 PM Sakari Ailus
> <sakari.ailus@linux.intel.com> wrote:
> > On Fri, Feb 28, 2020 at 11:59:58PM +0800, Dongchun Zhu wrote:
> > > This patch adds a V4L2 sub-device driver for DW9768 lens voice coil,
> > > and provides control to set the desired focus via I2C serial interface.
> 
> ...
> 
> > > --- a/MAINTAINERS
> > > +++ b/MAINTAINERS
> > > @@ -5139,6 +5139,7 @@ M:      Dongchun Zhu <dongchun.zhu@mediatek.com>
> > >  L:   linux-media@vger.kernel.org
> > >  T:   git git://linuxtv.org/media_tree.git
> > >  S:   Maintained
> > > +F:   drivers/media/i2c/dw9768.c
> > >  F:   Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> 
> This has ordering issues.
> Run parse-maintainers.pl to fix.
> 

Pardon, how to run parse-maintainers.pl?
Locally I ran this script, it occurs some syntax as below.
$./scripts/parse-maintainers.pl
syntax error at ./scripts/parse-maintainers.pl line 108, near
"$hashref{"
Global symbol "$pattern" requires explicit package name
at ./scripts/parse-maintainers.pl line 109.
syntax error at ./scripts/parse-maintainers.pl line 112, near "}"
Global symbol "$file" requires explicit package name
at ./scripts/parse-maintainers.pl line 113.
Can't use global @_ in "my" at ./scripts/parse-maintainers.pl line 117,
near "(@_"
syntax error at ./scripts/parse-maintainers.pl line 152, near "}"
Execution of ./scripts/parse-maintainers.pl aborted due to compilation
errors.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
