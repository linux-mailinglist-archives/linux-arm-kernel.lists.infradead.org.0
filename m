Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75230125D9B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 10:25:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1UUuKlAiC3Mj4bcWxc6MLs5fC9dLdLRUaqOABYbjiaI=; b=V0s/zTsqj7oPd4
	R7Q8W+PdGBWXHJxQ0Zy8+XT6loR3Q3luOV2cEuv5g9dqg9ZLKugOSUrqAshZ8R0IEifWw297ud4f1
	Ww6ZIBLPVgwrafJKQ+nYGusmp5/H5NlTfzfxJV0ALN1OPFUVoF9odo+SSVZk6aRk0Q15ZXHTVbpHA
	GIJyBY5coD5q1J9spP40UkQR/V0L+WH09wNmQn+dgmSDruAfaCmDpwRaJ65oqw/HzR+s3MoXrdp8R
	DRF5Ygj6aLMTHaCfhYf+loocCSg2h3V8ybsO3/GDRCEmw3xnOs7dfnItK2kOKQZS00RgWAPrgM7b5
	hcdkNryt1vnjTUglnmRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihs3z-0003ll-5e; Thu, 19 Dec 2019 09:25:43 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihs3Q-0002S6-ES
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 09:25:10 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id ABD7D20404;
 Thu, 19 Dec 2019 10:25:05 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 966352040A;
 Thu, 19 Dec 2019 10:25:05 +0100 (CET)
Subject: Re: [PATCH 08/10] tty: serial: samsung_tty: use 'unsigned int' not
 'unsigned'
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Christoph Hellwig <hch@infradead.org>
References: <20191210143706.3928480-1-gregkh@linuxfoundation.org>
 <20191210143706.3928480-8-gregkh@linuxfoundation.org>
 <eb3cf8f9-3606-c2d6-ad90-4388a52c320b@free.fr>
 <20191212110834.GB1490894@kroah.com> <20191212160949.GA10815@infradead.org>
 <20191212161234.GA1673430@kroah.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <9339baa1-4a4b-ad12-e7e5-ba7b80d18031@free.fr>
Date: Thu, 19 Dec 2019 10:25:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191212161234.GA1673430@kroah.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Dec 19 10:25:05 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_012508_702309_674C0236 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Jiri Slaby <jslaby@suse.com>, LKML <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-serial <linux-serial@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/12/2019 17:12, Greg Kroah-Hartman wrote:

> On Thu, Dec 12, 2019 at 08:09:49AM -0800, Christoph Hellwig wrote:
>
>> On Thu, Dec 12, 2019 at 12:08:34PM +0100, Greg Kroah-Hartman wrote:
>>
>>> Yes.  It's a long-time checkpatch warning, it's good to be explicit for
>>> this type of thing.
>>
>> There is literally no practical benefit going either way.  It is
>> just checkpatch forcing one personal opinion on people.
> 
> Fair enough, but, I was trying to align up the variables to be the same
> type that was then used in a function call.  That's the only reason I
> made this change.

Do you type 'long long unsigned int' for an ULL?

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
