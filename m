Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD99D50DAC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 16:17:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NMdfk0daQ/BvQemTo0P3DeUpRA/C9l2dW+OgO7I+41c=; b=oSomqj1Kphi4lh
	/2Joec/nIr4SMLDF68e8qUDbx7VrrMd3vuZwSjazuwoATBO7PmfR45+5o6FMCCMAjrjvwVP+JrmRP
	7/0Hv9RJKqgwfTLWxr8DE8dG1EI8cao2xsaf0BE2iIiv5PDyaSfktJPGzL9Iqm0w09kAV3P6cR831
	oHNV7GXR8BAI5MoR6ivGy71tV4GVirsOrnn2BCEmMlkeRfV+oe5+neOsZ0CBIDXPmvj7BBghug9E2
	l8dCAWEn9xQfnZfWUD5fEzW/Y5aAdqoC6fdrdKBLcAqbsTwNecayjpO1yuIM6/PFi9rpByX0GsO50
	Po2HgS1Tq2lojuLRTzRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfPmw-00050t-1i; Mon, 24 Jun 2019 14:17:42 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfPmg-00050K-N2
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 14:17:28 +0000
Received: by mail-lj1-x242.google.com with SMTP id 16so12764485ljv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 07:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gv/iTNvb5RX+h4LWGOolD/aL8D7JzkFSVfgItWt9X+0=;
 b=JOCNad5gFzzQGn3T7/+rLI1QfX7+KHq6uaGIJWLrCtU9KAzcCOasF+/wOHov1elYtw
 PrX5qqq3ltUTFhj8v98whQGF/COyTMUHC/ukbWueHlr1XPwN4lW5yQ2FJ7xPLv0fFmVD
 7gfy0BGOErzvgK5BgQOqCmP2iJ9wFNv93E4FCmoHfDGQ4sIsoRKzdqNKDQ3XIoZElJJZ
 Jkc5+RdYgCleNk8KoteHHxJ+CxVoSPSf2GoxSGSKyZ/q8wY44Y491uWb+p20j449aOBz
 b0bdKz3mR8z8I0Gle1peMbKH5gqE64uJtJODyhuh3Wbc2pNql8doFmja6qZPslp68bSp
 QLUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gv/iTNvb5RX+h4LWGOolD/aL8D7JzkFSVfgItWt9X+0=;
 b=YJ+QxDXjUeY1daeGpEwG3adhI8Stap3xWY2V7nmsUXinnuEhRSHVreoFwWOslnybl6
 l1fpwy0CfI+AbgfWdQcwvhUNkfpyKxaNbmEQggV+W5kTeC4k38tmz4JRLn5NrLgKRn7h
 287j9LKxFPZ5diJB9gVavc957o91qoIjOVscR/cedKwtEciCr9rMGfnzsyEXwqksxqDC
 1I5dIreaW014ecjJMG59bAyLH2cTZ80rZs9yJ/tS2z4mJZqX8IbW25N//WPAHXOz2L76
 kVJg1TTnvBq1gRiFPvJKg0YtGwDl2dizDTcsez+oXuFXItQ6592c0GJx7DxO06kT41u+
 vFSA==
X-Gm-Message-State: APjAAAUPcyDC7bOQUPVBYJjKTeuYt3SjSocul6U1n1Ayb+Xgyrsj+R6e
 2GV6PkrUW2rWf/ziX+E+anLmx/vmZF7+3hQUJhsPGy5V
X-Google-Smtp-Source: APXvYqytWclhBi/QOWNrJ+E4ORBzmzp2PSL2LmMAfY++PEEFBojP/YNNp1GpP5qnSOgbzgAKxP6y6Rx5LhoXwMWVgvM=
X-Received: by 2002:a2e:a0d5:: with SMTP id f21mr49046981ljm.69.1561385844006; 
 Mon, 24 Jun 2019 07:17:24 -0700 (PDT)
MIME-Version: 1.0
References: <CACRpkdYLcCB6zA2dYj9A0bJU-gQF3QuhmFd0oGt++oa+gSE_Cw@mail.gmail.com>
 <20190619131559.7x5mbfwlzp6psjql@localhost>
In-Reply-To: <20190619131559.7x5mbfwlzp6psjql@localhost>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 24 Jun 2019 16:17:12 +0200
Message-ID: <CACRpkdZ4y3Wg55si2UF9Fkx5Gcm41jyNGLsct4OO52bVdbUfrA@mail.gmail.com>
Subject: Re: [GIT PULL] Integrator DTS updates for v5.3
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_071726_768708_F39F0322 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 3:39 PM Olof Johansson <olof@lixom.net> wrote:
> On Mon, May 27, 2019 at 11:19:00AM +0200, Linus Walleij wrote:
> > Hi ARM SoC people,
> >
> > please pull in these DTS changes to set the flash partition information
> > right on the Integrator boards for kernel v5.3.
> >
> > Yours,
> > Linus Walleij
> >
> > The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> >
> >   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> >
> > are available in the Git repository at:
> >
> >   git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-integrator.git
> > tags/integrator-dts-v5.3-arm-soc
> >
> > for you to fetch changes up to 62a5017bf825c9e4d3176eb975a01c329a9f364b:
> >
> >   ARM: dts: vexpress: specify AFS partition (2019-05-20 16:40:38 +0200)
>
> Merged, thanks!

Hmmmm something is fishy! I can't see these patches in linux-next?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
