Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32AB11B07C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 13:43:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Av3vTQrPRqvBe5aSSKxba2lfaiksPE8fVZZy/naEAZk=; b=CVcJQq5uVPhEdd
	0I/S0vJBIXFynmV+c3/SQdJC1ZYWEPcC93iygU8FehUe4F77Uk6dMHlmvh8iyRTC55P2FDWvLDQUJ
	zUyWnX84sdtE0gG/hDjKJ2LD6ivAi0ZJHU5cS8XEloUDPBtN7Aa9jp1QJ/Ql/ztqJUjhIqVX6/gnF
	q8rlaTjgHNMGyIKtR3qEVdPevI4sIblZe15HRKXHR+XG0RypRyx8DCyyN41ynLAiKSTa4PPXhtd1l
	phRYPZrynMlsLIqCH0jwRgVWWTi9IA3Mz2C2obdxdmi7R90atjzv935UaWX3anTcGuKZgrohaCpGg
	VhiunvIsxGHzH43HAcQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQUpT-0006Ly-SP; Mon, 20 Apr 2020 11:43:11 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQUpI-0006Jf-R1
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 11:43:03 +0000
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com
 [209.85.217.45]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id 03KBgUNm010587
 for <linux-arm-kernel@lists.infradead.org>; Mon, 20 Apr 2020 20:42:31 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 03KBgUNm010587
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1587382951;
 bh=wpHlG59NrpmylHg++7oVcwvUegStYdRpAQFZPV/R1iM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ZKqHLe2wK+l0LBzCFG7uF32lXn42CntUbr01uWqBu+/+UFqF2DIPeRfWw1ZVI7uK7
 D7rTf32mhAAjeib/wZsGwM7a2Zk2YkxdcRDPjm0FTChe8BQxq6pJEfMFqB78OmatkO
 YtBfWhxhUbtRvOL+WADozp7ulFwSDBEczdHl6khQ1ENZp3ZNdeYh6mN8TvrSfsYaWS
 y6kKPNtCTLD6OIXHBZ5ROBT8Ddg5DVh5+Ntrg4DtcoMcwhxfnFGXTUwfPrvzd2iYpA
 GMFm/gfHiozC3aP7I2bFdLm2kaXFPEAwcvJcsWXLyjV9gLASmXovP7SRZNGY75hX62
 ML22gTZOa8rVQ==
X-Nifty-SrcIP: [209.85.217.45]
Received: by mail-vs1-f45.google.com with SMTP id r7so5742609vso.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 04:42:30 -0700 (PDT)
X-Gm-Message-State: AGi0PuYee94vqmCyGLBYN4mp5ZSADz+8PMJXmwZx/Am+ynjzJg+QA3XU
 EVxwO+L1IRt6vr/udjM4prKhQrUhgrnv78sa7gw=
X-Google-Smtp-Source: APiQypLGcXw1QZowAFEn8/HXUY3sqwFcCNVgXq9MCi1nmyDCjNpOdp6pgxeiM2T89p0QI/GbM8UTSZ+u4xsrrcq76iE=
X-Received: by 2002:a67:e94d:: with SMTP id p13mr8172980vso.215.1587382949616; 
 Mon, 20 Apr 2020 04:42:29 -0700 (PDT)
MIME-Version: 1.0
References: <158737719165.27947.6617937231903079086.stgit@localhost>
 <20200420190749.b508c7e6d60a8203360178ec@linaro.org>
 <CAK7LNAQtTPLdKN8cz842gvoS36GVQvk2ztahGp8XWoW3C8BzQg@mail.gmail.com>
In-Reply-To: <CAK7LNAQtTPLdKN8cz842gvoS36GVQvk2ztahGp8XWoW3C8BzQg@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 20 Apr 2020 20:41:53 +0900
X-Gmail-Original-Message-ID: <CAK7LNATJy=J-GLJL7O5oaMWk5C46ATmxL6FgorNwn+541=HeFg@mail.gmail.com>
Message-ID: <CAK7LNATJy=J-GLJL7O5oaMWk5C46ATmxL6FgorNwn+541=HeFg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: uniphier: Add support for Akebi96
To: Masami Hiramatsu <masami.hiramatsu@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_044301_764793_9A5EC8E9 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.90 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 DTML <devicetree@vger.kernel.org>, Jassi Brar <jaswinder.singh@linaro.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hiramatsu-san,

On Mon, Apr 20, 2020 at 8:15 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Mon, Apr 20, 2020 at 7:08 PM Masami Hiramatsu
> <masami.hiramatsu@linaro.org> wrote:
> >
> > Add the device tree for Akebi96. Akebi96 is a 96boards certified
> > development board based on UniPhir LD20.
> > ( https://www.96boards.org/product/akebi96/ )
> >
> > This board has;
> > - MAX3421 USB-SPI chip on SPI port3 (for USB gadget port)
> > - Simple frame buffer with 1080p fixed resolution.
> > - I2S port which is connected to aout1b instead of aout1.
> > - 3 serial ports, only serial3 has CTS/RTS.
> > - No NAND, only eMMC on the board.
> > - OP-TEE support.
>
>



> Lastly, is the pin-setting "aout1", "aout1b" correct ?


I am not sure if I understood this code correctly, but
there are two ports "aout1" and "aout1b"
outputting the same audio, is this correct?



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
