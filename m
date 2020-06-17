Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7811FC5C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 07:44:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AWUp3Rgenl+ggbDNl8UQPRsb9//2NtxrWwUMMloer+E=; b=o63QqA3kbZ3lcc
	Z7oabgPJCCyeD+TdCCkGuwJl3rynY9Egkyc2ckZ8nndRqBxH2NJxqmFWveP7rNMNzgtONmyMNpdSz
	4PkwTVNFIZPSYLGuhVcQ/AWxEKMf31TEqUWuygxV7+/LMs5OjhJSUdTrg87Nb3vSRrFbBQQ/39aPO
	KWxyUyaDe+T81O7qFjCrA4Yx7I9o/DSryeGgz3anNSR2o2kxlsckzb1VQEq6FkG0CsT09Ar13Fb3n
	4Am7RHZ/jYxYkKnvMx/rFRKjF50AlA5aBq7X9/Ulk+lLdGWxoRjftTw94OV/KRaC9M6gODMqsHbGj
	j98ieMfIySfykN6kvPqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlQsQ-0006Dm-Mb; Wed, 17 Jun 2020 05:44:46 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlQsD-0006Cf-Sn; Wed, 17 Jun 2020 05:44:35 +0000
X-UUID: b373c437cce74d808d44b2ae90bf1a94-20200616
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Bbt8y3TNU0+UzptSCtll+QC7nia8mpUm1Ua9AtI/usM=; 
 b=tSonHfitkoLdQVGXS1FwEzcLik2YnyVxq8JHL29VOa+cOhvkZCKX1iCeD4fdGj2ca8wFjVtLfaEcEKQFi1GbCjMkbnIRPOkqazILARgywkS9tozDMBjImeVMiuNT91M5/jEX4Z5m4yiDXeJk0K6dEpoopXUybypI/v3HlVSMgIU=;
X-UUID: b373c437cce74d808d44b2ae90bf1a94-20200616
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 686184910; Tue, 16 Jun 2020 21:44:20 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 16 Jun 2020 22:34:24 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 17 Jun 2020 13:34:19 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 17 Jun 2020 13:34:19 +0800
Message-ID: <1592372060.4086.1.camel@mtkswgap22>
Subject: Re: [PATCH v2] usb: gadget: u_serial: improve performance for large
 data
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Wed, 17 Jun 2020 13:34:20 +0800
In-Reply-To: <20200617051422.GA1331778@kroah.com>
References: <1592310884-4307-1-git-send-email-macpaul.lin@mediatek.com>
 <1592362007-7120-1-git-send-email-macpaul.lin@mediatek.com>
 <20200617051422.GA1331778@kroah.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: EF0DEE7F6D93BC783FEA22B064A2D9C2B297A884208A2D82E82201A07707A16D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_224433_936792_7E489EEF 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Felipe Balbi <balbi@kernel.org>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>, linux-usb@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 =?UTF-8?Q?Micha=C5=82_Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>, Matthias
 Brugger <matthias.bgg@gmail.com>, Alan Stern <stern@rowland.harvard.edu>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Sergey Organov <sorganov@gmail.com>,
 Macpaul Lin <macpaul.lin@gmail.com>, Fabrice
 Gasnier <fabrice.gasnier@st.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-06-17 at 07:14 +0200, Greg Kroah-Hartman wrote:
> On Wed, Jun 17, 2020 at 10:46:47AM +0800, Macpaul Lin wrote:
> > Nowadays some embedded systems use VCOM to transfer large log and data.
> > Take LTE MODEM as an example, during the long debugging stage, large
> > log and data were transfer through VCOM when doing field try or in
> > operator's lab. Here we suggest slightly increase the transfer buffer
> > in u_serial.c for performance improving.
> > 
> > Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> > ---
> >  drivers/usb/gadget/function/u_serial.c |    5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> What changed from v1?  Always put that below the --- line as the
> documentation asks for.
> 
> v3?
Sorry, I just forget to add change log, I'll send v3 later.

Thanks!

BR,
Macpaul Lin
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
