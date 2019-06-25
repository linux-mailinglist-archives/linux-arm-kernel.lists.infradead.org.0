Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F04D55130
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 16:11:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbIL2ijqBbWWIzTx9+hifRikqTwrj+KI444IzdB2jBY=; b=H5jJXbebvmsfNC
	3xTFa0Z1m/IAP1kEflShOZw1hB4ZmWAHPvxUs09t30ZmtRUYTw0xNiwfN2V6KTa3YjgZweGZdS4Zo
	yLqQUlNglx8aM68i+ldz6HVwffDKw0ugkUKAKgrW0v2wSw87Y8qD1r0Nopnmk+kt29EepFVZF1vQ4
	a+JG1ZgdVwwAHLoWOpKgVzAqluPaaaScKOjXlBRxqBtqf2kp8YU27HhhKIoaJoD4i2c6fCR7ufSdQ
	CBLcgBRJ8tWxys/76Tay+TbHey+4G28H/FcM31OSVLWT9lwndtKu548Bcabmirt4b4W3AqF8fbG5+
	19+JSuHxH2XOdSiFtXnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfmA6-0002cN-Ao; Tue, 25 Jun 2019 14:11:06 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfm9v-0002VM-PV
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 14:10:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5Xb6HOTG+zlag07avcaujeaLqr4XUzU2qm2bd4UiBIg=; b=ly5b2GEF7t8Xid2fwh5tWxjGk
 1OQja7i/iAxqb5Jch4kWE8/ZkrF+DAJTn+Ggt4YEXMH/7CCxwQpHda7CxEd66NnhWlxzjb0GlOBjH
 DUiFvXDZ42Afh1aFUZ08a7mE4pj1q+LubbfcRpx5Y8yhGAyBUu7jcfm3BkOhWaFHBnjUjgHmlNSQ2
 hfwpr9Hkqswc4UswMJfggxQcwLgzkaXYDAdb+enl1jqT/YDeZB1n4e/G0D6k/XIYDhzrXAvmUXWwQ
 +PjW+sQcMipB2X7tQhitGUFkpttqA9qORJ+qbDyLT4isccDyzr9k9nn/t2M4NMRHba4BPmkrckj//
 bGzf7VnUg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:59992)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hfm9e-00070m-UI; Tue, 25 Jun 2019 15:10:39 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hfm9Y-0007I8-NO; Tue, 25 Jun 2019 15:10:32 +0100
Date: Tue, 25 Jun 2019 15:10:32 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH 0/2] Associate ddc adapters with connectors
Message-ID: <20190625141032.5jiy2oekb3olaejd@shell.armlinux.org.uk>
References: <cover.1561452052.git.andrzej.p@collabora.com>
 <20190625100351.52ddptvb2gizaepi@shell.armlinux.org.uk>
 <817ccfba-754c-6a28-8d75-63f70605fd43@collabora.com>
 <20190625133639.GA16031@arch-x1c3>
 <20190625140755.GT12905@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625140755.GT12905@phenom.ffwll.local>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_071055_826702_99D2B1B1 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Inki Dae <inki.dae@samsung.com>, David Airlie <airlied@linux.ie>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 dri-devel@lists.freedesktop.org, m.szyprowski@samsung.com,
 kernel@collabora.com, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 04:07:55PM +0200, Daniel Vetter wrote:
> Otherwise I like this. Biggest problem I'm seeing here is rolling this out
> everywhere, this is a lot of work. And without widespread adoptions it's
> not terribly useful for userspace.

There will be cases where it's not possible, because the I2C bus is
hidden behind a chip that doesn't give you direct access to the DDC
bus.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
