Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB66097509
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 10:32:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/D7HkfPyWhh8MXcw2oQjK0P7eh/75Or5VuI0njjiJQc=; b=tQ9eQsNzHVRTnY
	qD/02u8Ustw9IVEcXdVjVgOqa7jz7tK+wp1jpqgzMCBJ2yUN21U76ONUpFCbBQUfYhtLkKrVfNwlH
	ofVAl3npWlujALVeWbx5YBYtQQFaU88HsL7TexuGyBmo8FGc1EHnFIItIwS/ubUujaSGGhlSJXxHX
	gZXXYBwNIIgNxNiYFkmIzjCQx8d9/DHswhPcDPF4gghEsA5JupIA9ZADq5KAi/dlTJIeznKQbIcIv
	zlQj+7LO2JAXCtb1LdTBnn1W7jX9sbZoi0yl+cxEjey5O3f/5RZX31EQchiMXaf3XRH/W3ahD824s
	Tg9wRPT/kyAYmb/MEr1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0M2h-0007Hc-O5; Wed, 21 Aug 2019 08:32:31 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0M0m-0006yL-Ds
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 08:30:34 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 4FEC225B7C3;
 Wed, 21 Aug 2019 18:30:22 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 36D2B9405AE; Wed, 21 Aug 2019 10:30:20 +0200 (CEST)
Date: Wed, 21 Aug 2019 10:30:20 +0200
From: Simon Horman <horms@verge.net.au>
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a774a1: sort nodes
Message-ID: <20190821083019.z6xmtgnkv3pmjcfa@verge.net.au>
References: <1566219295-23003-1-git-send-email-ykaneko0929@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566219295-23003-1-git-send-email-ykaneko0929@gmail.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_013032_934801_46616D9E 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 09:54:55PM +0900, Yoshihiro Kaneko wrote:
> Sort nodes.
> 
> If node address is present
>    * Sort by node address, grouping all nodes with the same compat string
>      and sorting the group alphabetically.
> Else
>    * Sort alphabetically
> 
> This should not have any run-time effect.
> 
> Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>

Reviewed-by: Simon Horman <horms+renesas@verge.net.au>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
