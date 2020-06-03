Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C82D1ED64D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 20:42:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PKR/0aRiNgOtJCr6n4bsSlUZjEt+qzSlru2Kguw2JPE=; b=Iczg/bW9drqJjH
	o3XxKmPNhWY5JzFIlym85W7LdixKLxLsjRt6xEY37q/7I/Lgw/CL1pkAVe/BF3MFjMjoY3eDi3d1P
	q5dzjji7T173F8aQbgdYfqz/DTaXFXwUlsZ5HpOFw67lktY6UeN7q4eWQZGXuJLQmBIZeoSb6jlFT
	AdJyOG8fw4HunsHoFjM8dURK0U/TooUhbZeOY2aLzpT3gTXezSTPZ8NmP75DbBd6EkKpTDiFFHq86
	WbutlnMM2ZeOjhZgivrbjuNsOxCSr8mMeAgE12xULalwsaPMWlgMW2N+aZhp72R2Z0liELl0f98P6
	auEvkgeRJkZtNHDUoAjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgYLV-0000R0-E4; Wed, 03 Jun 2020 18:42:37 +0000
Received: from mail-io1-xd2b.google.com ([2607:f8b0:4864:20::d2b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgYLO-0000PU-Lr
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 18:42:31 +0000
Received: by mail-io1-xd2b.google.com with SMTP id c8so3449155iob.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 11:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/ayQQstOIIDAVAm7DUEsy/1EwnXM4OCks6yx7VXAtz0=;
 b=dd1HIESh9wjeMB2DRzWc+TNFLWLCSZ/CoiLCmo3JmBscQFak1Qq5oY08YE2L90GXH1
 2fDZoyLmCNOpFaJGmPaoWBRHdh7x9KNy3zcr7le7XloQTpGztHhmv6uvU8itraWKN2MM
 zFXSdBavffxBrwb7rSWk4WU80egnSDepHzFonmWiqFp+6CB4gF4hvWDsnCpDni7YsiCw
 g5VmI3XerxuTnhVsTh+Za3GihjwXClmwwcfwgIVSKSzqg123q/6ldP+D22L7yDa3WzIM
 Yr/0CEv4pFOfO7aUjaWiaOzh/TyMoreWW9BovBBi6SrhGREC/mRHvAImkkKlRkMJRAJ2
 eQVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/ayQQstOIIDAVAm7DUEsy/1EwnXM4OCks6yx7VXAtz0=;
 b=ucPvCC3obCqXsckw+0j0Yhpkg+EuOQl8bOnUsg5d8jevkkAXPR8E+ErhA6SsUytm+w
 05VDByICSLroo9eoDxG6PkK+Xr73NQpWbpZpYNku71QPLdimoz0kgsto/kycxPhddb30
 ZAYFwjwTl/lIiKA5+DtAzA9YecLOi1kUVHegrl6NhNwrqD/NbxrJKbVSOBjbzy421Ymy
 CyKCnjaeh3WBarqYhY51k1UDXIAX4e48l+ZqNByz5XCVRrptTuejornJRNXrI30zN14c
 MU3X97n3NUYnP8vPMvlTkUckqfd60Ph6TuM0z95ihD0wWhRI1JdxCenYoW+xATgecrwo
 JZ3g==
X-Gm-Message-State: AOAM531MuLF4kMQPGc10TkRAtT7Tb8mSd1TfbNoOz7IeDVW6bQ1Ylu/C
 39u6SGRhKdtEAzJ7/ivbi8fJR/XJNqMtbZVN9tdbvg==
X-Google-Smtp-Source: ABdhPJy9yjqCeCXKJJyrSLwf3jOll6RD3VKatdzC9kRnS4OaxQByAamVPr9nSXVqOHcrBwK1GfHmQzHWsfk9kuBkRSk=
X-Received: by 2002:a5d:8958:: with SMTP id b24mr999661iot.53.1591209749811;
 Wed, 03 Jun 2020 11:42:29 -0700 (PDT)
MIME-Version: 1.0
References: <0a50f0cf5593baeb628dc8606c523665e5e2ae6c.1589519600.git.viresh.kumar@linaro.org>
 <20200519012927.GT2165@builder.lan>
 <20200519034055.hfvifqz442yfduhg@vireshk-i7>
 <CABb+yY30nmbBUzYG62xGEbrr7107h_Edyq3jKPheZAQ0Cvr9Yg@mail.gmail.com>
 <20200603183120.GE23722@bogus>
In-Reply-To: <20200603183120.GE23722@bogus>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Wed, 3 Jun 2020 13:42:18 -0500
Message-ID: <CABb+yY2KXqRnxqHC-Hs8NsosEPtyTYO4v_b1cCGs9Lphpz_X+A@mail.gmail.com>
Subject: Re: [RFC] dt-bindings: mailbox: add doorbell support to ARM MHU
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_114230_718933_14109C68 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jassisinghbrar[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Devicetree List <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 3, 2020 at 1:31 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> > >
> > H/W is actually fine :)   Its just that the driver is written to
> > _also_ support a platform (my original) that doesn't have shmem and
> > need to pass data via 32bit registers.
> > Frankly, I am not against the doorbell mode, I am against implementing
> > two modes in a driver. If it really helped (note the past tense) the
> > SCMI, we could implement the driver only in doorbell mode but
> > unfortunately SCMI would still be _broken_ for non-doorbell
> > controllers.
>
> Should be fine as the specification is designed to work with only shmem
> for any data transfer and mailbox is just a signal mechanism. I won't
> be too worried about that.
>
Please clarify how it will work on, say again, rockchip platform with shmem.

thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
