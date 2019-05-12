Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 291B31ACD3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 17:41:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WV8j3uQYLmKDAr4FOXBv4EGR80XJRHicbwM07HY1jqQ=; b=kqzUXfizRDMwxL
	/YpRP+MHzigarmSaoRgLV/WjhtmsxsbEDqXamwraAT5fX2wKCzcBZQlrrFGyBXCNopy8YOxjjSFOY
	QgXlTe2D5hJdU5TBsESWuteuJQCVVOxNFAs/jYvp1+hEPHKt1CtcmAiwbdPN4+3WiOF6ijku4Mdzu
	NqdAOT9zIdrJNzD/VtKpPVwDWVMGW7CCnIJ+KVI9rL2KC2mKwvG2sZFjSaovaMc+sLUmz7wsBU47n
	dnkArA8ezblXeI9d3qKkl00XYjQXBXSu8e6DF1PZXbgaG+5WwwY4d+Dqj1/eW/soS2G/7BdlxtjDL
	rjFYNt1oOXCTNc83XRww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPqbo-0005H1-Hf; Sun, 12 May 2019 15:41:52 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPqbh-0005Gg-AG
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 15:41:46 +0000
Received: by mail-vs1-xe43.google.com with SMTP id e2so6510451vsc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 May 2019 08:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1uG0bivhTUejUYCRrrklLeHk3N0BPLHnD725/cI68EM=;
 b=sJiwm9+KPs7IRgLD8j4w62N2RmFZ1h0n4FhkeFXOTaRxUOiCyOT0/KzvQ3gLCEkUH1
 1djUf7rJ9bpcpU6xPvfCUX5Y0ZNmrh8eC732/6AaHHvfIT9EoQ1lPCUm3uY2e24OKUnx
 GsHCfsFTMVXBut+R3LrniecbHpz/QHeJ4h7IiA0HmzKAhp4rfu9a6Ya66Y2l0gsKYTCs
 r+ZAeKLi6tKTwtcudZEOvvbFoXGdAhZRrBuPFC5NtJp9FemmZweDoAl1kIZEIp5vgek0
 ceW2B0Tz6QDO6fI6CpzE7/vvXzOpOCdmwY1vzdhQXyYPXp5mDI6M5cju8XNhapYm7JRc
 AdVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1uG0bivhTUejUYCRrrklLeHk3N0BPLHnD725/cI68EM=;
 b=aWFwtb3VxuKGrToPHxIajEyfKfCukW14xao8Q3ZVcFRq27em6g6gqhINkQ2xYm+BU9
 i9QuR1lUFddN47G51J5p9aIGioczoPulHeOylSM3KHMlksw2ge8XYhZV7QFSAjwt01xI
 v0a2W5hK1iVlRnNF7ZjAzqTG0HVoE9L87yHxJYEHkXFLPrew/N8S4DQC+dY8cWq4oZSV
 e5rrWH9ZtiSmSGpKAKPHnL5G/0cD2X1CQ3P2qZ4BA+yg4yuwMlJz6ZYSvNfOEQ7G2vhk
 doOltYQQcsJJjmSgVqmgfjSg01ud4ncGsrSmugsmy0YialP1PvV3DqnQ6QAyK8dvMQhg
 ZcxA==
X-Gm-Message-State: APjAAAXiwTdI315uELlEhu24spgSXF/8YTAB3PsCIWwxPQPWMMQsvY/O
 zQw8HVC+XBG6LNQYnSCUw/nUPqQvYcqXbO0wTXQ=
X-Google-Smtp-Source: APXvYqwT2y7jDLgGNhBNA81qUTnKiEMzx8FUsJG2jY1R1VLHVs9RSkBhQHi/GzpncbnQfylq8oyUSgTVUgIjrMjbG4Y=
X-Received: by 2002:a67:ca1c:: with SMTP id z28mr659462vsk.6.1557675703831;
 Sun, 12 May 2019 08:41:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190408163319.10382-1-vichy.kuo@gmail.com>
 <CAKv+Gu9gfq6PdwwLJd-zXYTiVT0oKtkhJHG4+AaOdD+N0k6c=Q@mail.gmail.com>
In-Reply-To: <CAKv+Gu9gfq6PdwwLJd-zXYTiVT0oKtkhJHG4+AaOdD+N0k6c=Q@mail.gmail.com>
From: pierre kuo <vichy.kuo@gmail.com>
Date: Sun, 12 May 2019 23:41:30 +0800
Message-ID: <CAOVJa8EGh2Unqok1JNhxmRUi4vU45G_d0W+cWupkmRaqRPk9NQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] kaslr: shift linear region randomization ahead of
 memory_limit
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_084145_377845_891C0843 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vichy.kuo[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steven Price <steven.price@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

hi Ard:
> > The following is schematic diagram of the program before and after the
> > modification.
> >
> > Before:
> > if (memstart_addr + linear_region_size < memblock_end_of_DRAM()) {} --(a)
> > if (memory_limit != PHYS_ADDR_MAX) {}                               --(b)
> > if (IS_ENABLED(CONFIG_BLK_DEV_INITRD) && phys_initrd_size) {}       --(c)
> > if (IS_ENABLED(CONFIG_RANDOMIZE_BASE)) {}                           --(d)*
> >
> > After:
> > if (memstart_addr + linear_region_size < memblock_end_of_DRAM()) {} --(a)
> > if (IS_ENABLED(CONFIG_RANDOMIZE_BASE)) {}                           --(d)*
> > if (memory_limit != PHYS_ADDR_MAX) {}                               --(b)
> > if (IS_ENABLED(CONFIG_BLK_DEV_INITRD) && phys_initrd_size) {}       --(c)
> >
> > After grouping modification of memstart_address by moving linear region
> > randomization ahead of memory_init, driver can safely using macro,
> > __phys_to_virt, in (b) or (c), if necessary.
> >
>
> Why is this an advantage?

1st, by putting (d) right behind (a),  driver can safely uses macro,
__phys_to_virt that depends on memstart_address, in (b) and (c) if necessary.
That means:
(a)
(d)
----- finish modification of memstart_address --------
(b) --> can safely use __phys_to_virt
(c) --> can safely use __phys_to_virt

2nd, it can make current driver more concise.
Letting (d) right behind (a), as below v3 patch shows,
https://lkml.org/lkml/2019/4/8/683
it can put initrd_start/initrd_end to be calculated only when linear
mapping check
pass and concise the driver by eliminating
"if (IS_ENABLED(CONFIG_BLK_DEV_INITRD) && phys_initrd_size) " as patch shows.

Thanks for your message.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
