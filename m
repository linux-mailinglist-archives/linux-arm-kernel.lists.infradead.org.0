Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 643671C8BF4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 15:20:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yBeJI7pzBizWhMLPYKsVwFmgpolG4MZV9EsL04m3Mek=; b=SD5QSBkFoAcuED
	C9BkNW5bZqS21sW0oQXleNbrD932HKPoBsH/8hKMNIzIPdhpzGewCr18q5NI/A9SsFW48+94wX5sY
	NW5VRXN/S+xS4m4cNGTrUvqMZKH64VWBwPsour4xRXfbcX3DD5TKVV6+rNMnycczmKikyp3EdNOEt
	taW2iC5qJqLgUB++Y5WNqKtT/vmkE8FJ5ibrGBGk25ZIxZjzJABm2qxTBYrKu0OpHt5GqKTRnjLgv
	LeXkQ79279Di4JfEK4ANCMoVXlgY1ChVtrxyAcqtrhAEvCfRkJkKAE/u54TseJ9C9U5MBDRubDFcy
	4ZAqs6Gg7CqXOOEIl8MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWgRx-0007RD-KR; Thu, 07 May 2020 13:20:29 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWgRq-0007Q0-3Q
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 13:20:23 +0000
Received: from mail-qk1-f178.google.com ([209.85.222.178]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MyseA-1jBSP73QMk-00vv84 for <linux-arm-kernel@lists.infradead.org>; Thu,
 07 May 2020 15:20:16 +0200
Received: by mail-qk1-f178.google.com with SMTP id 23so5944785qkf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 06:20:15 -0700 (PDT)
X-Gm-Message-State: AGi0PuaSRaAZkDTq75XxKgZ4hGkl0dLW821HpF1iyKMPCaCLeohbfWhb
 T62n4ZsBEpXW65xb1mXSTr1cbtV0bRH2B+WNbU8=
X-Google-Smtp-Source: APiQypL0U2yJ/Dg1rnUS/0g63qyrt1AlT1Xsq0c8GDIdF7up9+D+UGYEfBDTGvXU9IeB2pcNVxSgNZizIeuITHvhq5Q=
X-Received: by 2002:a05:620a:3c5:: with SMTP id
 r5mr14632505qkm.138.1588857614685; 
 Thu, 07 May 2020 06:20:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200507114205.24621-1-geert+renesas@glider.be>
In-Reply-To: <20200507114205.24621-1-geert+renesas@glider.be>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 7 May 2020 15:19:58 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0sDAsG9cnuqMG0Au-KAW1KEx9o-sg3C_dCDh_GmJhNrA@mail.gmail.com>
Message-ID: <CAK8P3a0sDAsG9cnuqMG0Au-KAW1KEx9o-sg3C_dCDh_GmJhNrA@mail.gmail.com>
Subject: Re: [PATCH] via-rhine: Add platform dependencies
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-Provags-ID: V03:K1:1JUCk0/rO9kUgW7blozoqd18lplIw7XUJtqnYe/2v+cBdg2fhHg
 WYXA0lOHFZWo8J9CBR3qXauu/ZhnPn3AwL+qIMdGIHg0Kq1kTIdynOjJNMmj31zpyeba5Kn
 il60rc/5OIR5LsZFPZ1PDrDRENd8qxTQ7/8cH4V12fuHz08ugXKWXQvhNDy9YbWVhciM5xm
 oHM/pYRw6oKOwlxVcsQlg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:NSUR0VdVmVs=:qkKqgevCuh7hEVlYyTDD7V
 MbjT75eGV1im+BgXcxlATSF0nTDx/v9QZCqiWBWJ8Cb5N03XmGb7T9KsaoIAMbTb3FJDPJ1tI
 wDERfjZVVjZNMVnyjVycCAoU6v/G1WfGj9a8762uwESpo6cYMQOkcPp/qmtcr4cY0YT/lOg9g
 MLyVarLEEUy2858J4P+K3Z0Z+Hv9QjuqCjke98SM5sUuRqh+RnDCwQCbsbcekxZqeI8gaR9m4
 Tn1qDmISkRxpbr1DQ9qADNbtg2PmEbjgWZWSo1hDb+dZGKxwsSCyorl2UXEehM/g0WlS+jbRS
 OZjZQv59piPNrhfqNQeQbWNJRSApNx+b9qdU6ROH6PakLDdv3tL473G0Nh1DIclHuKQeB3BNJ
 rvLQnqJmA2a8xte4PT6dHbWOAmAAOkoSQHjeQRkUjce/keRYfdbxyCAx5LSfXX5vhAU3kFSWs
 8OykcRlCNAfaj8rZXYkDYnT4q3zhXXrO88Md0Y2RaNQD7S6uPA35Byef5DSdRiPhGp9CGiSL9
 MZ6X9yxTaJYQeZp/v4fdOmMn/Uitsn5B6LZiT2t4QQ/kVgUN6Sn/7okKTSomESe+eP7RfFAF0
 2x3sO3Zj9ANApK8ZMKMIzkGtbGBHc0IWfYEnXiF5ZOoXvNoNGZASVL6UloAcoKrJpX3ccn3/C
 0l9d5h17crF/4ZITGbo3CNSXyy08yDruus5uJYM3RR3Z0SdQBdsMC3yfLQ1WOKRFL4Hr4zdz+
 UG7jXPlijYb2qLKJ56BSihuv5ROp73aGRq2obZxDMaxzW8tMHAjE75hoP3TZTRiuJM+wRgnUL
 dK3xpfn8KcufbDyE4Id/50ZqL510gt86nGOktumhqhPVfHik/E=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_062022_440349_7CBB3FB0 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
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
Cc: Tony Prisk <linux@prisktech.co.nz>, Networking <netdev@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 7, 2020 at 1:42 PM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
>
> The VIA Rhine Ethernet interface is only present on PCI devices or
> VIA/WonderMedia VT8500/WM85xx SoCs.  Add platform dependencies to the
> VIA_RHINE config symbol, to avoid asking the user about it when
> configuring a kernel without PCI or VT8500/WM85xx support.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Acked-by: Arnd Bergmann <arnd@arndb.de>

I suppose it might be used on VIA/Zhaoxin SoCs, but presumably those
would always show it as a PCI device.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
