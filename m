Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 757215662D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 12:04:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cyGKq9VKTnlx1TaGWOSfpIcCXnKKt9op1TllrXo1isc=; b=XvQ/ntSPl8uynJ
	JOwfKT2Cab0i1jpTg7F6ALvdXf7kpzsxux/o11WTYm0m8gxrKgu0SdA02VqpcF3af9LEhTRp/RW9W
	sPG8hQgJ1As0ChhvtW0yuTZDMzrW5Eqg60pGjeOnSs6dn7R5qY683IwiYl0Hjh/KjuzC/suxrevbg
	yQZ06FoduPx1bUg/TymGLNEwzxPVRnYePyDAMtPiZS2Av+ayGTiZRc34hNHjW9WIvbJdfXZfPbiMB
	8ecaSNxPCHG7DFOULJDll+Nmd84y/Cz0hqJlzr7F23G+ZHR/ySms9JoWJc6COjvmep6n/myo3nusC
	dGrdUjGnLaBmiUdoib0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg4mh-0004HY-Eg; Wed, 26 Jun 2019 10:04:11 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg4mS-0004H0-6l
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 10:03:57 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 5AF2D634C7F;
 Wed, 26 Jun 2019 13:03:47 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.89)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1hg4mI-0000QF-ND; Wed, 26 Jun 2019 13:03:46 +0300
Date: Wed, 26 Jun 2019 13:03:46 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH v6 3/3] media: atmel: atmel-isc: fix and cleanup
 potential bugs
Message-ID: <20190626100346.4spzeuhkgkrscmdx@valkosipuli.retiisi.org.uk>
References: <1560340575-21021-1-git-send-email-eugen.hristev@microchip.com>
 <1560340575-21021-3-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560340575-21021-3-git-send-email-eugen.hristev@microchip.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_030356_427222_B3A2FC8A 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: hverkuil@xs4all.nl, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 12:00:35PM +0000, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Fixed issues that can lead to potential bugs.
> Cleanup order in the driver
> Taking into consideration std control creation can fail
> mutex_destroy call
> changing controller_formats with const specifier
> some cosmetic cleanups
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>

Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>

-- 
Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
