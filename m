Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E141D133D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 14:52:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KMcnG0f9yRS1FpaifoH5GXTlquEmYHow7HKK24oians=; b=L46E2MYfDrJa3H
	cFQ8mr15wkqDMTcet8vlriTYL6WDALinqF8gL4AHZ1vJRal3/yPesW5vi5FiFbrQ4dzwg0vISpxGw
	xFwv16x/1ADZfUahTewg8GDKvMzQIXHd/6MLm9BiHJFOSzxeF0J6mOWLcWJKAMd0RqZX3EoLeL+5Z
	CeEiBdTmfR7IixPVwSbC2Az7gdUNtKa1kmafY/TbgV34ScLvivEN2DjgWasKtfkFRBrkXTd1OUjX0
	1fHNb59eTi6HHntxC1l1omGr+rDBAXYxFbllGR+L6aJSpYLYfXdrJE4aLQeiEv2m7fwWNVPRSsNUZ
	bQ53z221b3RAZsHufmUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYqrz-0005Nk-Gx; Wed, 13 May 2020 12:52:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYqrY-0005CW-LE
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 12:51:54 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C33F6206B7;
 Wed, 13 May 2020 12:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589374312;
 bh=1SBdssmchS7etFt8Hcpk8fQ7VCPg4FYqBUt6sF72B5g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OhEM8JhEn/lJos7yaxYu6g2ZU9D8JyDCADcM+2ZZ+L7kaoQ5Kqjgr6WE63xVWYNm3
 PUttciyF4c3ojFT2P7SWDpwh9M+5487VZWdWYsKiwzfT2RiIbNvQTFc1NPVbEwcaxQ
 ybwWLmTXc9XexFxejMYj2YDLQq5vGFBcBi5e8Nk8=
Date: Wed, 13 May 2020 14:51:50 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Subject: Re: kernelci.org transitioning to functional testing
Message-ID: <20200513125150.GA1084253@kroah.com>
References: <66aae710-1ee9-fb67-1a1b-997eeb70dc04@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <66aae710-1ee9-fb67-1a1b-997eeb70dc04@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_055152_724202_D67C6793 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: qcomlt-patches@lists.linaro.org, ulf.hansson@linaro.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 kernel-build-reports@lists.linaro.org, Tony Lindgren <tony@atomide.com>,
 vireshk@kernel.org, linux-pm@vger.kernel.org, agross@kernel.org,
 stable@vger.kernel.org, kernelci@groups.io,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 linux-next@vger.kernel.org, kernelci@baylibre.com,
 Krzysztof Kozlowski <krzk@kernel.org>, kernel@collabora.com,
 Ard Biesheuvel <ardb@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 automated-testing@lists.yoctoproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 12:13:24PM +0100, Guillaume Tucker wrote:
> As kernelci.org is expanding its functional testing
> capabilities, the concept of boot testing is now being
> deprecated.
> 
> Next Monday 18th May, the web dashboard on https://kernelci.org
> will be updated to primarily show functional test results
> rather than boot results.  The Boots tab will still be
> available until 5th June to ease the transition.
> 
> The new equivalent to boot testing is the *baseline* test suite
> which also runs sanity checks using dmesg and bootrr[1].
> 
> Boot email reports will eventually be replaced with baseline
> reports.  For those of you already familiar with the test email
> reports, they will be simplified to only show regressions with
> links to the dashboard for all the details.
> 
> Some functional tests are already being run by kernelci.org,
> results have only been shared by email so far but they will
> become visible on the web dashboard next week.  In particular:
> v4l2-compliance, i-g-t for DRM/KMS and Panfrost,
> suspend/resume...
> 
> And of course, a lot of functional test suites are in the
> process of being added: kselftest, KUnit, LTP, xfstests,
> extended i-g-t coverage and many more.
> 
> The detailed schedule is available on a GitHub issue[2].

Very cool stuff, thanks so much to everyone involved for making this
happen, it's really helpful.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
