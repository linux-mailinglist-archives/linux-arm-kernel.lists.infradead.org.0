Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB688208D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 17:42:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wGZKKJ/sVYBrWW+OF29U5PlBbumytqARtZfIy1YhKgg=; b=R0aAqhqy5rQoCC
	blaHsHiwf6Qr5r372RegGD7j1pWLiib2+oRc83Nm3AYxQUZwEmNAO1fpES6VDsOM1wK2vJh7CZuBe
	wdx7kFNWF65LWT4M6UnelHcizGbp9tBFEOdmivkNIfJfueAkasBqPPoNJkAcOK/cdUVfus/kxur6+
	e5BSG/Y9kJ4uImZr08cpaon1619W9dhv6CjCU3keYKRNjzUMVrLQoX5aDPAwMMsmUwAal7TyewoIk
	ce9W4W1QbBIhw3ZP3gX5WyWZ4A+rIaNdyLh0sDxOmRnvfoyjkCin/sUbTiQkp4k7oNgxgYB20s7rI
	k32FL3wvL7iXwoza+wYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huf7k-0007YO-L4; Mon, 05 Aug 2019 15:42:12 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huf7a-0007Y0-Ln
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 15:42:03 +0000
Received: by mail-wr1-f67.google.com with SMTP id p17so84882734wrf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 08:42:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o9oTH3lrc9gbGQU8qF2CLsNoD8rh24pMm5pLzB4ne7U=;
 b=XNeiMjCZu2H+zhp5Jg7ND1dK2aj88VKOvVdqXLet3Cb7qdrdzcDrpU2U3oLAIRVXk+
 OCNKgRURn4JySJGIsHXsI91ViofFHL5ra7tXqY4LMbl+2bdFdxm/ukbj6QJgu4mtZ8+T
 Bk9Li30zPqsP86A/eG3J2+VolmL2rtSnmDNRTl7EWZfuLvFNskXxmfGaEYYocsrj8SL/
 rpm2q+fIrcxuBMnaXya2TaQ2foWd4KKR7vRXpAF4wrQCpcqAK3Y68gtGB8307A5rAoCF
 NafkRexvo5XuMuNntIidXm26scrN0LlU5OfMERyR7dd6BGd3r8CGWsqS+FE3UdH8DdX2
 pErA==
X-Gm-Message-State: APjAAAXyLfiwuhZudt0xbsIfxnw9PFQ+ybOWxRpENDRqCOFCY0yt5Wt8
 KMP6guvcx0RAOtF6t+QIGd/24G6Ff48ae2E6Cb8=
X-Google-Smtp-Source: APXvYqwnHv0v6dHYx6C94YFR+bjof897FfAM3+5r4a0vg1xBdeFYsxcg3XPpxKdzozbsvQocTZbdrYebSadyXnvHt1k=
X-Received: by 2002:a5d:4b91:: with SMTP id b17mr23848079wrt.57.1565019721013; 
 Mon, 05 Aug 2019 08:42:01 -0700 (PDT)
MIME-Version: 1.0
References: <1564669513-22756-1-git-send-email-ykaneko0929@gmail.com>
In-Reply-To: <1564669513-22756-1-git-send-email-ykaneko0929@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 5 Aug 2019 17:41:48 +0200
Message-ID: <CAMuHMdUKOoxGaRdNLnmKkuYpm_UaiV4b4deDfj81WVu7t94_fQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a77995: sort nodes
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_084202_711343_4536590D 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Simon Horman <horms@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 1, 2019 at 4:25 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
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
