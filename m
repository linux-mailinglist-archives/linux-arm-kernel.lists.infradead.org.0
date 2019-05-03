Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E088132DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 19:06:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ro7i3TwjrCV5mB3qszylJDohe3NeUiYeL2+XqAympjQ=; b=eDL303bkmxyECv
	Tlkcx6R/64YwIcyTmD4aC003KWyzPxthXdsr+VPDOY7EZ7rWuK9HuimLC9HaIfH+kz5G/BbQI9myW
	tcLWmyHCsMD4xl7GQDwieyqoWLzlBcvEXkC7/0T+ou2fVYO3Hipq1+9JBZcP9CQXxnG9oCoqnhkxG
	9REiBSmEJkdw2d9tvwfyvEMfobbskO7I9hjw1EeVN7H9LZviowfnNjR73yqpaVhlcoTyJIoW18M6N
	N3vto2AKaUAeeG+S9iBCXgfIl4rL3m+hvC/nOcNyc0ZxPmJli0ypGeXzmi0IzRP+vKa5FQZW9xNUf
	5NlSNgCdjpMgth40Y1qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMbde-0007fO-HA; Fri, 03 May 2019 17:06:22 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMbdX-0007f1-Tm
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 17:06:17 +0000
Received: by mail-pf1-x444.google.com with SMTP id b3so3190643pfd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 10:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EMTmWth6cjKoVYNQSjB9zhFk16R0UDFlctBiJciXhRo=;
 b=Nw7jrbNCjEwObQ2yOv3NASLRHYHi5IkqvvIExe4CncaFhRvoc0x2Nh+DBlMhb2/5jw
 5TnjAzuslyE2AxT19S024BY5Iu6wPP7eMfkjgbluM3Hyoz+PLvr+zYh7Jhh2JAhaASTO
 bPjtI7Lu9p5DFfc5K63QwtUmP3O2u7mcfqejS2jMHJ8hydDtWUUj/itE+LPT4gKFtJ4/
 /bRd9Ol3e8FSl6Cza1IbzolUqOzg1R+l1xxT0M2U+7n6vARI46aK3EoLSF9kGzV7MKGp
 n4LzLLquesfRgKXr3GVOc+j7G3XhoBoCvsY0ZYss0cNbFEf0tBzZJ+p3aQjsouP/BxZN
 PGZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=EMTmWth6cjKoVYNQSjB9zhFk16R0UDFlctBiJciXhRo=;
 b=mjQVERxR1Z4iTHEOpFtfLhQmwNa3HjxcbRwjmag2YgFyUkbcOiTnYcqb0XoFLrfrLj
 btADjCKNC99iGoRrDFVev4nLP0lkiDbtsUbS0NukqD7vZSrC6kmPQuB813v58UKLny/t
 3iqL9GkrozBnnzdXtTVqWEpgM7LhFLG/D1XXyS5no64oWWomN9n3PiBgdagTJa2aU/EP
 u3KfxWGD0YgZGgqvROd9b9OZSUZRU512NY1bmelC9wcyf0XN3iMOKNcDmHRZmw3m+0Me
 Vef3f5BhV1loET+dBy1501yWztWv3GCiE/IT0hXpq1KzIuuVFOPtevbZAQIc+n/ggh9b
 3xfA==
X-Gm-Message-State: APjAAAXkzwPjFCzNzkrq7SFEchIYVvPjzvTXi7H6qh3sPZLUk8mtEYrY
 ZVMNOg8EvxXZHYJEHdAA2hA=
X-Google-Smtp-Source: APXvYqzMiJzPNH7QZiw09z/SEPAorWvQs2jieP6aiSjA0GAzN1TIMz1BKvSP0/+ObXfGkR3KCurHVQ==
X-Received: by 2002:a62:5286:: with SMTP id
 g128mr12032169pfb.226.1556903175026; 
 Fri, 03 May 2019 10:06:15 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id a80sm7156862pfj.61.2019.05.03.10.06.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 10:06:14 -0700 (PDT)
Date: Fri, 3 May 2019 10:06:13 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 1/6] ARM: ks8695: watchdog: stop using mach/*.h
Message-ID: <20190503170613.GA1783@roeck-us.net>
References: <20190415202501.941196-1-arnd@arndb.de>
 <2424c672-e3fb-4c32-4c24-fafc59d03a96@uclinux.org>
 <CACRpkdaJ+2bub_nDp9=5b4kyKjWDnOGKscWg3KsEVixDpk8rzA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdaJ+2bub_nDp9=5b4kyKjWDnOGKscWg3KsEVixDpk8rzA@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_100615_988109_195F6343 
X-CRM114-Status: GOOD (  22.51  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 arm-soc <arm@kernel.org>, Greg Ungerer <gerg@uclinux.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 03, 2019 at 08:16:05AM +0100, Linus Walleij wrote:
> On Fri, May 3, 2019 at 8:02 AM Greg Ungerer <gerg@uclinux.org> wrote:
> 
> > I dug out some old ks8695 based hardware to try this out.
> > I had a lot of trouble getting anything modern working on it.
> > In the end I still don't have a reliable test bed to test this properly.
> 
> What is usually used by old ARMv4 systems is OpenWrt or
> OpenEmbedded. Those is the only build systems that reliably
> produce a userspace for these things now, and it is also the
> appropriate size for this kind of systems.
> 
> > Ultimately though I am left wondering if the ks8695 support in the
> > kernel is useful to anyone the way it is at the moment. With a minimal
> > kernel configuration I can boot up to a shell - but the system is
> > really unreliable if you try to interactively use it. I don't think
> > it is the hardware - it seems to run reliably with the old code
> > it has running from flash on it. I am only testing the new kernel,
> > running with the existing user space root filesystem on it (which
> > dates from 2004 :-)
> 
> Personally I think it is a bad sign that this subarch and boards do
> not have active OpenWrt support, they are routers after all (right?)
> and any active use of networking equipment should use a recent
> userspace as well, given all the security bugs that popped up over
> the years.
> 
> With IXP4xx, Gemini and EP93xx we have found active users and
> companies selling the chips and reference designs and even
> recommending it for new products (!) at times.  If this is not the
> case with KS8695 and no hobbyists are willing to submit it
> to OpenWrt and modernize it to use device tree I think it should be
> deleted from the kernel.
> 

That may be the best approach if indeed no one is using it,
much less maintaining it.

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
