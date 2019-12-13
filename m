Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8976A11DBAF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 02:30:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BARey/QTvAL7S1+QGPDYxpFLKjqahx+hI72eHHJ0fbc=; b=UyxcZGRGftPk+z
	xPGoiJZdL6ctcLkEWCm5KkyEG1H9wk91fGO+xZ6bUnIRPG+fkgQo9hFCYrLccmYI/k+O3H1dZ/Y/8
	UQJOACZ/1CYk8o+1dgVIgL6PCKtt+UOEt6wsegQHVIFxZ+SxiNNN7tZUODVR7+NUKLaKEy/cl2Op4
	3DhkZxslgA4qFp3w+qjM5MRokJnSgJw21yy47bXgbEKD/Fnm4A1UrGGjVc+eICOHhsbYMzDzqSCFS
	uSgFnCZu1LJz7ZWki1nMiibJic5WvP8RtmGUaQgYv84z7EwFIUTzqOK2FPV8yN0hb7x4FdeVC9rUX
	PYim+pGyfdAb5Cr6h2ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifZn2-0004Wn-84; Fri, 13 Dec 2019 01:30:44 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifZmt-0004Vf-MP
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 01:30:37 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id F2E50816;
 Thu, 12 Dec 2019 20:30:28 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Thu, 12 Dec 2019 20:30:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=kIQjHdVLE1/fU9KLKVqg1kUSU55z6qa
 RkOCmaNZ7BcM=; b=SoJQ5xHvi3TecnC2YnRQVyS8fHZ9HwNhk6t6bDtxOvFj1fa
 4xH0M+JjI6BGsABRedlcfWLu2SPCvrLL9bYFLYlSfxVDrsW1RJRUu5kgGtx94b2E
 q8OCbmI3eCk+HtRHALdZOuzKWmN0wq6cHb31AFq0OGxCwuAUCrwH3EKEFEGpm8Ax
 jgpQdNCj1s2wXnx/hl5JyjwihPnxmNDbsBPcqOgYdo8RvleY4PB6jdLbREFFmfN9
 wmzCrFFygtUhv+6CW6PChNfIoHYMCNAwe8QF5blsXjZuvHDBrqDnT4c/A19XTolg
 dT4JR1PxTvDMXZWNVTv+qWsnOtC7IknaaLhp6ig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=kIQjHd
 VLE1/fU9KLKVqg1kUSU55z6qaRkOCmaNZ7BcM=; b=oc+XOCz9hlr/DOd2zlvukv
 U0Licj/xRjpzT8oaccVAWiWCQ23NZ4jGRvhiXRZUvdwWVEXxd0QDYUjVenh6vj/7
 nup1Tmp/yTzFenX7zuuMPOnqpcetaGGPwcVmMaDGScTtscKOmCYqInqTNZqP2zfh
 rF7TgQH7JVNr3tlGprHOVfSzYiRQSizIF9Cm9GHXU4pHvN+KjDn9cKrLgddLxGUR
 8aRgJngKLJhwtLH663kKAJr7cQokmq/kqazL7u9fVv2o9w/RCq8wMP/fZ7E0w6wr
 9CA4ocXRyJA3LYQa6mFprFUbgQR85GZBKI+T+EZ5ejajuTUeAbMUMC/ZiHFFS/Bg
 ==
X-ME-Sender: <xms:sunyXdExu8xTM5B38nRS1bCN5Z15PXqo3hXfKkXXe8AmYeN05gt4qQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudelkedgfeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:sunyXXcSxg4dgH-B0kWwKeSVBRadjgvRAPWCagmcKt0fLHcBk4_sLA>
 <xmx:sunyXWbQUcYVk3SvFPvRGO6bqpOqNezIuw_MW1-fAUvsiwUUVEbh0g>
 <xmx:sunyXapAx4F9qjVqSOiMKR330kZAcK0jxMIHppW06AwZZd0dudQzwA>
 <xmx:tOnyXSu_o_4JZC6f6T3E_sP3_KtRV98RBlold90e-Z-jZKy2_kiNug>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 34C75E00A2; Thu, 12 Dec 2019 20:30:26 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-680-g58d4e90-fmstable-20191213v1
Mime-Version: 1.0
Message-Id: <274285bd-1304-4e35-945a-90c9aecd119b@www.fastmail.com>
In-Reply-To: <20191213000657.931618-5-dima@arista.com>
References: <20191213000657.931618-1-dima@arista.com>
 <20191213000657.931618-5-dima@arista.com>
Date: Fri, 13 Dec 2019 12:02:05 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Dmitry Safonov" <dima@arista.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 04/58] tty/serial: Migrate aspeed_vuart to use has_sysrq
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_173035_775609_9970832A 
X-CRM114-Status: UNSURE (   6.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vasiliy Khoruzhick <vasilykh@arista.com>, linux-aspeed@lists.ozlabs.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Joel Stanley <joel@jms.id.au>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Fri, 13 Dec 2019, at 10:36, Dmitry Safonov wrote:
> The SUPPORT_SYSRQ ifdeffery is not nice as:
> - May create misunderstanding about sizeof(struct uart_port) between
>   different objects
> - Prevents moving functions from serial_core.h
> - Reduces readability (well, it's ifdeffery - it's hard to follow)
> 
> In order to remove SUPPORT_SYSRQ, has_sysrq variable has been added.
> Initialise it in driver's probe and remove ifdeffery.
> 
> Cc: Andrew Jeffery <andrew@aj.id.au>
> Cc: Joel Stanley <joel@jms.id.au>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-aspeed@lists.ozlabs.org
> Signed-off-by: Dmitry Safonov <dima@arista.com>

Acked-by: Andrew Jeffery <andrew@aj.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
