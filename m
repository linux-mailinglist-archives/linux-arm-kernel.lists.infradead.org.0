Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8F6116787
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 08:28:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RmEXl/cu/x1lkMugh6FYggFbZmDodcrc2jAkyndhsYc=; b=UA38viwFvLUsjT
	GOf7W5PjYE2KFBGQI37Ygi96770B8ihhWQ3SZ+wk0uhi+dM1Jb9pbFzAZsoDQJr2cF4MxS5HZLb72
	lD1YHyWJW/5zoXgY+pdk03OMZnr2Bp5TDv6HHv6SON+R2fTvCEg7TERiHqCbmgVXkpKP21a/wYWY4
	/MQ+bVBNsV7zAX/i+IbgoG3vA7AE4Sl2/HiMb6zGx63y2JFRdemVffGejCxFTg4bfA0aB+JtrzgLw
	8glvsiRT3uUqGUmmtDuDAi1HW8zUa1IgeWPVjSLYJf6Jct05sY5pXr7oqxUFgryrp9gORtIU81G8W
	QAGaeC9usNkDM9ni8qvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieDSY-0007fH-7Y; Mon, 09 Dec 2019 07:27:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieDSO-0007ex-1i
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 07:27:49 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1866B205ED;
 Mon,  9 Dec 2019 07:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575876467;
 bh=Y0yVZH6bmilnjoW0N/hJNdW+KEgOTtoQZ+oFi9YEU6g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=H9CayTfAAKhLTBCzsXDICOeZHgf0pVARwRzTHv+E/gat8/wle8yWbrH1z1ePXI0WK
 0+5VmcekeSPAf+eYVG1pER4kn/SB5D3F4DunvkZuT9PlP7VUQvgbwJA6F7BWEDxLZ5
 BjieWe82V7qxn1TnvKg1Z00opqbycQLlV0YhJ7FA=
Date: Mon, 9 Dec 2019 15:27:31 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH] arm64: dts: zii-ultra: adjust board names
Message-ID: <20191209072730.GG3365@dragon>
References: <20191127181921.22030-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127181921.22030-1-l.stach@pengutronix.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_232748_111105_FF98E405 
X-CRM114-Status: UNSURE (   6.82  )
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
Cc: devicetree@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 07:19:21PM +0100, Lucas Stach wrote:
> From: "Ruslan V. Sushko" <ruslan.sushko@zii.aero>
> 
> Change ZII Ultra board names to be more in line with other ZII RDU platforms.
> 
> Signed-off-by: Ruslan Sushko <Ruslan.Sushko@zii.aero>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
