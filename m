Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A73EB5F4F4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 10:51:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RkVs/IVATNZ7BUUkamNNTDY0rUsskf/dQcIaCmADI+U=; b=cT6aXl2VvFl5v8
	8rs5HlmU91iQL/fSLGq2crgYiz1QUncQZ1CRygY3eBgD7zcTkuj5vtg+5jy4oWERVGyG7lMuHhxWD
	9RVRfuOEQpwzMubryVXZekIV4ChElZLfB/TYVwcrZ9vvmFbxzZuimCX9TVVs7BTtZZbt3RgrYuHZv
	a2KY+jBLiyL/rb1MyrBAxrwrur7wulGZGp6kSExRMazCrR+rLjMHb9UoCGGPxWlWdZIKI3QA5azqg
	OFbY42eCGg6xha5WlTQdMbZndCX50Nmm1ykwkIKrZ3PT7IkQ0oyxkED6FDJYHkAYSitmw/SWqhg9o
	X6iOsSgeA6Z43+AiN0Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hixSt-0000od-EF; Thu, 04 Jul 2019 08:51:39 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hixSc-0000nM-KC
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 08:51:25 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 439C9206C4;
 Thu,  4 Jul 2019 10:51:21 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id BA380205ED;
 Thu,  4 Jul 2019 10:51:20 +0200 (CEST)
Subject: Re: [PATCHv5 1/2] dt-bindings: coresight: Change CPU phandle to
 required property
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <cover.1561659046.git.saiprakash.ranjan@codeaurora.org>
 <2afedb941294af7ba0658496b4aca3759a4e43ff.1561659046.git.saiprakash.ranjan@codeaurora.org>
 <CANLsYkxvh+qUDvqG45o7qh61Noq=a=BJ4-p68ipdzxYt6n5bNA@mail.gmail.com>
 <8fb5947e-acf8-faff-5594-2a32151ebee7@codeaurora.org>
 <20190704070239.GB32707@kroah.com>
 <72dff807-7172-7882-83fc-d7ff4cafe39f@free.fr>
 <20190704081822.GD6438@kroah.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <b8b0c6a8-3e43-7143-c1f4-6ce8c60db9d8@free.fr>
Date: Thu, 4 Jul 2019 10:51:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190704081822.GD6438@kroah.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Jul  4 10:51:21 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_015122_804375_49658D58 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: MSM <linux-arm-msm@vger.kernel.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/07/2019 10:18, Greg Kroah-Hartman wrote:

> Marc Gonzalez wrote:
> 
>> https://lore.kernel.org/patchwork/patch/1094935/
> 
> What can I do with a random url?

I dunno, click it?  ^_^

More seriously, patchwork provides individual patches, as well as
patch series, in the same mbox format used by MUAs, e.g.

https://lore.kernel.org/patchwork/patch/1094935/mbox/
https://lore.kernel.org/patchwork/series/400118/mbox/

Then 'git am' works exactly as expected.

I suspect you know all this, and it's too big a hassle vs your usual
work flow, considering the volume of patches you handle.

Just wanted to point it out to those who might not know.

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
