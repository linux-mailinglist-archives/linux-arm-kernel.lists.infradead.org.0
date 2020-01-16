Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1FE13FA49
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 21:14:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nhx4PUKVD5t/HcViRvn3pk5DoJkO7NfwyXX2zw9FyOM=; b=ql1G0K6hsx2QzD
	5dwJMiq6GpKhdGmUyKVLVQ+FcztI1EX0PQzqOQKkHwO6vLmKrCE4HPuCEgkseOK5vZVObtc0/h4Kp
	3ZIn6bOX2a6zHZlPiS6aS7Bjm9gqQyGd2VDNsz4tlsYY3hwqWZ4s7zgs+uMdE97Q+qRWuxoJEa1s1
	VGNYCivlx9mVllNcfswxVvGic8BMkWuFIDcEsGeVz0b1mA/tO/pwnbBYfOl/TOZUTymLJ0SZtF5Q1
	O9NynLNGDfDe/entNjeRFxUJM9GPxjh/IrKck9clUaaRojuf4pUV6esn2dlAyDopqCvrGZw/uOVlS
	bIItEgiLN/xfDCOawU9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isBWs-00055G-2y; Thu, 16 Jan 2020 20:14:10 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isBWk-00054n-09
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 20:14:03 +0000
Received: from p5b06da22.dip0.t-ipconnect.de ([91.6.218.34]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1isBWc-0000Wb-NU; Thu, 16 Jan 2020 21:13:54 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id F20D7101226; Thu, 16 Jan 2020 21:13:53 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Christophe Leroy <christophe.leroy@c-s.fr>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 nathanl@linux.ibm.com, arnd@arndb.de, vincenzo.frascino@arm.com,
 luto@kernel.org
Subject: Re: [RFC PATCH v4 08/11] lib: vdso: allow fixed clock mode
In-Reply-To: <1b278bc1f6859d4df734fb2cde61cf298e6e07fd.1579196675.git.christophe.leroy@c-s.fr>
References: <cover.1579196675.git.christophe.leroy@c-s.fr>
 <1b278bc1f6859d4df734fb2cde61cf298e6e07fd.1579196675.git.christophe.leroy@c-s.fr>
Date: Thu, 16 Jan 2020 21:13:53 +0100
Message-ID: <874kwvf9by.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_121402_184485_CA7B320E 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
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
Cc: x86@kernel.org, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Christophe Leroy <christophe.leroy@c-s.fr> writes:

Can you please adjust the prefix for future patches to lib/vdso: and
start the sentence after the colon with an uppercase letter?

> On arches like POWERPC, the clock is always the timebase, it

Please spell out architectures. Changelogs are not space constraint.

> cannot be changed on the fly and it is always VDSO capable.

Also this sentence does not make sense as it might suggests that
architectures with a fixed compile time known clocksource have something
named timebase. Something like this is more clear:

Some architectures have a fixed clocksource which is known at compile
time and cannot be replaced or disabled at runtime, e.g. timebase on
PowerPC. For such cases the clock mode check in the VDSO code is
pointless.

Hmm?

Thanks,

        tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
