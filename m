Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1833D62EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 14:49:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MnKUQWyivgVfZsGlFd4TWORWQpIyLG6aLfci64nXP3Q=; b=sYxS6I3Z1rO30k
	8gxz1WJNzZGHopElpD1+McFrd8IV6ngaT3Pp/+kjluR5tc8QmMrMxFFAftbqc5IdYWsKf4nSfcT3h
	eNCJ2UVOb4x+nEm4LnV3ycIEU/yIf2Hn4lDDKbiJxWk2N0YjzQIrd4ZljNYAEJ22UOOiUhMl9TXSj
	fF3R/J3Zm6y0LZWL5WV9GZ/4llsmW/uPCaOUZ9nvxY4+pdXIIQIqQLxqQyjrBwOREC6V4kJIj/ZA+
	iBuzsqtiXcO8dZ5cxbU/dTgFIkZcLyG/6mmc4eSoqz4B1cj30Hu0yGGZ0Zc7m2p/JL5okq9quLBvO
	+Ec8r0MHcC7qw0Kr80qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJzmn-0006ge-3a; Mon, 14 Oct 2019 12:49:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzme-0006g5-Pb
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 12:49:10 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2ACAA20673;
 Mon, 14 Oct 2019 12:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571057348;
 bh=Mv+8RO/f9Lckl8079OLG7AxGYv4LcZhS1BTN4z7pAHo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XYn4a3dbfskzkrK+eqCKKlfM4wJxeu4Xrk1wI3mV16iOpq5BueEQiQj5oE0N6Ele3
 O99IGZZ9048NUm3wrvuTdSypEyHjHfR5dEfzEQtIQSPS/cjsVgkaXmu8T9CF+ZjRBo
 u2JudmZ+VpmnYmUHgQrkIi4fQVRkunQYxHEpPXVg=
Date: Mon, 14 Oct 2019 20:48:51 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2] firmware: imx: Skip return value check for some
 special SCU firmware APIs
Message-ID: <20191014124849.GR12262@dragon>
References: <1570410959-32563-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570410959-32563-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_054908_851636_27E489C3 
X-CRM114-Status: UNSURE (   7.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: aisheng.dong@nxp.com, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 Linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 07, 2019 at 09:15:59AM +0800, Anson Huang wrote:
> The SCU firmware does NOT always have return value stored in message
> header's function element even the API has response data, those special
> APIs are defined as void function in SCU firmware, so they should be
> treated as return success always.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
