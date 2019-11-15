Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD47FD482
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 06:44:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WTLZtyyz1fMQCaTLBoC2BPR4/AQ/nm35QB2fSROjkWw=; b=SMT5rkwdPG3j5U
	ODAjZfzl0kLJ9RCwpX5ZcumHIXOUXBi8qHW8G7V1EakNyTyjzyorfm9gBmKHhup6B6X8AvakjmuYV
	RcYv1HoFgdNbNMJEqSYAdsQDAGHhxwmTYu6pAgDcsILVFJcxyT9mrdJCsfe18DJGOEwIIwB7OxLCi
	pbWRQHufrxPpkxg+ypAk9sNQceN8l1WGhV1gb4sBnl/I995kX/2nuIKguVSRzg6o4BVG8U6HJ6XjF
	LigYvodQD/NUw+Y+zyR6Og8manKZ9Dyw8hLpL/5eaeodkvcbRmgrnx8T3fVIVBlnz867+Qk4YzlBq
	5gfVSh7fLHRlQJwUHxXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVUPW-0006Cg-EQ; Fri, 15 Nov 2019 05:44:46 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVUPL-0006Bw-AD
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 05:44:36 +0000
Received: by mail-oi1-f193.google.com with SMTP id l202so7663630oig.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 21:44:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/3uU+eY5BtMdRnLX2UOVt6iN0KOpw7AZZyEPeGfnQp4=;
 b=DgW6lvFf8sYJqGuA4UarhGy7tJLrcw56gQYf1FR9zkx4fvLsA55wT6NrcQ8U9vcAPz
 1PLzuSY37TfR7CEf5x6opQei8MWx/O7Kh58NmAyXkHWzRzpmEXscCKoxKcW4Ipoiwt9k
 4xXck8jNi2zHm/+99/P76D8Q5m2ru6n2H8OEZKn3OLXI47mqPc2PYT82UhsHDyaBPy3I
 BY0N6CElSM8GhKH+0Vh1kAdoaCDp7YuK31TdVb8vaCvqJ1tc2rbpCUOsxgwicjr0NCiR
 zccZuasnbrCEFFPuJ58/bBQKQVVibTsHGxNTcNSQ7Dp7mljsG+lYwAaP3ryARXCbuFg9
 t8lQ==
X-Gm-Message-State: APjAAAXU7AaduP2JL+UJQBX1gi4FVQWnKUrQj6G9Ll+3Bxlgph4fA5pY
 wxetMhqassPT+a8ThY/n+fk4Eb6t
X-Google-Smtp-Source: APXvYqwS2n/f32MPZ0M8sMvFAmsfhYqv0I8T752zHZxQnGZJZzWta4L5uFywMgS0KI4gu07eP0GrfQ==
X-Received: by 2002:aca:cdd6:: with SMTP id d205mr6681906oig.9.1573796673224; 
 Thu, 14 Nov 2019 21:44:33 -0800 (PST)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com.
 [209.85.167.170])
 by smtp.gmail.com with ESMTPSA id 47sm2611235otu.37.2019.11.14.21.44.32
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 14 Nov 2019 21:44:32 -0800 (PST)
Received: by mail-oi1-f170.google.com with SMTP id e9so7620303oif.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 21:44:32 -0800 (PST)
X-Received: by 2002:a54:451a:: with SMTP id l26mr6675985oil.154.1573796672412; 
 Thu, 14 Nov 2019 21:44:32 -0800 (PST)
MIME-Version: 1.0
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
 <20191108130123.6839-47-linux@rasmusvillemoes.dk>
 <CAOZdJXUX2cZfaQTkBdNrwD=jT2399rZzRFtDj6vNa==9Bmkh5A@mail.gmail.com>
In-Reply-To: <CAOZdJXUX2cZfaQTkBdNrwD=jT2399rZzRFtDj6vNa==9Bmkh5A@mail.gmail.com>
From: Li Yang <leoyang.li@nxp.com>
Date: Thu, 14 Nov 2019 23:44:21 -0600
X-Gmail-Original-Message-ID: <CADRPPNS00uU+f6ap9D-pYQUFo_T-o2bgtnYaE9qAXOwck86-OQ@mail.gmail.com>
Message-ID: <CADRPPNS00uU+f6ap9D-pYQUFo_T-o2bgtnYaE9qAXOwck86-OQ@mail.gmail.com>
Subject: Re: [PATCH v4 46/47] net: ethernet: freescale: make UCC_GETH
 explicitly depend on PPC32
To: Timur Tabi <timur@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_214435_353682_16A2D604 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, netdev <netdev@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 lkml <linux-kernel@vger.kernel.org>, Scott Wood <oss@buserror.net>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 14, 2019 at 10:37 PM Timur Tabi <timur@kernel.org> wrote:
>
> On Fri, Nov 8, 2019 at 7:04 AM Rasmus Villemoes
> <linux@rasmusvillemoes.dk> wrote:
> >
> > Currently, QUICC_ENGINE depends on PPC32, so this in itself does not
> > change anything. In order to allow removing the PPC32 dependency from
> > QUICC_ENGINE and avoid allmodconfig build failures, add this explicit
> > dependency.
>
> Can you add an explanation why we don't want ucc_geth on non-PowerPC platforms?

I think it is because the QE Ethernet was never integrated in any
non-PowerPC SoC and most likely will not be in the future.  We
probably can make it compile for other architectures for general code
quality but it is not a priority.

Regards,
Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
