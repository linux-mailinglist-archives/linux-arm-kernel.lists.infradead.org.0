Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A955E129C98
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 03:07:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ESaaiokmn00uGGKIQpdADl9vetDJH8kxRK8VRxiZLQ=; b=BwdRZmY8kHBk6M
	+HXfHRZ+kovvv4kzKZ7FUNo19VR8yTCnZ8OXC2GiJLF7L9uPRGL3INArwc0T+5qZpJGUeog6PtD2E
	saZSPhFGmDxLPxO7cv3PL1BCEM6RJhtNrLFKbIxKmyKKrP2pFBk4oOSL/GmGEwSxGFXXHtEW2onZ7
	B3XjQ5N6T4hg8uHcw7b2qv7CG4pGgF2QqfkhRA5uHSmODR3Lgjep6EX0ZDZjDNK1IxYgQMf4Ksvop
	eHGoHI60xkj+wD1A0mYFgHI6eQW+IDffdgP7EWUNAvaE2a2ll5NLm8bwOZ+lRNmxIWPeQllko7plN
	8AUDNVcqKfzMZ5X+kCqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijZc0-0003rP-PK; Tue, 24 Dec 2019 02:07:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijZbs-0003qo-St
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 02:07:46 +0000
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4FA7A21775
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Dec 2019 02:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577153264;
 bh=nuWZ8yhnitZpPr2h+5PU5xzGudc3XC10lX5Ec91GR+s=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=E6kVU9g202rFhym4tXVVBYm1fF7zrf4imuKY1UsLFAoqO0HfSsUASADU8FpcnUTFX
 au8dQB0MMEwRaITZ7AkOA+CdDJ26kZ865Lo1+fULgI1ZCLw1Y/TN1ZP2AMm5x/siU4
 pk8YakrCG+Ck+yePKWOcsbZyKUUeS+p1lIRxmwIs=
Received: by mail-wr1-f47.google.com with SMTP id z7so18534973wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Dec 2019 18:07:44 -0800 (PST)
X-Gm-Message-State: APjAAAVrAp9yCH7dId5VLH1HQ2dfugteKJJikFI7xToFflUf9AwhV7Vi
 PtohsOvUN+7PaZpm+GOTYE7U/ucnqADjbH0BmVOgwA==
X-Google-Smtp-Source: APXvYqykVrvy0YjrN0kH0ZW9RItFuTqBfOCiQcjlBJoCQ0o5yZwU56b/UhrC0QUXlKV7VRHUBN0rn8CMmknayBiXVnU=
X-Received: by 2002:adf:eb09:: with SMTP id s9mr34073707wrn.61.1577153262733; 
 Mon, 23 Dec 2019 18:07:42 -0800 (PST)
MIME-Version: 1.0
References: <cover.1577111363.git.christophe.leroy@c-s.fr>
 <47701b5fb73cf536db074031db8e6e3fa3695168.1577111365.git.christophe.leroy@c-s.fr>
In-Reply-To: <47701b5fb73cf536db074031db8e6e3fa3695168.1577111365.git.christophe.leroy@c-s.fr>
From: Andy Lutomirski <luto@kernel.org>
Date: Mon, 23 Dec 2019 18:07:30 -0800
X-Gmail-Original-Message-ID: <CALCETrULuV5iAU3kSjMdcpV6DFGEw1z2so0DfDca6hoLB4X4cA@mail.gmail.com>
Message-ID: <CALCETrULuV5iAU3kSjMdcpV6DFGEw1z2so0DfDca6hoLB4X4cA@mail.gmail.com>
Subject: Re: [RFC PATCH v2 01/10] lib: vdso: ensure all arches have 32bit
 fallback
To: Christophe Leroy <christophe.leroy@c-s.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_180744_955975_E7D86926 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, X86 ML <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, Andrew Lutomirski <luto@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 23, 2019 at 6:31 AM Christophe Leroy
<christophe.leroy@c-s.fr> wrote:
>
> In order to simplify next step which moves fallback call at arch
> level, ensure all arches have a 32bit fallback instead of handling
> the lack of 32bit fallback in the common code based
> on VDSO_HAS_32BIT_FALLBACK

I don't like this.  You've implemented what appear to be nonsensical
fallbacks (the 32-bit fallback for a 64-bit vDSO build?  There's no
such thing).

How exactly does this simplify patch 2?

--Andy

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
