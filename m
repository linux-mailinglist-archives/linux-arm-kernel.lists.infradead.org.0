Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9C9678BF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jul 2019 08:08:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GUWsVyBqzGpWRHqNE6cmgBvXLOAk9JGVHcRFgTJ+zSA=; b=lRv1NjIdNnTL6V
	/A4dOscgJD2s2908ocqSlFJGBbcBnLgJMk49NNWmkMTtFIPI9A4afcJnzlahrqTVKUnMfTW1HBODh
	l07p+8h+RNoYVst/5j51OVyIyIGebraP5iy1p3hK7y7x9WP+vM1U8FdgC/toRPR0W0iBqGVnrDUcN
	XJCeRii7PkBwf0YV2w9GksKlBVbYvDteOA6EXQUjOk3FIAw/nUCBo9Rw0tOyMZFfjKF+kKpnCIFSO
	mlEPzf7lW7VIJxTCYzoQ55zSuamYkeTB8E+jrI3XMW+41Fc2IWmLuXF+uiNhrPD2cf9grrdrjBON/
	Nsb4krk7S9dwXlZcWmFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmBCS-0002dL-S0; Sat, 13 Jul 2019 06:08:01 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmBCE-0002d3-HT
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jul 2019 06:07:47 +0000
Received: by mail-wr1-x444.google.com with SMTP id p17so11898256wrf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 23:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=On5iqD9AlcEVmas2/vt48n4oosNJbbs0cKQZBxzkZxY=;
 b=Tm87kPHCKamfpAY6goULQAkKazqDEpnzeXlHR4JZBeJvv1GVGSAvFipNxGwE6bAEPk
 r58xUmUnOTJR40dsa7Kl/laITKOpLUNFpHZdLjT+fRAQPGTUqKpEcw6PasDyvUd4c0bj
 gY7QG99zvETFN1bxMACuiAGKCVkS9T8d1VpzqH3anIqZ8jErOwXL5DdIldckGfL12u8F
 mkQXQpfAZFQMVVy8WlWfIPLIh6X7fq8x22ZYArtv64rpYTwQJ0jg39p7vjqfTW9x9hx6
 S3rJyzld2Ajj+qg3gL7MI7r3HXxXa4yZbMk9QxZGNG9rJyXePvrv7j5KgwXK80I0iqEE
 OdYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=On5iqD9AlcEVmas2/vt48n4oosNJbbs0cKQZBxzkZxY=;
 b=ooSTp1SLQ0UGLu82/S8mqYqssnDEMQy8fR9i/1xXCTWApRBnCx5hYThYPP6YVTUfW/
 W6Xu30EVVIE4j1MIMiPJ/40jXQyNqI8PFxNXXBye7vhqOCawc7H425vHSaKL+te/Wll3
 X8bNIQ7y9OyX9U59AjqTQfuuKhuGoTkyAwaxQ7TWWDhoRDLgHZjan4U99ms6rAyQ1VyB
 aHl7vJ/ilawpdWBS3RQ0VEjxah8D/qzkpnR/CDUySGpo4O5BdmMongzbu07LkHzmwuQW
 gQ9Gg4MlE8hrpFehxTqK+DridcIiOgm42CRMqkKgBxCcmzx3VoC/AjsxN5Ijh76gIvY9
 SMmQ==
X-Gm-Message-State: APjAAAUdcsFDwJqoTkI3CUA1YTRyXMb2Zu9ZJdpmaOgIIYu3VyRoF61C
 DMWSawz5BnjSfBKw6NsQI6g=
X-Google-Smtp-Source: APXvYqwBRfMNXfHHzwLXmUW/368+gtKOyu7+kMHfTjBTiTaMHZ0RtPhgK75JRaQuQc6UvyRDl8Cy+A==
X-Received: by 2002:a5d:4e08:: with SMTP id p8mr3281323wrt.20.1562998064324;
 Fri, 12 Jul 2019 23:07:44 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id g131sm6963201wmf.37.2019.07.12.23.07.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 12 Jul 2019 23:07:43 -0700 (PDT)
Date: Fri, 12 Jul 2019 23:07:41 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] kbuild: add --hash-style= and --build-id unconditionally
Message-ID: <20190713060741.GA76046@archlinux-threadripper>
References: <20190713040110.18210-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190713040110.18210-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_230746_583575_4BB1DD4F 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Michal Marek <michal.lkml@markovi.net>, linux-kbuild@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jul 13, 2019 at 01:01:10PM +0900, Masahiro Yamada wrote:
> As commit 1e0221374e30 ("mips: vdso: drop unnecessary cc-ldoption")
> explained, these flags are supported by the minimal required version
> of binutils.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

Also supported by ld.lld; I tested both arm and x86, the build ID shows
up fine.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
