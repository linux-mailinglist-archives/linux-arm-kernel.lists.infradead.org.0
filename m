Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE2E131167
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 12:26:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jOOsY4F5QN+70xz7ccKlkWxM0y+YAou5uRGvcoEh4v4=; b=ipLvlIxCE0GUun
	RTQUuW9T4XthAdbDiHWzIPwxRrGYtzHWN2ietWyyI8BjZOKMnQfxXhVsfmCEXLAlYeY9Jy7ap0aaf
	/U2wowTmij7tJnH5Pv3EcI/xNH6kcbmKYF4IlA3ldfRg2A281AX7iZFBc0ei/xViVv+LaAFv1sKOw
	ncBTbQ6VHVQqCjUC83MbquszrobW6baqG7OmzPMkoXtifv8srV2aU58zoU6NFgaNHaQ6pQUUD8wqE
	L8n0J6eb6P7Be3ROJuWgkEZZuh32Dk3Mu1utqy3tPuamNVbizncMSfpTPMMIHc3UZPJe1dmTSpMVp
	WgDVEVWu9+VzN9WrClug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioQX0-0003ih-O8; Mon, 06 Jan 2020 11:26:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioQWt-0003hq-NI; Mon, 06 Jan 2020 11:26:40 +0000
Received: from ip5f5a5f74.dynamic.kabel-deutschland.de ([95.90.95.116]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ioQWp-0004cC-Ix; Mon, 06 Jan 2020 12:26:35 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] drm: rockchip: rk3066_hdmi: set edid fifo address
Date: Mon, 06 Jan 2020 12:26:35 +0100
Message-ID: <6562118.EOOupxtdqP@phil>
In-Reply-To: <20191211203417.19448-1-jbx6244@gmail.com>
References: <20191211203417.19448-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_032639_908736_8017800A 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: airlied@linux.ie, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Mittwoch, 11. Dezember 2019, 21:34:17 CET schrieb Johan Jonker:
> From: Nickey Yang <nickey.yang@rock-chips.com>
> 
> Fix edid reading error when edid's block > 2.
> 
> Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied to drm-misc-next for 5.6

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
