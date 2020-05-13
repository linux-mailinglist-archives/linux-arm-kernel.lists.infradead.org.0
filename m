Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4AA1D10CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 13:13:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PnSf6zIVP4hQOIU44jctUZpR/Z2lDg8u5JcOdzY1OHE=; b=T831kz3mMfhF52
	L/Pinbpg/ZCVZaJruDI0MAJWiy4TWBcJ3prs/C7XoDbeBamL04bKCjADyJuU5lcF5uzhmtcXVDx3Q
	5wzUavXQo7vFoOKfSTQvP/JeMyFN6zWP4oGNWo13b1nWMPXe1wSm0GSnuwS+J/Vq7FNy6M5j3PztL
	AaeWQchMn05Cgbuxy8EvA2cKzrcLrHfrIM0a0qoZDzKjilXWp6EqMkHbCTTO/P4GQmXp/qkaUA+Gx
	Th21f8u6IWqUBAl6USDysw+ZYhH8tay7fw3IcRqUJSADa6LIVxWlxr4wC+VeZqaIb1GABL5dWLtV6
	S6IfrPnnaERXHP6yyQyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYpKU-0004e2-7c; Wed, 13 May 2020 11:13:38 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYpKN-0004cs-04
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 11:13:32 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gtucker) with ESMTPSA id BFAF72711FF
To: kernelci@groups.io, kernel-build-reports@lists.linaro.org,
 automated-testing@lists.yoctoproject.org, linux-next@vger.kernel.org,
 stable@vger.kernel.org, Ard Biesheuvel <ardb@kernel.org>, agross@kernel.org,
 qcomlt-patches@lists.linaro.org,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 Tony Lindgren <tony@atomide.com>, ulf.hansson@linaro.org,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, linux-pm@vger.kernel.org,
 vireshk@kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 kernel@collabora.com, kernelci@baylibre.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Subject: kernelci.org transitioning to functional testing
Message-ID: <66aae710-1ee9-fb67-1a1b-997eeb70dc04@collabora.com>
Date: Wed, 13 May 2020 12:13:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_041331_165594_87DF5975 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As kernelci.org is expanding its functional testing
capabilities, the concept of boot testing is now being
deprecated.

Next Monday 18th May, the web dashboard on https://kernelci.org
will be updated to primarily show functional test results
rather than boot results.  The Boots tab will still be
available until 5th June to ease the transition.

The new equivalent to boot testing is the *baseline* test suite
which also runs sanity checks using dmesg and bootrr[1].

Boot email reports will eventually be replaced with baseline
reports.  For those of you already familiar with the test email
reports, they will be simplified to only show regressions with
links to the dashboard for all the details.

Some functional tests are already being run by kernelci.org,
results have only been shared by email so far but they will
become visible on the web dashboard next week.  In particular:
v4l2-compliance, i-g-t for DRM/KMS and Panfrost,
suspend/resume...

And of course, a lot of functional test suites are in the
process of being added: kselftest, KUnit, LTP, xfstests,
extended i-g-t coverage and many more.

The detailed schedule is available on a GitHub issue[2].

Please let us know if you have any questions, comments or
concerns either in this thread, on kernelci@groups.io or IRC
#kernelci on Freenode.

Stay tuned!

Thanks,
Guillaume


[1] bootrr: https://github.com/kernelci/bootrr
[2] schedule: https://github.com/kernelci/kernelci-backend/issues/238


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
