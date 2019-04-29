Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A720BDC81
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 09:02:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kfQalugOGsedrS+USrQ84EhV08+07IN1qed/sXU9o+A=; b=rdp0mJiW1LXCYz
	64hqA8zJLnK+3XPxp8KTfuMpx16XTzJi0UxH37X57ZFnQgFzCtjyg2Z/ngDH9Eac1zbHUCRUMqj7T
	Queqs+xfPwCY31rnZjrei4jnHLlkIXGtSULaUqbitWN+ppN48Y+t7Cl8fjsdeX4tIwvVZH8PCx80J
	7AO+9XzOSJjX/JzNrXy95f2HnlAuX2lS5c/EKs+GkdRz7ylL9t8tVOzbkR20FhKOId/puClLpJyR1
	tqgjCDixzS1+0dYF4MK71Md+dlBN2GvCMHF1rqbBX8CI8w7a5hykAckyec2MquyM+x2yT84tOna0W
	lV6M3Z0+TDJFQg5Q4EOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0JK-0003px-8s; Mon, 29 Apr 2019 07:02:46 +0000
Received: from mail-lj1-f194.google.com ([209.85.208.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0DD-00068A-32
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:56:51 +0000
Received: by mail-lj1-f194.google.com with SMTP id k8so8293442lja.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Vowg87oJaCDyp06n9AIcaJAsMnSDL6RqtEpwjVPHdtw=;
 b=PXNuc6HG9d5yspVM2k3pZ5pHnrJlvGE5kzsGy+j0brpyVE+Sjs7otO8QaRAWImVwJF
 MZxPft97GjSIDM2jG/TJSXwIh6jFEfhDHXTY6kd0VN/j8DKyDWrM7q9kHUhxZhGBClTh
 lQxPM1SjMV+vfXoy0LZkEJwkKYXrvK2BsjclX5Iv5PcVjPa5fVeJOrfoEmhH510Za0vU
 0D989bH2bGttZ9MnQSrh7n68BXl0LHLZ1ZME+UJRMF3fs1jxy1Ynupz6Yw1uRJVzj5g/
 mvy0Tb/hAqg+G/zM5pGMSWSbpTIsiyPWh+juHUSAwECFuaGmopvZbRRWLJaClZA9kFUe
 knrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Vowg87oJaCDyp06n9AIcaJAsMnSDL6RqtEpwjVPHdtw=;
 b=rPzPIIfDTTcWYVuKzzELlYQ49NjxDtmPcZUmWTlbVuLUVcdxz137n6++CwE7GqE/87
 CNLPurOhwDZE+ZB5y5DLIfSNds469g20uL8K9mlMzkzRoF+9dJsTs4NjpSvlf3vhkQTs
 yzzyTs0FMCqQZq6sMzFO0PrK5jYJ4cN/BZVqasRc3SKrrJBdGWlMCC6UVY/Ae4ZMBdx1
 kxK7yvTmeP1kYjPBnlacesD6eS3NKePnyqPAx1w8Q7OiOPw0fnEv9F0HxMJzH8vis4ww
 geKFqdWRpzJQDsb+3bsicLEbDsNifvUQp/1OxjAK8qqFR9TSdafd20hlhlt6gJJzqaR+
 VROQ==
X-Gm-Message-State: APjAAAVCC5+MmRIIS7SRBF2Xg+ykVTYnbIsEXlhw3pb7p4r0pkUB+t8b
 HbFd5kwLHt5FFkdTRNVSyMD0Pg==
X-Google-Smtp-Source: APXvYqwaoVgeK7ifWDhTG6fi2Wd56V1rJj8TNBsnYGh0A2nMdAcfndReBTdeX2FGZoNRTLVbt7QHfg==
X-Received: by 2002:a2e:88c5:: with SMTP id a5mr9378048ljk.5.1556520984791;
 Sun, 28 Apr 2019 23:56:24 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id x72sm7158989lfa.58.2019.04.28.23.56.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:56:23 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:43:22 -0700
From: Olof Johansson <olof@lixom.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [GIT PULL] IXP4xx modernization, step 1
Message-ID: <20190429064322.5bgxzrgxgsi6w3qq@localhost>
References: <CACRpkdaCZrAEG0_-61Wf3RUkVZrwQDY+W567C0sp8nBwBUjktQ@mail.gmail.com>
 <CACRpkdaEQD_h=MJQksFmm2JDi0bOW9ygWTi0HtAqzENu+tMfAQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdaEQD_h=MJQksFmm2JDi0bOW9ygWTi0HtAqzENu+tMfAQ@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235627_622651_E94C8759 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.194 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Imre Kaloz <kaloz@openwrt.org>, arm-soc <arm@kernel.org>,
 Krzysztof Halasa <khalasa@piap.pl>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 23, 2019 at 04:06:54PM +0200, Linus Walleij wrote:
> Hi ARM SoC folks,
> 
> the build robot came back with a minor snag after 4 days, so I
> fixed the offending commit and pushed an identical tag
> with this fixed. (No COMPILE_TEST on the GPIO driver because
> it depends on the irqchip that is IXP4xx-specific.)
> 
> On Fri, Apr 19, 2019 at 10:01 PM Linus Walleij <linus.walleij@linaro.org> wrote:
> 
> >   git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-nomadik.git
> > tags/ixp4xx-for-armsoc
> >
> > for you to fetch changes up to 4e3bfcd70f9f3559c8591a1e29140300821eb5b0:
> 
> This changes to:
> 
> for you to fetch changes up to 1fae0ad1e2032a603f93d4ad752bfa6fe7c9b887:
> 
>   ARM: dts: Add queue manager and NPE to the IXP4xx DTSI (2019-04-23
> 16:02:16 +0200)
> 
> It still has my signature and all.

Merged now. Thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
