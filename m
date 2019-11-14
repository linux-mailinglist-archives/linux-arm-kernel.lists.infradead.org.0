Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D021FC83A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 14:58:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ghLSf3nr7wIyhwhpT9nqhyzPkLDUap1nAoo4Zv7k81U=; b=Uz1GI5SANWYScf
	RXm4FUrriOXwqZkjAh5b9zbVdvHWfZmVDn4gaHSOFJBuH54k0R/bDrZmxWFf0aitRxWh5UNlS+Qft
	Emfi8rUcfAxuz9pK+o8wxVI0sDVXSqR4znA2mp2W5tnk1e/PV8hy7LnIcfchBsF1oiqU/Eh2DQPjI
	0ptPozFxfTbhRQcypQslW2i7vNCMn23YwWr4gsZ0S1+izrkgY5JmymoJwFax/fQALKlC8WYvCBgax
	7ag25ILXUkbwkVaWPBlQxn6Yg92nr4+8eajoTqmgTyMSqHBm2+RL3RPD2tYCvcOIztenxkwxuUtso
	JI/iLIPG971s9+bWZ0EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVFdH-00064U-A3; Thu, 14 Nov 2019 13:57:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVFd9-000644-06
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 13:57:52 +0000
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com
 [209.85.219.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6F4C42070E
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 13:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573739870;
 bh=GB5ZNZwpUnrvTVpWesWOxcFz8LGlrrjCF/2UjAprWow=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=DYUqRhBS/0/ZWwPyWgKQMpSSxeMvAecfdApg1bCdDt9EKfmb7Yo1HHuOZ7fWBEcGV
 0Q2EKCCbPwEkyIj7bg3vpRuS8wmbpbGnFvY6pIXDaIpJm9qX1aCrI640uHbEJqRgYz
 pARS+Q7caIIdin7QRA7Q+fyYp98hhzth1wHsxfFI=
Received: by mail-qv1-f50.google.com with SMTP id x14so2364298qvu.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 05:57:50 -0800 (PST)
X-Gm-Message-State: APjAAAV3s55ehL8FpgZ5z7mZkv4x9wfa68t/kqRfNDLK8YxbOyFXOrWr
 5+c5r/vR2z/FtmB/FwP7qriByUCFpNedVg0QRZQ=
X-Google-Smtp-Source: APXvYqyBwvvpAdeB4tgNqw9NSS0VCm/ghop0mnQxOg76y+Cc8IN2tg15+QDHF2Yk/XPly8FONJJ4zXVNSp1SW8FSCJA=
X-Received: by 2002:ad4:4089:: with SMTP id l9mr2672727qvp.241.1573739869543; 
 Thu, 14 Nov 2019 05:57:49 -0800 (PST)
MIME-Version: 1.0
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
 <20191108130123.6839-33-linux@rasmusvillemoes.dk>
In-Reply-To: <20191108130123.6839-33-linux@rasmusvillemoes.dk>
From: Timur Tabi <timur@kernel.org>
Date: Thu, 14 Nov 2019 07:57:12 -0600
X-Gmail-Original-Message-ID: <CAOZdJXU1ELqQh7TitAJW7bsmnj89wq3opJGVizC2B19nL_3_rQ@mail.gmail.com>
Message-ID: <CAOZdJXU1ELqQh7TitAJW7bsmnj89wq3opJGVizC2B19nL_3_rQ@mail.gmail.com>
Subject: Re: [PATCH v4 32/47] serial: ucc_uart: use of_property_read_u32() in
 ucc_uart_probe()
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_055751_060463_BBFDB198 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 lkml <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Scott Wood <oss@buserror.net>, linux-serial@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 8, 2019 at 7:03 AM Rasmus Villemoes
<linux@rasmusvillemoes.dk> wrote:
>
> -       if (*iprop)
> -               qe_port->port.uartclk = *iprop;
> +       if (val)
> +               qe_port->port.uartclk = val;
>         else {
>                 /*
>                  * Older versions of U-Boot do not initialize the brg-frequency
>                  * property, so in this case we assume the BRG frequency is
>                  * half the QE bus frequency.
>                  */

This bug in older U-Boots is definitely PowerPC-specific, so could you
change this so that it reports an error on ARM if brg-frequency is
zero, and displays a warning on PowerPC?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
