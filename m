Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4D01B104F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 17:36:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PX+rMxpI17AyU+iSxeH6FoQG54ywL3IJMk32iascxlo=; b=f3c+bzOF+hXIPu
	FK6cdpJ3NeTmr2poRvyE6aNI2yqc2yFbfDHgEf0KwROecsmxxt4Kjs1uWRJA2l/snyTXibGg4ZdQZ
	NkLA7j7DOuj6kFc+NUhnzUAunfTCb6suIo7zPNtWIV53AytRYbF38EJrNDVx72zxePKfZnjnFZrw+
	TIpSa7j+t3e1W6tcjvY9lVNS/U6lhz1KTI1kUbzz784xztOn7MELsmGd/YdYWvJPaaN2qecuaf2Dy
	rRpKxptR5ZrHEpyAr04gKUUapW0O/Btk5iqYlejvJhLKfEEjTJs3VCXmhlN5dUQIJWotJPyx/t8Pm
	6DXq1f0YAbAqXbtRtCHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQYTA-0004fF-M4; Mon, 20 Apr 2020 15:36:24 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQYSu-0004a3-Fz
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 15:36:10 +0000
Received: from mail-lj1-f182.google.com ([209.85.208.182]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mkpj7-1ix2jK3ckB-00mHrr for <linux-arm-kernel@lists.infradead.org>; Mon,
 20 Apr 2020 17:36:05 +0200
Received: by mail-lj1-f182.google.com with SMTP id f18so4447699lja.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 08:36:05 -0700 (PDT)
X-Gm-Message-State: AGi0PubailLvSPCijRLV09MUPkzTyAbTNpyL9O/421KlMsmGKLyt1w+B
 rt/+266LCowmn3Fo9lerQf3QNO07gmxKADux2iQ=
X-Google-Smtp-Source: APiQypKHtqOOvjsZa8biIU2eZzzlTbGupmSKlmIDGVOzZJB48xQdS/SqpDK9pJJySIskbTfb/xnWOaBlZxC2oY7Y12w=
X-Received: by 2002:a05:651c:107a:: with SMTP id
 y26mr5000070ljm.80.1587396965221; 
 Mon, 20 Apr 2020 08:36:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200419171157.672999-1-lkundrak@v3.sk>
In-Reply-To: <20200419171157.672999-1-lkundrak@v3.sk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 20 Apr 2020 17:35:48 +0200
X-Gmail-Original-Message-ID: <CAK8P3a17JFOD_SqF+ub+VEM_ABLzLYWFE6zj0eBXVjP3nn0g2Q@mail.gmail.com>
Message-ID: <CAK8P3a17JFOD_SqF+ub+VEM_ABLzLYWFE6zj0eBXVjP3nn0g2Q@mail.gmail.com>
Subject: Re: [PATCH 00/15] ARM: dts: Marvell SoC Device Tree updates (for 5.8)
To: Lubomir Rintel <lkundrak@v3.sk>
X-Provags-ID: V03:K1:XzhO5PKmg82jA2Btaf7KUjEWcEN0aL3nHSQdFnO1w/hiDxvRytu
 7TeFLFGl5mgv0w2kEtlFV3pR05XbXDdw/0M7K07IfDNcGJZXniTN7RyPsHz2j263jLXiQXB
 VYMwDnS7vF8sVgfrKiw3jRTxxgeEV76vTXuUpI6ToS3IdCF0B0RO8Z5WRnWeLSVZXFd2VUU
 QyWZfzurRCCao5p/HCOUg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2LumFyJo3eA=:gB1EEoceiH6RCMK9Rg2GB0
 bR2A36rxqOpCqNvjUU7nS0nN5wYl25UYuBzxVAr1TfZOP6WqPAnzPgb4xKUExVSjEvSwDD6Iw
 P5Ru5598R0dL9cKIatbbsE3u+IFJeD81NOptGKB7eb4P80EUvDv0Q/W1tdE+q+1FmGN4ebwMs
 NfgWRrBjDR263VICtBSQOHrVQlrBhbPhPW+9/Ri8LZYG+iPiam73tnT9xn7BPKX6Q034iX/Z3
 b61Ceqre5upGEEnGhxuSCLrQ+/qkf7sQms8x7qql+ieMu4nJJqZM9Q6QiVlKvsSneBbc+GCy7
 FOTTvyl/M+hSlVeI0CwAA+2wojwJO9QhQgQdaIJiVtIofpHPDj5A8is5e/9k7zxq5ouh3fvbc
 +wllhLX/jUWsBkyZEPjodIGygkgbS66vPz9+9IhmRDMK0IEU2Jp5JQJSPM4Plj58f/5TORM3m
 k0WPVjw5AZsEYTbHPL5w2xR1GgtPudcwoMw2I6gbwDk0lJkEBQ+emDbsuz93eO3KgEQikwu+9
 TrsvT3j29Q7qGJUHAlU2CJZDrOzRbfDpBmTvV6TLkgAK+GIiALLGm3jmaRdP3raPn39kSg2lE
 X/Slc40mPvSANHUlhQGJQlAl4sdTWdPzGcmv1J6hXpqAsk12mhGbCzDhpGoBVCp8x/nxiuGYh
 S+dKNSZieqnxVKvMQ0tSCWlWbiuUGk2xTdHQ0OwYOttGS7+eDS9SC202MGmS0UGaVG1/anSmk
 cwW+sb+8rvH8q5g5xT5/Sf7uQ6izauNhOwsw3QL6Xm6vBuViWWLsUOwlIShc0Hf7uXz9KfEVm
 qPdzCbGoZvWM9QHYZY+Q7n7pQyz3YDYYEgGI92AHGUDQGtroGo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_083608_865807_B74580AC 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, SoC Team <soc@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Olof Johansson <olof@lixom.net>, Robert Jarzmik <robert.jarzmik@free.fr>,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 19, 2020 at 7:12 PM Lubomir Rintel <lkundrak@v3.sk> wrote:
>
> Hi,
>
> please consider applying the patches chained to this message to arm/dt.
>
> I've sent about the same patch set before, but there were some issues
> and it was way too close to 5.7-rc1. Sorry for that. I decided not to
> hurry it, because none of the fixes is really all that important.
>
> Majority of the patches just deal with reducing DT validation noise once
> more schemas are converted to JSON-schema. Those that actually fix
> things relevant to older released kernels have been Cc'd to stable@.

Can you check again which ones should perhaps be part of v5.7?
I assume that at least anything that has a stable tag should also be
included in the release, but I'd prefer to have you confirm that.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
