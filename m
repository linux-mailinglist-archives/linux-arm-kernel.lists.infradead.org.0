Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D386DFD8C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 08:11:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sEb7JsZVS/ytY3TL4bw5B/DsMwXWl8gBdloyzz2FJWA=; b=GALzGo7awspL++
	NQ/L08DNWOBNkUF1+6SmIYe31+UpCQHC0ywxX8erZS8W8tceXBhzZ+kiMOMCfRyZCxmoqoXMmFgMv
	aQXcPPSScTZg219dXtt3x7pbx+YXZ26NeZcF1rrZj5FQua6bfLvnFTBp3ki9wEnWYhrFuEGFsjd/P
	d4hTB/Kygi6NGsAw965uLvalL48qR/QqgP6ezwXnx4rOe3Ihb8X+uoLEnS5FLJAbY29cfQkucXq4g
	3GwybUu66WUc4sBiV+m1v3mr8mq2rcvt/iVW0syiYeuAbdTx6SYr95pblw4unatMvjnuZK5SfLye8
	aiZkSad5EvhSjphj5IfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMnON-0008Lj-Ud; Tue, 22 Oct 2019 06:11:39 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMnOC-0008Kf-5C
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 06:11:29 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 23:11:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,326,1566889200"; d="scan'208";a="196337878"
Received: from pipin.fi.intel.com (HELO pipin) ([10.237.72.175])
 by fmsmga008.fm.intel.com with ESMTP; 21 Oct 2019 23:11:21 -0700
From: Felipe Balbi <balbi@kernel.org>
To: Michal Simek <michal.simek@xilinx.com>,
 Saurav Girepunje <saurav.girepunje@gmail.com>, gregkh@linuxfoundation.org,
 michal.simek@xilinx.com, swboyd@chromium.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] usb: gadget: udc: Fix assignment of 0/1 to bool variables
In-Reply-To: <cfb871aa-332c-2256-d194-15f8b87de6f8@xilinx.com>
References: <20191007181527.GA6816@saurav>
 <cfb871aa-332c-2256-d194-15f8b87de6f8@xilinx.com>
Date: Tue, 22 Oct 2019 09:11:21 +0300
Message-ID: <8736fl48dy.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_231128_208832_32B14353 
X-CRM114-Status: UNSURE (   7.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: saurav.girepunje@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi,

Michal Simek <michal.simek@xilinx.com> writes:
>> @@ -1952,9 +1952,9 @@ static void xudc_nonctrl_ep_handler(struct xusb_udc *udc, u8 epnum,
>>  	ep = &udc->ep[epnum];
>>  	/* Process the End point interrupts.*/
>>  	if (intrstatus & (XUSB_STATUS_EP0_BUFF1_COMP_MASK << epnum))
>> -		ep->buffer0ready = 0;
>> +		ep->buffer0ready = false;
>>  	if (intrstatus & (XUSB_STATUS_EP0_BUFF2_COMP_MASK << epnum))
>> -		ep->buffer1ready = 0;
>> +		ep->buffer1ready = false;
>>  
>>  	if (list_empty(&ep->queue))
>>  		return;
>> 
>
> Acked-by: Michal Simek <michal.simek@xilinx.com>

I don't have the original patch, sorry. Care to resend with Acks?

-- 
balbi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
