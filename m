Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2CAB1A523
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 May 2019 00:15:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w4Hi+WAtuFxr4U5ZNy9pPk5/qemeav+Mgkl1yv9HStU=; b=pIEuOn6YE2o3D5
	rMwwSPptXRj1WUYy9X31A1xwyYtM6nyRNDMy+dyemj0saM7DwBO4y96ZKnCmgCSDPDxYcK6bquFtW
	sZ+EQU2WPAnb3Oo27g18VwhBZnq2fjmsks/uXB8fixfiLDu7rRufIBMBN6VR6DJ/UVxAR1/Ch+gEt
	FZfr/ArtukezUpS2xa5pgz0YIKSecDnub6ZlCCFWZpEPqZBPPN2TMwAKf9Bsf2aYQ/CuZiGEA9BUy
	n43483RKhcbeDgrTkMJpeedhQ95UCEhro6ITk3MWA1dNSm/PgITgIPBZVqDvf5sg4ykHIBO3IBVQy
	c340FSO4m1fXt6W0Wf3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPDnM-0007RR-50; Fri, 10 May 2019 22:15:12 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPDnD-0006kJ-AB; Fri, 10 May 2019 22:15:04 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d8])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 1963A133E9747;
 Fri, 10 May 2019 15:15:02 -0700 (PDT)
Date: Fri, 10 May 2019 15:15:01 -0700 (PDT)
Message-Id: <20190510.151501.1636787564971451909.davem@davemloft.net>
To: ynezz@true.cz
Subject: Re: [PATCH net 0/5] of_get_mac_address fixes
From: David Miller <davem@davemloft.net>
In-Reply-To: <1557480918-9627-1-git-send-email-ynezz@true.cz>
References: <1557480918-9627-1-git-send-email-ynezz@true.cz>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 10 May 2019 15:15:02 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_151503_358245_879F5CA4 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: robh@kernel.org, andrew@lunn.ch, netdev@vger.kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Petr =A6tetiar <ynezz@true.cz>
Date: Fri, 10 May 2019 11:35:13 +0200

> this patch series is hopefuly the last series of the fixes which are rela=
ted
> to the introduction of NVMEM support into of_get_mac_address.
> =

> First patch is removing `nvmem-mac-address` property which was wrong idea=
 as
> I've allocated the property with devm_kzalloc and then added it to DT, so=
 then
> 2 entities would be refcounting the allocation.  So if the driver unbinds=
, the
> buffer is freed, but DT code would be still referencing that memory.
> =

> Second patch fixes some unwanted references to the Linux API in the DT
> bindings documentation.
> =

> Patches 3-5 should hopefully make compilers and thus kbuild test robot ha=
ppy.

Series applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
