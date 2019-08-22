Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7177999EF4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 20:35:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BrmhDrbMdk6YsaOEHlTKkUqD8ssxn0aQDxCim2wRlx0=; b=JqOqUcgdFuftB4
	v29FSJr11INh/zDHEdzcgPyGqNebSgEXhtjqytIUPRtkPA2NtKzUV9K/d5nSi47t1nFg5ZWe7Mq02
	hQip8MMhto62XhwtPohoRpxEdkVHZC/7JJwTaNuXkxnyLboMfdyBKSjmaTBq1VoOG+McWHDo9waMj
	8jsREnLel4THSqW2UtLr9WEtpze31XCO50ghi6833a8ObLm12tvl7flx/voBkcUEmdP7lB+0D6Vdi
	Wo037AdHruwJYMoz0JTfvGbykRIuFAL0yElb6G0lll6RENbyCf/KJ1XymaH+9oD1KHdePnlF6b1ey
	i8Vz7E6bXfJ2GtuD56hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0rvv-0005eK-MH; Thu, 22 Aug 2019 18:35:39 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0rvg-0005UO-GM
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 18:35:25 +0000
Received: by mail-wm1-f66.google.com with SMTP id g67so6738672wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 11:35:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/tUddt47UVuCta3mgJSc1hmEBY8bqXM8P4CnUZuuCDU=;
 b=hcVorzdlxl2DGUN7Sl+GmH5r6AbK5pWDpoMFBBhOckUrkvel2YlWFMfXwoLPShFVCO
 ZIFjDvGdjGRxBlB327U8kL5et8mS+y06mm0CpHFv9iCoGdUlyPhVrMAUUIboUJ2s01q+
 ClNVAWBPN2aBeLfNIebtOIehSD4Pm90IpzqWDJ26iUKx8/zmh7sTBKENKR8j8xG8uG9g
 617+EzWMJvf1ZaIZNA5MPQY+hWSh2C8T8hfnLKLDG/XY3xqxnoz5RlnsbDM4LAF4+Uhu
 ElaSqjK8v6+fNLLX6ydIn2k02rzHXrdFVYIW9y7c0Pl2G86ZoVDWFuGnWerLEgr8QGA/
 l/wA==
X-Gm-Message-State: APjAAAVw8SX96ceyoYxQQAoENcJzMifpxbwGMvV5GNqJLobWiC9STgZu
 /8CdS0pZnxZCX40kfRRkAgA=
X-Google-Smtp-Source: APXvYqzKy1puvqnfw8PmDe+xf37FAc+l4js3Rg5NT3wefojKXtpdPyZtRzBlLGggVQtM3iApxVZLJw==
X-Received: by 2002:a1c:9ec5:: with SMTP id h188mr501768wme.176.1566498922468; 
 Thu, 22 Aug 2019 11:35:22 -0700 (PDT)
Received: from kozik-lap ([194.230.147.11])
 by smtp.googlemail.com with ESMTPSA id f197sm819174wme.22.2019.08.22.11.35.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 22 Aug 2019 11:35:21 -0700 (PDT)
Date: Thu, 22 Aug 2019 20:35:19 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: Re: [GIT PULL 1/3] soc: samsung: Exynos for v5.4
Message-ID: <20190822183519.GA23735@kozik-lap>
References: <20190816163042.6604-1-krzk@kernel.org>
 <CAJKOXPcgZ2_ofZyAeTSxALkALaP-SFNfvNmNPYSPyLzuhpGZ0w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJKOXPcgZ2_ofZyAeTSxALkALaP-SFNfvNmNPYSPyLzuhpGZ0w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_113524_546887_B7D37DBD 
X-CRM114-Status: GOOD (  18.48  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 09:51:09AM +0200, Krzysztof Kozlowski wrote:
> On Fri, 16 Aug 2019 at 18:30, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:
> >
> >   Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)
> >
> > are available in the Git repository at:
> >
> >   https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-drivers-5.4
> >
> > for you to fetch changes up to 40d8aff614f71ab3cab20785b4f213e3802d4e87:
> >
> >   soc: samsung: chipid: Convert exynos-chipid driver to use the regmap API (2019-08-15 20:25:25 +0200)
> >
> > ----------------------------------------------------------------
> > Samsung soc drivers changes for v5.4
> >
> > Add Exynos Chipid driver for identification of product IDs and SoC
> > revisions.  The driver also exposes chipid regmap, later to be used by
> > Exynos Adaptive Supply Voltage driver (adjusting voltages to different
> > revisions of same SoC).
> 
> It turns out that it brings troubles (code is executed on every
> platform polluting logs because it is an initcall, not a driver) so
> Sylwester (submitter) asked to skip the submission.
> 
> Please ignore the pull request.

I talked with Sylwester and Bartlomiej who contributed the chipid driver
and they provided small incremental fixes. The driver is still useful
and in the future it will be expanded towards AVS. Therefore please pull
it or optionally wait a week and I will send incremental pull request
with fixes.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
