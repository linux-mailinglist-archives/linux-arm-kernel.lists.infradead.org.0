Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71FDE85A2D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 08:01:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u+2ZriGHagBfB6CdgA+8kWvXIame0hFJMKFdKEVz4IA=; b=gJ8Ol7dvwMBo3m
	4id+tysymz/GGRcN15jkYEQVW0jicx2J9/s6CLbpGdlxMk2TXpKZEnwW7VkJTL0cNrx5LElvVzh1s
	ZVxYBZBf6wOC5GKiBZjQB/02RgvCTptWof3kgnn3nwwBmMQ7p9vtF9fsXDCtG/qlONVsZjSm/Eo+y
	Zix55D6J8/SnKFgOxlgsvoGtAm8WSJOcVZf6A/klr1GykZ+GsOan2TBuvjVK2kmobINwrbN/XUX/X
	L/EmCogpwFxW22syalCldb0x/SLaslbMl7bI29zetxSww0UMUhypHBpEIUG++xHqfL7RbpNlcxHBm
	8Wm09hue8+LWYai2rmKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvbUZ-00061h-AT; Thu, 08 Aug 2019 06:01:39 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvbUJ-0005zc-M9; Thu, 08 Aug 2019 06:01:25 +0000
X-UUID: 3441cc41635b4423896bc944bba6aa89-20190807
X-UUID: 3441cc41635b4423896bc944bba6aa89-20190807
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1785554735; Wed, 07 Aug 2019 22:01:18 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 7 Aug 2019 23:01:16 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 8 Aug 2019 14:01:14 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 8 Aug 2019 14:01:15 +0800
Message-ID: <1565244075.26350.3.camel@mtkswgap22>
Subject: Re: [PATCH v2] arm64: mm: print hexadecimal EC value in
 mem_abort_decode()
From: Miles Chen <miles.chen@mediatek.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Date: Thu, 8 Aug 2019 14:01:15 +0800
In-Reply-To: <98bdbcfb-24ed-fcd8-4b2c-f2c78b245dda@arm.com>
References: <20190807003336.28040-1-miles.chen@mediatek.com>
 <98bdbcfb-24ed-fcd8-4b2c-f2c78b245dda@arm.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_230123_734613_B030A621 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <Mark.rutland@arm.com>, wsd_upstream@mediatek.com,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-08-08 at 11:19 +0530, Anshuman Khandual wrote:
> 
> On 08/07/2019 06:03 AM, Miles Chen wrote:
> > This change prints the hexadecimal EC value in mem_abort_decode(),
> > which makes it easier to lookup the corresponding EC in
> > the ARM Architecture Reference Manual.
> > 
> > The commit 1f9b8936f36f ("arm64: Decode information from ESR upon mem
> > faults") prints useful information when memory abort occurs. It would
> > be easier to lookup "0x25" instead of "DABT" in the document. Then we
> > can check the corresponding ISS.
> > 
> > For example:
> > Current	info	  	Document
> > 		  	EC	Exception class
> > "CP15 MCR/MRC"		0x3	"MCR or MRC access to CP15a..."
> > "ASIMD"			0x7	"Access to SIMD or floating-point..."
> > "DABT (current EL)" 	0x25	"Data Abort taken without..."
> > ...
> > 
> > Before:
> > Unable to handle kernel paging request at virtual address 000000000000c000
> > Mem abort info:
> >   ESR = 0x96000046
> >   Exception class = DABT (current EL), IL = 32 bits
> >   SET = 0, FnV = 0
> >   EA = 0, S1PTW = 0
> > Data abort info:
> >   ISV = 0, ISS = 0x00000046
> >   CM = 0, WnR = 1
> > 
> > After:
> > Unable to handle kernel paging request at virtual address 000000000000c000
> > Mem abort info:
> >   ESR = 0x96000046
> >   EC = 0x25: DABT (current EL), IL = 32 bits
> >   SET = 0, FnV = 0
> >   EA = 0, S1PTW = 0
> > Data abort info:
> >   ISV = 0, ISS = 0x00000046
> >   CM = 0, WnR = 1
> > 
> > Change since v1:
> > print "EC" instead of "Exception class"
> > print EC in fixwidth
> > 
> > Cc: Mark Rutland <Mark.rutland@arm.com>
> > Cc: Anshuman Khandual <anshuman.khandual@arm.com>
> > Cc: James Morse <james.morse@arm.com>
> > Signed-off-by: Miles Chen <miles.chen@mediatek.com>
> 
> This version implements the suggestion, hence it should have
> also contained acked-by tag from Mark from earlier version.
> 

No problem. Sorry for not including the tag.
I was not sure if I should add the acked-by tag from Mark in patch v2.

> Reviewed-by: Anshuman Khandual <anshuman.khandual@arm.com>

If I send patch v3, I should include acked-by tag from Mark and
Reviewed-by tag from you, right?


Miles


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
