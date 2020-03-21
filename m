Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E6718DCAA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 01:44:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VxKS2zdTZtWsA4k0MPvDD7vvbxvqMiW3AQDJ60mOEF0=; b=YjWnSZ5u9PMN+3
	fxZSTbLyF+GDIBvXf3AyXqq/W6hs4KXAId54W5aiZ2jdAw+Vb/5wqwXbx48uK5bG8V/GdXyXM7ivI
	eP3K5rqtWjH/OSoup9lureKXSlC/tQ1vz53HbYd1zmv+e/FVwMa+N+PilcaFaoXo82UgEcGa9/82f
	HWmwz3O5oH5KyBPnwByd8CiJ03V6pgOT5ALKYv2FK5DA6nsuIPcXdm5EWryyxMBTVZTCNX1vzeuMg
	nQYx3LV74jYGiUorP/kj8Zr5NtLMyKDdubippZ4vEQFb5iH0tPkryz4FB589oXXqaQg+ZkKOqjSaL
	Lzq0Z4yCzUGJ9TxYrsww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFSFT-00007I-QS; Sat, 21 Mar 2020 00:44:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFSFC-00005Y-TD
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 00:44:09 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6AC0D20753;
 Sat, 21 Mar 2020 00:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584751446;
 bh=ZMNS9Vcri4AEpW6rcNqodcFPTHKCyMBNpdd0Dq4G9W0=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=XSPkj0VBd9Ugt2BA+SaJplHfUGCHq092vs9sYUpML/EthYqIxQerBKgCxuAosC9Gc
 q2O48XDokrFqf164YBZcmShNXOgYY90UqaaNk46YMaUng2wp0MIvf9P8O4QnHQHTVq
 ghwVpvOD0g51NQA/AvxZ7ajulFUXVhVS+LL29kP4=
MIME-Version: 1.0
In-Reply-To: <1584661443-12032-1-git-send-email-Anson.Huang@nxp.com>
References: <1584661443-12032-1-git-send-email-Anson.Huang@nxp.com>
Subject: Re: [PATCH V2] clk: imx: clk-pllv3: Use readl_relaxed_poll_timeout()
 for PLL lock wait
From: Stephen Boyd <sboyd@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>, abel.vesa@nxp.com, festevam@gmail.com,
 gregkh@linuxfoundation.org, gustavo@embeddedor.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, mturquette@baylibre.com, s.hauer@pengutronix.de,
 shawnguo@kernel.org, tglx@linutronix.de
Date: Fri, 20 Mar 2020 17:44:05 -0700
Message-ID: <158475144559.125146.12057905431193979940@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_174406_974878_C40999AA 
X-CRM114-Status: UNSURE (   5.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Anson Huang (2020-03-19 16:44:03)
> Use readl_relaxed_poll_timeout() for PLL lock wait which can simplify the
> code a lot.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
