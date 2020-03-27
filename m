Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8795D1956AD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 12:59:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=POj6rVsShgiO8xSItmyIBswy9hy/6hOYGtlowBzL8NY=; b=Cind41xIvPfaXQ
	a3W8r3DU6phAm/tTmsiq4g17Oiv7HBJTk7WbnVHpzlbeEiIDVuAW4m3WBcMJKk4mZVgPx37staKhu
	TbcMGg1cWk2xM6J6TcoTCyj+7DV9T5MKMBWFyHCAc+G8/hqy5W0IpqAuIsqtVecYObzchLKU1Iwt/
	Dope1zldUPxHCN+z+SsFUcJL3vn2ziQXVeYIa+uQxDdScUTZ22azl8M2Z1wD/SVkzP57Rqez++W6I
	Pm9BA0jF0txZHgCRda0ma3LxgdPwxgy869F7CVcRbMnwrVk3LEZY5rtDdBSMcaEwI6PTXr2bKUYR1
	IxJv+pgr0O/Y3zr1HA1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHne1-00071L-3Y; Fri, 27 Mar 2020 11:59:25 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHndt-00070t-CC
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 11:59:18 +0000
Received: from mail-qk1-f169.google.com ([209.85.222.169]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MqJyX-1jduuv3f8t-00nO8L for <linux-arm-kernel@lists.infradead.org>; Fri,
 27 Mar 2020 12:59:15 +0100
Received: by mail-qk1-f169.google.com with SMTP id v7so10460012qkc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 04:59:14 -0700 (PDT)
X-Gm-Message-State: ANhLgQ1958+ab3QubEsrDf+cL9Bgs6KT/LHM9QuvgolTnySq8d2Daq2c
 PojjwXVRG3nfk2jWon0BehE4pSv8Yo8ML8x9Ch8=
X-Google-Smtp-Source: ADFU+vuE+pRxvTEA/tUOWrqhrw6Yo/aFYGbSxiy/A0Z97EJ0d/qGe5AGsH4sFBSJry+cXavGtFSTjhkWadU8yBY+3Dc=
X-Received: by 2002:a37:6285:: with SMTP id
 w127mr13147141qkb.138.1585310353633; 
 Fri, 27 Mar 2020 04:59:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200301122226.4068-1-afzal.mohd.ma@gmail.com>
 <m3ftepbtxm.fsf@t19.piap.pl> <51cebbbb-3ba4-b336-82a9-abcc22f9a69c@gmail.com>
 <20200304163412.GX37466@atomide.com> <20200313154520.GA5375@afzalpc>
 <20200317043702.GA5852@afzalpc> <20200325114332.GA6337@afzalpc>
 <20200327104635.GA7775@afzalpc>
 <CAK8P3a0kVvkCW+2eiyZTkfS=LqqnbeQS+S-os=vxhaYXCwLK+A@mail.gmail.com>
 <20200327111012.GA8355@afzalpc> <20200327112913.GA8711@afzalpc>
In-Reply-To: <20200327112913.GA8711@afzalpc>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 27 Mar 2020 12:58:57 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2sqika7=3D6Zgkz+v8HtGEc0q0+skWG8mSKuL+qSoYLw@mail.gmail.com>
Message-ID: <CAK8P3a2sqika7=3D6Zgkz+v8HtGEc0q0+skWG8mSKuL+qSoYLw@mail.gmail.com>
Subject: Re: [PATCH v3] ARM: replace setup_irq() by request_irq()
To: afzal mohammed <afzal.mohd.ma@gmail.com>
X-Provags-ID: V03:K1:TsCXmljKkiVWy+wTImNvtATmU/xeMYDdnyX+VMPipz6eWvE2Sm4
 hydMw+wKBjMe4a2m/M58C1d8HmdpLnedeDBgl9ruQKDjEnqCU2w0OhmR6c7VYRFz2H2U46w
 0aVucGIqkQlxfuDH0VR50VF2xzFtHEtiI24qCjxPZtISZkIoVgC0mje42OKFw3UkD3kq6et
 Id5mGUDMOi1uw8tEEv7Wg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:eb0QUHAOwKw=:jEgbfyHVLSqzcUGvWYhsNI
 Fq4/Ryk5jeO5MMLqbJx38sMuYgr1ES9NKfYPpdCjdzwvNy9j4jaQjSvxDKl5OBQNFgyeE5MdM
 8+UM2c/ekWLZns75FtBIuUJF1c8lMzKEmiklbmghm6jvrFTiWBmRu59vg7YS6xPY0Jj6PMbmq
 AtC5d8yrajBn07vqAop8iqayfnRKsTKjVcvKtlplEGLuDY7LAVk9cdCjXMhZWpKlKzhgtSROp
 wrbTyD6UJfLcKCETcHvnJ89pix/vZtsJsAaS0o6FJdzY3nlrFv4tESDWXUx96fM/o2XMFgDx6
 utikFHAIo5qj9mLoVRKWFk16AOT7wcYhl05iU+IGMC935VuFqgqudG9QLTL5mGQAB5n3MVVKw
 Vn69zhbWiYuvBZdXEAoZv9H2OrmhEwy7nXnUM89MdVgRSQ2mlL7EE+ripcJz/hfA8Tjiu0E2n
 cKIfw4Joo4bjTf1wDWrDIBtcQmbumbwlbqL/UpEdP7IUniHXhSqC3JtCbybriEttGguT6MVsC
 pY6lvpa86AKX09nQrce1r6esnVBsNI8fKFGofGkN142Jh4jtDEfCZjpfXQbhK0GEm5fsXnPT+
 zbuEdS7j50+pR5xOdYv7bUFFCoQpJaDSb/m5FQal4221gD+z4TCDGBQale24tTKvwXse+JqEd
 ky3kgqVhCjHkhKiO4qz70DJWtrrKG826psvAm6SM/ynCh93nq4HKQMxKNO8Hl47K16qYAjWL7
 tncwnFpdEhCBcUH16tC1ZtRTWyQPB8uNI8VkfKAWXyiTtiHAdZT7votmHqLw8EEIjHYPUINeO
 INod3emGDEbfilArorMxPrYTVtnporYTD/NNDJZ2UgdeOXYd8Y=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_045917_710136_9781DDC3 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
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
 Russell King <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Lubomir Rintel <lkundrak@v3.sk>, SoC Team <soc@kernel.org>,
 arm-soc <arm@kernel.org>, =?UTF-8?Q?Krzysztof_Ha=C5=82asa?= <khalasa@piap.pl>,
 Viresh Kumar <vireshk@kernel.org>, Olof Johansson <olof@lixom.net>,
 Thomas Gleixner <tglx@linutronix.de>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 Shiraz Hashim <shiraz.linux.kernel@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 12:29 PM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:
>
> Hi Arnd,
>
> On Fri, Mar 27, 2020 at 04:40:12PM +0530, afzal mohammed wrote:
> > On Fri, Mar 27, 2020 at 11:55:36AM +0100, Arnd Bergmann wrote:
>
> > > To make sure I get the right ones, could you bounce all the patches that are
> > > still missing to soc@kernel.org to let them show up in patchwork?
> >
> > Done.
>
> Sorry, i first forwarded, after that i bounced all, but not able to
> see the bounced ones in patchwork, only the forwarded ones.

Right, I see the same thing. Unfortunately, the version I have now
doesn't work easily in git-am.

> > If it helps, i can send the same patches w/ tags received as well.
>
> Let me know if if anything more needs to be done from my side.

I can probably fix it up here, but it would help if you can resend the
remaining patches using git-send-email with all the tags added in
and the normal subject lines.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
