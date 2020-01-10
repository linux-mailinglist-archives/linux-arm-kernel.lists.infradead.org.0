Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F4D13784E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 22:08:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iWNwMabzb2LKx9VaMjN8Wlexhu8s53oMn44NV6vkeew=; b=t+j/6sTN1IDnpV
	/TknInlWguup9pt2wicaNgPfHYBu7MG6o+PpqsL9sMFpGE+h3wlT698zShzBvawYOaIB/6Z4Vbkyu
	Ai3Hal03JSGAYdRh2FGls5SqWLH35RiDdaqCLQbaVMwi2w3+1JE0u2CA0WMhswJnB0T3FAVtq1XxR
	qK5R3ZqvV375H4kmLyCxDOW4I1DpraEoTDzKtIXJgqGYPCyXMYtQMxyWRkmdfIgcA9gamb2yOoLnJ
	vZrvD+bW6qpCdOZEXRyzSp1u8/sA4R1OlTdZ0A15uiZwIqPKkJvxSSku3AeB9E288ygcnERgBGa+G
	iOhsmmoqZ29A7RKvXJwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq1Vl-0004KX-Qa; Fri, 10 Jan 2020 21:08:05 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq1Vd-0004G1-MZ
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 21:07:59 +0000
Received: from p5b06da22.dip0.t-ipconnect.de ([91.6.218.34]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1iq1VU-0004ld-Ub; Fri, 10 Jan 2020 22:07:49 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 6009B105BDB; Fri, 10 Jan 2020 22:07:48 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Arnd Bergmann <arnd@arndb.de>, Christophe Leroy <christophe.leroy@c-s.fr>
Subject: Re: [RFC PATCH v2 05/10] lib: vdso: inline do_hres()
In-Reply-To: <CAK8P3a36OgFuY72b_i6+0xBNGnaxS1SsRid+HrgQHPZtUJp3LQ@mail.gmail.com>
References: <cover.1577111363.git.christophe.leroy@c-s.fr>
 <d0f8dfb26c025d3e3eee1b5f610161ca19b942df.1577111367.git.christophe.leroy@c-s.fr>
 <CAK8P3a36OgFuY72b_i6+0xBNGnaxS1SsRid+HrgQHPZtUJp3LQ@mail.gmail.com>
Date: Fri, 10 Jan 2020 22:07:48 +0100
Message-ID: <87o8vbrpej.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_130757_877272_7FB39DA3 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, Andy Lutomirski <luto@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arnd Bergmann <arnd@arndb.de> writes:
> On Mon, Dec 23, 2019 at 3:31 PM Christophe Leroy
> <christophe.leroy@c-s.fr> wrote:
>>
>> do_hres() is called from several places, so GCC doesn't inline
>> it at first.
>>
>> do_hres() takes a struct __kernel_timespec * parameter for
>> passing the result. In the 32 bits case, this parameter corresponds
>> to a local var in the caller. In order to provide a pointer
>> to this structure, the caller has to put it in its stack and
>> do_hres() has to write the result in the stack. This is suboptimal,
>> especially on RISC processor like powerpc.
>>
>> By making GCC inline the function, the struct __kernel_timespec
>> remains a local var using registers, avoiding the need to write and
>> read stack.
>>
>> The improvement is significant on powerpc.
>>
>> Signed-off-by: Christophe Leroy <christophe.leroy@c-s.fr>
>
> Good idea, I can see how this ends up being an improvement
> for most of the callers.
>
> Acked-by: Arnd Bergmann <arnd@arndb.de>

  https://lore.kernel.org/r/20191112012724.250792-3-dima@arista.com

On the way to be applied.

Thanks,

        tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
