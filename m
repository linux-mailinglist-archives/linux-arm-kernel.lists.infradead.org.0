Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9D764874
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 16:34:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3XXkXbwMFwwx0urXAOOjx1eHmLUax+Wj2sBzuWp1NLg=; b=lfDWSp0wHZaFTZ
	2Wc/M+/O3IW2lr3ij56p3NRpOVTzjEFqe3HsIXAsjnjjPf41ozgwbcugcMFdxbDHX45lez5hdnY7R
	0vnBZ+vh1l9JV7l7OlmC2w7pEKzFJTPPpohgsuzrh8AmSK+a8D5vKLKxoUCVfrFRkoG6//UoLA60R
	AuOwX1tSr7ivkoDF3SCaiBelJcWEP73u1avImsgIE/HFmgD/YNVLYXJ0PiBkVWpUP5EpXLEf3Yhs5
	gzXtSnxoJ3lqxODs8WJAXKprALVFK7BLMRQ+mGW5Ow5NlbJmygCof+Kxvt9nWH1ZXewCIHDvkHxt3
	TrzlGTaNWw7qJWDzA84Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlDfa-0000B0-As; Wed, 10 Jul 2019 14:34:06 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlDfN-0000AU-54
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 14:33:54 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1478351032;
 Wed, 10 Jul 2019 14:33:52 +0000 (UTC)
Received: from treble (ovpn-112-43.rdu2.redhat.com [10.10.112.43])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B28355FCC1;
 Wed, 10 Jul 2019 14:33:50 +0000 (UTC)
Date: Wed, 10 Jul 2019 09:33:47 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [RFC V3 00/18] objtool: Add support for arm64
Message-ID: <20190710143347.pviyxuvenz4rqldb@treble>
References: <20190624095548.8578-1-raphael.gault@arm.com>
 <e4ce2867-1d9c-54f4-73a5-668057e423a7@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e4ce2867-1d9c-54f4-73a5-668057e423a7@arm.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Wed, 10 Jul 2019 14:33:52 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_073353_215388_815228BC 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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
Cc: julien.thierry@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 08:31:28AM +0100, Raphael Gault wrote:
> Hi all,
> 
> Just a gentle ping to see if anyone has comments to make about this version
> :)

Hi Raphael,

Sorry for the delay.  I haven't forgotten about these patches.  I hope
to do a proper review in the next week or so.

-- 
Josh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
