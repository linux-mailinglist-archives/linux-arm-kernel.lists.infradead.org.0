Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D83110F4C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 03:01:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LFLcrssxpZFKjUKhvDsL7cCQ/zqHQFB5rJIPbd9rdL8=; b=ilWQKGjnUvV7bu
	hJhW6yuVkUShH9snuRd8a8fc27q8igHyiP4cGOZIX1R1Wp7u8wizkSLuPfYq39d9kCRt3mPQnPPI+
	vBM4QqcP1v81Wg21nYjPXnkwkc10Il5ncW/NjQLTF3vcGF3rN387va79S1rNPkr/TNPkoXCjTj1Ve
	lHinXq3qieLGKcdUQqfXhg9d2ubpSGC5mauavPw0oJqS6OcJ2Mx7MmgpzBk4Wr97vOGJEyRhe5Mz6
	v8SLdCV6w1SYNqYX5ZTLlnacAMN6SHcM+gSNVh+U79cA+mhckiQQ8SkorG7m26kn1qaUtEekEcfoR
	uZfE49jXMEuuO2D9cAhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibxVH-0007TK-O5; Tue, 03 Dec 2019 02:01:27 +0000
Received: from mail-io1-xd29.google.com ([2607:f8b0:4864:20::d29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibxVA-0007T2-QQ
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 02:01:22 +0000
Received: by mail-io1-xd29.google.com with SMTP id j13so1904576ioe.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 18:01:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=designa-electronics-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r1vPHqIjA0YJGiqODyjVTzFdWFg2Ol3KYAvTmHllSos=;
 b=WVLRATEswpKGbdFML9D4GgJr6xhp9kBOeSosVn/XXTOVGrMQP/ZjZHwguJgL2J1Aoh
 JV1FwAmkcj2huu/jAkluGhHxkDEKUy5csgZVBKg5RAzFI6JtjkEdN9fTV2u4w6Lx/ZO3
 5Sho7QbnmEH+ljx6h9jve3LoKAt97iVTR3B4SW/FeoUkPkesszuilG/1pmtk0qdyQAUO
 R+5g3y2BgGQT/JoXydJja5ZgqEiMsf8C4YRWd32tnkQkQBtzrRjadYswJ5kaQY8dG46P
 EEQgWu8ZKI8ZcQUOuO4bfDCLUz+v5U/6s/sn2MkRe2+sj/7qhGgd7nd+6rXk5o0ribQY
 jC/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r1vPHqIjA0YJGiqODyjVTzFdWFg2Ol3KYAvTmHllSos=;
 b=iprtwmk9QI5I0BU5rsL8zVdSk9cMEgDKcQu6Jhitk5jlR1Axa7ILRoaCw3A8xyejLB
 kwbsP/VIT4TZQYp0928JAwAHRkmt/UeUlE4Htgtk+TpvC541M7n5YVdzoNjosYyN5H0P
 9c6Ahs+8eldf4IvRfndPVYutqT07R1b0FoEpDrmOCRsOthrhpomJ0N4oBf0xYuuwfJ12
 m9cXeeki9KDDKioiwFARD0C5bJydw/1JUh5xlYrNymZzIrX90JZPZGgl6lr/0wTq7DC1
 aLByfjG0vd3r+vsqQ/AlTSZ8PZgMEpCIbisY2CiAM2qTclCtKNP6Mt9dM9HTe5fS7O4u
 pANw==
X-Gm-Message-State: APjAAAUuHgQnuft2/FhXUlSVXDsQnG2qD5MSVYJpOvT1LoOVIqxV1+or
 Oilws9eQp8TO+H6hgZhCYyNuP2r4uXh00w==
X-Google-Smtp-Source: APXvYqyamn/+khQUVgPuonciAUqfIF61Cq5rPF2NIPV8KwpDRhZ6WMreNMDG523PCIvpI3smlF3I6A==
X-Received: by 2002:a5e:de04:: with SMTP id e4mr491248iok.47.1575338479656;
 Mon, 02 Dec 2019 18:01:19 -0800 (PST)
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com.
 [209.85.166.170])
 by smtp.gmail.com with ESMTPSA id b15sm364388ilo.37.2019.12.02.18.01.19
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Dec 2019 18:01:19 -0800 (PST)
Received: by mail-il1-f170.google.com with SMTP id q15so1656477ils.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 18:01:19 -0800 (PST)
X-Received: by 2002:a92:81cb:: with SMTP id q72mr2451549ilk.275.1575338475555; 
 Mon, 02 Dec 2019 18:01:15 -0800 (PST)
MIME-Version: 1.0
References: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
 <CAOMZO5AxvuWETvubZU1Tu=0-SeoSzJs=LZcj-JJFE1+4O6-FxA@mail.gmail.com>
 <VI1PR0402MB3600E87D07687EDD89AA1050FF420@VI1PR0402MB3600.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR0402MB3600E87D07687EDD89AA1050FF420@VI1PR0402MB3600.eurprd04.prod.outlook.com>
From: Andre Renaud <arenaud@designa-electronics.com>
Date: Tue, 3 Dec 2019 15:01:04 +1300
X-Gmail-Original-Message-ID: <CAEj2-1OXUguf-iT2E_HVE-c5LUkufCapsvCOZ0iT-knkLp1vFA@mail.gmail.com>
Message-ID: <CAEj2-1OXUguf-iT2E_HVE-c5LUkufCapsvCOZ0iT-knkLp1vFA@mail.gmail.com>
Subject: Re: [EXT] Re: iMX6/UART imprecise external abort
To: Andy Duan <fugang.duan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_180121_035450_B1074DA1 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d29 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > Could you please try a vanilla 5.4.1 kernel?
>
> Please try 5.4 kernel firstly.

We are trying 5.4.1 at the moment, but will try 5.4 after that if the
issue persists.

> Can you remove the sdma firmware "/lib/firmware/imx/sdma/sdma-imx6q.bin" and
> try it ?
At the moment we have CONFIG_IMX_SDMA not set, so I'm assuming this
binary wouldn't have any impact?

Regards,
Andre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
