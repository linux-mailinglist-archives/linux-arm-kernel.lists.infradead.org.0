Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDB2AB9C6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 15:51:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HuhM/nEO8iJrWorPu7S4kSk0fzU8sxGUuYD6WqeoPF4=; b=NccxkUq8I6MSFM
	PnV9DYV33t3kxkusGnEaqdbyey3JhQ5gy9V8PlxDuvBGwLiViuGHjU3qWsxWqoyJYsRpEoEmuRfKS
	xIDtrE/fb1UqbBVBzAuch3i0EsnxAfNEhPLE2KjkSNnIJL8s6OMUK8pyRGX24GlLyRhqh3y9D0Aaa
	gYWpwGf4E2eHvfWrpTDo3PqacpCHGzGGP/vA78xVXIA/izzOYNooE6tJCal8TR2/yXQiU89zfslYZ
	M+7mGZdFJHCEk7Vlg9Cd6eEa9VTTB/hDmoBpIbojC8Vs6+hO+/u8vuNow6FC+umTUVLHyL4HAKvei
	2eAeGsNyDohWAO9y9rSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6EdY-0006cq-TO; Fri, 06 Sep 2019 13:50:52 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6EdS-0006c6-JS
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 13:50:47 +0000
Received: by mail-oi1-x242.google.com with SMTP id v12so4950468oic.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 06:50:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=M3zKBTNhIg8D+FIn0RZewf6I27LDWwbXRyiB+RiFIt4=;
 b=QJLxdzCmNOBoOEJcJvHLBetbvlrq02aheoBREc7Fpa35nydqJO0APfx6nad3lCVm28
 lJ1ZUe0/fJeQUUFgiMPPj6/fbcM9e7OjKrEc1QrYxG5ClkOdWLBjZFFcMIApdjWbuChA
 GwWqFB90O/OmPDWZFtpAJd0+ch2CJJJrMPGfYnCy8OENP1wN2b8V+IZ2aaVx5mHzHYo+
 C0QkvjyNgA22hfWbRziRRoMC+Uw8bf7qwZa9iRMstY4NRjAsqoN/eAs29FaHED5FZO7H
 9y7wj4KZNLMXXLh1zyjnoa+6KX/HQ1RXmCmVcjWUoO1zek/YPUj/3Er41Lu+SUg8DZJ2
 YJBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=M3zKBTNhIg8D+FIn0RZewf6I27LDWwbXRyiB+RiFIt4=;
 b=QABP6pLcoXVxxmhi96kKtLinBaywULEollOo7zTPpd33kjkQ2rCCuc9e5b2v09a4Aa
 EbcjM7cVgROdiHHG3YFJN7Gi9CJ9iaC8qxV2h93coP1BQXWm6doJvSiDAjdoN6KD+AQC
 e2AA08bhJJFWkiUtqZ33/r2ZSOdcRmfNxkhJBQGViw9HmgtL1mJ7wm+sUZFNedFkYItO
 UH7SYQxcWQxlUEt4gwm/C4b7KoJPvLubcLGI7WUi7KTRNHwi0K170z/5DjO1U5kYnPWS
 cLz5NM8twPVxtQwpchOnVa+cxsq19bpe2S3SqcnOE/ZgKSfbxvk9RKY1xWlhgku+VWmw
 AEsw==
X-Gm-Message-State: APjAAAW1iRYzaT+Y/byiFgULhXNo5KNKGotSIgMA1zYOX6qHkpZGrtC3
 PDFzjTtfx8hG/UVvwaxpGwrylM22Y9U88N6jCgiiBw==
X-Google-Smtp-Source: APXvYqxmXHWpUWZdq9c0hrTTVJDwQytlmXVaK7yqoJ7V8pIYxhd7z8W2/IAM32BufSMj7tAhgV/7VotgrBEcuRvwPrQ=
X-Received: by 2002:aca:50d8:: with SMTP id e207mr6690938oib.48.1567777845580; 
 Fri, 06 Sep 2019 06:50:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190904180736.29009-1-xypron.glpk@gmx.de>
 <86r24vrwyh.wl-maz@kernel.org>
 <CAFEAcA-mc6cLmRGdGNOBR0PC1f_VBjvTdAL6xYtKjApx3NoPgQ@mail.gmail.com>
 <86mufjrup7.wl-maz@kernel.org>
 <CAFEAcA9qkqkOTqSVrhTpt-NkZSNXomSBNiWo_D6Kr=QKYRRf=w@mail.gmail.com>
 <20190905092223.GC4320@e113682-lin.lund.arm.com>
 <4b6662bd-56e4-3c10-3b65-7c90828a22f9@kernel.org>
 <20190906080033.GF4320@e113682-lin.lund.arm.com>
 <a58c5f76-641a-8381-2cf3-e52d139c4236@amazon.com>
 <20190906131252.GG4320@e113682-lin.lund.arm.com>
 <CAFEAcA9vwyhAN8uO8=PpaBkBXb0Of4G0jEij7nMrYcnJjSRVjg@mail.gmail.com>
 <28c5c021-7cb0-616b-4215-dd75242c16e6@amazon.com>
In-Reply-To: <28c5c021-7cb0-616b-4215-dd75242c16e6@amazon.com>
From: Peter Maydell <peter.maydell@linaro.org>
Date: Fri, 6 Sep 2019 14:50:34 +0100
Message-ID: <CAFEAcA8HH-JeMLZ29h6GidDcLpb_oUHqoyEMJ0buo3hyTBj5jA@mail.gmail.com>
Subject: Re: [PATCH 1/1] KVM: inject data abort if instruction cannot be
 decoded
To: Alexander Graf <graf@amazon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_065046_641996_4C7B1CE3 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?Q?Daniel_P=2E_Berrang=C3=A9?= <berrange@redhat.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Christoffer Dall <christoffer.dall@arm.com>,
 lkml - Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stefan Hajnoczi <stefanha@redhat.com>, Marc Zyngier <maz@kernel.org>,
 kvmarm@lists.cs.columbia.edu,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 6 Sep 2019 at 14:41, Alexander Graf <graf@amazon.com> wrote:
> On 06.09.19 15:31, Peter Maydell wrote:
> > (b) we try to reuse the code we already have that does TCG exception
> > injection, which might or might not be a design mistake, and
>
> That's probably a design mistake, correct :)

Well, conceptually it's not necessarily a bad idea, because
in both cases what we're doing is "change the system register
state (PC, ESR_EL1, ELR_EL1 etc) so that the CPU looks like
it's just taken an exception"; but some of what the
TCG code needs to do isn't necessary for KVM and all of it
was not written with the idea of KVM in mind at all...

thanks
-- PMM

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
