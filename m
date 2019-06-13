Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA64544C80
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 21:43:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uiU3QXSccVIINVr0yFeiVzEMVOhkm+zLnF70aBPpZ9Q=; b=XnqrYauQCyIUbf
	ujFy7MLcJTXhmliM4gP0qgtgVKGKp/war5k8bkpvJGkvpPcWjrLn0hgBQ8nQBcfu/eXDWpFFdFayj
	oEZc20xQ16I6Zs8GeRfZ67nnpnAwnrz13aGQaWALeYIjZCvJ9J+UOmjFZKuuU6ay4oGZTfO1iP2pU
	umcOr0imD9yYOh4zPNlxqfvX9OycbSNOpTBcAZ4vNzuM5kLbfh+97HrnjU1GXb2PYNs/JrZ7QnlRT
	k49BjCSgqJMAhrNivwbSWqU+zBHUvBvl94hhoDd2RipCvG8eRiZKdrY//W6iCrw+zMQNzqRI93BdM
	t8hs9fdHF0D7Q6MVC0aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbVdW-0006P9-Ns; Thu, 13 Jun 2019 19:43:50 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbVdK-0006O6-EO
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 19:43:40 +0000
Received: by mail-pf1-x443.google.com with SMTP id p184so9160886pfp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 12:43:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=KW0Z4bu+Gf02siC8Ql384namK/DDKjE4PFjCJrNDUjg=;
 b=GXPxPEvK72RwpcZiLiyRReXtw1Wjc/AGegiT4k7TB6D4NOH32vHiL2klJ7WDzrKRLd
 yFNZGhHmTM+M2WsPXWENW0p6HPCAxffoF+NtziVfVxZ0MC2CeUOhhl5EzPSryEoaJSZp
 tSZS0Qdx35I+q3Lhl5eqYLv+HsqBHwKCf2a1IjyByC2+Po9PcBx8fEvyNg7sgkl8HY3a
 LwkNJJPbz5V/n9zNDbIpO9nOAlLsTI9s/43jiCBHmB3wBjGgMv1kVQEpwCDddh3EZiIV
 /nG6WrLkpGvvwZMECY31KU9ciO/o58PjtWDXXPmtlUSlL0hhpMJ692W16K7a/tIjUv9B
 MrKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=KW0Z4bu+Gf02siC8Ql384namK/DDKjE4PFjCJrNDUjg=;
 b=LMMrZA3hZ/UDjBQSDPTH37ezTTM3lrZ560jOjVMj19hX0QY2oTHrx+QXzWfQ2k1ZuF
 8IEu8WUO18SHWN/A9E7npvFesropI0TlAWuhSp9VFmQKHRKXS2E7JJvQOGTpyvDYR6vX
 VhE32NyhECXQK/uaha4l5A2KxJG+rkxVqFthRi/utX2caLmWWWQe3sezyL5eSt1NYXHa
 1Sfq863fRcDBaX16OgGGjU52z4W9p43cW5SUuJtAkghLvslhtF38usiS/fVVf7w0TM9o
 3DeY9l/QdQ9ynHE4Wn10ng71mySOXn2MsMmlobiOYhk0h6LjhXmiA3Widc+L95dL4DwZ
 5D1A==
X-Gm-Message-State: APjAAAVDdE2wl9WmpFlYBOOBfeSP+SHfQbWT7qNB07bLds8AtvWYsPIw
 eWnP5dDeEiS6xd/OoBiltJ+0Iw==
X-Google-Smtp-Source: APXvYqxSYHqNZdqTSfRe1FzHStMnfFh8RI/pkpNSFr1I9FxUSOwyYqc3IxV80z5rXApnfUIRc0w0zQ==
X-Received: by 2002:a63:610d:: with SMTP id v13mr31667742pgb.341.1560455017658; 
 Thu, 13 Jun 2019 12:43:37 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id g71sm602255pgc.41.2019.06.13.12.43.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 13 Jun 2019 12:43:37 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH 0/4] ARM: dts: meson8b: add VDDEE / mali-supply
In-Reply-To: <CAFBinCAVqBxiRz+Fw5D+8XEPTxP13O35OhSD0pEzKjFcGK1H=A@mail.gmail.com>
References: <20190525190204.7897-1-martin.blumenstingl@googlemail.com>
 <7htvcv3dhh.fsf@baylibre.com>
 <CAFBinCAVqBxiRz+Fw5D+8XEPTxP13O35OhSD0pEzKjFcGK1H=A@mail.gmail.com>
Date: Thu, 13 Jun 2019 12:43:36 -0700
Message-ID: <7hd0jh46fr.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_124338_486143_22813354 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> On Wed, Jun 12, 2019 at 1:32 AM Kevin Hilman <khilman@baylibre.com> wrote:
>>
>> Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:
>>
>> > EC-100 and Odroid-C1 use a "copy" of the VCCK regulator as "VDDEE"
>> > regulator. VDDEE supplies the Mali GPU and various other bits within
>> > the SoC.
>> >
>> > The VDDEE regulator is not exclusive to the Mali GPU so it must not
>> > change it's voltage. The GPU OPP table has a fixed voltage for all
>> > frequencies of 1.10V. This matches with what u-boot sets on my EC-100
>> > and Odroid-C1.
>> >
>> > Dependencies:
>> > - compile time: patch #4 depends on my other patch "ARM: meson8b-mxq:
>> >   better support for the TRONFY MXQ" from [0]
>> > - runtime: we don't want the kernel to change the output of the VDDEE
>> >   regulator to the maximum value. Thus the PWM driver has to be able
>> >   to read the PWM period and duty cycle from u-boot. This is supported
>> >   with my series called "pwm-meson: cleanups and improvements" from [1]
>>
>> Just FYI... unless I hear otherwise, I'll wait for the PWM cleanups to
>> land before queuing this series.
>
> I'm happy with that because I'm not sure what will happen *without*
> the PWM improvements

OK, then I'll rely on you to ping (or resend) on this series to remind
me when the PWM stuff has landed.

Thanks,

Kevin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
