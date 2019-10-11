Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1096D451F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 18:12:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NMNgKjqmhAfWZJ+FW7pCwPtdd6pBQ8EZD/CxYwGKdi4=; b=P2B0lw4C/NAc0f
	mJonOBB/iYEYhcQTtaE0IvqUdupVPQe2DHHDoQnlQ5jXECNvhE2DhzafUMi3o3GcgebOWcSNRJdK8
	tL7Bm1nMzSF0J8WhXc+lVSr8M+qIwL4uLEkQH7BwGtpsPboW6J3fqOLsH1lCiWaY+pK3ziYIn3/2N
	X3117IYgbsvF7nB928fsX29M8loHRd8w9PswvR7U9O1YXnusqXSq6NUs9al5sVm9T4DlNErTFxdn2
	4TNxONzb723QB+LuGbS6dnjDAyPPWarIXx0zil6tAzzBPCLfMr2eirX/ZudBlQ94gyv6BoiKt7CeL
	KZxinWKg5Nz80capU3Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIxWG-0001qq-OL; Fri, 11 Oct 2019 16:11:56 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIxW6-0001qS-JD
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 16:11:47 +0000
Received: by mail-pl1-x641.google.com with SMTP id s17so4672146plp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 09:11:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=G6L52gHbcOVXjcPSYcPZfDCdfNGSvtith//1lglITt4=;
 b=U5/N6JMiUj9QDTd24aIgmkS/ZCmGBjpKwM7U8CzxrzMf1lqZSNfbZ7O4pwV0bhEzEg
 wudUUYrZzrgNiboJm0ChoceZ3O1LmYFYV3Bvx9uhV6vTeclkuNrnADNJMjD6VX65LBtL
 he7FMaEjTbOKTJQ5f79wUMqxbvVvSYa6+a7mg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=G6L52gHbcOVXjcPSYcPZfDCdfNGSvtith//1lglITt4=;
 b=hKXAOuIC6pNFzY7FUKgY+zZ1bOM09gVo9z3FGp34DEUrr38N3xfwtCt1uVzMOjJL0F
 7EmlXrEgwt71UEJLsYkGrX0Xj1+0CTgGWQh9VlrSZgpl5yBpQruv2DGyyqP7YiBOXzRb
 I3/Oh+75PwD1r6Z5EIQrC/J1PKhZV+0Twdn76SHCarkzbe0bp8cNEUrBl2X+L0xlxCoe
 1bSlhJ483Byt1HPNIIycstIoG16Is8jd0nX6RCDmflfwkZlrdqjNC+o9ceiLlJrHLkYE
 P6WIQCMhXNNInTDAQ6YRKvQ8YOsQz2CBoTkfFH088bcKDa1Tv/wJmTmb9fBY574g8pmJ
 3cAw==
X-Gm-Message-State: APjAAAVESID3/8gjt7SOfuI0uov8JmC3gygvdIMabc7kkahahvhOiTO8
 h6mnrM7avFaDQZK8WviQVP+5lQ==
X-Google-Smtp-Source: APXvYqybFKi8DEP43HWkgZPyfZo8SqqFMMtnLHZ2tVbdiQx6dZitTSLWHEWMqDIFXmSN2gN3R3/hRg==
X-Received: by 2002:a17:902:bf45:: with SMTP id
 u5mr15982728pls.62.1570810305781; 
 Fri, 11 Oct 2019 09:11:45 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id f6sm9294369pfq.169.2019.10.11.09.11.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 09:11:44 -0700 (PDT)
Date: Fri, 11 Oct 2019 09:11:43 -0700
From: Kees Cook <keescook@chromium.org>
To: Segher Boessenkool <segher@kernel.crashing.org>
Subject: Re: [PATCH v2 01/29] powerpc: Rename "notes" PT_NOTE to "note"
Message-ID: <201910110910.48270FC97@keescook>
References: <20191011000609.29728-1-keescook@chromium.org>
 <20191011000609.29728-2-keescook@chromium.org>
 <20191011082519.GI9749@gate.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011082519.GI9749@gate.crashing.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_091146_631618_7A4DAE13 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Michal Simek <monstr@monstr.eu>, Dave Hansen <dave.hansen@linux.intel.com>,
 linux-ia64@vger.kernel.org, Yoshinori Sato <ysato@users.sourceforge.jp>,
 Arnd Bergmann <arnd@arndb.de>, linux-xtensa@linux-xtensa.org,
 Will Deacon <will@kernel.org>, x86@kernel.org,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-kernel@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, linux-parisc@vger.kernel.org,
 Andy Lutomirski <luto@kernel.org>, linux-alpha@vger.kernel.org,
 Rick Edgecombe <rick.p.edgecombe@intel.com>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, linux-c6x-dev@linux-c6x.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 03:25:19AM -0500, Segher Boessenkool wrote:
> On Thu, Oct 10, 2019 at 05:05:41PM -0700, Kees Cook wrote:
> > The Program Header identifiers are internal to the linker scripts. In
> > preparation for moving the NOTES segment declaration into RO_DATA,
> > standardize the identifier for the PT_NOTE entry to "note" as used by
> > all other architectures that emit PT_NOTE.
> 
> All other archs are wrong, and "notes" is a much better name.  This
> segment does not contain a single "note", but multiple "notes".

True, but the naming appears to be based off the Program Header name of
"PT_NOTE". Regardless, it is an entirely internal-to-the-linker-script
identifier, so I am just consolidating on a common name with the least
number of collateral changes.

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
