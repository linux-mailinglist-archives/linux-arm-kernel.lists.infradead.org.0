Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A57A27A3B4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 11:12:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DijBAE4Z3BQ7ar28NcKDfe0oGd+zFuymbWRQwkEL9BY=; b=S4Ja0xExvTM3Xs
	V13N8xH2u3krOW7rzyKgxf8NXYGt77b7aNeRwbwjbbVIOvCiKEuAOI5JHEf+1/jjjTaJi98ufM/2k
	lUswzUtl5CtSQYvGlXifnCxoFPtZTEqmDunnEhGh6uQRl/pp1a1IxzWeAFYS1RslvU9vbJX6F+Da6
	e1U2HeCdXT97fMrDMeioaV8r6PvpnDyPuvu+n1+6zKz+VT+USlE7ld4QQQ3hem4ZCvQuzcIrac7uL
	sO/0PNTLmksqgMLW6S9FXcRoGjuTqZt45MCntoejwTJygXhED9I+dQoY2gNx4zyRgbKL4RyhJKQqc
	ofLh05iIJE+a9xwVk2ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsOB1-0003il-Rj; Tue, 30 Jul 2019 09:12:12 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsOAo-0003i0-JQ
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 09:12:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9zKPAKsonWvpMgdSMUiFd8TO3k8rVwRrzWmhHX+8wME=; b=cDDiONwHIO3igW8+FjV2ACCiT
 u5q8F81CIDh/PdwAq024ZCG++Az1gqAjg0mkB0XAgeTfE72FzdTisBO4zbogA4FdKJCA+MplxSQNs
 X+XAWwlp3iFNMzC0N/1/iUfunbliL3MMIBMntyOraKNna2sPCSWz+yU2Zh3+eiLSGl8Vy8WCbfDu2
 JQ/J+uiyX8VtgI/WBNdjH4Gvk2FlhY9h3tdrl6MLbHOTX8ixxehtMGrNuQwAvFMROlfm0Yonljndo
 ZKHts/3yaM5ixTi/j4Hyxrtniiaj9uR73dnTyxsKDpmxTZ30eRHi3IA5LgDonXJcKz35FGMnAO7x5
 78Y52LA1w==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:50456)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hsOAe-0004Ap-R6; Tue, 30 Jul 2019 10:11:48 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hsOAa-000261-2d; Tue, 30 Jul 2019 10:11:44 +0100
Date: Tue, 30 Jul 2019 10:11:44 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Julien Thierry <julien.thierry@arm.com>
Subject: Re: [PATCH v4 9/9] arm_pmu: Use NMIs for PMU
Message-ID: <20190730091143.GX1330@shell.armlinux.org.uk>
References: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
 <1563351432-55652-10-git-send-email-julien.thierry@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563351432-55652-10-git-send-email-julien.thierry@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_021158_787274_A2FCE0DB 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, peterz@infradead.org, liwei391@huawei.com,
 will.deacon@arm.com, acme@kernel.org, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, namhyung@kernel.org, sthotton@marvell.com, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 09:17:12AM +0100, Julien Thierry wrote:
> Add required PMU interrupt operations for NMIs. Request interrupt lines as
> NMIs when possible, otherwise fall back to normal interrupts.
> 
> Signed-off-by: Julien Thierry <julien.thierry@arm.com>
> Tested-by: Shijith Thotton <sthotton@marvell.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>

This has no effect on 32-bit ARM?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
