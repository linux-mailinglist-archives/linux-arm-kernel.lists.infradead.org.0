Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C88F2273
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 00:18:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j6WoSLIZhKBg6++EQ9Cegi/JbOOotuWpxNwrP+kCaSg=; b=B/HMDlVWHyQBHB
	8XJOTnlHdBH+hmzInGE1BzTQCYEYuY2hNtkjmg5lzqUlyf7RzWI1RrtE2UXIuKBxr6t00PQFCojYa
	CBqrFS5ryRQlFBgbecTkh1UoiorchnC0j4lXKPnPucSkzO9WEaWzP5KOnzorNgmRqQ3JxbdqkzHe+
	IClVO5uiFw97cZW6SobZsrdxjHJ2DXO/N+JfdYHxZyHqzdl6f00YVFTzsYD8JMh5g53rRuVZGSjje
	BLL2vYSHVyomdti/QTKM9yGg/lCnGHw6rJIQvNZXrFsYxSx7UH3IyyOu/iCl4S/q91poqWjvaV+Iv
	s4jTyZR/IB1u55Ft8gRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSUZA-0006lU-DW; Wed, 06 Nov 2019 23:18:20 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSUYz-0006l8-LU
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 23:18:11 +0000
Received: by mail-pg1-x544.google.com with SMTP id 15so183300pgh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 15:18:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=SGORRswerRGgZb83hhOx9ckaLWQ0QPtRE4RCzu+hdLs=;
 b=tKEGBKrCAbJWIHkSwrtRTiliUEyei4XSN1ZjV8jbmJcFB3P/OJmD9diJXPu1CvIWOo
 AmmAan25C3+lXhDFEGLH0Kd99GTm1xcCxrzZN/ZFrjfPw9hOMylVxdbasInyfqNCPd/6
 L8VfQ3OxlMvWvbTC5NNuwXvuE7sxoVx5BE0PrpH8ANkm9wgim6ZF2nMaJnRc8VZi/+F6
 qXkJSQ3VptgcymL/7mbgqX3yaRPXHaIMDE13mx+7Thzl2qNi9UdZ+iM66REvdLXKb/Np
 RfYHMKYvG7wuDKGIemHFpT7u2LM0QrU9krqyXzxFuv0DP2fE9vL712Q58MNN24caFx4r
 n+9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SGORRswerRGgZb83hhOx9ckaLWQ0QPtRE4RCzu+hdLs=;
 b=daZCHYS72liIaMuZqZE56VTVMrHPiEFnrf8IbHJjl4HgjGFkZW8o5lfZMmERB7ssgz
 EBMfFzVjjdxrqX1q8nUCRldW1EFbkF3gfWpWaXTGR3Gr9TMBtJivS64jlJkH1fn+Aut+
 7VJ1xB1pbGtiFmjZ3ADot837oIAVE4YmagB9NK5Ie6ZQ3E9j0yh5vnHS+kKrX24rOtVg
 yjjDdY+2dVLUKS2TGyAXN4fWbeA7eBb0D+ghM/Lg4N3mU/DUlboF4IRNeYj54YuoeR2X
 hE8XV2WrlRoAu3/tKcxKpbVUYcFKicun81xVGCcyYbvjZdM73DK8csxdGuBGY0g3y0/E
 hHrQ==
X-Gm-Message-State: APjAAAVi3EbaanL1Fu0lxvxtKDBVYajLgzqqt7u4Rzm/o1zSxIMWko2Z
 KSBoBv0d34ztoZfyz6N5jeTylQ==
X-Google-Smtp-Source: APXvYqxcy59hYgCqEMdh0JBfNeEqEneqe1WlmaAkMHqGuw6K66Fvgkuiq+8L6PvH68RDPFvTbDoUHA==
X-Received: by 2002:a17:90a:a409:: with SMTP id
 y9mr605399pjp.106.1573082288563; 
 Wed, 06 Nov 2019 15:18:08 -0800 (PST)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 137sm49565pfu.173.2019.11.06.15.18.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 15:18:07 -0800 (PST)
Date: Wed, 6 Nov 2019 15:18:05 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL] Qualcomm ARM64 Defconfig updates for 5.5
Message-ID: <20191106231805.GG36595@minitux>
References: <1573068840-13098-1-git-send-email-agross@kernel.org>
 <20191106220406.4aoq5suvwww6c3ov@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106220406.4aoq5suvwww6c3ov@localhost>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_151809_708984_D88BE0F1 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: arm@kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 06 Nov 14:04 PST 2019, Olof Johansson wrote:

> On Wed, Nov 06, 2019 at 01:33:56PM -0600, Andy Gross wrote:
> > The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
> > 
> >   Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
> > 
> > are available in the git repository at:
> > 
> >   git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-arm64-defconfig-for-5.5
> > 
> > for you to fetch changes up to a36612b7469cf76953cf237a2b9a62f6c97730bb:
> > 
> >   arm64: defconfig: Enable Qualcomm watchdog driver (2019-10-20 23:04:59 -0700)
> > 
> > ----------------------------------------------------------------
> > Qualcomm ARM64 Based defconfig Updates for v5.5
> > 
> > * Enable Qualcomm cpufreq, watchdog, prng, socinfo, SPI, and QSPI controllers
> > * Enable SN65DSI86 display bridge
> > * Enable QCA Bluetooth over Uart
> > * Enable various Qualcomm remoteproc dependencies
> > 
> > ----------------------------------------------------------------
> > Bjorn Andersson (6):
> >       arm64: defconfig: Enable Qualcomm remoteproc dependencies
> >       arm64: defconfig: Enable Qualcomm SPI and QSPI controller
> >       arm64: defconfig: Enable Qualcomm socinfo driver
> >       arm64: defconfig: Enable Qualcomm CPUfreq HW driver
> 
> 
> Hi, this turns on the driver as =y, when the option is tristate. Other
> cpufreq drivers are also modules. Is this driver truly needed to be
> a built-in for a generic defconfig?
> 

linux-next has 7 CPUfreq drivers =y and 3 =m, so I picked =y for the
Qualcomm by majority choice. And the same driver is used by a number of
different Qualcomm platforms, so the growth looks to be bounded.

It should work as =m as well, but we would need to validate that.

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
