Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C9A4A28F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 15:42:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fOA2snqsNffzNMburfz5InNnbY6aaFSjP6GIJbMWsUs=; b=EjcBXw+M3Xqih6
	VUggyjjJKfaGnrP0vwSNk/4XfWWlBLbAZmI6yLCdF0Ew+2iJ6iL9tq3VGqs+omh2Q+Q9CiCYVjdi5
	hmfHvMKTstlvKDdOlvN4Nf5HEfSgKF4EgdE+EtLwrJ1TYGEsQhbJffXC7dmiO+vNfwaqjs7ws8bv1
	nL1IMJqlSxVRCJd05dWgGYsFxUiHVYNKYhOkoBuf5w1jssFqFXQN8875eC/LlsXwZzxykH/rxt/YD
	2ImxSmsM2Dii+czGbxKtNBwtzQyZuN3t6KghbFNuICCqdWez6oouTK947x0cDsGLrayt1Zsva4yt+
	VpdTTCiEf/1RmfyfZD7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdENU-00036S-0Q; Tue, 18 Jun 2019 13:42:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdELm-0002P0-Jj
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 13:40:40 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 232B920823;
 Tue, 18 Jun 2019 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560865238;
 bh=TNcZttMiJiW3N92oHPvoksZuYuZdQPL9GJysjflSzqk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DQEWWNu3AuCggewd66xD7PLYu/7ezSmUQk4djDA5VfHjYRsKAtaBBO4S3lqs6p7YK
 NmXfEdV5/pu8TGT/j6w5CIRPRRlzK+woGJNaRj/jd4YsWjguShI6Y/x3ku1ApERvQ7
 +PtGIRE+h0mySVwE7F5Of1T0CBHZdFMNURHJGZl4=
Date: Tue, 18 Jun 2019 21:39:40 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: arm: fsl: Add missing schemas for i.MX1/31/35
Message-ID: <20190618133938.GJ1959@dragon>
References: <20190617224244.30818-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617224244.30818-1-robh@kernel.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_064038_962805_D37191FD 
X-CRM114-Status: UNSURE (   7.89  )
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 04:42:44PM -0600, Rob Herring wrote:
> The SoC/board bindings for i.MX1/31/35 are undocumented. Add the missing
> bindings to the schema.
> 
> Cc: Shawn Guo <shawnguo@kernel.org>
> Signed-off-by: Rob Herring <robh@kernel.org>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
