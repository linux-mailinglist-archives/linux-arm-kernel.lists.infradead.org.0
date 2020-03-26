Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 761D9194B02
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 22:57:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NavBTPlD2f9IYINUKlmQ79gnPSU0SBfcqpPHzTitLIc=; b=YrdmhttHTa0B/3
	auHiiowuS7I98r3t9k8u9s6iIbsT0L/dDMDLPP6MUfi7utHPjqLgrizf4Rirjh2QyEHF5dxHY2z1S
	rbNN5QCafdPrymnTjXPTzwhUp8W3ySjGNR/Jt06tN4rfNzqAo0/OYMzAmYW1vqrxUj4LBevGTUU+4
	fYjNBwrSHGjKgJmjacBjjbxCmoSZT3v3IBiQ4LLSOsMszfM4WSF+PDk+HJZslquj6b9y/O7Ak/3P2
	B6sufK/oH+4YNrYKXJM872QTf1UPJHxaii384CcreBk2UMgKjksWlVNNbKT/XM2XQs5MDz+pxLyS5
	IEXuctEXSolA9EOYy2OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHaVT-0001g0-1v; Thu, 26 Mar 2020 21:57:43 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHaVK-0001fd-B6
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 21:57:35 +0000
Received: from mail-qk1-f177.google.com ([209.85.222.177]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MRCFu-1iuZRf3nds-00N7cC for <linux-arm-kernel@lists.infradead.org>; Thu,
 26 Mar 2020 22:57:32 +0100
Received: by mail-qk1-f177.google.com with SMTP id l25so8778405qki.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 14:57:31 -0700 (PDT)
X-Gm-Message-State: ANhLgQ1s0T/8J+8U/vBFU1r29Ncr1QE7HPP8dwR4q2cn9UvBdDZOxJVQ
 CaoeLZwbVykwmjj4gyG2OTnjD0tp9SlLprl5Kfg=
X-Google-Smtp-Source: ADFU+vtpvGVQH+EbjmMJ7hsZrZnEe8BKQYMe1NHfk489VKt6CB6UKv1YKZCcjj5D1AW06fEE8kS/I2/nFiUcAer+8tA=
X-Received: by 2002:a37:6285:: with SMTP id
 w127mr10710320qkb.138.1585259850643; 
 Thu, 26 Mar 2020 14:57:30 -0700 (PDT)
MIME-Version: 1.0
References: <5e7cdaf9.1c69fb81.7b511.491d@mx.google.com>
 <CAK8P3a0eRw1rn3QzsO0omJHNJ8ftNFJkixBmdmUTGxenDZbZVw@mail.gmail.com>
 <CACRpkdajmVJTmkDjxyKzPW1N58CAP5HsDrc_zZozfqi5OaJo7Q@mail.gmail.com>
In-Reply-To: <CACRpkdajmVJTmkDjxyKzPW1N58CAP5HsDrc_zZozfqi5OaJo7Q@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 26 Mar 2020 22:57:14 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3Rcxs-M64cUbHRyEWWS2kE7trrfwDB-iAr+pPDvH3Tig@mail.gmail.com>
Message-ID: <CAK8P3a3Rcxs-M64cUbHRyEWWS2kE7trrfwDB-iAr+pPDvH3Tig@mail.gmail.com>
Subject: Re: ux500 warnings, Re: soc build: 52 warnings 2 failures
 (soc/v5.6-rc6-845-ga9295ff5fc977)
To: Linus Walleij <linus.walleij@linaro.org>
X-Provags-ID: V03:K1:aYfKLkgkTNP4+U2ogRqjhVRUbaSq1xEUUpX/mTHQfRTO1HZXxfz
 TpZj29XB9XRG8qXmuAbdZX7p/Qk+QRabr3uioJ+MFWayE9gcES2MFcQH7k2P0gap7ddYkVY
 sWYuVjhiXosCkhRz3PDV/EPMp97aA9wj8sNhFdhGVSriKWUjREXnaj1xFJSuWsdOnuvwRR0
 mMMGzOj+L6hWPeKIxjwkQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+ZDcXdkUPT8=:HJUlhZEW1rmO9vki0hSkw4
 57mrhjOSYk4D4NZ4YfxYz1Z2iMU87Uu7nODBFqlw9TX+J76WXiiqizDJW7gR0mP0kmWGCcMV8
 c6qCQFCWEqDnGV4w7GR/lQcdoQmjSx4xfXaX0OBjjIq9bEuOcN1pL5/EnRfW1LL96OB3WrzQW
 pC9zcRlNHAk0voB2mj2s1kf3Q6xNuaZDfOA0pgPxfpfOeIZeC1fGwUAXezDLVY73MxtznTBLL
 86/OA9sYd1ZENyNJsOeGsLSUOAym/3uELfhDyJSMHkDSGcpdtAUzzG+BUy3/K8cILUmAfBdpJ
 1ybbAfZ6TxjgmE99ibLb/xob6nSjhsPFhZbWZ+s9REQfBJIWcF2p6YI93joNXvPNZ6JQE5b+B
 SOK7g0a43W6qeUhl2AA1vqovEaelt9QTNI0463CWOQGDji4ypsTQX6N1YpALIpVytKP9K7mPY
 juluItO6AQ+Q3UfRjFGNfSgu0Brap0FcX/mtKYfid8nwR7b8mkAUCO6pS4rGIcdTNB7qqgo3c
 DKX6K/Ux/SkUejgDrDSs91SdBnYq0lKHpBLgreFV85Hc4Hct7aNEmyBllf0IMJ8VT1jcbdXOD
 5J2cEqrb9Q9jCPxVmh8QFQ0IqztvhtjnBMsjGBKX7+FxxTo+iKWjjza48JWwsdECuhuck2onc
 EII467d5JcGJ2Ut3obrGWCpbcFJkqIFJ7FwTofkbpygn7hPC+/SoJlGZhjo937RrIXrpvd9Db
 QbV2o6saBXlgjH3Kobqzsh2oqAdUQU2dohoBnnv7xlOr2k7lfpMsE7sFMJ4UqEtv0gH9KW+rU
 E9Z9jBFNcI2QSdPM58aCZvS6UJKnBuhRdw1lA6TGs4N6iRgUEA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_145734_673257_41E54E93 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
Cc: Olof Johansson <olof@lixom.net>,
 Kernel Build Reports Mailman List <kernel-build-reports@lists.linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Olof's autobuilder <build@lixom.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 10:53 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Thu, Mar 26, 2020 at 8:29 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > On Thu, Mar 26, 2020 at 5:42 PM Olof's autobuilder <build@lixom.net> wrote:
> > >
> > > DTS Warnings:
> > >
> > > /build/arch/arm/boot/dts/ste-href-stuib.dtsi:203.11-208.7: Warning (avoid_default_addr_size): /soc/mcde@a0350000/dsi@a0351000/panel: Relying on default #address-cells value
> > > /build/arch/arm/boot/dts/ste-href-stuib.dtsi:203.11-208.7: Warning (avoid_default_addr_size): /soc/mcde@a0350000/dsi@a0351000/panel: Relying on default #size-cells value
> > > /build/arch/arm/boot/dts/ste-href-stuib.dtsi:205.6-16: Warning (reg_format): /soc/mcde@a0350000/dsi@a0351000/panel:reg: property has invalid length (4 bytes) (#address-cells == 2, #size-cells == 1)
> >
> > These stick out to me (more below). Linus, have you seen them before?
> > I just merged your ux500 DT series, which may have introduced the
> > warnings (I have not checked older build logs yet).
>
> I think Rob recently turned on W=1 on the DTB builds so this is a bit all over
> the place and we need to iron it out step by step.

It's strange though that I only see the warnings for ux500 and none of
the other platforms.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
