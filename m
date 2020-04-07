Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1A31A0AB9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 12:03:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RT/vcNKE3z3WHTrFU99DQUhresp5HtvGr1vPi2G1gng=; b=pG5PCNnJYwuPi+
	n8hdHzIm5ZokliVyozSPaPMsMzOIFQoTpFag4VyAS75NFNYeC1S4QEGkfaR09jS3dYK8N1kzg+dO3
	fRGpHOQFOj6iUH9cWt2oPW3etGjSHCjhrHueMyfzkZ6w43U/FiqX690j2+5EOGgJO5R7XA/T1lUx1
	0iJ5Iu87gHedfX0uCIMx4Ai1aLgc88i/pw8FY3fQoBT5aKOwMKtJVagNU2B1aK0KykL+4YvnpF63O
	s0w6LWdkfWuWEtaC9xMa6EFCImHiQrGu8hBb+vQAFrcgXWQzer4VYtOVU+7JdHG/fgxH/BeaXAQDp
	lQEA/zEa8hwAWgl2bdhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLl4o-0008KN-TH; Tue, 07 Apr 2020 10:03:26 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLl4g-0007lf-GW; Tue, 07 Apr 2020 10:03:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DFNz1XFQCqB0ki2rrudESMlC1higHzCyKjV7JRMfmtI=; b=TKPdbBqchi8ItHrKkREA5fEPY
 WrhftoGdqP393vXFaanrgK4MHLbY/aGdoVqSOMJgUxM3U+7ICHKQ5jPZYZ932Qk3p0VVbNQf352RU
 6/lSNjyxQOWAfPXPWQcTVvt8zKrBGYbAU2hkPeBlvJYYXx19xn7unSSx057jloNKHqZULVOAwCG72
 2n9hQYBdG2c2Urweyl37UhA8NFN0AQMeplm2AVy3qks47f+jllFHM21fdsphHbmf00YCjjgmhLWIG
 ZULMubT3MRUoCgqO3DbzJhkeSY9FXX2eEwKhWQ1TfuPdFkxHofAbiQ2Lweoq1znSf+4K/W3UCZbWT
 G/bsSl+Zg==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:35144)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jLl2U-0007CO-1L; Tue, 07 Apr 2020 11:01:02 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jLl2S-0007DF-8f; Tue, 07 Apr 2020 11:01:00 +0100
Date: Tue, 7 Apr 2020 11:01:00 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: Trying to kexec on Allwinner A80
Message-ID: <20200407100100.GJ25745@shell.armlinux.org.uk>
References: <20200406082720.GA31279@Red>
 <20200406091600.GF25745@shell.armlinux.org.uk>
 <20200406092540.GB31279@Red>
 <20200406093729.GG25745@shell.armlinux.org.uk>
 <20200406201053.GA10931@Red>
 <20200407073117.GH25745@shell.armlinux.org.uk>
 <20200407080144.GA20773@Red>
 <20200407081257.GI25745@shell.armlinux.org.uk>
 <20200407093253.GA4630@Red>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407093253.GA4630@Red>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_030318_554912_AE2C6683 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kexec@lists.infradead.org, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, ebiederm@xmission.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 07, 2020 at 11:32:53AM +0200, Corentin Labbe wrote:
> On Tue, Apr 07, 2020 at 09:12:57AM +0100, Russell King - ARM Linux admin wrote:
> > That was not reflected in the command lines given to kexec that you
> > quoted previously, so I'm now wondering if you're giving me the full
> > information.
> > 
> > In any case, based on the information you've supplied thus far, I have
> > no further suggetsions to make.
> > 
> 
> Sorry I have added --debug after my initial mail.
> But I am surprised that no debug output like "MEMORY RANGES" is done (like I got in my first try).
> I have started to patch kexec-tools to check it, and debug is enabled.
> Furthermore, I got in locate_hole:237 memory_ranges=0.
> So the memory region in struct kexec_info is not initialized (and so cannot be printed)

The memory region information is initialised by get_memory_ranges()
in kexec/arch/arm/kexec-arm.c, which reads /proc/iomem.

That is called from my_load(), which checks that info.memory_ranges
is non-zero.  If it's zero, it errors out with "Could not get memory
layout".

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
