Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 370DCD76C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 14:46:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/FjctzA3WOgDJdIgmCfuKuuvr9g7N3vL20pROBJX9/c=; b=JnlGk5CTBV/ARc
	/o++H0rcrZ7sOZt2JcFkon5J/rkb/NcAmgdy6qgYQ0xZ985xrKUwxjm9oOT9nhj8FE8j8aMUDR0GR
	G7sh7DJ50kO5kWXTWBrs4nI/Wwo4tu6g3zbAv/JgkoWmeA54w5We6sI8lJiFMaA8hr1DWQzx8+dwA
	eNSuVZ+J0deCRn0Xln2FW9fexWkiPCumGR4uUhvNVgSk+OkvHHiBlWAXmKeKBmlamS6DJ79XTOf/8
	849NrJf2ALI98OFD6ssSqjhJ0onVycmThkUgGAX8Mm/3fQqlPf9fxtQpP45uNVOYly5RQgfnVpmq9
	pZ9y9yPJ4oc9NUyr7XtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKMDm-00012c-DA; Tue, 15 Oct 2019 12:46:38 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKMDR-00011U-8y; Tue, 15 Oct 2019 12:46:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=b2LRs80sHHO7zZUl0AfSjYwW3Hi4C/5CNclgj3JOiPA=; b=bFV+qOV07XIH0lPG/8Rfjy7U7R
 PHSaWtAJ+XyNSMkQ5XmSlVrynmoF9j85RLi+hyTheM5nxUduI8AsOJ3HgWmUNb8HmzHFTx2am6Vn3
 nbVwgjHZJnLEGKjE02ZKAV6XC+vIKiP3mfY2nv4SbaqUspAv03IqPct4ENF5kkdM+xpE=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1iKB5b-0007Dr-Uv; Tue, 15 Oct 2019 02:53:27 +0200
Date: Tue, 15 Oct 2019 02:53:27 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Daniel Wagner <dwagner@suse.de>
Subject: Re: lan78xx and phy_state_machine
Message-ID: <20191015005327.GJ19861@lunn.ch>
References: <20191014140604.iddhmg5ckqhzlbkw@beryllium.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014140604.iddhmg5ckqhzlbkw@beryllium.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_054619_615955_1178E878 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 04:06:04PM +0200, Daniel Wagner wrote:
> Hi,
> 
> I've trying to boot a RPi 3 Model B+ in 64 bit mode. While I can get
> my configuratin booting with v5.2.20, the current kernel v5.3.6 hangs
> when initializing the eth interface.
> 
> Is this a know issue? Some configuration issues?

Hi Daniel

Please could you add a WARN_ON(1); in phy_queue_state_machine() and
post the stack dump. That might help us figure out what is going on.

     Thanks
	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
