Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B3F10599
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 08:45:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TY15aSaA8Qw1UXSJTlFTdPf/tQK0cPfGmgoFZC/s2lA=; b=cOIoC04dcsKOdf
	huJvHVxbJNuYtsPAw+DwqIYRAlFNdp5hFngLkEGRjtWaysfxNX1AEFJJ6JiuzSVl66oDbzwz4+OnC
	5UY20zR4Vy7Ae3mOqUiSe8ZLWvVBSrK98Pi+PoSnvSA6Ev8xHWfC/CpAJfXR91toIiwoPTu3bMsrs
	VOdz0TOCWNljErmG2hj4h9XmCyfvXXRRlV6RTXCvQebwlXyE/sifV47QUnB//N/3fYceNw/dRnPud
	+ijIik5MEO9/kuRgAGt4OfAHWlurw0m9JEFxDQSv1XdnFHx061uQXGfIEiLiKu188Tno5S/3f+HFl
	/hdOHnz0G7zzzL5RvGZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLizR-0003lg-3f; Wed, 01 May 2019 06:45:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLizK-0002rI-Ji
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 06:45:07 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BAD6920651;
 Wed,  1 May 2019 06:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556693104;
 bh=zSQyJXYEzJbwz+ZrGQYkRZ+BmF0JOB9TUf4M8D0kTPk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=R78rUUaILBs4zPfIzHECy3LSHnmS8twK2vndMD6FgCnljFexsHGWNcM5HQforE769
 aoitIA8d6kWE11+5/Se19N9SpRiWEHn5hSFxXq93ohaCsnZ+OuGZpUc0ItXxXeWasJ
 +S0L1s/uBoC62Jq7g7b18xRDAc8ke8QCYqCElF1s=
Date: Wed, 1 May 2019 08:45:02 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH v2] misc: aspeed-lpc-ctrl: make parameter optional
Message-ID: <20190501064501.GA20816@kroah.com>
References: <20190116220154.1026171-1-vijaykhemka@fb.com>
 <1547787502.2061444.1637712576.1F1E21B4@webmail.messagingengine.com>
 <DCD8D2E5-DB18-427C-AA8F-18289E9AB0AB@fb.com>
 <CACPK8Xdgv1YVgeykf0grSpR3LXTGa45hoBwZVq+zWgR0anhmTg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACPK8Xdgv1YVgeykf0grSpR3LXTGa45hoBwZVq+zWgR0anhmTg@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_234506_671369_E8D9C039 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Arnd Bergmann <arnd@arndb.de>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Andrew Jeffery <andrew@aj.id.au>,
 "openbmc @ lists . ozlabs . org" <openbmc@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Vijay Khemka <vijaykhemka@fb.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 01, 2019 at 05:55:07AM +0000, Joel Stanley wrote:
> On Fri, 18 Jan 2019 at 20:12, Vijay Khemka <vijaykhemka@fb.com> wrote:
> >
> > Hi Andrew,
> > Thanks for this review, I will have a follow up patch for this return values.
> 
> Did you send a follow up patch to fix the return values?
> 
> Greg, is there any reason why you did not merge this one? 5.2 will
> have device trees that depend on this patch's behavior.

No idea, if it needs to be applied, please resend.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
