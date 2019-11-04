Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 172A4ED9D8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 08:13:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NJaejqJEAmRB/z4CYk7dWHJa//G1bE/vIMlNFXRBapo=; b=PYjy6xSN8d7yNp
	PIEgMwGwVWa43U2nQsPkvKl8XGJDWVYTQmdcs98JCHrWMabbfAzRRiqNwIc4Ld9WwkhOyvEwtNVwA
	IK5VDW7UTejnBaTAIxbWr3MVeDGWQ9NwJcJTS66bOfqAm6zoAz1EX087WBe8iO8Fx+Vhv1Hdw0fCE
	THfb8REWsqk6SxuPkumWsgLIYDvoEATvTh2rSYPjczrK2zzAGp7b2bSL5uK0LLlw4M1fkVn7T8M2M
	qXKvzvpC3DbaBNS+Kpfqco1/lY96z9aw0bTKT3b9LMNG5KLamK/Lw4snFYzFdi5dsII5E/yybmkSg
	m5B3jyV/rzWxZ1a+Sj5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRWYD-0002El-Co; Mon, 04 Nov 2019 07:13:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRWY4-0002ER-Dq
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 07:13:13 +0000
Received: from dragon (li1038-30.members.linode.com [45.33.96.30])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 37F972246B;
 Mon,  4 Nov 2019 07:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572851592;
 bh=PUZlYyRfp7VLleoO5rYz57MWxQ23BjnYX9C48ulSL18=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=g7ulFqYkB63FBPpe3qRveqKg5fbWwd80zNx1XZFes9UNNsPdt42itvnULWlLK8mW3
 nO+pDq80lu4yndN6dIXWT7U2ErnaJDR8re8rLXHsgyr4XeDrrmpkBPEpO3h4u/EenA
 mt6Alp1Li8YlaEX7+1tjvwzQfeym9Ufe43yNFXUI=
Date: Mon, 4 Nov 2019 15:12:48 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH] arm64: dts: zii-ultra: fix ARM regulator GPIO handle
Message-ID: <20191104071247.GO24620@dragon>
References: <20191030164623.1902-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030164623.1902-1-l.stach@pengutronix.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_231312_484194_4FD064FB 
X-CRM114-Status: UNSURE (   8.94  )
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
Cc: kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 05:46:23PM +0100, Lucas Stach wrote:
> The GPIO handle is referencing the wrong GPIO, so the voltage did not
> actually change as intended. The pinmux is already correct, so just
> correct the GPIO number.
> 
> Fixes: 4a13b3bec3b4 (arm64: dts: imx: add Zii Ultra board support)
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
