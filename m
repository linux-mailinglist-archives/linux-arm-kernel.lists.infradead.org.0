Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12FE91FB423
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:23:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7GfYUQwxik0hjxtCVxu7GBegacl8AnE9OgPSOAWQ5RM=; b=uNxBmILZo3mnof
	SY9+hQ9GvnsIZxTbTdtjWLSQo8MPkYdmpFqOtz0oUXBWhpglcmUU+qOGvhZu0mLlCIpkGQmTuMlXT
	wYIkYlsRDOTpXRyHk+iFTTEAF0f6/kxP2areGwbd30t9rPlhX2inCZGo5ImYCj5gTAg+FCcX/gH6X
	Kgbd+RtwyHdCkUWm78m0vtnburO9G2FrLL9TXI2vpC41XmGvbqI5Em1fOLNOZ791/gzQ3q3X3MU7F
	mNv0D/mKiDtpe2bvYGQN9ykgcwu17R6lRTsVjWw3OLTLL4ecagS+xgzzJ7zDfA9Rw/+LbRGeSXiWj
	aPMSVYQuIZUn7mxTEm5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCUH-0003ui-4T; Tue, 16 Jun 2020 14:22:53 +0000
Received: from netrider.rowland.org ([192.131.102.5])
 by bombadil.infradead.org with smtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlCAr-0003zP-TT
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 14:02:51 +0000
Received: (qmail 31737 invoked by uid 1000); 16 Jun 2020 10:02:46 -0400
Date: Tue, 16 Jun 2020 10:02:46 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Macpaul Lin <macpaul.lin@mediatek.com>
Subject: Re: [PATCH 1/2] usb: gadget: introduce flag for large request
Message-ID: <20200616140246.GA30975@rowland.harvard.edu>
References: <1592310884-4307-1-git-send-email-macpaul.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1592310884-4307-1-git-send-email-macpaul.lin@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_070250_119312_33D6CB6D 
X-CRM114-Status: UNSURE (   5.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.131.102.5 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 =?utf-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sergey Organov <sorganov@gmail.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, linux-mediatek@lists.infradead.org,
 Macpaul Lin <macpaul.lin@gmail.com>, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 08:34:43PM +0800, Macpaul Lin wrote:
> Some USB hardware like DMA engine can help to process (split) the data
> of each URB request into small packets. For example, the max packet size
> of high speed is 512 bytes. These kinds of hardware can help to split
> the continue Tx/Rx data requests into packets just at the max packet
> size during transmission. Hence upper layer software can reduce some
> effort for queueing many requests back and forth for larger data.
> 
> Here we introduce "can_exceed_maxp" flag in gadget when these kinds of
> hardware is ready to support these operations.

This isn't needed.  All UDC drivers must be able to support requests that 
are larger than the maxpacket size.

Alan Stern

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
