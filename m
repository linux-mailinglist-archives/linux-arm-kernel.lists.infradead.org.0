Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3820F129C83
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 03:00:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lAio8erRfUXSUTkpUklREA5VSW2D+sdu8zDjkz1erGs=; b=cU32No7deJB4vT
	ea+tCrvhpfQYenOaZscx70fPYtlR8bYLmo+i+QsG1s8rNCrBPfPJCQ6OZKRHcI8UM+hRi+cQvgedu
	GCwrlJ38i6hhnzF6vQd3mYb2jypAFvLVr2oSlanVvGM3bafKZabmkPczFrBTLkN2epUBPfQZjC/pG
	zw8hB47KYHEqoDqLui+bf/CCVDPSOElgg58OMN30ln0NYh0HNreJnJxoC087CkxKQ4uI5WBBg9ncg
	jerwHY7p0WHVBS4PhtrRKANesBf7kmIl4JXiIzPOBNofOuEGFx1BKlUr3QDUdyLi1gyjzNQRTlCTl
	wqiTWXnoleAXLJlQ+y1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijZUO-0000M3-K6; Tue, 24 Dec 2019 02:00:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijZUF-0000Lb-Fp
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 01:59:52 +0000
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 88BBB20828
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Dec 2019 01:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577152790;
 bh=mZIM8/IGO6yj32EzkYlDoUvjeWHo1IO0ajLflWLHJ1E=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=gQGYXs7XTcbdCfx0BUILVDNAMT4zxirLNFz98MThf9EREN5BxfkbsJw1pENHZhpvR
 MLaDU2z5hlCSoTZKzvSyt5ddAtld9M3HziJaduUZk8pJMfEqoz5qyPbPWjvDQ7yqcS
 gb1Iu7wGTPj/8sHQNHy4Kn8t7wlqyf4zPSt/wAiA=
Received: by mail-wr1-f50.google.com with SMTP id q10so18577920wrm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Dec 2019 17:59:50 -0800 (PST)
X-Gm-Message-State: APjAAAU/N4WrATpmJ7W+U5T4dRWHJdOJF0r3R61Yw6IRe1KhiEaT2NdF
 hJeJ7c0QTAtk8oJulSe9enoYiZoBJ/qTdTN3jaX2Ow==
X-Google-Smtp-Source: APXvYqxAMnRl94bz0dtBWu5DeU1T1h7ThWeUzu+q0KQ6Q4rmgmqNaGXBhJRposss35afzcm4hhvUi2inaUTSmKyfilU=
X-Received: by 2002:adf:f2c1:: with SMTP id d1mr31723699wrp.111.1577152789083; 
 Mon, 23 Dec 2019 17:59:49 -0800 (PST)
MIME-Version: 1.0
References: <cover.1577111363.git.christophe.leroy@c-s.fr>
 <fdf1a968a8f7edd61456f1689ac44082ebb19c15.1577111367.git.christophe.leroy@c-s.fr>
In-Reply-To: <fdf1a968a8f7edd61456f1689ac44082ebb19c15.1577111367.git.christophe.leroy@c-s.fr>
From: Andy Lutomirski <luto@kernel.org>
Date: Mon, 23 Dec 2019 17:59:36 -0800
X-Gmail-Original-Message-ID: <CALCETrUZ8rhvhJSYutypUoSf2tGBZPais79fx+8BHWH=Vk4dBw@mail.gmail.com>
Message-ID: <CALCETrUZ8rhvhJSYutypUoSf2tGBZPais79fx+8BHWH=Vk4dBw@mail.gmail.com>
Subject: Re: [RFC PATCH v2 08/10] lib: vdso: Avoid duplication in
 __cvdso_clock_getres()
To: Christophe Leroy <christophe.leroy@c-s.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_175951_550267_4BD0D1B4 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, X86 ML <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, Andrew Lutomirski <luto@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 23, 2019 at 6:31 AM Christophe Leroy
<christophe.leroy@c-s.fr> wrote:
>
> VDSO_HRES and VDSO_RAW clocks are handled the same way.
>
> Don't duplicate code.
>
> Signed-off-by: Christophe Leroy <christophe.leroy@c-s.fr>

Reviewed-by: Andy Lutomirski <luto@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
