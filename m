Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B66B51BD65D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 09:45:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zdul9/54tSrhIgluFJjV5Zg81r9Tn8DP2idet4v5zUI=; b=XewES8leDVcJUz
	tWUum/c01YzXKhjjg392vWGOL98ZMfrVhImDXLrF6LqgxdCVFgs0LBT4UmcycXy0G+XfnJyrt8JzP
	bgVbjto1H6nj7dBkR6C9GwiMOb7en5eS14GhElFDt5f4K3RODPxjM0Wrw8kV3PzCGWrD+uyEMgd7w
	A8Z4jsQG+seGZKFBw8a1NZLXuFd1jyPUKdtWgxZbu+adFAshsNqVXjYscO4kEGQAdROYWAybiq9uQ
	b4XygbEhnK6kRMJJWn9hnihKNucpqKUEX5bQfN6zSg5xuHplDPgAuyLn+RW2uNC068GHECkya4FLm
	9f6HUg8EKruTO5qxm+Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jThPK-0006XE-Aw; Wed, 29 Apr 2020 07:45:26 +0000
Received: from mail-oo1-f66.google.com ([209.85.161.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jThP5-0005hv-2u
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 07:45:12 +0000
Received: by mail-oo1-f66.google.com with SMTP id r1so221219oog.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 00:45:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rEZmeAk6jaK+T2WOTA1eNC+ayuAXk5EqXJwMbJKfWVc=;
 b=GShTjOGroV6gm+huwHr10HKIEfRgenxhs43lCRhZf0SvAnv86b4+MLH+TbzhEuGdqb
 fwv5i+g7QbFcA/2BF6dU9UbV5ruQ/xefvhgKwG2MZQLA6gFdfxOsyeO7hWBvk8pRrX0y
 epQzxAL7F8JaZ0pFBkdhW2l7VFoNFqEfqk8H6hwb9ubnshSjo0Nn9FxuwcdrEdvqLDnW
 rGoBRmWGVjAo7/Led1SigVHhyYryLhYVSDwbMBrRTKzyS7CSVAiTuwCSEHjP6oUDsOJu
 Prxh5ylBhsGTnmFw28Oaqhb5IiZp54dEftvGbbZk7MCKDw3JnLGS3a+ZMzdJdUhh8HA+
 7EZA==
X-Gm-Message-State: AGi0PuaGLooTy2YeegxVw+OIQbCQPw0Vbs9Xq/C4hOnvfpoiY7lGCEcQ
 LGtkrNll4AEmEQ+Zm07NegCFhNp5EZCT7EDiq8o=
X-Google-Smtp-Source: APiQypIP3h/7moyhoQ8NqmMh0j1DwjTSMQmWJqAXa8x2R/o6FD1rPckgRmfvL+mogKMUh9WhHIH2d1grrdKwA3kzpE4=
X-Received: by 2002:a4a:eb08:: with SMTP id f8mr2660450ooj.1.1588146307169;
 Wed, 29 Apr 2020 00:45:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200428194449.22615-1-willy@infradead.org>
 <20200428194449.22615-6-willy@infradead.org>
In-Reply-To: <20200428194449.22615-6-willy@infradead.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 29 Apr 2020 09:44:56 +0200
Message-ID: <CAMuHMdXdHTm2gN2cZFupYpP=qn2ijAViyyQ6jaMGBNKNXMfiAg@mail.gmail.com>
Subject: Re: [PATCH 5/7] m68k: Thread mm_struct throughout page table
 allocation
To: Matthew Wilcox <willy@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_004511_144703_15E157C6 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux MM <linux-mm@kvack.org>, linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 9:45 PM Matthew Wilcox <willy@infradead.org> wrote:
> From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
>
> An upcoming patch will pass mm_struct to the page table constructor.
> Make sure m68k has the appropriate mm_struct at the point it needs to
> call the constructor.
>
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>

Reviewed-by: Geert Uytterhoeven <geert@linux-m68k.org>
Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
