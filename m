Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D21921DCAD2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 12:16:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q0vvbJqFtp0cTk/qpKK+SZ9qx3f9c0EJcaoOQYzW7eY=; b=g4cVZoskpxJSrQ
	u++bMm4of4LpAzxPhGzs+olLxfr6k9tf2N1Dz3R7rowHwoDDWXxsObirrUqN8h6L/hXbTdXTtfFY6
	2rZABEfpuL/PeP3HprMD2/1dt/1uS47Jc9z1YzOaciBCy9zGrlshfy4FQELALuZzQlJxYXqZlBX7D
	QJFh3t0ResNxjLdlNa9yzC+sq/iKcl7S8GXrA6LqOXbOzBxl2IANAQLWOvqpl/ROicVTF2zEweVq8
	jErtF425Aqstn/qs9vbLO+jfSyLsAfQBHwh7o+W3jmqBenjJHXzBm0QaQX+GKkaRQVFd/oRlyeGRZ
	lsNdv7mucO/T8CapFrcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbiFp-00030z-B2; Thu, 21 May 2020 10:16:45 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbiFa-00030E-Fy
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 10:16:32 +0000
Received: from mail-qk1-f174.google.com ([209.85.222.174]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1My3Mv-1iqCOa0y7z-00zUIU for <linux-arm-kernel@lists.infradead.org>; Thu,
 21 May 2020 12:16:27 +0200
Received: by mail-qk1-f174.google.com with SMTP id n11so1173010qkn.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 03:16:26 -0700 (PDT)
X-Gm-Message-State: AOAM530OVm8I3z1DVytz6M6wfWUTY9WgpzS85P4yj+3BCt2Krj/yCznH
 h1FwGPPdB/08wdCEaW5et2e5k77KR+0GDdQxAhA=
X-Google-Smtp-Source: ABdhPJzG0yZLoO02lBv/GjHkHvx0xY0LzpxpTesxhUjbNmnX8hm9pN92rchECm8L89+atAf/Z7jq0U8pXKnfGDJcMoo=
X-Received: by 2002:a37:434b:: with SMTP id q72mr9600780qka.352.1590056185859; 
 Thu, 21 May 2020 03:16:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200513125532.24585-1-lars.povlsen@microchip.com>
In-Reply-To: <20200513125532.24585-1-lars.povlsen@microchip.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 21 May 2020 12:16:09 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0wYbVcerL9OEfAs+jJ-9xR7ryZwmsvi4Kt4yXOHaNefw@mail.gmail.com>
Message-ID: <CAK8P3a0wYbVcerL9OEfAs+jJ-9xR7ryZwmsvi4Kt4yXOHaNefw@mail.gmail.com>
Subject: Re: [PATCH 00/14] Adding support for Microchip Sparx5 SoC
To: Lars Povlsen <lars.povlsen@microchip.com>
X-Provags-ID: V03:K1:TbhkU7YG3uae6bAf1Od/EfHlAuKX3qlDz3Hy5UlQ3YDnfAmsqyK
 jzJpzKbuMQZ2iXZpVtJnlRbxHJJTqjTewaTBvEk3yfONd2ssthL82v9yr13SmaA6bAQWqre
 9Z9ZOEu+n6zpimDPi5K0Xn0xKowBPgQpFVWQYxFkvBnwUekjVRQ1zsJcLKMtFt/9YV+s64m
 SYFEGc7MgJHr0Vwl4yDUg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3cpIkkOx5TU=:AHcvmDGL2aIobIbI/D/szs
 R54RVKHGz0i9CNffa0Sd0vXROvf/g6D1+f+Fn5LGKGeBvOQSwS/LE/fME0pOPtCSBdLzZfmdJ
 kNEa5uqh+3TYSunAeueEu/EVaX/AbgEx58gBKnsy67G6JY9ImTdh0PEmUqzAxoPb0IJFYQGxh
 j5ZJ9vrdH2QWg6gn0yUdG3lD65LL6AoFKtT0JrBjuiSqkxrs0ULE3jGaK6NmkiIXTiJg/v7Kb
 +OerxnUtka71enuNhseH4Kq7MdIVhuL/1lAlHV7zP+pa9uh5WUNTKNZZzQIlbIy6hJjls5bHC
 m0NeJNb2UGyKrZjlwoSvUkxXIzBIKfB2whIU9dYCQNrUiwChQp7wtc9TBptrJgPs9LJXR13ft
 +ykB5A6swoNnbNoLn7hefyZmg2r3xIPpKW4lPd+aL+OxTGeUjOwdbLkrlLFc971j9Si6r97xa
 F/qHTzGSmqIqo2Hg6KmCLW8ZA3RMPfuC7o8Bx6bbTbMuNleJ0mkeu7MEWt/V/pf05YWkmrT1F
 JI/6gvyluekmTPINcb27TTTo9VN/cf6klQmAUm5vQI8xrVOKr2kKIsL+h7rfgKblWN8ZMpK8L
 WyautU2EDYYfedqBtr8ieBq3DmHIfDxXSctaORBwQ48IcbduV8vhTpi/FXWAF1XrgqdgbtWec
 JXrtCiIXysPw0d3SZpjJeL3UJ8wBgfZSqi770vRl14RtNJHojFXBUpD2kDLfyvVvSo2bhTeA6
 7u56zI204fLPtgLyBcNz1HZLjy/nt/qHENWDYQVtW10kFr62d1HNQkr8nhRhf1OK9Our31aAC
 8mrHJUyXAm99g1nzW/M2TZGZGRm8lg6DKGRxgAAnZKuRoGNKec=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_031630_823664_4498CBCC 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.72.192.74 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: DTML <devicetree@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Steen Hegelund <Steen.Hegelund@microchip.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Michael Turquette <mturquette@baylibre.com>, SoC Team <soc@kernel.org>,
 Olof Johansson <olof@lixom.net>, Linus Walleij <linus.walleij@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 2:55 PM Lars Povlsen <lars.povlsen@microchip.com> wrote:
>
> This patch series adds support for Microchip Sparx5 SoC, the CPU
> system of a advanced, TSN capable gigabit switch. The CPU is an armv8
> x 2 CPU core (A53).
>
> Although this is an ARM core, it shares some peripherals with the
> Microsemi Ocelot SoC.
>
> This is the first official revision of the series.

I see you sent multiple series to soc@kernel.org for review. This is the
correct address for getting the initial soc support merged, but as the patches
are still being reviewed by subsystem maintainers, please leave it off
for now, until you are confident that they are ready to get merged for the
following merge window and have received the appropriate Acks.

For each subsystem, there is generally the choice between merging
code through the subsystem maintainer tree, or through the soc tree
on an initial submission, as going through multiple trees is particularly
hard to do for the devicetree files.

For the moment, I have marked all sparx5 patches as "Not Applicable"
in patchwork at https://patchwork.kernel.org/project/linux-soc/list/
as it is still unclear who is merging which parts, and they are under
active review, but please do send them again after the review is
complete.

If you have a lot of patches, sending pull requests is sometimes easier,
but it also takes a bit of practice to know how exactly to structure
those. Let me know if you have questions about them. You an also
contact me and most of the other maintainers on IRC using the
#armlinux channel on irc.freenode.net.

Sorry for not having been able to review the patches myself yet, I
hope to get to that soon.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
