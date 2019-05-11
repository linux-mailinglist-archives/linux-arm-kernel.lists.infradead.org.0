Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 414F21A8FD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 May 2019 20:12:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pW/t48l2lcvvxHPVY2QkoxWEIIHnT0n+DKIROnyHFOc=; b=pQfWhI2pnNrsh7vTgPoxZEcR0
	zyofiEuJsFqq8+ojo5lfiaytIAkP6g6AZz8Rklcetr8IDjU5/CvKPjUH1AIrM/FZ/ULyY8o16KvDu
	q/4IeFPqVMYVUW55NYWfZIhAX2efv202Rs9HbxniFC6CicGe4SR0UQQpbJ7Q6yDwQdZ87p5gzGV+H
	UQQ4IY1Dim2EsuFJ/kDN1USzF1Z0N+xN0vJEjf4Gm0D/+XLsH/fC7Spo4W2k1sKg7bLeRtlzcl6MW
	KyKMGVx/v/iLZ5XHTEUmfYRozRPtJJUeEr97OQMGnVBcSd3kIiqsRb4rckb/0TzizLDbx8TIfuFKS
	IQnqUCd5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPWTs-0002Rq-AW; Sat, 11 May 2019 18:12:20 +0000
Received: from mutluit.com ([82.211.8.197])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPWTk-0002RM-Sg
 for linux-arm-kernel@lists.infradead.org; Sat, 11 May 2019 18:12:15 +0000
Received: from [127.0.0.1] (s2.mutluit.com [82.211.8.197]:40136)
 by mutluit.com (s2.mutluit.com [82.211.8.197]:50025) with ESMTP ([XMail 1.27
 ESMTP Server])
 id <S16FACAA> for <linux-arm-kernel@lists.infradead.org> from <um@mutluit.com>;
 Sat, 11 May 2019 14:12:07 -0400
Subject: Re: [RFC PATCH] drivers: ata: ahci_sunxi: Increased SATA/AHCI DMA
 TX/RX FIFOs
To: Stefan Monnier <monnier@iro.umontreal.ca>, linux-ide@vger.kernel.org
References: <20190510192550.17458-1-um@mutluit.com>
 <jwvk1ex6rvb.fsf-monnier+gmane.comp.hardware.netbook.arm.sunxi@gnu.org>
From: "U.Mutlu" <um@mutluit.com>
Organization: mutluit.com
Message-ID: <5CD71077.1020100@mutluit.com>
Date: Sat, 11 May 2019 20:12:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:40.0) Gecko/20100101
 Firefox/40.0 SeaMonkey/2.37a1
MIME-Version: 1.0
In-Reply-To: <jwvk1ex6rvb.fsf-monnier+gmane.comp.hardware.netbook.arm.sunxi@gnu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_111213_243751_34F062D7 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_SPACE_BRACKET No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: u-boot@lists.denx.de, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Stefan Monnier wrote on 05/11/2019 03:37 PM:
>> Increasing the SATA/AHCI DMA TX/RX FIFOs (P0DMACR.TXTS and .RXTS) from
>> default 0x0 each to 0x3 each gives a write performance boost of 120MB/s
>> from lame 36MB/s to 45MB/s previously. Read performance is about 200MB/s
>> [tested on SSD using dd bs=4K count=512K].
>
> Such a simple patch to fix such a long-standing performance problem that
> everyone [ well, apparently not quite everyone ] assumed was a hardware
> limitation...
>
> And yet, April 1st is long gone.
>
> Is it really for real?

Yes, it's indeed real, Stefan; really no April 1st joke.  :-)

As you indicated, this problem of slow SATA write-speed
with these small devices lasts now for more than 5 years.
This patch finally solves the problem.

On my test device (BPI-R1) the optimum blocksize seems to be 12K
as it then gives even 129 MB/s write speed.

Here are some test results with different blocksizes, all giving
a write speed of 125 to 129 MB/s:

time sh -c "dd if=/dev/zero of=test.tmp bs=$bs count=$count conv=fdatasync"


------------ bs=8K / count=256K / 1 ------------------
262144+0 records in
262144+0 records out
2147483648 bytes (2.1 GB) copied, 16.9237 s, 127 MB/s

real	0m16.935s
user	0m0.388s
sys	0m15.777s

------------ bs=8K / count=256K / 2 ------------------
262144+0 records in
262144+0 records out
2147483648 bytes (2.1 GB) copied, 16.9916 s, 126 MB/s

real	0m17.973s
user	0m0.326s
sys	0m16.806s

------------ bs=8K / count=256K / 3 ------------------
262144+0 records in
262144+0 records out
2147483648 bytes (2.1 GB) copied, 17.0085 s, 126 MB/s

real	0m17.993s
user	0m0.442s
sys	0m16.588s

------------ bs=12K / count=171K / 1 ------------------
175104+0 records in
175104+0 records out
2151677952 bytes (2.2 GB) copied, 16.8474 s, 128 MB/s

real	0m16.860s
user	0m0.205s
sys	0m15.705s

------------ bs=12K / count=171K / 2 ------------------
175104+0 records in
175104+0 records out
2151677952 bytes (2.2 GB) copied, 16.6934 s, 129 MB/s

real	0m17.669s
user	0m0.227s
sys	0m16.355s

------------ bs=12K / count=171K / 3 ------------------
175104+0 records in
175104+0 records out
2151677952 bytes (2.2 GB) copied, 16.6684 s, 129 MB/s

real	0m17.654s
user	0m0.388s
sys	0m16.118s

------------ bs=16K / count=128K / 1 ------------------
131072+0 records in
131072+0 records out
2147483648 bytes (2.1 GB) copied, 17.1845 s, 125 MB/s

real	0m17.200s
user	0m0.251s
sys	0m16.060s

------------ bs=16K / count=128K / 2 ------------------
131072+0 records in
131072+0 records out
2147483648 bytes (2.1 GB) copied, 16.9221 s, 127 MB/s

real	0m17.902s
user	0m0.170s
sys	0m16.763s

------------ bs=16K / count=128K / 3 ------------------
131072+0 records in
131072+0 records out
2147483648 bytes (2.1 GB) copied, 16.8845 s, 127 MB/s

real	0m17.868s
user	0m0.167s
sys	0m16.736s



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
