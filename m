Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F124E1929AA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 14:30:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0WwKdYOm98mUm7LmHWuRqZ+zJdDvV07G3qJyNoZTdVE=; b=jfcKJNLMsCwGSD
	+LVufGTLD/wniQC4GTOEniUqt5qQYUcgrrDRMTW5VMPE86OedXDOOzoupE8F0MDTDLgr8P1mRBcF+
	5V8ItWr1kJBFa8Uu9n047EquxTY4uK1EhSL1CKtRT8j5plvsVVW8HusxHMFGF/Tlaf/PjaM8PbH5Y
	8glnTXd1QRvjgZ6+/BWhMSeNwCzIjTkkThomO7JZIzeWX/vGkv8vIGd09eIbg+z1FD2UfvcgRRtlx
	QnCkow1JuS56R9HpEK5GVdHwQOh6EgLre6aDMC8kiyYToe+wXkHIIHLifWgGRUAXArsjv6q16Xm/A
	M7ytgUGXuY/KndWB+2ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH66p-0005m0-Pb; Wed, 25 Mar 2020 13:30:15 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH66N-0005cM-7n
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 13:29:53 +0000
Received: by mail-ed1-x543.google.com with SMTP id bd14so2302283edb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 06:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ttUykVlscbBihiZndaJJpk54zmS6KA9qmNGRgAhiBp8=;
 b=VX1op1hi65mbqSSs6xS4NpBELF1OFv4XYpSgmzU+GEDq9S9GfSzmUaCqA4YqEKSUg7
 HWFiDXahO0aCuEiz2vZ+nGXaKcmeq6VVgeJagx2gFUd516GfhT26EFn51Wxak3qmed8g
 zM/gzSTi+/K6xiEOvZMEOSryRQiOWbzprpKKNYxWUv8g//rOZjuD35FmWyUR2lf+QTYK
 HheVZfzix3Thq3S7MmcKrMrSfI0yt20rjIw7H09yK/pn7KnKb2LLzkB0fcuFzdNgx3Zg
 9PxJRdNKkRYH37tB9VemyhmFaAYASgCVjlrFAnsezI07eVZTEL4380WdGZ0fXDoRB2lu
 Fq4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ttUykVlscbBihiZndaJJpk54zmS6KA9qmNGRgAhiBp8=;
 b=KbWu3VzIt4opdpgujmNyRnFUhqZ1xuAlhdWOX9K2ytR+tVa7QgXZnaeHhj5i0dvr3O
 aAj+BlMKqexvTYsaJx1auZ/vdeL8sVAMUXStcmEb8NAxAhV+Ss9h8QFNHGOux2e9RsE+
 GBbYgY+z+8XI8b3n2ep+B7pai/HVihf7Xc07ShR2NHdnmAq4jVEvWKqs51py0BCL7aVl
 RgP6K9XvY9niItiShNQXuT+KYwdlGqyNDz0L7jIrld9/xl7R2z9CU0JLy1hSdb1gQogL
 9Ssu6Z4Oj/8iK4WPDnfFLFsoiNk8OvGVMBkhOgV+8RFQrfVAhu2jiS03OmjMNQPlooQ1
 R93A==
X-Gm-Message-State: ANhLgQ0ebd+IkKgm8BnuPTy8eheSb60YYMnVYMqvbanBOxkx7DVfEuyQ
 vj/aka2kBaLRi3YkiKT60zenNn2uW0rZEFrQCKTTrg==
X-Google-Smtp-Source: ADFU+vurWBAIOPg8PUUQmWvx0H5unFgaE2/xldHZvul3YjREXDAnBPKmYvPAvC4AmH3d91f3jxiWGfjUxrfyIZDJdZ0=
X-Received: by 2002:a50:9b53:: with SMTP id a19mr3040450edj.3.1585142983670;
 Wed, 25 Mar 2020 06:29:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200115143322.214247-1-james.morse@arm.com>
 <20200115143322.214247-4-james.morse@arm.com>
 <CA+CK2bAEyp7Kcc_qEOfchNvyEHSVnjAXD-LB9NGbUOJ_xZV1AQ@mail.gmail.com>
 <b983dfbf-49e2-d32c-e3a5-781df4f9ea4e@arm.com>
In-Reply-To: <b983dfbf-49e2-d32c-e3a5-781df4f9ea4e@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 25 Mar 2020 09:29:32 -0400
Message-ID: <CA+CK2bD1fEY-NY8rCYi3Se9VTTzU5PVmDZyk2tWoSNP6rGZmJA@mail.gmail.com>
Subject: Re: [RFC PATCH 3/3] arm64: hibernate: idmap the single page that
 holds the copy page routines
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_062947_354479_4A0144C8 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

> You keep coming back to this because you are trying to idmap all memory
> on arm64. You do not need to do this.

No, this is not what I am trying to do. That approach was done in my
first RFC, but I have since abandoned it, and I now have proper liner
copy configured in TTBR1:
See: https://lore.kernel.org/lkml/20191204155938.2279686-24-pasha.tatashin@soleen.com
+/*
+ * Map source segments starting from KEXEC_SRC_START, and map destination
+ * segments starting from KEXEC_DST_START, and return size of copy in
+ * *copy_len argument.
+ * Relocation function essentially needs to do:
+ * memcpy(KEXEC_DST_START, KEXEC_SRC_START, copy_len);
+ */

Sorry, I made a misleading comment that kexec needs to idmap many
pages, in fact it actually needs to idmap only two pages with the
current approach:

1. relocation function
2. relocation function argument

I could fit both of them into a single pages (the relocation function
body is tiny, and argument only contains 9 fields, so 72 bytes), it
will be a little ugly though to have them setup like that, so if you
have a better suggestion please let me know.

> You only need one page idmaped so you can switch TTBR1_EL1, and turn the
> MMU off.
>
>
> You can do the copy of memory using a copy of the linear map in
> TTBR1_EL1. For an example: hibernate does exactly this.

Yes, this is exactly what I am currently doing.

> The code in this RFC was particularly tricky to test as its behaviour
> depends on which bits of a pointer are set.
>
> This code is complicated, and impossible to debug if it goes wrong.
> (photograph of a screen with the word 'Bye' on it anyone?). Worse: it
> must not introduce coherency issues into the next kernel.
>
> It must be as simple as possible. What you are proposing is not.
>

I agree. So, let me modify kexec to idmap exactly one page (I will
stuff argument and body into a single page), and re-use it with
hibernate as you proposed.

Thank you,
Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
