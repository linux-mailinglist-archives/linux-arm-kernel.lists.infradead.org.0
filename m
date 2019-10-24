Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 583D5E365A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 17:18:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qywUvCrtFWz/4BP1KshdOfoLQL4G6RMfMTrXT4V/iCY=; b=WQ46XUitIA9EaknEOzs35pRuI
	iq0usmV2RB05n5SHi4Bk4ZEKcKnUmoeDU0JlHbVdw0FXcnxBRXrIpjJsy8XOg15UQm7Qkifygs53p
	zrS4rydLITzYRJBkstsQeio30BQHxwmMu02r3WLqEOgzVrGnSYqOM/5VE+7UopF2CGF7pxaHCr20z
	DmbH/Ty2ihFBsnfSpVl2Hw/+azV4jzvPTGytfKlM7mv6oBrribHFsloagCyTJQfAGZ2Hg/kfb9yeV
	9Vw2w69tfH76aIF8qN+UAhLW97BiJa004w3IeWLK5TD3kPDY/Uj7k5RWlC7Y2wUaT95QE5YX76+1Y
	LzNpeZKlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNesa-00046I-OJ; Thu, 24 Oct 2019 15:18:24 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNesL-00042G-W6
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 15:18:13 +0000
Received: by mail-il1-x141.google.com with SMTP id v2so22760618ilm.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 08:18:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=Ounxj9cfL6O+QVspuA41qPrL+dtHlnd6zlmABTsVbws=;
 b=biNiyBsUq1oC7u5yogZy8N29MX7ATTQIXUIPIqqI6g2N8EA9QhwEC0gQemO8Cy5L6a
 UCFg3RDAYG9lnvohF8+tXuDf+IXq7fLq3dVHXnLyE5vPEUz/DrCR7X3R288BYePyqXg3
 oYLT/wTPksWncWN9bXdK0yZ0nbFI3oEoJl84Ht2i67n/365THu308Y+OSHFJ18vXXUqR
 ENefMt09zBo4nBburoq/NmiNK2bRI59OT7KW1kTA/yDrLysLajr6fUNNc1LVC2TMXMzE
 JIj7P2KKqLbrHsjaQFkGpARY6E99HHxeUwRHMbgsRgF/uSl1vSWl2lvW9K349Ga0HXcy
 1zXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=Ounxj9cfL6O+QVspuA41qPrL+dtHlnd6zlmABTsVbws=;
 b=WfBvTUZwsYFehRH+lKMJJaVQnrLO1MRkUhNNizqQpWdHUIHdDfaoC6h8geBhFpFpw/
 r8oLq/K1lSJBQ4naWaCnEQB4FTdgtZu4A2jdkfW9LVcuehzLx3H56a80mIk9GF194N+g
 ulWbxyAGpH5rRtkmNaIan6s8qJnqi9rdorbmvyCy2bhJoiIu0k5ozNq4SXwN6uu86OKo
 VJcAade4YbXpG365Qvx8aT4q+lDlfU9CgzTY/7+HrbegZHZfOyP1DGxTvaT8y4bSucSG
 O2b+7QcuMURO/4hT3b8+elgX1oLF82RFB1KDmOIdNmcwl2UlAk/aUtmo0CNB4wxhjlCe
 JBUw==
X-Gm-Message-State: APjAAAVItJV3rWQO7iFX60OQLLxuiNgkj6vBAG6CINh4GT5WkdZyMBLM
 PwLTvFUrppX1mBWpCzUlOIgn4Q==
X-Google-Smtp-Source: APXvYqxQ1LtEDnMpoN971luqOI7TbH4CJsi6LuiXRaB4c6bbMVkSBP/cjpjqc6MBqdQnstOla4Sq8g==
X-Received: by 2002:a92:8fc6:: with SMTP id r67mr43423606ilk.5.1571930288560; 
 Thu, 24 Oct 2019 08:18:08 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id y5sm7755183ilm.63.2019.10.24.08.18.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 08:18:07 -0700 (PDT)
Date: Thu, 24 Oct 2019 08:17:59 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH 1/2] asm-generic: Make msi.h a mandatory include/asm header
In-Reply-To: <a021f232968cfffe3f2d838da47214c6bbdeeedb.1571911976.git.michal.simek@xilinx.com>
Message-ID: <alpine.DEB.2.21.9999.1910240810420.20010@viisi.sifive.com>
References: <cover.1571911976.git.michal.simek@xilinx.com>
 <a021f232968cfffe3f2d838da47214c6bbdeeedb.1571911976.git.michal.simek@xilinx.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-165076562-1571930279=:20010"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_081810_034134_D6FE2BE8 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Eric Biggers <ebiggers@google.com>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, palmer@sifive.com,
 linux-mips@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, linux-arch@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Michael Ellerman <mpe@ellerman.id.au>, Jackie Liu <liuyun01@kylinos.cn>,
 Russell King <linux@armlinux.org.uk>, hch@infradead.org,
 Firoz Khan <firoz.khan@linaro.org>, Wesley Terpstra <wesley@sifive.com>,
 James Hogan <jhogan@kernel.org>, helgaas@kernel.org,
 linux-snps-arc@lists.infradead.org, Albert Ou <aou@eecs.berkeley.edu>,
 Arnd Bergmann <arnd@arndb.de>, git@xilinx.com, longman@redhat.com,
 linux-arm-kernel@lists.infradead.org, monstr@monstr.eu,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Vineet Gupta <vgupta@synopsys.com>,
 Cornelia Huck <cohuck@redhat.com>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Paolo Bonzini <pbonzini@redhat.com>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-165076562-1571930279=:20010
Content-Type: text/plain; charset=ISO-8859-2
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Thu, 24 Oct 2019, Michal Simek wrote:

> msi.h is generic for all architectures expect of x86 which has own versio=
n.
> Enabling MSI by including msi.h to architecture Kbuild is just additional
> step which doesn't need to be done.
> The patch was created based on request to enable MSI for Microblaze.
>=20
> Suggested-by: Christoph Hellwig <hch@infradead.org>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
>=20
> https://lore.kernel.org/linux-riscv/20191008154604.GA7903@infradead.org/

[ ... ]

> diff --git a/arch/riscv/include/asm/Kbuild b/arch/riscv/include/asm/Kbuil=
d
> index 16970f246860..1efaeddf1e4b 100644
> --- a/arch/riscv/include/asm/Kbuild
> +++ b/arch/riscv/include/asm/Kbuild
> @@ -22,7 +22,6 @@ generic-y +=3D kvm_para.h
>  generic-y +=3D local.h
>  generic-y +=3D local64.h
>  generic-y +=3D mm-arch-hooks.h
> -generic-y +=3D msi.h
>  generic-y +=3D percpu.h
>  generic-y +=3D preempt.h
>  generic-y +=3D sections.h

Acked-by: Paul Walmsley <paul.walmsley@sifive.com> # arch/riscv
Tested-by: Paul Walmsley <paul.walmsley@sifive.com> # build only, rv32/rv64

Thanks Micha=B3,


- Paul
--8323329-165076562-1571930279=:20010
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--8323329-165076562-1571930279=:20010--

