Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED0218B2EF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 13:05:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aOW3Hz3MI5vq4Xc7amUqkTECFoRco+xBkhR+WuMLlEQ=; b=bwDCbTV4BRYwBe
	cAxY1kYWfPmLSkj05+aRJjaXt2HvgEmrGzi/QVw2EpwVdv/ZDY8VrsxPFaxv/apioqf09Xe8bIW7j
	Tbp0hD766CcOd+DtTjWbu4H5W0CGne6hUDso56cmbETVu8Heq2+fguZKcx/yfQEbUENh/edr3aAfm
	LxKhY331/KdxtzQYtCK9B9aZ6xiToK+jH3nTsqHmZ4sgm0rgb93Qlue3buGJaHFGLhKbVZb4KU8TG
	4E+LWiuGxUlZwL0ReImPvcElLfd94ddLCrTLzYMhQtBxtjnNF6e8H5vd7zQtTmrwM03+HhGvxf6Vq
	cLLglnHnLZiLO0xxdgbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEtv0-0003Q6-3S; Thu, 19 Mar 2020 12:04:58 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEtul-0003Oc-LC; Thu, 19 Mar 2020 12:04:45 +0000
X-UUID: d3c5b95c75044af39af05c126815ef61-20200319
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=FLsmkHJTejAiVrcG26B7Mjj7M9Wn+0Q8IDeLw5c59Hc=; 
 b=Pd7SSTefh0MrG4TdS7RwTPq/ifDVK3eMan7B1l1bdaBpvM5znv7Fw8YaAUXU5gI17qV2cULleGJ1yctqQed2/R0HbSv+kJcUgWSVTmyQqjY6viQ58a65S/AGXzxo1kZaDwTql5Lp0bUYiWWoU84C6fdBCiDRHNEYDAfhhDLlANE=;
X-UUID: d3c5b95c75044af39af05c126815ef61-20200319
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1650253883; Thu, 19 Mar 2020 04:04:34 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Mar 2020 04:55:05 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 19 Mar 2020 19:53:37 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 19 Mar 2020 19:54:11 +0800
Message-ID: <1584618861.5781.69.camel@mhfsdcap03>
Subject: Re: [V3, 2/2] media: i2c: Add DW9768 VCM driver
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 19 Mar 2020 19:54:21 +0800
In-Reply-To: <20200319113611.GJ1922688@smile.fi.intel.com>
References: <20200228155958.20657-1-dongchun.zhu@mediatek.com>
 <20200228155958.20657-3-dongchun.zhu@mediatek.com>
 <20200305120516.GQ5379@paasikivi.fi.intel.com>
 <CAHp75Vf5km-YitoTUAFkr8LZVq2QMep1rC19ZpR-YRbeXgJOVQ@mail.gmail.com>
 <1584612215.5781.62.camel@mhfsdcap03>
 <20200319113611.GJ1922688@smile.fi.intel.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: AF442A7775ED82EC5799039873DB4E926EA64828482E17C5046CDA13BAF303552000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_050443_703946_4667440B 
X-CRM114-Status: GOOD (  13.24  )
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
 devicetree <devicetree@vger.kernel.org>,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 shengnan.wang@mediatek.com, Tomasz
 Figa <tfiga@chromium.org>, louis.kuo@mediatek.com, sj.huang@mediatek.com,
 Rob Herring <robh+dt@kernel.org>, "moderated
 list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, bingbu.cao@intel.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andy,

On Thu, 2020-03-19 at 13:36 +0200, Andy Shevchenko wrote:
> On Thu, Mar 19, 2020 at 06:03:35PM +0800, Dongchun Zhu wrote:
> > On Tue, 2020-03-10 at 12:10 +0200, Andy Shevchenko wrote:
> > > On Thu, Mar 5, 2020 at 2:07 PM Sakari Ailus
> > > <sakari.ailus@linux.intel.com> wrote:
> > > > On Fri, Feb 28, 2020 at 11:59:58PM +0800, Dongchun Zhu wrote:
> > > > > This patch adds a V4L2 sub-device driver for DW9768 lens voice coil,
> > > > > and provides control to set the desired focus via I2C serial interface.
> > > 
> > > ...
> > > 
> > > > > --- a/MAINTAINERS
> > > > > +++ b/MAINTAINERS
> > > > > @@ -5139,6 +5139,7 @@ M:      Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > >  L:   linux-media@vger.kernel.org
> > > > >  T:   git git://linuxtv.org/media_tree.git
> > > > >  S:   Maintained
> > > > > +F:   drivers/media/i2c/dw9768.c
> > > > >  F:   Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> > > 
> > > This has ordering issues.
> > > Run parse-maintainers.pl to fix.
> > > 
> > 
> > Pardon, how to run parse-maintainers.pl?
> > Locally I ran this script, it occurs some syntax as below.
> > $./scripts/parse-maintainers.pl
> 
> It's a perl script which is made non-executable by some reason.
> 
> So, proper run as a parameter to the language interpreter, i.e.
> 	$ perl scripts/parse-maintainer.pl
> 

I tried-run again on mtk server, which has perl5(version 18.2).
But it still report the same error.
Is there any requirement for perl version?

$perl scripts/parse-maintainers.pl
syntax error at scripts/parse-maintainers.pl line 108, near "$hashref{"
Global symbol "$pattern" requires explicit package name at
scripts/parse-maintainers.pl line 109.
syntax error at scripts/parse-maintainers.pl line 112, near "}"
Global symbol "$file" requires explicit package name at
scripts/parse-maintainers.pl line 113.
Can't use global @_ in "my" at scripts/parse-maintainers.pl line 117,
near "(@_"
syntax error at scripts/parse-maintainers.pl line 152, near "}"
Execution of scripts/parse-maintainers.pl aborted due to compilation
errors.

Local perl version is as below.
$ls -al /usr/bin/perl
perl        perl5.18.2 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
