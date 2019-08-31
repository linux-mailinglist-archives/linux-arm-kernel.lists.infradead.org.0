Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F8DA4332
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 09:56:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ThwF1LROAvc46C6pD2fKj1+GOX3jGc5ig1byDR/tXc=; b=l68koMWSxCu18t
	C8T0m1zIFgfFE9Zqtu/Zv15shVv51c1VZ4F1GBf/AWhsUUVUVk8ahc1129EOLjBB/sB978LEgoBb6
	Mf5DircDws8YVnjZSms4P8XH19jGJOqf/197J8S+rNtljZ859hbgPEh+b+Zk98PvD4feAT7Cw7dJp
	Il5yx/hWaQ7Mmdv4H80thvw42EukbMgmJDXW9FVo9mtGdExz8Msum9FW1dtIpgOIvIQLa44SC+P/b
	2q1NZfu6aebDcbH7npY6xyfprS8MApDj1fXBAidm34aBjnhYWmKitXI0Xl71mCB5g2GMTO87KYJuK
	jQa/IcbVcdCpeP+eNnJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3yF1-00036X-K8; Sat, 31 Aug 2019 07:56:11 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3yEo-00035M-25
 for linux-arm-kernel@lists.infradead.org; Sat, 31 Aug 2019 07:55:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9jN5wCUco3ocHvvuYC+PCJTTkhAPUYJE2GF5UyMaJg4=; b=FlD7zgMBL9P4OCVGib9js6n/3
 iMr3BNp4e/fLB+Lwjf0ndFSuTY/cYUEwNeObidlMqAA9lJ1Tw9v1wn2HqcBJRSQcA42CbBLlJpKhq
 WmHHXRLZ8njAHpMuein+20PXRPC7ConXX7v7uslz3MZ6Mhi1oPMMdeQEzkOXEu2khpxDxSqiBpB6O
 l80DF0u16U10OWlY0jJgiNCLOKuZFmjjbxaiRYNQ3bA2Eim0x5GAPbuJK3iFh8o9unCLLO0KcxPgh
 x8iZIh9bT+FOg5dAqs0iM4R2/e/Yl/BpGDsbC0hUIgHZ0B/EMFnjltIZWSTwRKhJ7/+yLlm4y11n+
 AFudPoW2A==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:56048)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i3yEP-0003Py-U1; Sat, 31 Aug 2019 08:55:34 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i3yEG-0000pl-D3; Sat, 31 Aug 2019 08:55:24 +0100
Date: Sat, 31 Aug 2019 08:55:24 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Jing Xiangfeng <jingxiangfeng@huawei.com>
Subject: Re: [PATCH] arm: fix page faults in do_alignment
Message-ID: <20190831075524.GI13294@shell.armlinux.org.uk>
References: <1567171877-101949-1-git-send-email-jingxiangfeng@huawei.com>
 <20190830133522.GZ13294@shell.armlinux.org.uk>
 <5D69D239.2080908@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5D69D239.2080908@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_005558_266283_1757A847 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kstewart@linuxfoundation.org, gustavo@embeddedor.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 ebiederm@xmission.com, sakari.ailus@linux.intel.com, bhelgaas@google.com,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Aug 31, 2019 at 09:49:45AM +0800, Jing Xiangfeng wrote:
> On 2019/8/30 21:35, Russell King - ARM Linux admin wrote:
> > On Fri, Aug 30, 2019 at 09:31:17PM +0800, Jing Xiangfeng wrote:
> >> The function do_alignment can handle misaligned address for user and
> >> kernel space. If it is a userspace access, do_alignment may fail on
> >> a low-memory situation, because page faults are disabled in
> >> probe_kernel_address.
> >>
> >> Fix this by using __copy_from_user stead of probe_kernel_address.
> >>
> >> Fixes: b255188 ("ARM: fix scheduling while atomic warning in alignment handling code")
> >> Signed-off-by: Jing Xiangfeng <jingxiangfeng@huawei.com>
> > 
> > NAK.
> > 
> > The "scheduling while atomic warning in alignment handling code" is
> > caused by fixing up the page fault while trying to handle the
> > mis-alignment fault generated from an instruction in atomic context.
> 
> __might_sleep is called in the function  __get_user which lead to that bug.
> And that bug is triggered in a kernel space. Page fault can not be generated.
> Right?

Your email is now fixed?

All of get_user(), __get_user(), copy_from_user() and __copy_from_user()
_can_ cause a page fault, which might need to fetch the page from disk.
All these four functions are equivalent as far as that goes - and indeed
as are their versions that write as well.

If the page needs to come from disk, all of these functions _will_
sleep.  If they are called from an atomic context, and the page fault
handler needs to fetch data from disk, they will attempt to sleep,
which will issue a warning.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
