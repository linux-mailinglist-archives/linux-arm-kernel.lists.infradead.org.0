Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C834210E6FF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 09:42:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T5La3hJSGHsqwlMzS/zq+sDd3IQIy8pxma/lHsOs4YE=; b=hMBcks3Xak006U
	/LO2GKefsVwkEP2E2PO408CKWOwD4YJGKU8qYDg5hz+mA37Uit1dXuMlKiFOftaLl7SBQwpHCQQtb
	fObzIlUKuocOCKCIRc1p0FWsz6mS3xIjS07rTDHRD1zWHNp2Wv5Kfnadp6QGWxxjcsST0fTP//Myg
	N4BEs3ZYRCxX+iMOnEFj2odU+kenoHLwO5uHDllZ17deBz4qBb/XQYwJhJz76lnHpYAyZuU1ZUuGu
	ZmL6ZE5P8XZGuVfdUjA8T1G5DHJi2enzmSv+ZG2lIr8MVSqZAn0xmAmPQjUD4/Bs0j7bjJIozUaV4
	Zp2xzbv1TtkVgZZ6UWVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibhI3-0005Dg-U4; Mon, 02 Dec 2019 08:42:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibhHw-0005DH-9m
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 08:42:37 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3750E214AF;
 Mon,  2 Dec 2019 08:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575276156;
 bh=DYAeZZ04KqOYDj2hpLpx0whSWeAoAiJAXf5alkSRa3A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=M+cAgfFv34adtKvNXUVVHJ1GIECoTLnJymcPiVC7Cg/JF0VncEy4XbAo4RLFos7KW
 pgXzuAO1MmtJK8G9/0cb6b8gP5GN2dY+M2crpKD6pbGZpv1LxHUTh1u57ZJv3A2ezV
 hINeo0i+sQe0zVS9+E5IFN/rc17C1WsY6+t1LKqQ=
Date: Mon, 2 Dec 2019 16:42:24 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] ARM: imx: Add i.MX7ULP SoC serial number support
Message-ID: <20191202084222.GF9767@dragon>
References: <1572852931-24101-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572852931-24101-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_004236_363309_C62CB904 
X-CRM114-Status: UNSURE (   7.66  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: aisheng.dong@nxp.com, s.hauer@pengutronix.de, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 03:35:31PM +0800, Anson Huang wrote:
> i.MX7ULP's unique ID layout in OCOTP is different from other
> i.MX6/7 SoCs as below:
> 
> OCOTP layout		unique ID
> 
> 0x4b0 bit[15:0]		bit[15:0]
> 0x4c0 bit[15:0]		bit[31:16]
> 0x4d0 bit[15:0]		bit[47:32]
> 0x4e0 bit[15:0]		bit[63:48]
> 
> Add support for reading serial number from OCOTP on i.MX7ULP.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
