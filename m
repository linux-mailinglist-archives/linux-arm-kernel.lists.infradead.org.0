Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56CC39BFAF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 21:03:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p7rBtQTlqjYgjudeHxr/O7ohlWrkazFT0W/jlrFRTno=; b=suw1gEgmhsDvu9
	+4U6f4lJOVIUQT1er2sSIRXWeWpVXVdfrdswyBEsFk4rVbooqAoMfXmropWpyj0865djJfdq9u/xJ
	yDPpD6Vn4s0TztcmGPJhdwo9zAepEFo2LAIT+dz7IgxP0QFERmRUU1qmIg15UVy7RdT4KMvYbszeU
	eYqbBzP+Y7MciwvN88nma+yooaiFVRu3iFWEtwzv9SBakTw/fSJJkSzx2WqQXv4d8m7u3Mp232xGq
	+7pNXleCP55aN/T1cfYOnJFSkOEeXNmRZ+yurBc+CidtFXkKyqBrlE06tqRLaVROII3pwUT7838UT
	PhU3DGE2lMiLdfBGN+eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1bKH-00022w-UJ; Sat, 24 Aug 2019 19:03:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1bK7-00022a-6L
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 19:03:40 +0000
Received: from X250.getinternet.no (98.142.130.235.16clouds.com
 [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C0D620850;
 Sat, 24 Aug 2019 19:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566673418;
 bh=V8faoiSowxfdVDSnfuFJKqgtuKh9q9FIIhDTXCo+WOo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AErla3A3rEc7cT9EqjgHaROYiQvS2t+r0MBwXldY1Pm1EJUSRLV5IVNZ4OsaP36SZ
 iDSYEcxa5CbI+aiSMGTusWCKwTWA9iI2dXcZ8ZpiGZF5X84WkOJ3rQl9+WDKsv4acY
 zQnhOcnRTu46oJjn0e6QP/czZRpDWNdr/6Z6Btes=
Date: Sat, 24 Aug 2019 21:03:25 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v4 2/2] arm64: dts: imx: Add i.mx8mq nitrogen8m basic dts
 support
Message-ID: <20190824190324.GB16308@X250.getinternet.no>
References: <20190819172606.6410-1-dafna.hirschfeld@collabora.com>
 <20190819172606.6410-3-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819172606.6410-3-dafna.hirschfeld@collabora.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_120339_255926_640E731D 
X-CRM114-Status: UNSURE (   7.87  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, Troy Kisky <troy.kisky@boundarydevices.com>,
 Gary Bisson <gary.bisson@boundarydevices.com>, robh+dt@kernel.org,
 kernel@pengutronix.de, kernel@collabora.com, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 07:26:06PM +0200, Dafna Hirschfeld wrote:
> From: Gary Bisson <gary.bisson@boundarydevices.com>
> 
> Add basic dts support for i.MX8MQ NITROGEN8M.
> 
> Signed-off-by: Gary Bisson <gary.bisson@boundarydevices.com>
> Signed-off-by: Troy Kisky <troy.kisky@boundarydevices.com>
> [Dafna: porting vendor's code to mainline]
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
