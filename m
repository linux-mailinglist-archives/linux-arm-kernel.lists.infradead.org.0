Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D390519E61B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 17:35:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EzEzWBTHECv4fTjWIlgvZ53T2EyC2kLDu2JnlioaknU=; b=msIV22LS3L35ZY
	GLvBFRuB8UiPyQ1dY5de0jAGMhzJYc6YsiwPZdJujD3HQMIP4TShaVyNyABQnzoUTv3ra9n7L2NKW
	ZZOTiZPXdwTT21TviLEmIgPSYyN1avuGsQq0o0Ysm+ssxfzkT5UHRcJ4h/5EDXS2MMidckU/u55Tv
	G5vDbuhw1zAA8KY3YG3Ua6dUyKuJRRZfrCDGuCuLbj+FrJMlQABM8+k+8MN5gsnV5vKfsLZ3ClV7Z
	VdGdfQAOo67qS4NnWtzPY2SiLdIHTerEwADbDwuTkMr5zk8LCKH3PZ6C158Twfy0j+eWuTaEkzOSU
	Znu6OSGl7ybaJBBoo7jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKkos-0000Yt-Oo; Sat, 04 Apr 2020 15:34:50 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKkom-0000HK-Ml; Sat, 04 Apr 2020 15:34:45 +0000
Received: by mail-ot1-x344.google.com with SMTP id t28so10586139ott.5;
 Sat, 04 Apr 2020 08:34:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wJJHt0CSx4rCuEsqr8ESfPqtz2SvcHs+oQjfrjV6kEc=;
 b=rvWQiF5F8bJnmlWbMT7R49NetVKvTAdp4EJoY3L86knHIuMiThiWt9GN38kOhTFKJh
 R/puK9Sr3rH99oncCgmc1eK4NIkt+fy8pJp82Uj0vAMSBEQnbAGzU5HSBYLjcU31y0Hq
 4yaatE2LPEJ5lgaSEd+1NuCPVvtORn+cSTnedW8fICKr4mMw9NT+KjMSLPPB7sN4dlZC
 dLsMVRtTOT7xshyqN4Uaiqm3NnxvOoKvRkQmkMqQn3LongPZHMloOdNa73uECn/jAC9x
 dkVQTIIDejHXp9ieN+gkTLpU7d54CHS/0Ks69XfSwNU+pS+nL+vefjtCj7Al4RwaRHRj
 jSGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wJJHt0CSx4rCuEsqr8ESfPqtz2SvcHs+oQjfrjV6kEc=;
 b=kDkVZTgJZycb55OWoZUUTlGxXmebYkRs8fwTuszuxMR7Rdr61H445ZUGQFUhYnvj/y
 t6xTzRi6yaGy5rXbjszYFf3QA4Oi6jgxCIi0uzaQPlZTacg5ZJBApmDiHNp5z4VgG8s+
 F7Vidx93lX3C5opmWFbScg8qcPrRt/zKJXW4LmhgVjvJY2C01AjsePf4oBk6eij0ZXbl
 +c4tCBuvH1cQdWNFH175WpYO9J/V5pEOMhamHFzGgus3/qp2mYPbVURi1MgXAsVwZw5U
 ZVU0Ynm3q8Md0NuirCQNurlkM1TWtr1PX2StdGmqXlEqDXDF5j9snVMSzySijL+jzqnX
 N/Ag==
X-Gm-Message-State: AGi0PuZJQJuZv/PjmG7AXjYsrEpD92ekNCFMOqQwZ7Hh5uxyEKgv/U5q
 Qw+ag6fRAis3L+Aoc2d7DpRpGx4LGJhJoNKKJcw=
X-Google-Smtp-Source: APiQypJurN6kKeueDqM6o5vZ2pCFzzx2u9sVqqily6xPz9KLmAwCuSMsRcuswvGToxGksPlnBUBs6hgZxPamk8aeaiQ=
X-Received: by 2002:a9d:7a45:: with SMTP id z5mr10438979otm.181.1586014481828; 
 Sat, 04 Apr 2020 08:34:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200403112830.505720-1-gch981213@gmail.com>
 <20200403180911.Horde.9xqnJvjcRDe-ttshlJbG6WE@www.vdorst.com>
 <CAJsYDVJj1JajVxeGifaOprXYstG-gC_OYwd5LrALUY_4BdtR3A@mail.gmail.com>
 <20200404150810.GA161768@lunn.ch>
In-Reply-To: <20200404150810.GA161768@lunn.ch>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Sat, 4 Apr 2020 23:34:30 +0800
Message-ID: <CAJsYDV+NY90r=PV0dYRRaTEuxQAMTbakLvguX-1jOu3OQwYfSQ@mail.gmail.com>
Subject: Re: [PATCH] net: dsa: mt7530: fix null pointer dereferencing in port5
 setup
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_083444_778821_F3C9915F 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, open list <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 =?UTF-8?Q?Ren=C3=A9_van_Dorst?= <opensource@vdorst.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

On Sat, Apr 4, 2020 at 11:08 PM Andrew Lunn <andrew@lunn.ch> wrote:
> > > MT7530 tries to detect if 2nd GMAC is using a phy with phy-address 0 or 4.
> >
> > What if the 2nd GMAC connects to an external PHY on address 0 on a
> > different mdio-bus?
>
> In general, you using a phy-handle to cover such a situation. If there
> is a phy-handle, just use it.

If it's determining where switch mac5 is wired, a phy-handle is fine.
Here we are determining where exposed rgmii2 pins are wired.
It can be wired to switch mac5 or skip the switch mac completely
and connected to phy0/phy4.
Current driver is determining rgmii2 wiring on mt7530 using phy-handle
on *another unrelated ethernet node* which doesn't sound right.

-- 
Regards,
Chuanhong Guo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
