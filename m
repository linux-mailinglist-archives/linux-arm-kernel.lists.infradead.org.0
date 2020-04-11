Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 913BA1A5369
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 20:41:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1qQqvcdvXBPn8R7MsFNdp26aIGNO2ZigR+gt4iGD5WM=; b=eCkpLro2pwUmL9
	tHkvuseL8L6YsE/X/aB3hNpLQarmdGrlmzBqaazA4W/W5ZtYbmJX3pBgg0bDZ2AlYl/8eV+jRKhXt
	ArKlv1iWKdqIBVxElev869dyCZh8qRRw4W92h5R3UP9Gjh4rmxDxXYlMsy5tSwmD1BpESYijpQ+30
	8bjMbfB8h3I9NJny9HMA/6UJk67cViLYmQXiqgTlN4lPtGIWgU9FFJuTc7fAyRaaX6BGZCMyHp5p+
	8eu3mmC2cef1b4mjqLttgQJ3wI4JkNbRRkvYX6dfv/AiWFBWoR78/Rx5tB8qkylGEICvMsPiCoq4w
	gn0Rx6tCaAAfbobrCJSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNL4G-00032u-HG; Sat, 11 Apr 2020 18:41:24 +0000
Received: from mail.skyhub.de ([5.9.137.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNL48-00031z-KK; Sat, 11 Apr 2020 18:41:18 +0000
Received: from zn.tnic (p200300EC2F1EE200B53534244D96C31E.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f1e:e200:b535:3424:4d96:c31e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 57E7B1EC0CC5;
 Sat, 11 Apr 2020 20:41:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1586630467;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=79SuGIhtfZH4AVqTBicnM2HnJJujV/UZuU+29Y4r+D0=;
 b=aVtlaW0y0wdDjE3pYEMBPnZDohg3ynnwv3dcVJ1I9mtiaLlV6bk0h7tr83V1cZ8NY4Wn73
 HQBj/E8z3vpAQxCyAl3r9i4B24Ea0cbJIQItbnOxBca2xtPHpO6VJu15jK0Em1Nm2xFrRy
 CqTtHoUiU5dic0cUPEtZhoKzomTssRI=
Date: Sat, 11 Apr 2020 20:41:01 +0200
From: Borislav Petkov <bp@alien8.de>
To: Leon Romanovsky <leon@kernel.org>
Subject: Re: [PATCH] net/3com/3c515: Fix MODULE_ARCH_VERMAGIC redefinition
Message-ID: <20200411184101.GB11128@zn.tnic>
References: <20200224085311.460338-1-leon@kernel.org>
 <20200224085311.460338-4-leon@kernel.org>
 <20200411155623.GA22175@zn.tnic> <20200411161156.GA200683@unreal>
 <20200411173504.GA11128@zn.tnic> <20200411181015.GC200683@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200411181015.GC200683@unreal>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_114116_820652_AE112BD0 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [5.9.137.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Thor Thayer <thor.thayer@linux.intel.com>, Heiko Stuebner <heiko@sntech.de>,
 Igor Russkikh <irusskikh@marvell.com>, Andreas Larsson <andreas@gaisler.com>,
 Chris Snook <chris.snook@gmail.com>, David Dillow <dave@thedillows.org>,
 Jes Sorensen <jes@trained-monkey.org>,
 Iyappan Subramanian <iyappan@os.amperecomputing.com>,
 Quan Nguyen <quan@os.amperecomputing.com>, linux-acenic@sunsite.dk,
 Andy Gospodarek <andy@greyhouse.net>, Arthur Kiyanovski <akiyano@amazon.com>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Lino Sanfilippo <LinoSanfilippo@gmx.de>, Veaceslav Falico <vfalico@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Tom Lendacky <thomas.lendacky@amd.com>,
 Jay Cliburn <jcliburn@gmail.com>, Jay Vosburgh <j.vosburgh@gmail.com>,
 Keyur Chudgar <keyur@os.amperecomputing.com>,
 Maxime Ripard <mripard@kernel.org>, Don Fry <pcnet32@frontier.com>,
 nios2-dev@lists.rocketboards.org, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ion Badulescu <ionut@badula.org>, Netanel Belgazal <netanel@amazon.com>,
 Mark Einon <mark.einon@gmail.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 11, 2020 at 09:10:15PM +0300, Leon Romanovsky wrote:
> I want to think that it was an outcome of some 0-day kbuild report,
> but I am not sure about that anymore [1].

I pushed it here:

https://git.kernel.org/pub/scm/linux/kernel/git/bp/bp.git/log/?h=rc0%2b0-3c

The 0day bot will send me a mail soon. :)

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
