Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F821756BC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 10:16:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4HibXeeOB/YEhsmT9CH5FB0sDIluRDMQ96RpnoEL5z8=; b=BCn2EqcHg73BIN
	roG4/c2LaHAUuaiLumJRqlJghlzB8v7CqXCSFH41lJ1FBeWqjRzO9c4EvKIZB8+HJ0cLkFUpvjqlz
	kC2g9Q0EU85xCY2cVJ+CmkKpPKbAYXTH2HXYWsndbOTdx/5ATKtpCtAGYZyzk0DW/bXg0E5DpuwP2
	WOiLT6lg2+sxpMLXqhJBvz5osfUEvhpS+Xshv6hE5DfXUjTe8dRQx16ekx8e9Ba0W1m/LTAGc85th
	D8HauwWGUI9ZY9zPwC77IEpLgOZIzUVncOQ2mcXKJJ8K+aEIevPgqer+hMYoqpZH3jffrB+qP4GPe
	Dl5e7Na6YrvEKffR8BlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8hBy-00011x-6E; Mon, 02 Mar 2020 09:16:50 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8hBo-00010y-UE; Mon, 02 Mar 2020 09:16:42 +0000
Received: by mail-pj1-x1041.google.com with SMTP id nm14so1432559pjb.0;
 Mon, 02 Mar 2020 01:16:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ndch3h4URTloyii1gSOs74b+yGmOg265tPn81wcSc2E=;
 b=vL0VVsuaaoEsbUHMmRXA6lfSc7FopuGlr36i0AXnSjtq/HXbT/8a6v2h2NFzs7jmga
 DQNmZYmIN2qjCn4v4UprQ1hhz87Li5nLtHphVK3d096BA9X8u9jvsl+X1E12z9uDygY0
 tDZeDZt7dIcEa5iu/48Zcj9kqwt/Afy8lQ2vPLl7eyAB1mcmVl07n5BrFg1XH9SvUM4V
 cODnqdSWYkDAaS9/SYbnZvwG7/Jwq9o5rMX/rJPp73ybLwKm3V2HM/o4EREpet7DoAG4
 6ELWoIXedXfCwuV2u4nSq8sFAeFOZrb5Dfj1fao4CFdutyOVFG77o0e8I3Wc9gSbNNju
 9spQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ndch3h4URTloyii1gSOs74b+yGmOg265tPn81wcSc2E=;
 b=tvMxa9Cax3HpoFVJhS54XA4x58zSLD4NXH2/MNUUS/O+zpnXAJuIYtW8BzF2xmNybt
 nv7PRmRocQs1SzBWp7LbL2zcktl/qKEUgSD6tx7Aw0MSzb8RRxE0J0c5ciFFRZHdwLlY
 W7WAT094U6SeJQTS+VbTrpS6xUpkz4zjnNu8WHMcyaEkT6GvekvhR4wKQpP4K2Rw7vCv
 /qH4SZpm6MZyEvu4Bl2EyFTDRdvKMD/d0Dq6DZarPTdV9Vrbw2ccSFwRMLzr7sodVDGs
 xj3eODrXTuPX/XFv7a0FqK3R98qpQ94zvp5zzr1CyzUncSmWamXpBskALU0+W05kn6BE
 taIQ==
X-Gm-Message-State: APjAAAUNy4wW/EEIo4Eq+OskhbnJgshoVJPHKtEIJ3/Z8du+qgJqip0n
 rLDckxbGSncNXANrYxo9/j4=
X-Google-Smtp-Source: APXvYqxYIsfqZ+2k8oz/ngUWeeMoVuDFCKNrgGHaEoCYv0tsPO+VuDwJwr+REUi3DbiXhJ5trOFulQ==
X-Received: by 2002:a17:902:8ec9:: with SMTP id
 x9mr17070699plo.182.1583140599577; 
 Mon, 02 Mar 2020 01:16:39 -0800 (PST)
Received: from localhost (g183.222-224-185.ppp.wakwak.ne.jp. [222.224.185.183])
 by smtp.gmail.com with ESMTPSA id p18sm21513722pjo.3.2020.03.02.01.16.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 01:16:38 -0800 (PST)
Date: Mon, 2 Mar 2020 18:16:35 +0900
From: Stafford Horne <shorne@gmail.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH] mm/special: Create generic fallbacks for pte_special()
 and pte_mkspecial()
Message-ID: <20200302091635.GK7926@lianli.shorne-pla.net>
References: <1583114190-7678-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583114190-7678-1-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_011640_979207_7E251C9F 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shorne[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-ia64@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 linux-kernel@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 linux-mm@kvack.org, Guo Ren <guoren@kernel.org>, linux-csky@vger.kernel.org,
 sparclinux@vger.kernel.org, linux-hexagon@vger.kernel.org,
 Vincent Chen <deanbo422@gmail.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Jonas Bonn <jonas@southpole.se>, Paul Burton <paulburton@kernel.org>,
 Richard Weinberger <richard@nod.at>, Helge Deller <deller@gmx.de>,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, linux-parisc@vger.kernel.org,
 linux-arch@vger.kernel.org, Matt Turner <mattst88@gmail.com>,
 Sam Creasey <sammy@sammy.net>, Fenghua Yu <fenghua.yu@intel.com>,
 Jeff Dike <jdike@addtoit.com>, linux-um@lists.infradead.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 linux-m68k@lists.linux-m68k.org, openrisc@lists.librecores.org,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>, Greentime Hu <green.hu@gmail.com>,
 Guan Xuetao <gxt@pku.edu.cn>, linux-arm-kernel@lists.infradead.org,
 Richard Henderson <rth@twiddle.net>, Chris Zankel <chris@zankel.net>,
 Michal Simek <monstr@monstr.eu>, Tony Luck <tony.luck@intel.com>,
 Brian Cain <bcain@codeaurora.org>, Nick Hu <nickhu@andestech.com>,
 Max Filippov <jcmvbkbc@gmail.com>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-alpha@vger.kernel.org,
 nios2-dev@lists.rocketboards.org, Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 02, 2020 at 07:26:30AM +0530, Anshuman Khandual wrote:

> diff --git a/arch/openrisc/include/asm/pgtable.h b/arch/openrisc/include/asm/pgtable.h
> index 248d22d8faa7..7f3fb9ceb083 100644
> --- a/arch/openrisc/include/asm/pgtable.h
> +++ b/arch/openrisc/include/asm/pgtable.h
> @@ -236,8 +236,6 @@ static inline int pte_write(pte_t pte) { return pte_val(pte) & _PAGE_WRITE; }
>  static inline int pte_exec(pte_t pte)  { return pte_val(pte) & _PAGE_EXEC; }
>  static inline int pte_dirty(pte_t pte) { return pte_val(pte) & _PAGE_DIRTY; }
>  static inline int pte_young(pte_t pte) { return pte_val(pte) & _PAGE_ACCESSED; }
> -static inline int pte_special(pte_t pte) { return 0; }
> -static inline pte_t pte_mkspecial(pte_t pte) { return pte; }
>  
>  static inline pte_t pte_wrprotect(pte_t pte)
>  {

For openrisc bits:

Acked-by: Stafford Horne <shorne@gmail.com>
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
