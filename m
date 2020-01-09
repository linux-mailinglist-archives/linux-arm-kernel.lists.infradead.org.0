Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCBE5135B8D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 15:39:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PQ0QCaSTTnhKaf1v48oSSF5JTGlLJlAkFx1TfDSTzjI=; b=fFLIZExAXX3fj2
	vhby5z+FzCA9IO7Qe7HcwK6nen2dXzDMObBobEyi9ANHKgLHYabgl+R9VeQS0LzWjbh0zSz+dp0JR
	KIfkDSwc4zDeu7zbE+XUTcykLVN0sfnWq1PC5vZjLql1rfdkTlYENYldQ2aKlZNL9xHvZekwL0dX+
	iiBBbvLRrVzt+pKd5taaKrOY0IrNuZV529tuvYHPgzR3W7iD6/prPceVokr7EPLiS9cbT0qryxrkV
	/VvmLwtfHDHJkOfwho7iE+iVbDLGuesJlmR5jd0d1ygua2Ok15UthV//Y3mzRflflgjvmv9+EgbD0
	JJ1YG8t1kc16OioHRCLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYxp-0006EC-WA; Thu, 09 Jan 2020 14:39:10 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYxi-0006DH-P1
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 14:39:04 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 7FCE768BFE; Thu,  9 Jan 2020 15:38:59 +0100 (CET)
Date: Thu, 9 Jan 2020 15:38:59 +0100
From: Christoph Hellwig <hch@lst.de>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH RESEND v2] ARM: dma-api: fix max_pfn off-by-one error
 in __dma_supported()
Message-ID: <20200109143859.GA22907@lst.de>
References: <20191224030239.5656-1-wens@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191224030239.5656-1-wens@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_063902_960875_C84C2CEA 
X-CRM114-Status: UNSURE (   6.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Russell King <linux@armlinux.org.uk>, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
