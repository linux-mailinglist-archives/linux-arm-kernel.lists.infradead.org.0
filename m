Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B5E713F5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 10:27:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gKhxErojG+IllXey3qdeo4iYpSi8wJUKNHV6XAncFGo=; b=FjGAqZu7zcPMac
	07ptgnAJxHL6zHU4kbbHxYDQUyb/VRdLEAEQLe1jtFmji94QL7plrkKcx6eXYTCnex8v08ITT2tnd
	8tpjjE0h0NZnzDReohJJTcMDTx0OU50/Wri9agqEgYbzCyR0MEwjnwuGmJ9xQMdhgqwyjpRx4rpOK
	Q2gsxH1eksCDgLFguqAKV32l8KGanaNb9ELIqVbYiGuT0MdU/sB1EFRZyLlgoaZJAj6oMcKG9sxQq
	ly5s0byNE+08s7+bH8St7c934nYI8hCLZ3zYlyzIDNVGuGCm/0YfRyLTGuJMnQVfW1K3O2HSVHLki
	w4rNJKFwi8LButuwobVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpq8y-00009h-Ed; Tue, 23 Jul 2019 08:27:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpq8i-00008W-Nw
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 08:27:17 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 17A9621BF6;
 Tue, 23 Jul 2019 08:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563870436;
 bh=SnqOIbK+0rIhgQ2hnfks3pxqj4Sta5RlGjVJ91yq/Mc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RV1zQGx1yAJtbhwK+SsK9ysJpcTBzo+KRFapT1sPbS4zVFebBSrYEU8MzxTK/IBRA
 h34tBrG/pjU115ZB48hzGHCZoo1YwhXywm6R6pVrUZTUtEyAKk76y90AH/Y2b5nM7P
 C23cAMaDwCzFdye3dxB/fLJHYLbhb+y9X0Uyzc+w=
Date: Tue, 23 Jul 2019 16:26:49 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Ioana Ciornei <ioana.ciornei@nxp.com>
Subject: Re: [PATCH v3] arm64: dts: add the console node for DPAA2 platforms
Message-ID: <20190723082648.GT15632@dragon>
References: <1563791443-26372-1-git-send-email-ioana.ciornei@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563791443-26372-1-git-send-email-ioana.ciornei@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_012716_793883_C91D3670 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 leoyang.li@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 01:30:43PM +0300, Ioana Ciornei wrote:
> Add the console device tree node for the following
> DPAA2 based platforms: LS1088A, LS2080A, LS2088A and LX2160A.
> 
> Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
