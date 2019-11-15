Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA120FE846
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 23:49:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:References:
	In-Reply-To:Date:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1UIS3CETAh2eZaVa3bm3qWGKi0oCO+hYuWEu3WvgC8g=; b=U0l/Vbab7WX+DP
	SAr+JERKZ8U+OtKUV3WoBwIoZKgnNBHFUXyF2ibUPUCPdfsXOj7JCZUU15BGURrnxK1piy/cDtgWz
	BSBV1R2yF5RfkpzVnZWGcZUvXNDOxvkTFPm9SBhBGs0rWo6tMpQKqiGAi4098Qz2QQrVLwN/j9UEp
	njLz++LxCV0sQbuTgoq30aEknyTvi8djeY8nl9/Ossvpr03hxmKeyjPKOxsmd3bkNXKGf2Ebeydv/
	Kv1hvD77Ccgejx2/KwbAh0dQN6Zso5d4XgpzSTRvkAxGRqvmV1G3+EJxMbicfXb+KjZcocXBWzL3J
	T3YKMxY9gywqcIyMa6Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVkOp-0008JI-7S; Fri, 15 Nov 2019 22:49:07 +0000
Received: from baldur.buserror.net ([165.227.176.147])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVkOf-0008Ij-EM
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 22:48:58 +0000
Received: from [2601:449:8480:af0:12bf:48ff:fe84:c9a0]
 by baldur.buserror.net with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <oss@buserror.net>)
 id 1iVkKM-0007zt-Nm; Fri, 15 Nov 2019 16:44:31 -0600
Message-ID: <71e4f8797fa6e4a116a6d1cabcb63871d7a0c4e0.camel@buserror.net>
From: Scott Wood <oss@buserror.net>
To: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>
Date: Fri, 15 Nov 2019 16:44:29 -0600
In-Reply-To: <02dd5acd-b81e-fde3-028c-16e754e846b5@kernel.org>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
 <20191108130123.6839-33-linux@rasmusvillemoes.dk>
 <CAOZdJXU1ELqQh7TitAJW7bsmnj89wq3opJGVizC2B19nL_3_rQ@mail.gmail.com>
 <9f1a846b-c303-92fa-9620-f492ef940de7@rasmusvillemoes.dk>
 <02dd5acd-b81e-fde3-028c-16e754e846b5@kernel.org>
Organization: Red Hat
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2601:449:8480:af0:12bf:48ff:fe84:c9a0
X-SA-Exim-Rcpt-To: timur@kernel.org, linux@rasmusvillemoes.dk,
 qiang.zhao@nxp.com, leoyang.li@nxp.com, christophe.leroy@c-s.fr,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org
X-SA-Exim-Mail-From: oss@buserror.net
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on baldur.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-16.0 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  -15 BAYES_00 BODY: Bayes spam probability is 0 to 1%
 *      [score: 0.0000]
Subject: Re: [PATCH v4 32/47] serial: ucc_uart: use of_property_read_u32()
 in ucc_uart_probe()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on baldur.buserror.net)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_144857_547264_00566751 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 lkml <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 linux-serial@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-11-15 at 08:35 -0600, Timur Tabi wrote:
> On 11/15/19 2:01 AM, Rasmus Villemoes wrote:
> > That would be a separate patch, this patch is only concerned with
> > eliminating the implicit assumption of the host being big-endian. And
> > there's already been some pushback to adding arch-specific ifdefs (which
> > I agree with, but as I responded there see as the lesser evil), so
> > unless there's a very good reason to add that complexity, I'd rather not.
> 
> We don't want to encourage people to introduce device trees that don't 
> have the brg-frequency property in them.

Yeah, workarounds like this should be as targeted as possible.  If we knew the
specific chips/boards on which U-Boot has this problem, then limiting it to
those would have been even better (e.g. fix up the device tree from the
platform code), but at this point containing the damage to PPC seems like the
most reasonable approach.  It's not relevant to this specific patch, but it is
relevant to a patchset expanding the set of platforms on which this code
builds.

-Scott



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
