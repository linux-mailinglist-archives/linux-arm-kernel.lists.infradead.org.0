Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABDB6E70D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 12:53:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9kjK5V2evHJXWMKuEh+gQpyWu5rbmRX/r3dBvbcMLDk=; b=YwJJqwDabaUAnE
	5Kl/4GFGDtR6xDKnDhIYJsJ20jJuLNqVkJpE7BXkPkeh5n20m4zeXMoOJIukLXMCExEyoctcbmNOB
	/2K7rFb34gVPruv4+5VpaLdw6p/GerTro0mA0Hazc6V25tn/by+PfB6IxR8iI/Dgh+bHGmICBcTfp
	vFN99PLx0GBPv21jz6iS0acski3duJVzHkFFFgRLrjZOtSaviLhnTd+6qgEPMaNt46gq8F5T03szK
	PE/999MaAZeITm319H5VO+CEkcqGza05pBq9ozh6PulrtIHoA+ckZ6Z54lyQCYpCPDL/HCipcOWnI
	YSSm1cDoG/TCyowDryAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP3aL-0007j5-Io; Mon, 28 Oct 2019 11:53:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP3Zx-0007al-Q3
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 11:52:59 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4BEB1214D9;
 Mon, 28 Oct 2019 11:52:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572263577;
 bh=8hJIjJ+E1m4Pah5tqGcOg9p22uWWbGt4oxsXkgRt41c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1O2hMHl5Eb6yDgwV6YAT1XyKM9RjSxMVU1knnHxtWZR1B7oVbkc1B7CmbmrXHVDm3
 l0zcoTxLtYU9MZmUNcijVKBvHXa7nhKJgxKv50L/4HaXvoAkpnAfHyIEgVzgDhDOvi
 EfeObR+r6I0GjvN/r8qlqZQ7gI89UZBF+j4SP7RM=
Date: Mon, 28 Oct 2019 19:52:35 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH trivial] ARM: dts: imx53: Spelling
 s/configration/configuration/
Message-ID: <20191028115233.GF16985@dragon>
References: <20191024144443.27761-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024144443.27761-1-geert+renesas@glider.be>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_045257_916872_B9094E9A 
X-CRM114-Status: UNSURE (   8.43  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jiri Kosina <trivial@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 04:44:43PM +0200, Geert Uytterhoeven wrote:
> Fix misspelling of "configuration".
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
