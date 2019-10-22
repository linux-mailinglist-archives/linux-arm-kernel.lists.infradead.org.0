Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BEADFD35
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 07:54:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yQeGi0x1Hb/VhMEIDFpv8KBkGrDgCivLWjG9ZeEpvlc=; b=pHflEsS6+OB3Yq
	y8FT4uM6mIVBOasJCpU9sg1Wb4yjqp0qWmSurQGFtRxJ2zB/fKLRN9TgeYkRUeuj7ZUHQT2m/Fc0t
	7xgVfG2pQYW4AbvpDMhD+JK4D7Nj6H3+GSyl4zOF7kn0PSRJ6dqUf84DrD+MsAkvOKOltrq1Bu/uC
	/lbKdtT0zU3H3fO+IuRTmz/JBuKr54CWhA0+gOazD+FIbKgX/XYI0cTs050kCJ7HBxcTjAHR17EFd
	84dZsfT4F5IDjO5I6Szfv624yL9ptRHEBj/Zbi744/2Z5kvjLa6vGsMNCqVS07dbT1CgA8FMo63rm
	/DVtSv8xrDjFC4tWvT7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMn7g-00017Q-L4; Tue, 22 Oct 2019 05:54:24 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMn7W-000126-QT
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 05:54:16 +0000
Received: by mail-wr1-x441.google.com with SMTP id q13so11485124wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 22:54:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=70+N4pxkreRk5D8qTuATktL5M/ApNQm1mVe3QKo4Ow8=;
 b=VeZ/77yCO2vkRreTdZF0BmlF3aBW7GYN63ztZ+W9IxGlyzot3aZzQG7XNVjBY7A7oD
 5ErFNuJigjHDoajFcUUKer2ZNuRvqeRRkKDFwX0d2Zr1W2J0Sitj3DU47jafk1WpqrB9
 RO+JgyMPsgCHPUuHfaLf9mhm0FhMWiroTQMq0AMJS2EyfB2q8y2Uj4BUJeCO2gXI9tCY
 6QkWiBS+nVx6fiVGxPNCg3OkhqZK5Cxo3moubEo1LbU3pI9Z3P3SLfQSm8r4r1GEdvXM
 A3I5Jr0ovB215EmWyJbd+kRIvPhHLcOf8Yw0LDZ75fNBWsAH3Ssp+sYWHP4KD/+V8/GQ
 /NvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=70+N4pxkreRk5D8qTuATktL5M/ApNQm1mVe3QKo4Ow8=;
 b=axtccDvH+H4hRHCj8sAAcTv/lrpxGOlcWrSpERgVq5RLrwJlhvlWNP+sVQtq8fZ3qW
 5yE3axxq6yq33xduxuK34FqtDYlW/kra881zP9mP1dEXzJcoqjl5v7fVo10GSzsyQsUZ
 OmokUIrtoM5KS+1uUuBZ1cVPzi6oIDNOo9nYDZ2ROmtAEq+MbJ8oSB/zSAcdhH2zmo4X
 vxm6RwgVf70/3GdzKoaP3Wxu1hbj0YBJXDN4rqvwpsUKy8RjDtfdyIFLUYJYoBSlLA3q
 7vSIzsSG2R+6l+qUnccuqwX0Vl+dDGQLep3pLXoMcNzKfyTMxU5k20V+WMtlRND/LoPh
 b5VQ==
X-Gm-Message-State: APjAAAVUmi+aab16JNDAx67XB8hrTXy+sKQ+RUa1R9BLCiUYVSJFNWnZ
 T7c1+FniqXeSQD7M2ymZj6kZ3rQ5JNQlNcs9z6rX2w==
X-Google-Smtp-Source: APXvYqwrYnGYkoL34VBIT6H+JNjJm/uZwOLCkW8JDJj+1Q/w7n/LWtklQn1YWpTuz0AHRX28UXgTzenaMPN3dF2ZvS4=
X-Received: by 2002:adf:9f08:: with SMTP id l8mr1573796wrf.325.1571723652654; 
 Mon, 21 Oct 2019 22:54:12 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-15-samitolvanen@google.com>
 <CAKv+Gu-kMzsot5KSPSo_iMsuzcv8J1R5RLT9uGjuzJsxCVUPPg@mail.gmail.com>
 <CABCJKuf-tXu2ZhBMCYTHP3BU8g1i-0GGd7+YvyTDUc1kH2iZvA@mail.gmail.com>
In-Reply-To: <CABCJKuf-tXu2ZhBMCYTHP3BU8g1i-0GGd7+YvyTDUc1kH2iZvA@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 22 Oct 2019 07:54:07 +0200
Message-ID: <CAKv+Gu_b6eCy4BbM0xFBgL2EzW+eP5rH+wTOgNCO=ai-vb-WWw@mail.gmail.com>
Subject: Re: [PATCH 14/18] arm64: efi: restore x18 if it was corrupted
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_225414_868090_4EB55257 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Tue, 22 Oct 2019 at 00:40, Sami Tolvanen <samitolvanen@google.com> wrote:
>
> On Sun, Oct 20, 2019 at 11:20 PM Ard Biesheuvel
> <ard.biesheuvel@linaro.org> wrote:
> > You'll have to elaborate a bit here and explain that this is
> > sufficient, given that we run EFI runtime services with interrupts
> > enabled.
>
> I can add a note about this in v2. This is called with preemption
> disabled and we have a separate interrupt shadow stack, so as far as I
> can tell, this should be sufficient. Did you have concerns about this?
>

No concerns, but we should put the above clarification in the commit log.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
