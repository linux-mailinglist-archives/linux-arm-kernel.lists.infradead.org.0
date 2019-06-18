Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0787E4A1EE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 15:20:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LWdCWHoQR6SedWCTAnqrqJmSgJvNI0D7tSyLLjXKIM4=; b=Bd0z3dWLJjkKKJ
	kx3g6hoxAn3u7n9HJ70Rf4dOqOtprf8cImi4w3w5jxMc884nSxCEuNFIOE9HUEYiaM1URgqPearGr
	4LOMr6mm/5+4kmNYCxUVtlSD5LuVMxMuRw6U5KMlwkxO23+6gP1avduaYIdNcpYYCHMjYRZ9z57YC
	1G94nm2KL3urjmJlbIb9mSbHFE5nWERe0RjvSenlTBExNn+JlCB2POSirlnKjfemKtKlD1C1vx9nG
	jm+nWdlX45+5Fw9YOYad7IrDak/liMAzI75d+0TdqEu0Bag+qk5ROxZmq6zLgEbp0pFWjvhJ/9U9I
	Rogfw79XOEhJ0G76fVYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdE2X-00046l-HM; Tue, 18 Jun 2019 13:20:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdDrx-0006Kj-T2
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 13:10:06 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A7B972084D;
 Tue, 18 Jun 2019 13:09:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560863388;
 bh=f9SHC6ue1dvc84vpVLaqwcu3AML1Htt1R+Utuud1GTE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rPKYFxhGfJdxNynwSUcJvOSB2VvmorxMuALt8f5OBtdiSNMe5kb/Fw86etHgDOW9S
 xnU+h29Vb1rNycsM+/Wy3zybYASLnmCa3xaECrAwDCPoHvW7f8MDvjc+3QaQ2bTO8A
 aMijB6RtLVioPsjacen7t8s5XPORJLq6Aqs6T6ck=
Date: Tue, 18 Jun 2019 21:08:44 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Ma <peng.ma@nxp.com>
Subject: Re: [PATCH 4/4] dt-bindings: fsl-qdma: Add LS1028A qDMA bindings
Message-ID: <20190618130843.GB1959@dragon>
References: <20190506090344.37784-1-peng.ma@nxp.com>
 <20190506090344.37784-4-peng.ma@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506090344.37784-4-peng.ma@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_060954_046511_241FCEB7 
X-CRM114-Status: UNSURE (   6.83  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, vkoul@kernel.org,
 robh+dt@kernel.org, dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 06, 2019 at 09:03:44AM +0000, Peng Ma wrote:
> Add LS1028A qDMA controller bindings to fsl-qdma bindings.
> 
> Signed-off-by: Peng Ma <peng.ma@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
