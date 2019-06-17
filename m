Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A98477BB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 03:41:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h0XvZ83m6OI//oPXzIuFTgNyI6ien+I0xI03uGYEwi0=; b=UNli3P9Wm2d/Qr
	fnVQXMm2X3kFITfuwGZUvZZQOgl9PfCeVWCArMOvzYifoLJNYEESEufG70nZUv8iBnawYOkoYvH6F
	Jpnofg1etARoLY7xop9AZQOY+SW+E2GoKbleNP/w/x2ZTr47rFabp8oLB4Ogxlj8MCuuKn80CXEE/
	UwMzQtUBCpW3m0vry1A1ZWGMmazxzDl3BcDxH6PGwkvmmc0mP3M963QUjAFUVj4cCYWcLkomXEJYZ
	GJ2Pww/diFJliukBsaUJZcw0LF/n5Qw5770y/rjoB18iSihViN4mK1PcRvuUbyGdBMN+l1hPkAYV6
	nX7mMRhzt2/3iXf3/8NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcgeG-00027p-In; Mon, 17 Jun 2019 01:41:28 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcge3-00026q-CA
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 01:41:16 +0000
Received: by mail-qk1-x744.google.com with SMTP id p144so5233473qke.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Jun 2019 18:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=yDNJnnWMnvyj74KJjqDNrTKP8BhcNS3oCZ7kmmIyfm4=;
 b=ElB77QbjwicalLDAC/XLHtEXw3/UU+ToIyPskfkAUH1tIu/U9suKHVBjE+Gra7qlu4
 SfROdnCJnmHBNN1JY8yyqKoevbAf71SEXwBAiHw3MoEKCkCFmzyQIstM4lJPVL9bE8sW
 ol+INiBZwwHD7Vssk4wOLmuefAvt1+xQjPKj2pJEK/KBp0tmoraLJv3cwMQBU5ozFYrL
 xqBlsK9d2XGk7Z//uN9nMV29HByV5hsqpWrEhHX5TfIdxdq9Kf7bd/MVMdbDKuKazbM0
 w5ctKa0w7flVcDSgU+A3S9ntfWhtBXdpMaClcKumhtGa6lxEnKfQttxesKMVHWox44ln
 1VJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=yDNJnnWMnvyj74KJjqDNrTKP8BhcNS3oCZ7kmmIyfm4=;
 b=J6xIfnEMLRKj6QL4aqyiQ1wf8BtBkloqaWvJG541ZPBkMdSsGcSEyYggFf5mWAAPvP
 K3vW7gGDY5Pe0lGawPps/4Uxnxl1izJi1ZKsL9sHYT74Ql1HVgUlfEp0pKFKpoE/y+Wm
 LUQg8JW2Cc4BtjzhJ3qr8/UxlOOsLsHlPIZoKL5wb8k9+xr8bSCVD8GmuWUyKYinncfc
 noCMgP5b0tKPVQj2Ql0uO6NJCZL8BXFze7u863qfPWGa/fz8oEnTXBUEAsCbsoV1v4Fs
 S31vqLmY+FFF0GcE/htQhwElgqsKzZCRHZWFntEymj5Fyyaprv+Hi1CbaBE08F4gMgGe
 OOJQ==
X-Gm-Message-State: APjAAAVsGKXA/CIRrzoyWYdd+S/ek38q8qyH39bzi/Z+6rIXqdjITBlK
 XUWrYS9EESgzixSubZ3/BxIELQ==
X-Google-Smtp-Source: APXvYqz+ah+V71vGndXB9PVxkYf68i4b83LtgwwezyYhS64hdWj/C2Et4tvVQq+ACar89DMNZAxCaw==
X-Received: by 2002:a37:4887:: with SMTP id v129mr6511552qka.17.1560735671205; 
 Sun, 16 Jun 2019 18:41:11 -0700 (PDT)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id l6sm5718357qkf.83.2019.06.16.18.41.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 16 Jun 2019 18:41:10 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: LTP hugemmap05 test case failure on arm64 with linux-next
 (next-20190613)
From: Qian Cai <cai@lca.pw>
In-Reply-To: <054b6532-a867-ec7c-0a72-6a58d4b2723e@arm.com>
Date: Sun, 16 Jun 2019 21:41:09 -0400
Message-Id: <EC704BC3-62FF-4DCE-8127-40279ED50D65@lca.pw>
References: <1560461641.5154.19.camel@lca.pw>
 <20190614102017.GC10659@fuggles.cambridge.arm.com>
 <1560514539.5154.20.camel@lca.pw>
 <054b6532-a867-ec7c-0a72-6a58d4b2723e@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_184115_557717_032D23BE 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 "linux-mm@kvack.org" <linux-mm@kvack.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> On Jun 16, 2019, at 9:32 PM, Anshuman Khandual <anshuman.khandual@arm.com> wrote:
> 
> Hello Qian,
> 
> On 06/14/2019 05:45 PM, Qian Cai wrote:
>> On Fri, 2019-06-14 at 11:20 +0100, Will Deacon wrote:
>>> Hi Qian,
>>> 
>>> On Thu, Jun 13, 2019 at 05:34:01PM -0400, Qian Cai wrote:
>>>> LTP hugemmap05 test case [1] could not exit itself properly and then degrade
>>>> the
>>>> system performance on arm64 with linux-next (next-20190613). The bisection
>>>> so
>>>> far indicates,
>>>> 
>>>> BAD:  30bafbc357f1 Merge remote-tracking branch 'arm64/for-next/core'
>>>> GOOD: 0c3d124a3043 Merge remote-tracking branch 'arm64-fixes/for-next/fixes'
>>> 
>>> Did you finish the bisection in the end? Also, what config are you using
>>> (you usually have something fairly esoteric ;)?
>> 
>> No, it is still running.
>> 
>> https://raw.githubusercontent.com/cailca/linux-mm/master/arm64.config
>> 
> 
> Were you able to bisect the problem till a particular commit ?

Not yet, it turned out the test case needs to run a few times (usually within 5) to reproduce, so the previous bisection was totally wrong where it assume the bad commit will fail every time. Once reproduced, the test case becomes unkillable stuck in the D state.

I am still in the middle of running a new round of bisection. The current progress is,

35c99ffa20ed GOOD (survived 20 times)
def0fdae813d BAD
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
