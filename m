Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4041F757D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 10:50:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hX1XNoSQ+IyEsCpVfwl+MVKTfFe4wvQn5OlgOc6iqes=; b=ZqJQ+hK9t95ToF
	RpAreB1SdITfkEAVdQuyD1LwhgHl+bhWzrnRJgLgtZ0OVJswMU2Uj6lOVNey7MBEmnrEMLDbG7JMi
	+g0vFFJAuFcBwHNayPfvM6phvQYvlAuicuhdJ6FhxctZjNV2fpya1DJRV/ggWfdd4PpR4rkYNCLKf
	c70FuuSaDbPk/EnRyNy79SmLIHT0jSemMrtzFJm8CD3aPSF5CZC3YsBe5Hi10kjBnHQMltKIKrELY
	eCzdXoYaKHNGDa889CdgHCP/V6hg/QKtJCQ/m9ZRbIgQbD/Z1WlvOxKYfdalI0E7tuOWIwkLDkQtB
	sxx5UhcraAdeBBILF6gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjfOc-0001xu-Bp; Fri, 12 Jun 2020 08:50:42 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:32c8:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjfOU-0001xQ-OA
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 08:50:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sqBkIWUSNZ1jg18nFt7eOpYXVZqfFGVvMa6vV/F3pjI=; b=Rf4oli5+RaoXrrFVtMmM10Iq3
 08Mni1lz5he/f+6NOLQjBTBB6bnLkFzASWuIXr9YgbiTNhJjnh+o0MixuX3DuhIvNymcsZ6BKE3Gu
 q4zni/VpBwkNdFrf/PePcFYx3u+tV4zbRLEy+xwi+wZuTmPGEViWvUOMRF1JL3F/0TNKB1WAza2EU
 m1ZfBXt/jGwjnyO93JG1HtMZOvJJMglN2WwNe7M/BeqO49EgSd4qxunEvndB8nwd9YTEt3LR2t5KF
 Cc2kqXBxsudldEcWhZ89c+ZD0VHuFWt09On3XMI1gIvy1PhVMiGm544tSQTIcpt2X+fHQUxwwlogs
 Oc84L73vw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:44544)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jjfOQ-0002QB-4a; Fri, 12 Jun 2020 09:50:30 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jjfOP-00067O-Ho; Fri, 12 Jun 2020 09:50:29 +0100
Date: Fri, 12 Jun 2020 09:50:29 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v2 1/6] ARM: Use PAGE_SIZE for ELF_EXEC_PAGESIZE
Message-ID: <20200612085029.GD1551@shell.armlinux.org.uk>
References: <20200611134914.765827-1-gregory.clement@bootlin.com>
 <20200611134914.765827-2-gregory.clement@bootlin.com>
 <CAK8P3a0Rc6qd0Cb2yMNupbCP2NWRQAsEKtvEr5sZV4ANw6xfNQ@mail.gmail.com>
 <20200612083510.GB1551@shell.armlinux.org.uk>
 <CAK8P3a2BpNVSE86zEYSGd7x+OF-7spjGmU331TbQX=DRAkpMoQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2BpNVSE86zEYSGd7x+OF-7spjGmU331TbQX=DRAkpMoQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_015034_786262_EF31E87D 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 10:46:17AM +0200, Arnd Bergmann wrote:
> Correction: I was thinking of SHMLBA, not ELF_EXEC_PAGESIZE.
> SHMLBA is defined to 16KB in arch/arm/ at the moment (based on 4K
> page size), or (4 * PAGE_SIZE) on arm64, which can blow up to 256KB.
> 
> AFAICT, SHMLBA should now be defined as "min(16384, PAGE_SIZE)".

Yes, because the 16k comes from the aliasing VIPT cache to avoid
aliases.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
