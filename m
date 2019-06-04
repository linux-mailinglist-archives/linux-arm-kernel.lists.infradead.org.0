Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA6A34193
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 10:16:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nTNwzCEhF6AA/6JM1t671aBv9gT2khSAI1LYPZ3ntvk=; b=F4Mb5oZD4ZOa+6
	2xcObQ01mxE9f4qa2do35wnlJuBW3Y3XjFMHgKqE71qqz+hYboGGK7Oq9lR1PnPzMRkuCucny11k3
	wv5U+TQ5lnzQUKkmHSB+sbODIkOBNM8tstQlr9UPMDN+VwKPPv59hwBeD6BgJy9JiitB/gjWAFshM
	4ZC02/02BPb+iW9RUUVYX06P1RWpvgHLUzLDw9dbeRWvSH9bGrwhRGmSTWdCmJDMMsXFUKAHVvA8j
	Ubjh1FJs0U6QKtLg6KT9W300BtH9wBD2mNrtbJEBKntTIpQPPasZIbv7EEgaXNjhabRVWP/sWDrf0
	pbiO8HF71G/6qZVma3+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4cn-0003w6-Lq; Tue, 04 Jun 2019 08:16:53 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4bX-0002LG-W9
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 08:16:14 +0000
Received: by mail-lj1-x243.google.com with SMTP id m23so499419lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 01:15:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dLlcBHBLLtHstGlRzl9TA6x38HKIxAAJAQ+NO6ZQeWw=;
 b=gg5NaBQkvVlyEjdj76PxCTZ1E9NORC9Uvd2TwtPXwamT631BYBINpO1n7lK40xKlDO
 YF75M03YPHv++3XvpBenhsCevE5QP7jrqgBlPPpsxQf51yLY6i1cDVealPzeWuUeOETM
 Ln8JFOLHaVnUBWlqWtttsyLypGE2AUK6dJbQPwWb8IaMS2uov9Ribb9tr0Px/NPd77BZ
 Vq/ZUbvc7w1hd3O2czGTLEIl+HviRJodECXWHyuwPhv+2YED4WlErKwRwgz0j/FSpbNQ
 BTyOuHsVjmHZEuUOPLjDQWOR3mp4KfA/QHcX/64K8vTFTQx8TqPMWoAJLp6RCAYNkKyw
 5Liw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dLlcBHBLLtHstGlRzl9TA6x38HKIxAAJAQ+NO6ZQeWw=;
 b=dZ95kK0lwDjijh3A5xvc7oh9Qi4HHCwswNIlPenXTJrfTgyhoWrtqXh8cwxEOAfnnq
 /VdNSbuKu9qQLCE+pDAVwD3HlUkwLZKCu72ZU3RM3PdkyitgyGdZKaj7rjzDz52TBDcH
 yeWz0WhpFiTY3p8SuKxobdtRnwukyutyPFdfIFhQk6IK2/Ye+CF2PO+ZyLjb4CMBO8Ht
 53x7KplVFR3aCAyb52TnRYklqzVVx0oSqveaeeD58LsVr9Ky73PB5KekcH10fUrsSmYg
 +icxkGPcnE4B6B40XF2ZE9wKDRxTnZFcjGREW1pda4WfUpPrwe2y1tuMBPv9J/iMTeEz
 Amng==
X-Gm-Message-State: APjAAAUyxNPkWGWsfli+9qcqoDqYtSED/yvhhjTM2Ub2R+L104oL8cXo
 zjO+zIC3z9Ci0SIzGus6+O9NC0lKGLRYuduaWeY=
X-Google-Smtp-Source: APXvYqzP1NG5gWwqUWs2RU4TEYclgqRL9GlvmJKeApSsoDlNeSku/Zjez2PSP00HTB0NSoYWsCg5La13x7bHF3bdJrY=
X-Received: by 2002:a2e:91c3:: with SMTP id u3mr16042008ljg.130.1559636134081; 
 Tue, 04 Jun 2019 01:15:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190603174735.21002-1-codekipper@gmail.com>
 <20190603174735.21002-2-codekipper@gmail.com>
 <20190604073443.cnnqd7ucbaehxdvj@flea>
 <CAGb2v64T5MypDD9A5FNfyikB9vFJZf9+TiQaXi_o2K53QmfaQg@mail.gmail.com>
In-Reply-To: <CAGb2v64T5MypDD9A5FNfyikB9vFJZf9+TiQaXi_o2K53QmfaQg@mail.gmail.com>
From: Code Kipper <codekipper@gmail.com>
Date: Tue, 4 Jun 2019 10:15:22 +0200
Message-ID: <CAEKpxBn-XX+GRrMuCccwcC9TFKXGYV4S2ZwX+jBV==33RsW-aQ@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v4 1/9] ASoC: sun4i-i2s: Fix sun8i tx
 channel offset mask
To: Chen-Yu Tsai <wens@csie.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_011537_768967_D6D74FB3 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "Andrea Venturi \(pers\)" <be17068@iperbole.bo.it>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 4 Jun 2019 at 09:39, Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Tue, Jun 4, 2019 at 3:34 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > On Mon, Jun 03, 2019 at 07:47:27PM +0200, codekipper@gmail.com wrote:
> > > From: Marcus Cooper <codekipper@gmail.com>
> > >
> > > Although not causing any noticeable issues, the mask for the
> > > channel offset is covering too many bits.
> > >
> > > Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> >
> > Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> Would be nice to have
>
> Fixes: 7d2993811a1e ("ASoC: sun4i-i2s: Add support for H3")
Thanks....I'll keep this in mind for future reference as jernej also
mention this to me.
BR,
CK
>
> But otherwise,
>
> Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
