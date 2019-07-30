Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 831767A357
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 10:48:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=unB90zxCxFuYXfmpTM8fndzCXivss0d96bydkiMOrqs=; b=hm3IhXXLLcbDH2
	k6ViFSJuwsE5NYE4aRt9LppxUyaJljcSTvtkoHx2bXisW6JT9L886Rcu4C3x66dzCyceK3nNs3zzT
	LvqqzlqFIta7VrY7CNBIl+i35kpSb4kT6mCwDSRMO5hTXzGrWHA3fQm0LDLUxMdcTzy30UBT0mbKd
	mEruAc/XSQuSJxpobvapxKGdRuevO2qPBsBId4TfTDAq7NhNDY21tEGAxko5oSbQnkvyIT3RcnmDx
	uDabxfxVW3wtV2qMF9rPDprd7QiZG9ZGyAuPy5z7vVaqRRMacfWQIwx2cyBKNKedfGqL751aZX09W
	cD5vBrQ/mRKGbng7GGVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsNnn-0002b5-UI; Tue, 30 Jul 2019 08:48:12 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsNnJ-0002Z4-3a
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 08:47:42 +0000
Received: by mail-wr1-f67.google.com with SMTP id p17so64788088wrf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 01:47:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3MGq4dLXH16WHHSffKqTgVZG8oTTt8RVIxVXhRU8i6A=;
 b=HhZkWNTGq4j9+5yDi5Fpjw7TrAtndrZUJ2u+GY5gmW5jq1fkKES7dKGwVov9xHK5j7
 z2+mxImBRyXD1NJc0EEUjEzeylt9kvB3Li6OnUVfUQUwgX5WLsVus/ltHu6oGeTIk1uM
 HDMTj+A3CT6oJylP9Sb/4Rqb8/l1Q6jh/VDMq+OozFO5Xdle7egiQ2rnvhwAgtySyGix
 kAFPI/t18XWty32vtXls546/Cw/Pm0VCr1P4Vh0uGli9BdNW3OCBXBXNEr9plcCCBLS/
 rOv//gU4kd8xbI425B/089YM/Ix9EZaYe+AYoSEBk6hEZZW+UyoOc/rA6qE+Ca1LhQGj
 bBMw==
X-Gm-Message-State: APjAAAWTxs7LFJlcvNi+hrKWSPzYKUQxLzG7LAUzH/b2P/LhZRaA2gRo
 vHAuSOigQuLun7NpW74PLQfJqZza5322RsgDONg=
X-Google-Smtp-Source: APXvYqz/Zpk0wNzPeFru0clrckCWLSUtKkVnUhCYVCmj9S9nfNd/4oGLTupfwLIvwxTLgp5O1m8+gMeHHw4rsj5XMog=
X-Received: by 2002:adf:f08f:: with SMTP id n15mr41608519wro.213.1564476459286; 
 Tue, 30 Jul 2019 01:47:39 -0700 (PDT)
MIME-Version: 1.0
References: <1563461137-19827-1-git-send-email-ykaneko0929@gmail.com>
In-Reply-To: <1563461137-19827-1-git-send-email-ykaneko0929@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 30 Jul 2019 10:47:27 +0200
Message-ID: <CAMuHMdUAW5ijuL_PW+5ANYBbtdyptXesvOtrA=B7zCcN_2xhRg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a77965: sort nodes
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_014741_263504_1A649FFA 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Simon Horman <horms@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 4:45 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
> Sort nodes.
>
> If node address is present
>    * Sort by node address, grouping all nodes with the same compat string
>      and sorting the group alphabetically.
> Else
>    * Sort alphabetically
>
> This should not have any run-time effect.
>
> Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v5.4.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
