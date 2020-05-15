Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B041D5B2C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 23:06:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eMbgftRDVtAfcS4UKrNAGwHMQUMORqODH6cFezrOJfk=; b=j6aq86MT3bEzEA
	rl7pt1eazQOE+AepcAkd3z/wwIpFecTH97TYWnfRBdt8QIS/+rcmQ5ajeYyua0ROUbREclTdqpz3R
	s+ayFuvWzKPQ4M097qAWFzVWjd3J7aJOdgWwq/g8pjCtToZreMTSj7wd5YUgM51ANx782CVkPezhP
	WhQliJxgR4nUAOKnctzyeDo1yDwlZ05lSqYRt4rjvUc7ieilwT0gDCK1mGu+/BrFgg+qIoc8dGRF9
	0OYT38eFypHLO//40Qco0K0i3gS5EZEB6WjK6mWLBEJABoP+AI/Evhg0/NpBsjSoZKfeYlYEDqrJH
	oeTROBNtPehpgQsE3b+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZhXV-0003vN-Eb; Fri, 15 May 2020 21:06:41 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZhXI-0003tH-1i; Fri, 15 May 2020 21:06:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rVW8KezM3i3HcZ5WoaIxiJ9RRMgtGJtV0/SuZwNn25U=; b=xVbecPPq9oJGttjPZ+wLz1nfl
 0Wyv5gVizqqLjk/7dSGcf05+nUTO/+vUG57jxAUcdyZSrAf/NrRiL0dovMKAXqDhv719/HOf50ieD
 6S3IJTlNoGIlQo+Mhx01Qzlt0bf00oR6z5WDhWcNorOZiSEaxOiUDpqdQNznYVH6XiCNqkvWCVxkx
 8GNzLn6CrD4aOEW7oJ/KDIxD27cge6AsPgrjclDCAeumWWbdw1+/eKFpgZjEHAMhGI66xeP3wVJ1e
 1e2YVtALC/wbMPk1YbXxb6GuSheNlok+UT6JvYteYh44uEvUoDakiiNUBEc8rQQ4Oc6e5H6KfR4w2
 XU2rHKvxQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:60910)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jZhX2-0006kl-Mb; Fri, 15 May 2020 22:06:17 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jZhX1-0001rt-5y; Fri, 15 May 2020 22:06:11 +0100
Date: Fri, 15 May 2020 22:06:11 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: kexec: arm: possible overwrite of initrd
Message-ID: <20200515210611.GS1551@shell.armlinux.org.uk>
References: <20200515135712.GA5979@Red>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515135712.GA5979@Red>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_140628_508206_C9D937B8 
X-CRM114-Status: UNSURE (   9.46  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kexec@lists.infradead.org, ebiederm@xmission.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 03:57:12PM +0200, Corentin Labbe wrote:
> Hello
> 
> Following https://lkml.org/lkml/2020/4/6/96 I was able to boot my Cubieboard4 via kexec reliabily.

You can try increasing the kernel size that kexec thinks the kernel
needs, but it should be extremely accurate with modern kexec.

--image-size $((0x01dc8154 + 0x10000))

will add 64k on top of what you currently have.  Note where the first
figure comes from (you'll find it in the debug output, see
"Resulting kernel space").

The best I can say is try playing around with that - but, kexec's
calculations should be spot on to stop the booting kernel from
overwriting the initrd.

The only way to debug that is to get the booted kernel to hexdump the
initrd so it's possible to see what happened to it.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
