Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA021EFBF4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 16:56:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wtte9cdTIBcw2ZXm312R0U/V+2jxtO+S/rlr4r5ievs=; b=TT1ny3BhqVzCze
	d9QqUpFDne+ndtgnJ8tyy5GlEa5V8gs6TwrsyHrHXWJsH81zw8+sLIFlEGIbjUE2y5GkW/GwagKSC
	sPpwTFQX7939dWNrV5memn59afU9A3XbRw3DTy9R+iKY8nUlui9FsAJUjaU68WZ3S7Ut/y6HGUWwu
	UM5MXDqfQdwMKWztLGEe3+RCBGdyQhLRmjUg4bfTafKs09kPnQbVlaDt07qM2sspI+gHe8fNdm8dg
	SkPFGPuIZNR/Nyqb4MXFOq7TKkGweVfZcET/3WglIqsVPF+K3bjHHstDB/DTIzf8nlOSBvD73c7VB
	m4WolcPs7TQGxw7h+/vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhDlm-0004vM-MF; Fri, 05 Jun 2020 14:56:30 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhDlf-0004uQ-3Y
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 14:56:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WSnkHXfuDDSCVJZVApP+aQ8Ma5VVdPHq0ZMhO/z8y4c=; b=GNCuMd1lGyPC21rxPdRB9Xu7O
 rlpqfOJFXqf0md6YX5LUtiBUYidWQHENnl+LiGP2JT2ig9p7OtsMEeKlMZop/d/y+5st68Xmqf4jN
 j2fLj8i2pESLYJHO7KWe7gnOzNCLoSUnwy/rfsOXCKXqC0XEYs7nMgRYYvt7v1OmNJGSqPcXJWsCv
 3i/4J+BXJBDvaM4fS3AlzXd1VPEw2+Y0ctlUXh7Pk/z4Y6JBRFk1aGp0/cjSgzRbZhVwha+CaOIc7
 Mh535zSBIH4RTlXy21TvhZ2S3hDDu64OP4SmL2dk9/s9Wl4Ew8j4wCu3cDSqLH4Ptup6/LlUay5RO
 rbky0HFVw==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:39224)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jhDlV-0002Nf-UU; Fri, 05 Jun 2020 15:56:14 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jhDlV-0007YG-68; Fri, 05 Jun 2020 15:56:13 +0100
Date: Fri, 5 Jun 2020 15:56:13 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: Re: [PATCH] efi/arm: decompressor: deal with HYP mode boot gracefully
Message-ID: <20200605145612.GJ1551@shell.armlinux.org.uk>
References: <20200605115200.413921-1-ardb@kernel.org>
 <4498d910-f5cb-8559-afba-34710e9ca730@gmx.de>
 <CAMj1kXHS8AVczRPzySgzkkztD0yT1MXnCyMwmOt=ihZ9Bvo0vQ@mail.gmail.com>
 <589478fe-14a6-a921-3fdf-ae527e14b945@gmx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <589478fe-14a6-a921-3fdf-ae527e14b945@gmx.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_075623_143982_93BC1AD6 
X-CRM114-Status: UNSURE (   6.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Marc Zyngier <maz@kernel.org>, linux-efi <linux-efi@vger.kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 05, 2020 at 04:53:08PM +0200, Heinrich Schuchardt wrote:
> Hello Ard,
> 
> I have no board that prints this. Where did you actually see this output?

Note that the decompressor messages do not form part of the kernel
dmesg log.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
