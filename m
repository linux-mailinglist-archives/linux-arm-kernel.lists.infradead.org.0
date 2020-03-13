Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39ECD184BBA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 16:52:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=YZjjdHjXmz5H8NldHNHPHfP8mEBphHqFYDB8kollAcc=; b=UyrEcEC2ZMzXMh
	xA5O0cKWd0aXSTj7ilo7uYbqzQLFYcLy6DHcTQHn1MgzJxqcUiGBUeo2AOZ1NXq2C1NllVz/3Qdp1
	1V4CoaIjmNhQwdcAdYbdaFpE8G+Gtlq9PxzmHO4Slsk0aurloOT2fM6oc6BgUySDaM5oalUKqyILR
	Q3ZaH9o7Agvg7xQ1PYv6Niocexu2MpsVxXRsUmX5+X2lsQGhCu4N5k1Ozn9Nx2gddJdzw+2ryn9VF
	Q0zxzaW8PqbMQqGm/mMKSYQicKoh8zR59haiJ7MZvoFtoDpScQCAHwpOaQaBpDsO1ynxJ+HDX0CEO
	uHQMRqkXpIsVEFZH5vqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCmc8-00063L-Dq; Fri, 13 Mar 2020 15:52:44 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCmV5-0006ui-6l
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 15:45:33 +0000
Received: by mail-pj1-x1042.google.com with SMTP id mq3so4529751pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 08:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=b0QFGPtaOFgS1p4j3kzI40sn+TuGXFBWdbjN6ThamFU=;
 b=S5Xx0HR4uK3x5sZ2lkKqGpCZp5dRn6W6zSGgtxKpy1TECKMkzzMOvS3GeXCgBYYHDp
 SH1F/Hwzv+DsDzXLH6IpdksjXDooRuwMJMu7DgsfKkMrF3msvQSJqnaFvXCvwSXmH5HN
 wXkr1U3oI6pWg5oOJSrQHCJiTigWEnHGF+cSR8lFea9K7/QhIQyfcDiwM3iPTH6KY9vZ
 8N5jyoVZLGuwTn0Mu0JvubH0/C7bzfQavdAVTDwROfSn79DIVeVBeoEy/Oy1C5HexGWF
 Qp7gORvUQnyb5JGRhJKaQSARgfFUfKirAycOGaskBuwP7qivSl3SNC88BIACqdXDFcer
 1VAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=b0QFGPtaOFgS1p4j3kzI40sn+TuGXFBWdbjN6ThamFU=;
 b=rmBMscypXtfZGi3TJ3wq7yIFvpbtIDVmnBJVtLs4h/iLZMNlGSVAPQDpL7MYH30kAo
 LltXy+hUApvFepdstN+FOa6CVAUn+h3+87ppi/E40wT5g/mTUgk9zrf3p5CLShzZ/sYP
 t1W3SeXMDLUmJzKQcflLgTiTytDQqf2OTZbVDkmyd/QDLMTLVUJGc+MpVkzlzsjpMZ2e
 7prZPlWJeX1z64oT8Ct3ZYrj03Q8U3nE4E5zEdA1RZWZqM73IC1PURPd1FGrpzUcS0it
 dxlM6AiC9E6jVNOeb8VNXK5eHh/OP5z5j20iY4/uDVsB2/yXUVSMGFCcGv6As/TqNF0t
 eZ2w==
X-Gm-Message-State: ANhLgQ2v4ZhdVVIY5lhMsCkw25423kzctl8QHomufbkjdU4inVUmjxel
 QESUOZMqZZSpyxaVcU5HoAg=
X-Google-Smtp-Source: ADFU+vu9PFUO7WrFo2R1c/TgS38hSQNK69c/qQfS0BG45kU8AHakgaykC8oUbsiMu8fYIqN85vQJzg==
X-Received: by 2002:a17:902:6bcb:: with SMTP id
 m11mr14083210plt.10.1584114322624; 
 Fri, 13 Mar 2020 08:45:22 -0700 (PDT)
Received: from localhost ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id b15sm58991693pft.58.2020.03.13.08.45.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 13 Mar 2020 08:45:22 -0700 (PDT)
Date: Fri, 13 Mar 2020 21:15:20 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
Subject: Re: [PATCH v3] ARM: replace setup_irq() by request_irq()
Message-ID: <20200313154520.GA5375@afzalpc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87mu8ppknv.fsf@FE-laptop>
 <20200302031736.5or4ww5a4l7zomfo@vireshk-i7>
 <20200308161903.GA156645@furthur.local>
 <20200301122226.4068-1-afzal.mohd.ma@gmail.com>
 <m3ftepbtxm.fsf@t19.piap.pl>
 <51cebbbb-3ba4-b336-82a9-abcc22f9a69c@gmail.com>
 <20200304163412.GX37466@atomide.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_084527_389051_37AC5762 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 FAKE_REPLY_C           No description available.
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 Tony Lindgren <tony@atomide.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Lubomir Rintel <lkundrak@v3.sk>,
 Krzysztof =?utf-8?Q?Ha=C5=82asa?= <khalasa@piap.pl>,
 Viresh Kumar <vireshk@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 Shiraz Hashim <shiraz.linux.kernel@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olof, Arnd,

This is regarding cleanup of setup_irq() usages & replacing it w/
request_irq(). Earlier it was sent as single series spanning all
architectures & drivers, later Thomas Gleixner suggested [1] to take it
thr' relevant maintainers. As for ARM, there is an additional layer of
sub-architecture maintainers, for ARM, patches were sent to relevant
subsystem maintainers & mailing list, all copied to LAKML as well.

There were 10 sub-arch's in ARM that were subjected to the cleanup,

1. OMAP :https://lkml.kernel.org/r/20200301121945.3604-1-afzal.mohd.ma@gmail.com
2. ebsa110 :https://lkml.kernel.org/r/20200301122210.4013-1-afzal.mohd.ma@gmail.com
3. rpc :https://lkml.kernel.org/r/20200301122300.4185-1-afzal.mohd.ma@gmail.com
4. footbridge :https://lkml.kernel.org/r/20200301122131.3902-1-afzal.mohd.ma@gmail.com
5. orion :https://lkml.kernel.org/r/20200301122330.4296-1-afzal.mohd.ma@gmail.com
6. ep93xx :https://lkml.kernel.org/r/20200301122112.3847-1-afzal.mohd.ma@gmail.com
7. spear :https://lkml.kernel.org/r/20200301122315.4240-1-afzal.mohd.ma@gmail.com
8. cns3xxx :https://lkml.kernel.org/r/20200301122155.3957-1-afzal.mohd.ma@gmail.com
9. mmp :https://lkml.kernel.org/r/20200301122243.4129-1-afzal.mohd.ma@gmail.com
10. iop32x :https://lkml.kernel.org/r/20200301122226.4068-1-afzal.mohd.ma@gmail.com

Of this,

(1) OMAP, (2) ebsa110 & (3) rpc are already in linux-next.

(4) footbridge (Russell) - there was a build warning, so he dropped
after applying to his tree, i have submitted the newer fixed version in
his patch system.

(5) orion - Andrew has given Reviewed-by & Gregory mentioned that he will
take care of it.

So if things goes as expected 1 & 5 will be coming to you thr' sub-arch
maintainers, while 2-4 directly via Russell

Now we are left with five (6-10),
(6) ep93xx - Alexander has given Acked-by & mentioned to take thr' Arnd
(7) spear - Viresh has given Acked-by & mentioned to take it thr' Arnd
(8) cns3xxx - Krzysztof has given Acked-by (though not copied to lists,
he has been cc'ed here)
(9) mmp - Lubomir has given Acked-by & Tested-by & mentioned to get it
thr' Olof
(10) iop32xx - per get_mantainer, an orphan

Can you please include the patches 6-10 directly into the armsoc tree ?,
Let me know if anything needs to be done from my side.

Regards
afzal

[1] https://lkml.kernel.org/r/87y2somido.fsf@nanos.tec.linutronix.de

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
