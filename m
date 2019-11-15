Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 992CDFE035
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 15:36:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9/kCIlfT74iUPIKH+foMubNzxVK/DiJ9HXQuxFgdMeM=; b=X36dxN0HYxIDjkpFYOpwTnKN+
	0Ccm48CPcMG+dMyw2tfXtqD4OgoufLiVymRJtpv+qcOQYWDrbqAcy0hFwjYxX0K4edq04MmFZWcnB
	IwA+tnPUuPBcTyVR+vbjetpt+1deWDKTY/jUZzM4BIRWec2+BALOYrrHSJs/3htiu7XZ8QO30nqvI
	Xrq4UCJ59m2/wVy1hyYp1fqiXx9Rtf9M3RS4jggg/FCvlmjc48VxC3msqkLfZhN7N92WnQbTYNxae
	na8f7yDntEsPHt5t7b0ARZKMPcJzUT6bTZPrOmKFiukRabffV6yGJlpgLMcx1aCZwga6eJfY6HaM/
	Sm8vGo7QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVcho-0004Zq-Mc; Fri, 15 Nov 2019 14:36:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVche-0004ZJ-0Y
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 14:36:03 +0000
Received: from [192.168.1.20] (cpe-24-28-70-126.austin.res.rr.com
 [24.28.70.126])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AFF4D20733;
 Fri, 15 Nov 2019 14:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573828561;
 bh=zcYNaxA6BKLXVIrEibaKGpyyFgLeOOLcofq3PI+ecco=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=PDTXSN7Q9BNaGWYT00xceI6zye3VrA+/YAPDFdajMlZi3HFfpMSjCShVVI6ACm1LF
 CnqbEPAeehgHGiIY2k55fkCm49x2fbA6wLV6Nc4PC+UnE1OyQkQbkgM4Q6YT9F5OvD
 IAxsiV8AQN9KM3gn6gtoyf2oWlnTWcbGpB6r6kkQ=
Subject: Re: [PATCH v4 32/47] serial: ucc_uart: use of_property_read_u32() in
 ucc_uart_probe()
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
 <20191108130123.6839-33-linux@rasmusvillemoes.dk>
 <CAOZdJXU1ELqQh7TitAJW7bsmnj89wq3opJGVizC2B19nL_3_rQ@mail.gmail.com>
 <9f1a846b-c303-92fa-9620-f492ef940de7@rasmusvillemoes.dk>
From: Timur Tabi <timur@kernel.org>
Message-ID: <02dd5acd-b81e-fde3-028c-16e754e846b5@kernel.org>
Date: Fri, 15 Nov 2019 08:35:58 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <9f1a846b-c303-92fa-9620-f492ef940de7@rasmusvillemoes.dk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_063602_072716_F73C6D19 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 lkml <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Scott Wood <oss@buserror.net>, linux-serial@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/15/19 2:01 AM, Rasmus Villemoes wrote:
> That would be a separate patch, this patch is only concerned with
> eliminating the implicit assumption of the host being big-endian. And
> there's already been some pushback to adding arch-specific ifdefs (which
> I agree with, but as I responded there see as the lesser evil), so
> unless there's a very good reason to add that complexity, I'd rather not.

We don't want to encourage people to introduce device trees that don't 
have the brg-frequency property in them.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
