Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 742D8D0825
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 09:17:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7rZK1xIQBNVYQPFZsKv/aDFW6lqXwXBb6gXPIVsW9YE=; b=YtO6DGhCbgKe3y
	6NgLeLxE5sos69mizN0+DJpdOEUczeKSCx4SPV9EaENMlkuz6Ci0sD7bcJjYdVKg30sDUOiHCKCkf
	qLQ9aiwbLYdHZFie0cQElqq0CSZ4YwsyWcRIu2Dk7tJ5Ug8MJ7kc4FBDwXvO0mOWYdnMnqNRl3sof
	nSTAGKaVxIMujOG0UfZtK/Ke0fYUCziPYN3q5UUufsT8uAn0ZAv5cy3J/7oKmaq9bd6uuGs8gFGr/
	wJ886+3gZ1U+iT93eNM8vaTNF+FwIUlUnnbViEZYU2jipAqflMPXotydc4VBziWCbLBh/IfSxxcXV
	IKGYwlyyxL4Dh57dncow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI6EN-0005ZY-US; Wed, 09 Oct 2019 07:17:55 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI6EG-0005Yg-JZ
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 07:17:50 +0000
X-Originating-IP: 2.139.156.91
Received: from localhost (91.red-2-139-156.staticip.rima-tde.net
 [2.139.156.91]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 10ED3C0015;
 Wed,  9 Oct 2019 07:17:44 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Marek Behun <marek.behun@nic.cz>, Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: linux-next: Fixes tags need some work in the mvebu tree
In-Reply-To: <20191008225002.5b95efdf@nic.cz>
References: <20191009073803.633c02b5@canb.auug.org.au>
 <20191008225002.5b95efdf@nic.cz>
Date: Wed, 09 Oct 2019 09:17:44 +0200
Message-ID: <87r23ms7zb.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_001748_781500_5F27849A 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

> On Wed, 9 Oct 2019 07:38:03 +1100
> Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>
>> Hi all,
>> 
>> In commit
>> 
>>   69eea31a26da ("arm64: dts: armada-3720-turris-mox: convert usb-phy to phy-supply")
>> 
>> Fixes tag
>> 
>>   Fixes: eb6c2eb6c7fb ("usb: host: xhci-plat: Prevent an abnormally
>> 
>
> This is weird, in the patch I sent the tag ends there with ...")

Truncating the commit title was wrong and checkpatch complained about it
so I fixed on the fly, but unfortunately it was splitted in 2 lines by
my editor and I didn't notice.

It is fixed now

Gregory

>
> Marek

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
