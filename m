Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D1E1B8948
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 22:15:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q/e3o85mn+35vWTg/c4KbqyMU4fvgHWlyJVh/qiv+Sg=; b=Bl0rZGNJQnAIV0
	Muj6xhjqAVMyzLElBG0cmGI6+2Y+hMBAm7iFmiv0zyosKEPjrjpelWL3C8rn/oLYzx58kSaU2NnNr
	3CX4OQ5abkM7TzVTMW8YUQF/CJbswybX37BHKbuOQ7H3pDHALDBIJf9o5jp8gaWTeCUv4KijUvQao
	F8fFswZT913Ed/9XU1DAlU4IswB7Dbi3pMdknk7T5t7MYnMOAYIETTou4OlKFRUh8lcrbdIhDH2BD
	ykCIkZdhTdQtcGnuKTBM3SwkjVb+9Au9IZQA34fOSPwhdhGp6OI/Nssmu49pGrC09CbVqe30cSsgG
	5jWtqatzVccTrD83WFFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSRCq-00074N-3m; Sat, 25 Apr 2020 20:15:20 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSRCQ-00073A-KT
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Apr 2020 20:14:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=whoQ3rtLv5DYp0YtA/C7dltUbFiOl/pC0KerLB/75Z8=; b=2xSlTqVdo/H0AHJCkwzWFfABl9
 8eFcRpe3sW+MCeck3ZjMbnYYHfjIvj7t8UcJ+5OsQvyV3PCP4P3cqAKlE+6qWSwUrQ0bLwHzDir9l
 S9f45E8bW0MoDhlfQOKPElbysiIMGh240RkgnQ7CAuLIW0pppVJGyPmclCZ0BvByr5lw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jSRCN-004o7N-JE; Sat, 25 Apr 2020 22:14:51 +0200
Date: Sat, 25 Apr 2020 22:14:51 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: "Brian J. Tarricone" <brian@tarricone.org>
Subject: Re: [PATCH] ARM: dts: kirkwood: ReadyNAS NV+v2: Add LCD panel
Message-ID: <20200425201451.GG1088354@lunn.ch>
References: <20200425142736.GC1095011@lunn.ch>
 <20200425192820.2499185-1-brian@tarricone.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200425192820.2499185-1-brian@tarricone.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_131454_671697_7DD6BDD4 
X-CRM114-Status: UNSURE (   7.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: gregory.clement@bootlin.com, jason@lakedaemon.net,
 linux-arm-kernel@lists.infradead.org, sebastian.hesselbarth@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 25, 2020 at 12:28:20PM -0700, Brian J. Tarricone wrote:
> The NV+ v2 has a WH1602 LCD panel (which is just a rebranded HD44780),
> similar to the Netgear RN104, just with different GPIO assignments.
> 
> Signed-off-by: Brian J. Tarricone <brian@tarricone.org>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

Hi Brian

FYI: Since this is the second version, the Subject: should be:

[PATCH v2] ARM: dts: kirkwood: ReadyNAS NV+v2: Add LCD panel

It helps us keep track of which is the last version and so should be
merged. No need to repost, but please try to remember for future
patches you submit.

Thanks

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
