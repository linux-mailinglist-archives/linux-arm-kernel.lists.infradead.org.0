Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 956C6E9420
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 01:36:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4eYtJslctamPpntIAP/hGrO8+deHRVS4eaLFidNb6rs=; b=S93X/poHjm5fzg
	NPr09D2PMWBQBpbq6BtXla3oUb75cCmPavDaL7n2N0l6EjIu0s1X1HHOIY+r+oNHIXZi4oQb9z6eK
	usoQs3VhsJhFq6kknxJl44w0Rs/f36M4Ta8E1i8YgIAwMTnZ1oLaGj5QxZ53tBo09EYbpVBExUtag
	qcgqJmciVvn3WVr60tub/3QTJnBmOlk+BoK9ynr2Coi7zSB+hP7TPzrlEZ/DRf6NiTOIgLOIailsB
	Fz1kosU3IynzVQx5W7PtmkI6L1+OkBXQQF4G+SuqFJzpWx1yWSsoe7zlVa5jh1iC8ziUIQxVrz79z
	Opf9jHOY1SZs0Bbnqklg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPbyo-0001oa-Kp; Wed, 30 Oct 2019 00:36:54 +0000
Received: from bilbo.ozlabs.org ([2401:3900:2:1::2] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPbyf-0001mh-0V
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 00:36:47 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 472qJX3hTfz9sPc;
 Wed, 30 Oct 2019 11:36:28 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ellerman.id.au;
 s=201909; t=1572395789;
 bh=cULIR7FKewGoqcCdVz8c9GWUqTWBzH9vqip6TO04VUc=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=ZrnBz8u9UtK35OIBdIYRAEKio8qsnCeoIwPBgPl54K4vLbIV96JpIRijFpj2d6VB/
 3yh38Zr83pyrrBKy1ob5pSFhYxjuOlDR0wxkT8j7sl+eURIwkfQTLhKOPMbjRLCHNq
 MPU6tRZ65hAlAqqvCFI2RrdLVQrG78Wr2+aweqLgfwKHT2b4iNG1L0VLagLCRgHq71
 9Qowav3rgtSLYQrVlsSwHP5FNWVuKn5384n4lcPyxoq23HnVPJULVs58QCVxd2xxKS
 D2BpI2IuAS9K0kM2/GMwh2a5yxiVaLELSZ6BKELGQ4NYJ1J1dErqYrlReUBS6dnZ/y
 akJSpbqkFajEA==
From: Michael Ellerman <mpe@ellerman.id.au>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH 4/7] soc: fsl: qe: replace spin_event_timeout by
 readx_poll_timeout_atomic
In-Reply-To: <a11aaeaa-7075-4ad0-aa26-d8d7eafa72f5@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191018125234.21825-5-linux@rasmusvillemoes.dk>
 <20191018160852.GA13036@infradead.org>
 <a11aaeaa-7075-4ad0-aa26-d8d7eafa72f5@rasmusvillemoes.dk>
Date: Wed, 30 Oct 2019 11:36:27 +1100
Message-ID: <87wocnf4s4.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_173645_268389_57E740C0 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Qiang Zhao <qiang.zhao@nxp.com>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Li Yang <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rasmus Villemoes <linux@rasmusvillemoes.dk> writes:
> On 18/10/2019 18.08, Christoph Hellwig wrote:
>> On Fri, Oct 18, 2019 at 02:52:31PM +0200, Rasmus Villemoes wrote:
>>>  	/* wait for the QE_CR_FLG to clear */
>>> -	ret = spin_event_timeout((ioread32be(&qe_immr->cp.cecr) & QE_CR_FLG) == 0,
>>> -				 100, 0);
>>> -	/* On timeout (e.g. failure), the expression will be false (ret == 0),
>>> -	   otherwise it will be true (ret == 1). */
>>> +	ret = readx_poll_timeout_atomic(ioread32be, &qe_immr->cp.cecr, val, (val & QE_CR_FLG) == 0,
>> 
>> This creates an overly long line.
>
> Yeah, readx_poll_timeout_atomic is a mouthful, and then one also has to
> put in the name of the accessor... I'll wrap it when I respin the
> series, thanks.
>
>> Btw, given how few users of spin_event_timeout we have it might be good
>> idea to just kill it entirely.
>
> Maybe. That's for the ppc folks to comment on; the iopoll.h helpers are
> not completely equivalent (because obviously they don't read tbl
> directly).

AFAICS it was added by and only ever used by Freescale folks, most of
whom have now moved on to other things.

I'd be happy to see it replaced with something generic.

I created an issue in our github to remind us to do that cleanup. Though
in practice that probably just means we'll never get around to it:

  https://github.com/linuxppc/issues/issues/280

> Maybe the generic versions should be taught
> spin_begin/spin_end/spin_cpu_relax so at least that part would be
> drop-in replacement.

That would be nice. Though TBH the intersection of platforms that use
spin_event_timeout() and also define a non-empty spin_begin() etc. is
close to if not zero.

cheers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
