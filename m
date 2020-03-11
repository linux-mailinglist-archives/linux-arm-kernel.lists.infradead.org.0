Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9DBD181F2C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 18:21:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iJ9Cr8L82EGFXBYO5pKot2MHHmmMkCCylaatzvS4VXo=; b=LWtgoClLfXFUWk
	qltLy8NMrGdtldLa/Y94D5xv77wGLzqokVFhN5FUM4y5vkzdyktiyY3UpKKXJKPg2T1IJMAd9Q1QS
	0CD3riT0I+YKQNmBIMMF/BUH0h2yhKMcBsPUfARH45H7XSve60CyYJ6m2neNmX2rYQLWX4Ln2jESy
	TRL6M1tocj+8gz7aYZPZ4novKWIIDjfkDYGG0k0gNumqoFuX7GDPqzjYhPEYbvc5qGlgYjpsf4eoC
	I3/EmgkOcumv4QwFVBvjGprwn7uzTorJXvVgd2mmkJdwJSJWVjL6LJVf3gvAcdGvyhDyWkmFk9stI
	yY60QYfDWWDmMK9K/zcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC52z-0002id-Vf; Wed, 11 Mar 2020 17:21:33 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC52p-0002hA-F1
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 17:21:24 +0000
Received: by mail-pl1-x644.google.com with SMTP id d9so1388784plo.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 10:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=48QMmtUizH1thzm0jNujCj845cQ2EXOxCkSOb8ufm7M=;
 b=hBmJYWBfK3SX/U+Wa4lao0YnvSduvT0NJG7V47ocA+P7MefK8eMomjpe/u+lfXRu15
 xn2lsBH74aGiSSYjBxFvcQm5wdnJipqlMRNpIOXkiI+AmYbIVDCGXMTkE3S2azr3V/iG
 82LN/7oe0JmAHSXXbhgxIZZvf2n5P7G6lOJCw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=48QMmtUizH1thzm0jNujCj845cQ2EXOxCkSOb8ufm7M=;
 b=N9dgwpwAbSrrneDfwJSs/QSgxtBXFlqaW+pMSe2fh88rFkZ7xE2YLlmcAISMtoJhWz
 UpN3jqNWCTKkrTJgm+J4p4nMS39JNf4q5CWGrtXY57ZeqvfJ6AIlHMac0scZE5rb+IeA
 NfAQ9BNROkVVFL5isjT+3d5ylUOsjE++9ZlwtuezjLYFgjOh68C91D9R/aKOmU9omVmV
 8KSHxrDNVwXVBJGZSa/wqmyHz6ylk8sJGLVF+kCKbsxVUpXZkr6zxELxnyWsZyI2KbUC
 bNYg8sfGu6B5ODD9ci6UK7LGogENxeS1LWB8m68e3xUUD6PzfCFv9J4V/CAU8tIv1nIM
 BZ9w==
X-Gm-Message-State: ANhLgQ2SLRZF32TLxUUrjNFhZn/+eYPqTGkgIktSTWJjUIpb4lGR3Fz/
 Wvgyp+XRIyfKH3yBBNzD7IyBXA==
X-Google-Smtp-Source: ADFU+vtS/zoEiYrbfBlqHQlR3ycd/w8ksv3ZJl14F8NXwUqH9zruMZSDylPWrhrRh1sygoxYbEZgXg==
X-Received: by 2002:a17:902:8509:: with SMTP id
 bj9mr4163017plb.123.1583947282062; 
 Wed, 11 Mar 2020 10:21:22 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id q187sm51566754pfq.185.2020.03.11.10.21.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 10:21:21 -0700 (PDT)
Date: Wed, 11 Mar 2020 10:21:20 -0700
From: Kees Cook <keescook@chromium.org>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH v3] ARM: smp: add support for per-task stack canaries
Message-ID: <202003111020.D543B4332@keescook>
References: <20181206083257.9596-1-ard.biesheuvel@linaro.org>
 <20200309164931.GA23889@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200309164931.GA23889@roeck-us.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_102123_504493_838C3AAF 
X-CRM114-Status: GOOD (  18.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 kernel-hardening@lists.openwall.com, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, Emese Revfy <re.emese@gmail.com>,
 Laura Abbott <labbott@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 09, 2020 at 09:49:31AM -0700, Guenter Roeck wrote:
> On Thu, Dec 06, 2018 at 09:32:57AM +0100, Ard Biesheuvel wrote:
> > On ARM, we currently only change the value of the stack canary when
> > switching tasks if the kernel was built for UP. On SMP kernels, this
> > is impossible since the stack canary value is obtained via a global
> > symbol reference, which means
> > a) all running tasks on all CPUs must use the same value
> > b) we can only modify the value when no kernel stack frames are live
> >    on any CPU, which is effectively never.
> > 
> > So instead, use a GCC plugin to add a RTL pass that replaces each
> > reference to the address of the __stack_chk_guard symbol with an
> > expression that produces the address of the 'stack_canary' field
> > that is added to struct thread_info. This way, each task will use
> > its own randomized value.
> > 
> > Cc: Russell King <linux@armlinux.org.uk>
> > Cc: Kees Cook <keescook@chromium.org>
> > Cc: Emese Revfy <re.emese@gmail.com>
> > Cc: Arnd Bergmann <arnd@arndb.de>
> > Cc: Laura Abbott <labbott@redhat.com>
> > Cc: kernel-hardening@lists.openwall.com
> > Acked-by: Nicolas Pitre <nico@linaro.org>
> > Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> 
> Since this patch is in the tree, cc-option no longer works on
> the arm architecture if CONFIG_STACKPROTECTOR_PER_TASK is enabled.
> 
> Any idea how to fix that ? 

I thought Arnd sent a patch to fix it and it got picked up?

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
