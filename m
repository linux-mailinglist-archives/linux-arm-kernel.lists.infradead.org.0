Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC0D199D2C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 19:45:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Z1o+USxEDu3VA9CnOKh+ZVRO4AQUuH9109JtEDRHZQ=; b=MMhO+VEfZiQ2En
	tO+0kYQzxrEn6EaSVLb0sd0Nle3+N3feFzpNl8kicuVsiQ1OBI45Nh8aPeUQOpyO75u6LnGNEYcpU
	VWCazOHmSoZXfsPoYm5ianEl4njWynQHDleSauOm4Ao3Di0F4rsFwUYpC4SNg169gY2qNQhTnwAVs
	Z92SbD+G2Mj1rHQCPOkBB/m97wFcViRd161OV9Yu2DOztQ3z0Is3VfIaU37MFiD6TZa5O/9SxL6u7
	g/yJKxjQlYw8G0zbArfTbH36Kqsx3sdTWMDY8u1O2yIrI2J5AImCAuSkPcDewB4R95b4v9fvNrE3H
	n0c+fYvou69cyv9OCgRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJKwZ-0000en-8a; Tue, 31 Mar 2020 17:44:55 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJKwN-0000ZO-SH
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 17:44:45 +0000
Received: by mail-yb1-xb41.google.com with SMTP id n2so10272680ybg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 10:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jR1ZIvGGpwr49EcYtbAyRYtsyb7fcIsCPTJgz8brLjg=;
 b=SHQb2BZb1NJwzySP/s/k9r0GQUXNdN+AowbsOZXgtxeugyf1Pbz5h9RYTfQ/txGmiz
 NW6n042eS9IZqgphrdA1Ix0kbn9I1Dcc9NfMaX1Oc352yj3IUPLpe6Ts7yzbDQTDV+ms
 wOMIWDEWIRPaVQTApzIEL2LXOw28qnygtqLrc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jR1ZIvGGpwr49EcYtbAyRYtsyb7fcIsCPTJgz8brLjg=;
 b=Fd9Ky9kgHI90QC0zFjwVX5IZ6gFZlvvNCXK3ch3rdAv8k5G1K8AGPNrBL58Flrd3kX
 Dqagy9+KcdQ3WGZ3uwn8SVQMSEoJ1eTYX9i8WIcDGjOJmt6EG6TT44huzbTyuNB4/U3F
 QEDWcePBgdfS9s7OzYtf4WXIg4o13AawK4nWPb+pxCE41kfNTCEFjAHkUH1XppQjK0mw
 +y0IaKX3VkXniztuoTtdeTjpcFBjipNrrN/PyXDkVcsinFEyXavugI3CZzDlhVockf5F
 cQnaO+aMWCEk5MIszv1WP9jOKTkWhWutVANZziGyi/+8ukBjvCf7z3QyDQm2z/J+umgL
 sUnw==
X-Gm-Message-State: ANhLgQ13lxPHogb3DbQihAGYPs6lL2G4hH2EdoTY2cltSMpbChKjlZcZ
 e1dJXYc47C+XnLS0H+xPZTWLj4+TiZ2U2A+2buXiuw==
X-Google-Smtp-Source: ADFU+vve5e1tGuJEA3r0In28yh8ZrkCmYIkMq/ET420MGqIwCwN7MftCJTiN7MqyF8fIt9NpdjXD9GAtvkLDqJQBdlo=
X-Received: by 2002:a25:6042:: with SMTP id u63mr31758293ybb.77.1585676679963; 
 Tue, 31 Mar 2020 10:44:39 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000da6059059fcfdcf9@google.com>
 <0000000000005b022005a22a0050@google.com>
 <20200331174116.GA1844017@kroah.com>
In-Reply-To: <20200331174116.GA1844017@kroah.com>
From: Grant Grundler <grundler@chromium.org>
Date: Tue, 31 Mar 2020 10:44:29 -0700
Message-ID: <CANEJEGuhZChGXFzbwaEwArM4UKjUxZo=WNbREPH3887xtu62Nw@mail.gmail.com>
Subject: Re: KASAN: use-after-free Read in skb_release_data (2)
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_104443_937941_1FA9FF17 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: peter.chen@nxp.com, Sascha Hauer <s.hauer@pengutronix.de>,
 johan.hedberg@gmail.com, nishadkamdar@gmail.com,
 Grant Grundler <grundler@chromium.org>, shawnguo@kernel.org,
 marcel@holtmann.org, linux-usb@vger.kernel.org,
 syzkaller-bugs@googlegroups.com, LKML <linux-kernel@vger.kernel.org>,
 syzbot <syzbot+a66a7c2e996797bb4acb@syzkaller.appspotmail.com>,
 linux-bluetooth@vger.kernel.org, Prashant Malani <pmalani@chromium.org>,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Hayes Wang <hayeswang@realtek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 10:41 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Tue, Mar 31, 2020 at 10:36:01AM -0700, syzbot wrote:
> > syzbot suspects this bug was fixed by commit:
> >
> > commit d9958306d4be14f4c7466242b38ed3893a7b1386
> > Author: Nishad Kamdar <nishadkamdar@gmail.com>
> > Date:   Sun Mar 15 10:55:07 2020 +0000
> >
> >     USB: chipidea: Use the correct style for SPDX License Identifier
> >
> > bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=16d4940be00000
> > start commit:   63623fd4 Merge tag 'for-linus' of git://git.kernel.org/pub..
> > git tree:       upstream
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=5d2e033af114153f
> > dashboard link: https://syzkaller.appspot.com/bug?extid=a66a7c2e996797bb4acb
> > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13c25a81e00000
> >
> > If the result looks correct, please mark the bug fixed by replying with:
> >
> > #syz fix: USB: chipidea: Use the correct style for SPDX License Identifier
>
> I really doubt a comment change fixed a syzbot bug :)

Just as I don't believe the bug was caused by pmalani's patch to r8152.

syzbot is just having trouble automatically bisecting/tracking this
bug since it appears only intermittently.

cheers,
grant

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
