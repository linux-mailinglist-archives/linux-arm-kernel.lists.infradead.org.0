Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3FE142EAA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 16:20:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Mime-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6DvdrG6HAd1LdxzTeYJLlK+Zt9/+HoY7+hx/HhPBnvk=; b=K1HiVr0eSuhhXA
	DaDRgpfDFJUSmJPZnnmky0RLrhxChpCM4YAZZugsqbBKNmSKa4eu/fYvaGURsQu/jwvZ2iBCt2r5y
	c6O+l9anpOTqbP8/RQlj+e8r2haS5G3YQI4hr5I/CDFmoY8/ngbyNSMoaiP/iNxNMwUy55NMkGwP+
	RMvQvNhnpoNMv+TdidtNta3tXEYwH8r+g+CvDRYioLlyYXIQONgLWhQUfDuiR0kiIxX5KPC519Qp9
	EtMTr/hidZw7qB2p5s3blMyrTOvHIX4lX1HcE+XZLe8dc+WU8Ra3YyAvtmTDojUUpZDIum0Z8+aqH
	/Hd3A+De/xR7CDNEkcCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itYqs-0002Pn-5F; Mon, 20 Jan 2020 15:20:30 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itYqf-0002Ob-97
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 15:20:22 +0000
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 00KFJb5J002311;
 Mon, 20 Jan 2020 09:19:38 -0600
Received: (from segher@localhost)
 by gate.crashing.org (8.14.1/8.14.1/Submit) id 00KFJbq8002310;
 Mon, 20 Jan 2020 09:19:37 -0600
X-Authentication-Warning: gate.crashing.org: segher set sender to
 segher@kernel.crashing.org using -f
Date: Mon, 20 Jan 2020 09:19:36 -0600
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: Re: [RFC PATCH v4 00/11] powerpc: switch VDSO to C implementation.
Message-ID: <20200120151936.GB3191@gate.crashing.org>
References: <cover.1579196675.git.christophe.leroy@c-s.fr>
 <20200117085851.GS3191@gate.crashing.org>
 <3027b6d2-47a9-a871-7c52-050a5f9c6ab7@c-s.fr>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3027b6d2-47a9-a871-7c52-050a5f9c6ab7@c-s.fr>
User-Agent: Mutt/1.4.2.3i
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_072017_557994_C187A539 
X-CRM114-Status: UNSURE (   6.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Cc: nathanl@linux.ibm.com, arnd@arndb.de,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@samba.org>, luto@kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, tglx@linutronix.de,
 vincenzo.frascino@arm.com, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 02:56:00PM +0000, Christophe Leroy wrote:
> >Nice!  Much better.
> >
> >It should be tested on more representative hardware, too, but this looks
> >promising alright :-)
> 
> mpc832x (e300c2 core) at 333 MHz:
> 
> Before:
> 
> gettimeofday:    vdso: 235 nsec/call
> clock-gettime-realtime:    vdso: 244 nsec/call
> 
> With the series:
> 
> gettimeofday:    vdso: 271 nsec/call
> clock-gettime-realtime:    vdso: 281 nsec/call

Those are important, and degrade ~15%.  That is acceptable IMO, but do
you see a way to optimise this (later)?

Anyway, excellent results, thanks for your persistence!


Segher

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
