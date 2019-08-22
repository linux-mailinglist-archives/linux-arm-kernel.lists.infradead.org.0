Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 370BB997E1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 17:17:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zMCUED5ZAcbSaLH2c0hh3kzL36WosyfFMXIabPptQYI=; b=BA873Kbq/BOHG3
	SoHFTQCD9skeJRMJBDOwR2zZQInvfJLUP86DgdfcXdyBBM+X7991zgYi1yZh5U+wN/x1ilkou1bdZ
	DEl3Qr43UQCqEBjum+XpCq8WzFX5apITiSySrUp5hMoF4J7EMggfxsoSYYxCQx4XoVqUUBV1Yu4Pl
	TQchvaPk/nI58vLJ/3IgklIxbsqvKabP6GuoKDYp2L4OJ9AcKY59TzP3MYc37fza3QdGKsP92yBRl
	0HPSysUw7WzNaLkzNTqcXj5C2SciJ37HiGkUEeT6WPcGdvGRSRsIA0nM8uBbgtUYc8jiEuU8Atr6D
	91x1DKQkHHCzP1ujIuLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0opl-0006Xd-8E; Thu, 22 Aug 2019 15:17:05 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0opX-0006Wl-ON
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 15:16:53 +0000
Received: by mail-lj1-x242.google.com with SMTP id l1so5896972lji.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 08:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h3kdfojoMQKGGntVDybNUbhbyEDv93C/OVGCWtcup6Y=;
 b=zSrUM1vwk/fDaOxllfze3Yd4Et2Atsr5U1tZ4yfsyUJJ6ny8Hm8TCDx4xJGblzxD03
 +RcaDlbV93M01sZgOdLdXVWj9V5ERQz5gdb2mU1DvCQwhqs/VqoKCjXbee4baKafi/UV
 t3cv0FBPYYNVPtgT4TnICq2am/G7v94mr/Enc2K2hIZo2PAQ2yoamtqrBsevDM56Jmrg
 1PCYxt9W/ajf+8VP/V2pIrmpOwQk/l+txLGx9O/QXKYiF6fDXkHU3E2DKkf9BYFdq/sV
 UPWkopB4R7f486KjnxcZ5mYfPUO8Ug7Uk/+5EIycG5wtoGTL32txWvewVXviVvb2jV6Q
 Ea9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h3kdfojoMQKGGntVDybNUbhbyEDv93C/OVGCWtcup6Y=;
 b=QgwqxZgqJ0oIxW2RBRu++oKwW+YfSB0hwGbjSzmXa6xbhpNbRuDFvgUoUTDTLmYSKk
 ebhIzVoZYBw1OWxz2Zp5x/uOpmLezo5LHnKiY3xCNmwsPwoWjp+cJovZxT4TobPf9u6n
 5cLwY828563HjIJ79fCuC00KNzXGEwxNHbPHEULnabDcmIC+vZGetMiVZ10cu74AWb8h
 Am+4XXYQ0cmnUGe0iKV2VMgP0DdlqEZ54NrHaS0bpYf/68eRkybuBu0CJ/d6EwvGUGz8
 WBVG3dwv+EUOUR4M3agj5Q91HO4v7/cQvQytbxm7D4zP3T5GI4J9Cuc+Ja9Zgu2Hwqr5
 ffjg==
X-Gm-Message-State: APjAAAW/Awy0qQbksKh0HnYXc4RXqpDRwGiOBaK7A8m3ar96be3YlTZm
 hX0gYarjTpgdTP0PKbIwcZ2shRzUCv/NkF/C/1aLDQ==
X-Google-Smtp-Source: APXvYqw4HrCBoq6lNeKflWZiBRnD04sAimjwJfjhUqtyNwENAWSNoa1DE2K7OwX498fj6Zs3ggfDHjyxQoOAY28ENNE=
X-Received: by 2002:a2e:3a0e:: with SMTP id h14mr22639554lja.180.1566487009806; 
 Thu, 22 Aug 2019 08:16:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190822110720.118828-1-stephan@gerhold.net>
 <20190822110720.118828-2-stephan@gerhold.net>
In-Reply-To: <20190822110720.118828-2-stephan@gerhold.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 22 Aug 2019 17:16:38 +0200
Message-ID: <CACRpkdY49Yz-39gz2V8BwZBJmKQHd975+_Pi5oTrZTRwc+ngQQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: ux500: Remove ab8500_ldo_usb regulator from
 device tree
To: Stephan Gerhold <stephan@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_081651_854764_58672E14 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 1:08 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> Support for the USB regulator of AB8500 was removed in
> commit 41a06aa738ad ("regulator: ab8500: Remove USB regulator").
> However, the configuration was never removed from the device tree.
>
> It does no longer have any effect, remove it from the device tree.
>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Patch applied to the Ux500 tree!

Thanks!
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
