Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F72F11DF9E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 09:42:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8i9D5dhwbcCWLEOg+AvXsy8RFALC5QF/AVipq0fhRG0=; b=CYFA3DO7kWq1US
	dLwWznk85U+f0zVzR5A2cY6BfpS394ulIuGvS8ZglcIpd37XToPmmxEXuy+hYl1Q1eGfNz5v4gTH9
	fmN6AdjyJRojJYjfC2li4iLPvJjzYbDVHIi7wOBJlN7XbIe36caX/lZgaVkS40eHNXjGineNVnQtU
	DEXpZXt/AkmN1R5YC8TcNzLW3ajwj6fkxfftdOL3IxtEq+CPqq0mRuN/CS7se2JoopsAebBKokfKu
	VCJS8D3EtfwYe+bXjk47EIvn064To0uBLLgIKIybLG6P1UMR1aVqiDluARRo5PQivdb8/j+SsAit8
	lkryex+Z2fTf8pUw+hFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifgWx-00045o-Nj; Fri, 13 Dec 2019 08:42:35 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifgWl-000457-CM
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 08:42:24 +0000
Received: by mail-lf1-x141.google.com with SMTP id b15so1346845lfc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 00:42:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+3AGyagak+SsQwMgJI8DqZjJRt+2sRcK1YdTOf2bFE8=;
 b=a+daNgiQiCYJ8MM6UhnHVrWdoGUXOn3GJH0VpgdC9SpDGXCOkLoPmTrlEqRvbWJSWy
 scJgeIUaLdduo9o91tDrNbzuthgAPOM+aFslD2C8TAcTn1tMXB+WFmtOrTcyb+iujSMm
 7oUPcMGhQBLpN99Q5fopI9AB5FHtDFFgTs4hShQap/ML5xXW3jaBZ0I1lvhSAhM1jDPv
 ujjyEpNoH383Drw+a2PgfQ3Yo6URBxeqlRWSJygP0NQJUkP0r2uCOw88AmCK3y5gPvfc
 4JPfg+gDEUV27h+riy/0uIHzNAKSe1b2pC1GVrN+eAOOp5FrGij5sffNU2QagZHee+tA
 xU6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+3AGyagak+SsQwMgJI8DqZjJRt+2sRcK1YdTOf2bFE8=;
 b=CO5LW18HaclonPiodIhg5qZ/ro8emEo+V3gTWhME7dFLtSgabna3qjG8nTdFbErZnf
 JhXKtVOIIr49vQFwXrYZps8vWuOOveCn7b8gbK9lnnnqEXSvCMSaGfyLUe35UrFDB1VG
 b4wi8jmjHLoCcoF+9dxLShfF4v/ffY4vc+iR+J+xM5DHjQpYoV80l4ar8gO7cIgcocae
 yTYBG/E+5lYTHyNplSuPxvOuHae7TAieWbHw6smYM3y6lf+HQ58CEHsmFAW6CPKMWzdO
 OqCx3G3X/c4iaKiZHGx0bpPVSGSbAZHinmdbKODwQMPTieSYOq/S4APUpUO46LEkIpqz
 S3Ew==
X-Gm-Message-State: APjAAAURpy0hi7v8Ol56jenv5Ig1/geMqlXAWjEr34Trep+heV7Rqu8O
 XJMNfpfUW9Qhp9bPYzBdUA4kWkcpZdBuXIltSInMnw==
X-Google-Smtp-Source: APXvYqz79bn/tRSB6q2MlLzPdVGXKAD3lMBgrE6UtCaOD5iDixhhmHkxpkSan8geCglyFBt3hCB+ZaEC8V1y5zn49yA=
X-Received: by 2002:ac2:5c4b:: with SMTP id s11mr8062235lfp.133.1576226541430; 
 Fri, 13 Dec 2019 00:42:21 -0800 (PST)
MIME-Version: 1.0
References: <20191202061432.3996-1-andrew@aj.id.au>
In-Reply-To: <20191202061432.3996-1-andrew@aj.id.au>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 13 Dec 2019 09:42:10 +0100
Message-ID: <CACRpkdZVdP+rfnhF8Dfk+jLsqTEvm_tqv6to2s4nnJh8diaM+A@mail.gmail.com>
Subject: Re: [PATCH 0/7] pinctrl: aspeed-g6: USB and pinconf support
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_004223_466511_D4071980 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 2, 2019 at 7:12 AM Andrew Jeffery <andrew@aj.id.au> wrote:

> This series adds USB and pinconf support to the AST2600 pincontrol driver. The
> patches have largely been developed by Johnny Huang from ASPEED and have been
> used for bringup and verification of the chip. The were developed around the
> time of the 5.4 merge window but I got distracted for a while and haven't had
> an opportunity to send them until now. They've had a run in the OpenBMC kernel
> tree and so shouldn't cause any issues, but given where we are for 5.5 I'm just
> getting them in early for 5.6 so we don't miss another release.

All 7 patches applied!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
