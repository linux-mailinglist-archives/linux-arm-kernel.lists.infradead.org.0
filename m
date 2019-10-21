Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A42DF81B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 00:40:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u64Ag+HqoWEOns3wMWCEDWooXmwpSdVW9oypkCKfknQ=; b=TUNzO5sokB2TQI
	z+fsxocdiGOsFWim41p9XdsdJACrg3Vv1bC4OR3sUbH+BwrzWocK9x7KSTA2qAx7QsL6fhRut5JXx
	v5XTpVKFP972P8bkshPeoVb7luvkgVDkSbE72WYCkEI1weukiEGFxe4lATvx49FbyvZqL1djlBxes
	RC9+lVNpqcXY+vU0kUzM58QHXFiJywgcMpA3wkrWPsEjw4vhApVkERNhrzFvyIjib0myOjQRrW9X0
	vpaQ9e2Al0I1rqTtzlWypVZ4A6vVfKloJR2zZOMRDrgvPPRuWwKrWH5hD1E3MNwLS9FUSjgYhde9k
	jlvUL/rxC+EstiAipwKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMgLY-0004M2-Hy; Mon, 21 Oct 2019 22:40:16 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMgLN-0003RN-8o
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 22:40:07 +0000
Received: by mail-vs1-xe41.google.com with SMTP id l2so10005034vsr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 15:40:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+ZsNsXP4OTYt0YNh6qKFB6AFECQX69mBiPpRVt9SfH0=;
 b=O/CXUAVGNYcy3a5ZMEhvYVIsdUWMdntI32aa1fCXHK7oi6GQtdX8twOyCLRtqHcLw6
 am1b9fbswrT9o98uh5aDlhm1tPvl0Av/XEHc7jFDFc/FekuKFDvkdmrzLXsS+cBmnejP
 w+a/gseGa6WnbCp/yH1KdCdxNLv/Q43LbeRO19wQ0C6JCREDYSId7agxszZ/KRyBe4dS
 rBqaj2BEFPuwjg8K2IaN+ZdQ2/V18uW5p+D3bRRAW5ncrEsKECvCEFR63WSYX3IplWb4
 GYGuiM7vUIXmh+zLMMdnpEno7Jg6V7tjnP6+5fo5a94md98f+1ELrfUwmGcSvu34YKiS
 XHeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+ZsNsXP4OTYt0YNh6qKFB6AFECQX69mBiPpRVt9SfH0=;
 b=fPIcwfAox1X/hGeZJH4Wk7SEMhfrpUh966ZYflmf9yAvltQaH6cL413Pr3JpN0ano2
 HWCCtMChycpP/J3kfTKC0lF8sbxX4P+0L+6py75j2kpjpISYGc/u7rnMkIu1lsnzLJgL
 ItZqnmaZcW6VNP9zhumQ3MaM9QxlXSNnqtUu223AfTD6O+8e0FReV08kBZmQ9JEoNuXv
 rzk6l6y4fW6y5yK6IGq0zFrJhy9Clv2dnygwQg2P+2ojcV31R8HQxlL3pnPNP3toCGj5
 vnTCMug1MZP1M9K6f+g7otlok2GcrRFqReNiHFC66rpRx2okWRfOk+zwqxgx9WN7vOWJ
 hzig==
X-Gm-Message-State: APjAAAV39W6PVfFs+uTd7kvRFkqICw/48ur8XtU8l+ztg1DFp5T7nSl5
 8Bv80iRnS+KbtYtUtNN8LX0eNgsfpP5+yjcb8m3Gzw==
X-Google-Smtp-Source: APXvYqy582En+heI5MQp3ZrQQ6f6MZJsAwNRRmtRSRpMZCKNBzLSU+/wxNeKwJ1tJAW4E2Y1xYNHr6jWiAAsx2LVJZQ=
X-Received: by 2002:a67:ed8b:: with SMTP id d11mr100849vsp.104.1571697602070; 
 Mon, 21 Oct 2019 15:40:02 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-15-samitolvanen@google.com>
 <CAKv+Gu-kMzsot5KSPSo_iMsuzcv8J1R5RLT9uGjuzJsxCVUPPg@mail.gmail.com>
In-Reply-To: <CAKv+Gu-kMzsot5KSPSo_iMsuzcv8J1R5RLT9uGjuzJsxCVUPPg@mail.gmail.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Mon, 21 Oct 2019 15:39:50 -0700
Message-ID: <CABCJKuf-tXu2ZhBMCYTHP3BU8g1i-0GGd7+YvyTDUc1kH2iZvA@mail.gmail.com>
Subject: Re: [PATCH 14/18] arm64: efi: restore x18 if it was corrupted
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_154005_338723_353E7F8E 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Oct 20, 2019 at 11:20 PM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:
> You'll have to elaborate a bit here and explain that this is
> sufficient, given that we run EFI runtime services with interrupts
> enabled.

I can add a note about this in v2. This is called with preemption
disabled and we have a separate interrupt shadow stack, so as far as I
can tell, this should be sufficient. Did you have concerns about this?

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
