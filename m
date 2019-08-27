Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E419DF20
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 09:51:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TIW+yB/aFKVsVtGoArHycVBNCZ+/SKdPz9LIHlIQ58o=; b=uE3M+Ko05Q03uP
	eJ8Pu8c0//lFJ0UiBdeCriUrDoQ4HeSsdMa6s3X7ZPBqSMFSxewWt5ZQYVWQ1R4r086KHgPK5mXr2
	l+p9cKtgZqbeVZWUuRslHfR0Ps0r2MVsBTDiHvcSKSwI1iGT1AdKsjDdBnq0yyWt3R0QXOPw29kEt
	0XmZ2pGuZMf9Lf7wCS/OGtqLgkpl+i6t5u6Iahz9XcmsiazIYf+xTqanDrWSHeiT9lFtYw8pAXBkJ
	cM9UmKJvd5231MrhMnT3rJJ7hrJ44gIWpJhSSbsonJK14rmy03MKgd72KtjbcVQUmoZKDfDYFz2Ki
	J2TI9trIXdHSW5ZwT4fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2WGB-0001lN-SE; Tue, 27 Aug 2019 07:51:23 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2WFp-0001hx-7y
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 07:51:02 +0000
Received: by mail-lj1-x243.google.com with SMTP id u15so17548718ljl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 00:51:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=L9Zh3GrxMUIZygrm/sqB7uRawwKNOmPmv1C0mbC/aHs=;
 b=kAEowIBMqlOiQbXMCtXM6absLiz1V6Xiyw3B8NCBPEyEmirQQBDYiTQF8BY1AjPNsg
 arEECZFILxQqVnSBMFJU2lh4X0rJrrloauZLDPGRtdSx/GjuYl11BxWuWVmaHqKzRaia
 VvhBh4LM6zfMEAj4YoCbxnraby9WnHWRZitbl3UkiwtvUtG1lgiAnGQ8P4MEenhW6Ydy
 KSi/3aZ/0MsCZmNqZsjgbUhNsvlczfuL7mAEea7kjx6IUii6bBJiMN1x4FPTZmo31HUY
 1Rlb4wv6essdGhd5GfH1gx4e7uVdK755ydDcInQ2qBo/sTLj7cD+i/qknk/XVsioj90Y
 N9sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L9Zh3GrxMUIZygrm/sqB7uRawwKNOmPmv1C0mbC/aHs=;
 b=Q9RPDW9bkxNCHyDLO059Zvfh0h/3kmktzjifOqCwpe7zoIVpc3CrwxGnD7yISv9xsY
 P/ePZ91qFpwV/L/MO6u+ZpEGf43aGXJgRdkaMFTvnY+6ZYuV/zxSPGQK+Kt4sIY8oPp8
 oPYr8QGnzylP3bvkEcx/YQH9mzsM3h/51XY8CXfBTPGcM7JitFs4BBy0M5ZNBHhwI0CE
 6xybGhvghU0/SF/kd7rUt1Cnlk87lNyLhiurWa3s8n6Oh6pnkWwYSu6SMpHqFYIVSWae
 WTSsFrk/YcHmNWkbuFqPVeyWJ4qgwWV1XkKVM+G3q2AD7eyMO0BkVayMeq6mdmcHwAYh
 w/OA==
X-Gm-Message-State: APjAAAVAtuhbqykFPWBuBiy74+hrKW4lUNe1TLBkgT54NQocTlix9nCK
 OSsucTXwhnJmMAh/mG7kOzSHMruPIFs0uBcKLkNb/A==
X-Google-Smtp-Source: APXvYqzvGbIyA3LLknq2G4rbQ5Q7mx7t5yXqkOE+0yokVI69BeNEdJn00m2LbQgCn4KXb7+dQBM1CRBb9cVJArd4arA=
X-Received: by 2002:a05:651c:28c:: with SMTP id
 b12mr13180755ljo.69.1566892259461; 
 Tue, 27 Aug 2019 00:50:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190805101607.29811-1-miquel.raynal@bootlin.com>
 <CACRpkdar5jE116CcywYxLR9JKWunRusJjNw7f3C0SFK4-4+dNQ@mail.gmail.com>
 <CACRpkdbEw5eCKb=nTCK4wuMsPEadEQdGx62cGRhk7F78p5X2CA@mail.gmail.com>
 <20190814143457.664b04c8@windsurf.home>
 <CACRpkdY-AtaS67u4s58PifFtP5C7xp4P15J+hW_Dba=Gb4rhSQ@mail.gmail.com>
 <20190824133317.371dec4f@xps13>
In-Reply-To: <20190824133317.371dec4f@xps13>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 27 Aug 2019 09:50:47 +0200
Message-ID: <CACRpkdZ+zSCSc9Q40=_+K0kfZ4evuOTAShVYWYvuSeOfgkxZng@mail.gmail.com>
Subject: Re: [PATCH 0/3] CP115 pinctrl support
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_005101_392168_3435B6DC 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 <devicetree@vger.kernel.org>, Yan Markman <ymarkman@marvell.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Aug 24, 2019 at 1:33 PM Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> Linus Walleij <linus.walleij@linaro.org> wrote on Thu, 15 Aug 2019

> > OK then maybe I am a bit impatient.
>
> Actually Gregory is on vacation until September, so if we still are in
> time for this merge window I suppose you can take it.

OK I applied the patches.

If someone is upset we can always revert them in the -rc phase.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
