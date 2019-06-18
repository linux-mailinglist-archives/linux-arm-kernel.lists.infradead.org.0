Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C534A241
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 15:33:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k/eQt3Druz29sEVcuU9nOrVYmcZ62N+YWenI+vg4d5E=; b=B2uv+/L/930VyN
	hJ5px0P5LeSUg3+2vTrotH8cxcBZXUOkfAtkVOhqg/eqsx6Exy0OVlwwLC1uEOsFvH8GqIfOGrMxd
	n067w/yEOQmCtKIuyq1Jx9jgOX3J3+1RhPolfsptb+UX2hSbt/nCjcWS0j4phKzZtjACf9Yd9ONsg
	1XV72S0DhzEJQf6rEF8cPcQz9n0NFb82kW6p3N775ebwLSUK8gnAQWzs5oKiZ2f0irL5jc24uy2MO
	hvtPmWfcAEu/058OY4mJ9y3QjFA89fknTZuIx9ifGAFPfwGJtIYdvxjjaTHVSCBMKqnajGoP0nJLV
	49+2fTy8i03WzAOp5CBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdEEn-0006PY-47; Tue, 18 Jun 2019 13:33:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdE9h-0001O8-Im
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 13:28:11 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7B1342085A;
 Tue, 18 Jun 2019 13:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560864489;
 bh=RDwm7cqlA7kxiru7hO8Sr4amKpAdU9f3OR/1UMtFrWo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WVSSL5HK1R3vnjfDctoFE3waIkcb/NhczSYPrD/DsZS0GN4oufPLVigDpVDVaGrRU
 aUUuDUkz6EziUmDzVB7/8cd/5G2msenFLrxZ+YN+xZAyRrzfg9STDzluMt1B4f0LP6
 HWE2pCLJddjYTAIbOGzMlffWuB1A+KLHYfOjjP1M=
Date: Tue, 18 Jun 2019 21:27:14 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH RESEND V2] soc: imx8: Use existing of_root directly
Message-ID: <20190618132713.GG1959@dragon>
References: <20190618094338.11183-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618094338.11183-1-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_062809_763633_A7B9B527 
X-CRM114-Status: UNSURE (   7.25  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: abel.vesa@nxp.com, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 Linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 05:43:38PM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> There is common of_root for reference, no need to find it
> from DT again, use of_root directly to make driver simple.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
