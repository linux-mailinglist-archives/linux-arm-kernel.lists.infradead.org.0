Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5191256E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 23:36:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qo59X6hdTzNL95B/QGB0k8wgEWCdI8BeeD5gr61UmOk=; b=cYcsdE5Af5lUtI
	VlOhFR9woQpKAZxyuYxYW6l/Z/CNh8UBFqZ0AZ0ojYEsAm1Dx8+DRbnJahCXoiJK0gSFmXfeacQ62
	OAhwOHgsfuO6nr/+dYv7GTpjrfIvXmV+oi853gWRuuZBmfl/lEMtBLW3qADyoTrvK3EJTjJmC6tTa
	N/INXg0RGVtnMwfaRcZQ7ePOQ/yr0N8X5d+aOfMIMvMPoFA5wwiBcIR26xEANtBEncFajMWaz1dmK
	4PT+C1dqzxzkRzPM3oHyJvsQtv9gvw3CdzGGggXuM/aBcfHW7tcReIXP/wOEm/Zq6fMkI3Xc2g3yi
	i5dJlwYTHapaUUrHKdOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihhvS-0007FM-Ng; Wed, 18 Dec 2019 22:36:14 +0000
Received: from mout.web.de ([212.227.17.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihhuz-0006yO-Lm; Wed, 18 Dec 2019 22:35:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1576708538;
 bh=lAAhQWrqTZ+3NKkBxKoTqGxYRguwM1a4ntZ/kHINjrI=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=VlUfPehAqq8T8OZtJhiT4IfKDhZs/FRv88U4/8Ak1XXguF7FO55R1wdAyA9C0sM3a
 qVH+1Krj7CYIRNz1Ovqq7RZW7xX7FRsqXsFlpyYHDmsrm1EE94/WDdXDp0llPGomRW
 P4SowPHzAYyDfdBcBSi+QTpOjoTaAP5oethXARTg=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from localhost.localdomain ([89.204.137.218]) by smtp.web.de
 (mrweb103 [213.165.67.124]) with ESMTPSA (Nemesis) id
 0MXHXF-1iEL5L0ITd-00WDAM; Wed, 18 Dec 2019 23:35:38 +0100
From: Soeren Moch <smoch@web.de>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v3 0/2] arm64: dts: rockchip: RockPro64: enable wifi/bt
Date: Wed, 18 Dec 2019 23:35:21 +0100
Message-Id: <20191218223523.30154-1-smoch@web.de>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:PHp7e4svlTVsNYUIoz5ytrInhryaO+C+w+4Ft0e59pR0Jme4QXr
 3yIy3GV1HnbboENPQnvjdkXooUWdaGzGjexy5+6K+6HcVN6zNTowZz86HfxgrPMsJjoXKqz
 /ImAgfNVCaVILB9S9abOX8UOUrAVYTm9FwwTnuObKuN6K9ILaw5M0VRXa1g0Zp24Xyrl4Dg
 KrbSf0VdhqY0P61GutUhw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:NVLy28qVaF8=:P4MJd+g3YR1SVho5Tak2vc
 y6flSHZpnmzbvhLi1FYsOxb5GXrPGQuvPXbxGEJtZdMln5c70msn/iKqFPwqW2oRBWoB08Gg9
 lRVw+qABI/ZwYJybhcNU4FVZBi64oi/xATFzcPb/YRI8dhif8N0PKRgDaBgpeHz9gznK9XGrR
 sJvkavqqZZX4H7P0CXCjQgAP6qrgvD5kF/QgQrkaCL7LV31nUPEHSzNPw6fb0eMb81GVL5Edh
 Gz5duMyxY27+I0Pyi1xVMe+wEmFx4KHGM344LnOdLv7UWPa0/Tk5FdUQCoVpB9c7NMpVAvimY
 bMxxgnrRVyJBKjm4q0S4InSCKheAB9SOuwdfhGl0PRQ6joBU+oEGl0TIl3B2HnTQF+JVbWbje
 T8cCE4cKGA++c2Tt6+G8OYVTauTciOY42KdmqpmUOimUQ7r5fl3m+vS2NdplDd0iOJbknlKwS
 PIJUp66rgXO87v8Ykn7kFU26NU6ICSBkDykKoL+YBnpm8l42tpyhVj4RDCTIsLLL1X5DyKAG3
 gr0y1jE05SqGaRg+bmslLGn2GZ+aUX8wnmmDXleWBih0bZBiN1iZ/OQ9DueWm8FSFG4DjI45Z
 NNwbIiywAOnaqTW2QTOVnyVEC63US/LXOrdWktTccFLG0M7pocjYWfhlJn5z4YvETsJp3WSyI
 crwvuZh83KkxxGvllps8Gc+QQfCgLMpFZaSmMHffb4C8GLCWUE4VzvUyWz0jZ48VPiokSXl5/
 wpBFslguFInnm3FwyPscoXn6e/twVbdOpq7qBABYa2talB1thl4tRdOXeqHfRYZRZwTJhBK8s
 y9rDcGE0EbeIPNuTvIFJf78yPs3id+07qGXRjEO/rUYHHxRaUdYESg0GC6J6apt6ebceoyp/B
 KhzfDREN2otRpzZXwbkfdap4B1ASRd8gNvWxwY8FQBID7V81fuRtuKtb36nkONzLEoMpWXxHI
 mMlUiqynVE1PA/v+7wn8DFUQ+IMT6GB85CDC6+q28Iqm+2NZUwZe0jAqht08FhDzE9/tYzPsb
 wZzUH9UVHpN54Yux212XDjL71tYIp/vIRg5T21lzJFgIQV2JWr7o6aHZvKr2cdXwffcJhJG4U
 kxtxNLO3easZRCo4HD0yXkD9FUTCKizAakSLHm5CUtD8J1ZqSANHUL0X1B0PkyXJkbHK9s4SX
 ++FsCGkRLqS/NlzanPzfi0b3gDSQzSkR3BW3M+IqjExsRXRo7V/M3gQgyg2s4nntALHlHod+4
 DkoFRNEilrwbc21FFOhAcmDjPk8ufmWiP/FmU9w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_143546_008511_52DE2C37 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [89.204.137.218 listed in dnsbl.sorbs.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.12 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.17.12 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-rockchip@lists.infradead.org, Soeren Moch <smoch@web.de>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enhance devicetree of the RockPro64 arm64/rockchip board to use an
AP6359SA based wifi/bt combo module.

Patches 1-7 of version 2 of this patch series (to add support for the
BCM4359 chipset with SDIO interface to the brcmfmac wireless network
driver) are already picked up for wireless-drivers-next. So this
version 3 only contains the patches 8-9 from v2.


Soeren Moch (2):
  arm64: dts: rockchip: RockPro64: enable wifi module at sdio0
  arm64: dts: rockchip: RockPro64: hook up bluetooth at uart0

 .../boot/dts/rockchip/rk3399-rockpro64.dts    | 50 ++++++++++++++++---
 1 file changed, 42 insertions(+), 8 deletions(-)

---
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
