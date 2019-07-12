Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBBC6697B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 10:58:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d4qMYlA+NuOgKxik8km7yD6VUiYUQ0YrxdW+7t5jbIo=; b=ic5Tnc8wjQabnp
	lMm0lssqWnESfKlJBEx7Q8SVPInLMuD9K3Qdgsn4g7mt/1vbeo+XURpIPmOEuDYRt8Fi4jSb5AThT
	IZ1h0fBKuKx3qI567GAmxg5vDtsmqAzk9YuRdqNxkzBeX+W3iojKMbtvobhyKmmQrEuMCV8CCoEKC
	29Vf6xXy3X2K0+XC8YykaFsjkfedL8cym4ibafw10iUZ89mg7Y8qVzGDgWyDvFMA7Rf6hePGua5Yx
	1U0sh1/KT7Wtb13Imc5N6hpSVemt7Dp9IpLT1Vp8Bnv2effNwVUa2hZzhKHM6gtt7hpdp72QulkKg
	u1kXi0ye/Qgny77tCB9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlrO1-0002uQ-9f; Fri, 12 Jul 2019 08:58:37 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlrNq-0002kb-3M
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 08:58:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ye7QJTr/VL6E13dVCzENZu/bqsS/Cpo3ATNqw8M0Wbk=; b=pxG2ppYhl5upfZIplcnu4BB/J
 C8O72GDBPB+mMJlIgQuFVo8voDRw0gWSSzD9M/au+DXaQXF2Qnqyo6KJ/2XbNhDrln110BxavS8HW
 /jEHpLHkwOrPTZh0SL0E+EMRYGdWN3XuwJo9nnmA1W+QX0VJHJuYY+cABCL9CGPliDF8TpE5hO/3X
 4Xm5DJi9NHh02iMQu78LT+p/u2yOFOWdUc9xl5+wTFasXX/+iVSUBshgElltYL/W41vFkrzSVj8Ua
 V/I8xHMcaE1IoF3UGXj7GhlzNXLG2tb4H+le/43Bj4/aQzT2yigHtan9nv02+SN1uyXTJXwjcr1yS
 93AjNjfKw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:60362)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hlrLc-0000p6-7n; Fri, 12 Jul 2019 09:56:08 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hlrLX-0005XL-2W; Fri, 12 Jul 2019 09:56:03 +0100
Date: Fri, 12 Jul 2019 09:56:02 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: "Raslan, KarimAllah" <karahmed@amazon.de>
Subject: Re: [PATCH] arm: Extend the check for RAM in /dev/mem
Message-ID: <20190712085602.v2tncu5tsngtvbww@shell.armlinux.org.uk>
References: <1562883681-18659-1-git-send-email-karahmed@amazon.de>
 <14f02e29-77b2-29d9-a9f4-7f89ad0194f6@arm.com>
 <1562900298.1345.12.camel@amazon.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562900298.1345.12.camel@amazon.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_015826_147541_8C6509F2 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "anders.roxell@linaro.org" <anders.roxell@linaro.org>,
 "yuzhao@google.com" <yuzhao@google.com>, "will@kernel.org" <will@kernel.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "info@metux.net" <info@metux.net>,
 "anshuman.khandual@arm.com" <anshuman.khandual@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "yaojun8558363@gmail.com" <yaojun8558363@gmail.com>,
 "james.morse@arm.com" <james.morse@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 02:58:18AM +0000, Raslan, KarimAllah wrote:
> On Fri, 2019-07-12 at 08:06 +0530, Anshuman Khandual wrote:
> > =

> > On 07/12/2019 03:51 AM, KarimAllah Ahmed wrote:
> > > =

> > > Some valid RAM can live outside kernel control (e.g. using mem=3D ker=
nel
> > > command-line). For these regions, pfn_valid would return "false" caus=
ing
> > > system RAM to be mapped as uncached. Use memblock instead to identify=
 RAM.
> > =

> > Once the remaining memory is outside of the kernel (as the admin would =
have
> > intended with mem=3D command line) what is the particular concern regar=
ding
> > the way those get mapped (cached or not) ? It is not to be used any way.
> =

> They can be used by user-space which might lead to them being used by the=
=A0
> kernel. One use-case would be using them as guest memory for KVM as I det=
ailed=A0
> here:
> =

> https://lwn.net/Articles/778240/

From the 32-bit ARM point of view...

What if someone's already doing something similar with a non-coherent
DSP and is relying on the current behaviour?  This change is a user
visible behavioural change that could end up breaking userspace.

In other words, it isn't something we should rush into.

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
