Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B78911F50A5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 10:58:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fVsOESIgw9hwisixy/KDifvXoq7rNIWPRzBW7IW0twM=; b=iqZkeX/PExGgMh
	ygoxcsAxoMic+mJlJJZ37G0jhd0zORnikCPyLAoBryP6yHbplJzM0yhKlCoZ4kuTPOuhQywiIzg69
	XRHTZWF084rYJ1f3CWKVWc0SEirHId7/mHZKO94JmZIAzM2oPoXuNrj6FWLiTWkIvBsNupB17BD7v
	w5idXI06pduptH7dB1uCMEBBJWhcaUy349Iv3e0EViXemyNgbuWLSwjzgLIAPO9ri4KcpJqmeIhIJ
	GBZ4tQhohNR/SoEUZCb3Ad71eN4dhu02gST7Cu22PtIJe5FtKngeFvH//+azzwwp9YeVulDaBSqkC
	KNLYTnv8aeMDlWJVwFCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiwYi-00031n-MY; Wed, 10 Jun 2020 08:58:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiwYY-00031E-5h
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 08:57:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2B5321F1;
 Wed, 10 Jun 2020 01:57:55 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.15.2])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 402AE3F73D;
 Wed, 10 Jun 2020 01:57:54 -0700 (PDT)
Date: Wed, 10 Jun 2020 09:57:46 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Jonathan Marek <jonathan@marek.ca>
Subject: Re: [PATCH] arm64: set TEXT_OFFSET to 0x0 in preparation for
 removing it entirely
Message-ID: <20200610085746.GA38107@C02TD0UTHF1T.local>
References: <CAMj1kXFS8Vvjfpb8HYzRvsaB0j7bs+2V4rXE8DzfNMJxsV3r0g@mail.gmail.com>
 <24c1529e-1c8e-6912-965a-f4b921e09d79@marek.ca>
 <CAMj1kXF-eLc0RWmjfUYAk9BJ15-A5FwnPWo0nXoyqFQa3A62Mw@mail.gmail.com>
 <63eebe9b-9aa8-addd-7965-df59b7237079@marek.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <63eebe9b-9aa8-addd-7965-df59b7237079@marek.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_015758_257925_B7D545BD 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Marc Zyngier <maz@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 09, 2020 at 08:52:42AM -0400, Jonathan Marek wrote:
> On 6/9/20 8:37 AM, Ard Biesheuvel wrote:
> > On Tue, 9 Jun 2020 at 14:35, Jonathan Marek <jonathan@marek.ca> wrote:
> > > 
> > > Hi,
> > > 
> > > Just want to add that this patch also broke booting my arm64 kernel
> > > (CONFIG_RANDOMIZE_BASE=n). This is on a recent qualcomm board.
> > 
> > Which bootloader does it use?
> 
> abl/edk2 (https://source.codeaurora.org/quic/la/abl/tianocore/edk2/tree/?h=LA.UM.8.12.r1-11700-sm8250.0)
> 
> Just looking at it quickly (I am no bootloader expert), I think this may
> have something to do with it: https://source.codeaurora.org/quic/la/abl/tianocore/edk2/tree/QcomModulePkg/QcomModulePkg.dec?h=LA.UM.8.12.r1-11700-sm8250.0#n149
> 

For others following, the relevant lines are:

| [PcdsFixedAtBuild.common]
|   # linuxloadercommon
|   gqcomtokenspaceguid.kernelloadaddress|0x00080000|uint32|0x00015000

... which means this is using the dodgy built-in Linux loader rather than
booting Linux as an EFI application. It's disappointing that's still being used. :(

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
