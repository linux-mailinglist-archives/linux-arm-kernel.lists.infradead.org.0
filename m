Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B034912E763
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 15:48:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pTOaDzXaCx3jUNhVBNwrWvp2j2E4Vx/PTaRAKbZ5VpM=; b=EG5sGYNwaNU78S
	zEbvdIkVOU/3368Y8LmYKwYApxH9tsVFxgAa7VeNTdi49X/coxLjZM2zWNWZBzThJll5gB55ji57i
	NiBhtYmLZ0wjNA1Dgka3D5Puvyb6zWC2yskGV+R40iNc5gMNZyeLmOaSOsO3XEdptI+JtjCKI+Pze
	ebjf9u06/SG+2O4F2WUlZ8R8yThqzwiJfnDEckwbzhUvleBreg+B1JBZ1MjV3PTgDIvggfmqlRuRR
	+eAKA4AbE9vDLg+PAKEKqmop83Bah/J+kYdVpt92ikwUha0SpxTYMg77rkBQ58S0YEr7QKSezkJ/W
	vW7DNDOFt65UwLd071rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in1la-0008Vj-2a; Thu, 02 Jan 2020 14:48:02 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in1lR-0008VC-AZ
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 14:47:54 +0000
Received: from mail-qk1-f177.google.com ([209.85.222.177]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1Mv2tE-1je1vK2yem-00qzrm for <linux-arm-kernel@lists.infradead.org>; Thu,
 02 Jan 2020 15:47:50 +0100
Received: by mail-qk1-f177.google.com with SMTP id z14so30238574qkg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 06:47:50 -0800 (PST)
X-Gm-Message-State: APjAAAX6EbyDDWzSpmhDtyUD07qekcshafDIj8nTam1gqBcjvu1Kt5Ev
 UtLw5TtrROtD6E5BYJYoej76lXS09pVZFaQVRj4=
X-Google-Smtp-Source: APXvYqxeWv0VNRCh1wUYetvxg6PZuim7c/Ayq2VRzpge7C10vtnrAM7vxlck/j9kJBHTwFTiGgYF60rLdGcplLKhkRs=
X-Received: by 2002:a05:620a:a5b:: with SMTP id
 j27mr67222709qka.286.1577976469644; 
 Thu, 02 Jan 2020 06:47:49 -0800 (PST)
MIME-Version: 1.0
References: <20191228162929.GA29269@duo.ucw.cz>
 <20191228193622.GA13047@duo.ucw.cz>
 <20191230173507.GM35479@atomide.com> <20200102110025.GA29035@amd>
 <CAK8P3a2Ya+GZRRA_THZBVDq7SWO8UYoUPwW5fEyorCVjPnd1qA@mail.gmail.com>
 <20200102140609.7vsfwcjyvbbrmcjx@ucw.cz>
In-Reply-To: <20200102140609.7vsfwcjyvbbrmcjx@ucw.cz>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 2 Jan 2020 15:47:33 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1NU62zf8zJAMZq5KFNuvDdrf3dUcLU4HY83Q=oDC611w@mail.gmail.com>
Message-ID: <CAK8P3a1NU62zf8zJAMZq5KFNuvDdrf3dUcLU4HY83Q=oDC611w@mail.gmail.com>
Subject: Re: Droid 4 regression in 5.5-rc1, armsoc-soc tree
To: Pavel Machek <pavel@ucw.cz>
X-Provags-ID: V03:K1:M0psd1KbsNKQXskaD2/eJlrHYELQqc1Cw17iyxDqrzj+C2VH/si
 oddB7+yY6lHpRn8kWPZfjtTnoIqorca4XNOOGGGEmLDpZtFMCbQl+CfmZEOok0JmLIKwcDY
 AsA0h5Ji39aGBGZs+2nPuDOGc4zZ8+6UhNKO0Z0CKB34rMxkLMF6geqZantN1CcK/zNaq5L
 HB5xJJElhm8nrMEbfEUvA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8lOrs6ZE6Us=:wSMXc/FF2Q22w+JC2ujvSN
 u6Zfo1TU3oO/mMsDjSm4kLq4EhRX4qFE6c6D1ebx5orhapv5T2BFTFS+IvDY/Luj86gWIRHz0
 23ssze87Gj9f1By7q7ibfc/ARlYRmiO3VcNw+CfzomUhY+5IeGkONFQwPjC+QRm9j7INmBT7s
 dyX13gfXHCMxRqlLFquMg0jnc35jnzs1YEiIO6ClanRsJFjRadiEGdxWl+MOIlf5ffrXeBVXK
 IhE8HXRq3tGNxMfIhZb7k2+bhdbpjqrShLGgcWpSPoc1ChxhZ6/TPN+ePjiaYs4iqpiRRsyoC
 PVPZf+gvi7MqQ+Is34VSkK7xKKWubGWwaCtCgEkRkEMYNq9ethlqyyIM3CAWdWoZq5EJN+qkY
 GhmXGm5Ng3//aRcPj1oQrSc3nOyfaV2DN70uJQZtPp2SoStNC92znwEfpti5B4qFV6wIubrkn
 ZG5defz+Ukv7p83y/sUX8rfkUu0WkhNJPWw5IEcbDdhjunNfpDXbfS/D+2V7Cl5YFcIVj1z1Z
 XpYWy9yDSf3y6DQ/DaaXxubH20VTpXYGyZGHBT1tilZsUF2N8p80QeCMwD3GSBL7SuG7xogNr
 13H/VCcC3RaKtqpu99SwInVY6ycRlBewHhVg+NHURTlnqfRHyx/vCpnUYs7sqKVtae7eTyCs/
 4JgWxNGiZ6Hl615DQf5SvBkNWztIG6ggcgQ9gxU3TRpwI9TYM4FRCh1CWk81sElebO3BGe9Fg
 yTARaFcXlHIX3gKofMEMWDAmMQWMOvVq6ODseEdMm6MyV9gv48+vogRzLqyEi6wc63Ag6Ctrk
 w+8pD3xyo/wm1Lz1LwXqqc/A+hobAYG/XA3Hsl9vwcV0fmgS8XR3Vy7PosqEbAwzISNdzCmPD
 tmXFw4aUCvEu9R3kUUAg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_064753_655878_EDACF0CC 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Marcel Partap <mpartap@gmx.net>, Tony Lindgren <tony@atomide.com>,
 merlijn@wizzup.org, martin_rysavy@centrum.cz,
 kernel list <linux-kernel@vger.kernel.org>, Sebastian Reichel <sre@kernel.org>,
 nekit1000@gmail.com, Olof Johansson <olof@lixom.net>,
 linux-omap <linux-omap@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 2, 2020 at 3:06 PM Pavel Machek <pavel@ucw.cz> wrote:

> # good: [ab818f0999dc73af3f966194d087e9f6650f939f] Merge tag
> # 'omap-for-v5.5/maintainers-signed' of
> # git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap into
> # arm/soc
> git bisect good ab818f0999dc73af3f966194d087e9f6650f939f
> # first bad commit: [38206c24ab09b4f4c2a57de5c1af0bb2e69cf5b6] Merge tag
> # 'armsoc-soc' of git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc
>
> ...and am not sure how to interpret the result, or what to do next :(.

This means that either the bisection is unreliable (it might be 100%
reproducible or you mixed up good/bad once), or that the arm-soc
branch was indeed good by itself but had a conflict with some other
change that torvalds merged earlier.

I would suggest to go back to the list I had extracted in my previous
email and revert all the commits that I identify there, on top of
linux-5.5-rc4. If some commit is not easily reverted, skip that one
at first.

Ideally this gets you a working kernel based on -rc4, and then
you can bisect that to find which revert fixed it.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
