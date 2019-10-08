Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6370CFD7B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 17:22:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PS13zcBFMv6tDasShULJlpJrlj32AHwE7LEmF9+TgUQ=; b=amuNBFQbX8fLGc
	hOBM7+GXOpDkGFNc7NW9nYEHhq5zd1e9y3adbX8Plg9V0iqSckM0cR+UzkxQ/KhnAgjWru4EAH/+c
	X61jnQJtW5UbzVAmQYC3Z5RlD6SQbwWWBJOQ2RagkA1uZj8Wwtfnme5E1VYHKNBwZZXa+2D2a2U6b
	tEOdubQDOp66R5igAEll0q2emhEkleoHFU4npGXJE8hYr0sKb6wMYb1Qkkr9ISm4qB288vWf9V0eR
	KWTZsHQYVFkmqXo1eIOO/Px7qFS5pxcwPwO8O20bVT/2ybengVb+YvcZTno0d1f/7zDj9yJfnJHCQ
	JcaGKz0SQsB0NddRuLIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHrJi-0008Gl-L8; Tue, 08 Oct 2019 15:22:26 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHrJd-0008GB-5B
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 15:22:22 +0000
Received: by mail-vk1-xa41.google.com with SMTP id o137so3842227vka.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 08:22:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OaNDrHWuf2YNQdBBfgofGBEnuYpRlrKz3qdtkWdVupc=;
 b=v8a8BLbdp886LwnyKcfcEzNg2DWslLphnhUYmwRCdeDXyhD/wXHxf4UFzmxxSVDOfX
 Y1SLDNnrIm9He9kujuCj924lKLMQu5Z3O+l7M4oWU3xCNqMchlsFmC+n4ehVTSlrfS76
 2ulnZTIoMM5YedI9n6jmBy5xfZxmHnXDV4ysoXI05s5LhCKxOyheUE7elUKrTUdsJ8l9
 CPqMlgBUGzW78/ZkC+FSC3BgoztHmMZbNFcXHrzGI0dLP2Dx8+3rzPcTlTJBPgAEuMny
 8kjO/eWWuhQ8pv7o+C/E/TMu/Yz49mJfamMWzKXbV24ANgzodOhPMegFzlnq2x103GLK
 ZClQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OaNDrHWuf2YNQdBBfgofGBEnuYpRlrKz3qdtkWdVupc=;
 b=MSWaMIq2459vIxIe4o2IoRb3eeF9JEnb09CUdxfKhbdY3RWF2+j4CYOwyriYjPCJR0
 KUhs9dvAwCitiRUOn0rK4q65uZV8eho5ygwq7QtHmjG2dX1moXCKQ1DF69y4eviOg5Kl
 X0P+Q3R5aSLw+6NGjXP9ZFVjK3yxvQsYLzumHClo2myQAaduLm+l99WRECObxFj9xH0+
 +iVE9Eebnc9rQhxIZjxdVBtFMkugYxG4BWvb7WGAEijOeCocXvNUwhne5dt37WSJHku/
 p7ZS5WAScs2ixeE6t5p2z7wUC4NGxjDQ/hMC5ynVE4SukkE/ACeAcpFQDgLtV5VE9rwx
 CHKQ==
X-Gm-Message-State: APjAAAXrSx/I41ubuIGcM875FzRnsEKPDA/OHLfbkS/UNFhWV8k9crFq
 Efm1TlR5yAQIIomMWbRJ1ItjGIsh3RuArrmV8ISifQ==
X-Google-Smtp-Source: APXvYqw0cdHQAFUr9qXPA3syc72BDMnRBk0iMwv2cwlFyFw144X/NmOqKsuIGB6TOtCy8QxQCPWIn0sPHjmd721wUpk=
X-Received: by 2002:a1f:5003:: with SMTP id e3mr3693062vkb.35.1570548138747;
 Tue, 08 Oct 2019 08:22:18 -0700 (PDT)
MIME-Version: 1.0
References: <20191007201452.208067-1-samitolvanen@google.com>
 <CAKwvOdmaMaO-Gpv2x0CWG+CRUCNKbNWJij97Jr0LaRaZXjAiTA@mail.gmail.com>
 <CABCJKufxncBPOx6==57asbMF_On=g1sZAv+w6RnqHJFSwOSeTw@mail.gmail.com>
 <CAKwvOd=k5iE8L5xbxwYDF=hSftqUXDdpgKYBDBa35XOkAx3d0w@mail.gmail.com>
In-Reply-To: <CAKwvOd=k5iE8L5xbxwYDF=hSftqUXDdpgKYBDBa35XOkAx3d0w@mail.gmail.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Tue, 8 Oct 2019 08:22:07 -0700
Message-ID: <CABCJKucPcqSS=8dP-6hOwGpKUYxOk8Q_Av83O0A2A85JKznypQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: lse: fix LSE atomics with LLVM's integrated
 assembler
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_082221_219679_B1B5E53E 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Andrew Murray <andrew.murray@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 7, 2019 at 2:46 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
> I'm worried that one of these might lower to LSE atomics without
> ALTERNATIVE guards by blanketing all C code with `-march=armv8-a+lse`.

True, that's a valid concern. I think adding the directive to each
assembly block is the way forward then, assuming the maintainers are
fine with that.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
