Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60307ED5E4
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 22:31:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J1htJapAh4QtNXBkR4VsTDOBqW35Qn7/GYNpoAZPRYM=; b=sdHpEvNgycE2aW
	leUwJMUL4IVoEfzQzCpDzjCtk2lJTcNkWsmgzOn1eAlw6LBl58Cw2151DZJAptnJ5rGjDlyQ+NNyo
	yS3Op19PFwQb14XlA36oRhQinBfygxw1InoPYVXmrds1IyhbKTLQrJKJDRCYnOGQ4V2+UxJhIv72A
	loAFYPK/CiKcDgIx7FqhpHtm2PaXUdo5HMx0saphtC3B2NgpnPVa9aRexVU3Delox8QwRL1CsH+qA
	1M3RDlurkz/A6Lx1Pc12DhIf3XSCrBCi2NXpCfXVLwdeCJhrWsZdSBzLaiwLphD6QX2+QVKqGb3/H
	Tcgyx+S0IlACBUJbvGaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRNSi-0007SA-3y; Sun, 03 Nov 2019 21:31:04 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRNSa-0007Rn-Jf
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 21:30:58 +0000
Received: by mail-wr1-x443.google.com with SMTP id v9so14893504wrq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 Nov 2019 13:30:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dENupFMZvUKLj3H059NPWsyYbib0XEeUAnwjyNjU9ZI=;
 b=RNgtwwdXd2vr2cWTtlBkv/iQTAnrgASL8lr2x72jRW5QZecSWoV4wJRPX9Iz3Ppdwv
 VWWMZ9wQ+kL3wURCLJOfeBuDOim8WAhjIuulC8pDbDa1yZM3UCbQoXOQbu1pl1JoPDLE
 TM5P87G5OZWLmt3veBI2OOf1+K8o1wi459tz3HCT3gAMg/S/ZbJkunoBgSc6SzqKFb8G
 l1/ugXOcxBdxNuAcJIS7mXv27RkK4zXXO8k1yT/lEd14abNUH2YhpgEzZc+7S+e5r6Al
 esDTqv2gzcwnDOMUziwzFhlChaRpERQdCerdBaJQqVolpNo6ptT4TXQa32vRi1ANh/po
 157g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dENupFMZvUKLj3H059NPWsyYbib0XEeUAnwjyNjU9ZI=;
 b=OuWd3z876mKJnlTDVin4vsiGN7wWCCaRtq359MFJ1/3/Is7DmYrhu5lWc64lldMpzV
 +LoAJNdwXkzKZG7CGt4EbiPte7tQL4e5z2A1EoSK/rxL6+RdamGmn9LLx8Jd7q6cR//8
 T+UF7eqXok2UnPp+28yGaOIXeDBAX7iBBtlpPxx0nNRSBmFPQhp7NDE5sLYlhp3zQItC
 DKV5cKbsKwNw8s18PUrRKtnO5BVOwRo5fv2WpXqYC1kwsXj0csL+ydU16XCl8EEeLk16
 71f5hFZ1pLtAX1oqoRePQ9CQbcwHHS2FWazuhR7X+B3zjCJSGQtj34EPWhuupwFZCh/1
 4DDQ==
X-Gm-Message-State: APjAAAWFnfjD9yrEhpwzlxiWwKmpG4ryPUIvstN4iZRtli3TogUh5pU5
 dpaq/0LqoCTFbW5O/97MSWwokWItNTEDnpxidUc=
X-Google-Smtp-Source: APXvYqzexYZ74NlB44n8w9SsqOsbVsFckU5M2A/wMBg6SxfO7AFKMZa7056ZglUmmDrSKQABtiQmvhDhXJz25nXGUak=
X-Received: by 2002:a5d:490c:: with SMTP id x12mr17869293wrq.301.1572816654957; 
 Sun, 03 Nov 2019 13:30:54 -0800 (PST)
MIME-Version: 1.0
References: <20191018171835.12666-1-f.fainelli@gmail.com>
 <CAN8TOE9xftQxTFjzuxomknS-5xebrDvmgpt38xprWE7VNBODig@mail.gmail.com>
In-Reply-To: <CAN8TOE9xftQxTFjzuxomknS-5xebrDvmgpt38xprWE7VNBODig@mail.gmail.com>
From: Gregory Fong <gregory.0xf0@gmail.com>
Date: Sun, 3 Nov 2019 13:30:28 -0800
Message-ID: <CADtm3G4BqYko3RkGYE2thNuk7XupKDoQcyUeBy_XOMmCcYDn9A@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: Remove Gregory and Brian for ARCH_BRCMSTB
To: Brian Norris <computersforpeace@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_133056_648203_DF4EB0B6 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gregory.0xf0[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gregory.0xf0[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Brian Norris <briannorris@chromium.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I'm a bit late, but...

On Fri, Oct 18, 2019 at 11:33 AM Brian Norris
<computersforpeace@gmail.com> wrote:
>
> On Fri, Oct 18, 2019 at 10:18 AM Florian Fainelli <f.fainelli@gmail.com> wrote:
> >
> > The last time Gregory and Brian did a review was sometime around 2015,
> > since then, they have not been active for ARCH_BRCMSTB changes.
> > Following the position of other maintainers and Harald Welte's position
> > here:
> >
> > [1] http://laforge.gnumonks.org/blog/20180307-mchardy-gpl/
> >
> > remove both of them.
> >
> > Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> > ---
> > Brian, Gregory,
> >
> > I don't expect you two to object to this, but if you would like to stay
> > active, let me know, thanks! This is intended to go in v5.5
>
> Acked-by: Brian Norris <computersforpeace@gmail.com>

Acked-by: Gregory Fong <gregory.0xf0@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
