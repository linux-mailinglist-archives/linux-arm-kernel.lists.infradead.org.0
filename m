Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2760E151264
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 23:35:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vOr/lNzsv3qG2puNexXlxml0WPwtNDnMTVJ/H1Ww1rw=; b=NRW
	gc7zuzTA1qNfnxzCkCuQq0YpWdTtK3ogESfiBeQypRMZ98e0Hz/AJiDNzrHSId6Y0YV69umK6N+gm
	S6oQg1Ctvt94QswSrzTU1EUQW1MPMQu4V0HBf0EDIKpVAYXkCTQW0SXpvwNstlrU8oLbgUpksU2Gg
	s0ZAPclZhSDjeooKn67d3dPNE/HiHSjJiWYvbiq+04mj0S0FzcRqVB1Yhv0ssGAVmGL7vojPNkMsB
	+Erc5jk6rneBE/zeDJHUJonUwKLZtCsQeHkwButDEES7R0K1hnl84dOo+VOOP4k72u9yo6A+oLmg2
	dJd3LJw8r9AC9dF8yxfITAdvCAkWbiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iykIx-0007m8-6Y; Mon, 03 Feb 2020 22:34:55 +0000
Received: from outgoing3.flk.host-h.net ([188.40.0.89])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iykIj-0007hV-1x; Mon, 03 Feb 2020 22:34:44 +0000
Received: from www31.flk1.host-h.net ([188.40.1.173])
 by antispam1-flk1.host-h.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1iykIP-0001v2-CU; Tue, 04 Feb 2020 00:34:23 +0200
Received: from [130.255.73.16] (helo=v01.28459.vpscontrol.net)
 by www31.flk1.host-h.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1iykIM-0000k9-VQ; Tue, 04 Feb 2020 00:34:19 +0200
From: Justin Swartz <justin.swartz@risingedge.co.za>
To: Jacob Chen <jacob-chen@iotwrt.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/3] Add rga to rk322x device tree
Date: Mon,  3 Feb 2020 22:30:28 +0000
Message-Id: <cover.1580768038.git.justin.swartz@risingedge.co.za>
X-Mailer: git-send-email 2.11.0
X-Authenticated-Sender: justin.swartz@risingedge.co.za
X-Virus-Scanned: Clear
X-Originating-IP: 188.40.1.173
X-SpamExperts-Domain: risingedge.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net;
 auth=pass (login) smtp.auth=@risingedge.co.za
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.02)
X-Recommended-Action: accept
X-Filter-ID: Mvzo4OR0dZXEDF/gcnlw0S9sfM/nP8gxoqs1zeWkeM2pSDasLI4SayDByyq9LIhVuTLiRoIJbWVM
 VDvK+OR4bkTNWdUk1Ol2OGx3IfrIJKyP9eGNFz9TW9u+Jt8z2T3K7uDjV/sFUXQr+CDrNQuIHgQg
 mAX8Bxy/iUu0ThNZg0h/RxVysY5Ye6+GGw0VqdJD7ren9RtRNyYim5e3GD8LGfWrcbYvelpuN/Pk
 qhBpvAyWwieZyauFYqHkIbFa+ipF21HJWO60ZqrvKy/1AXUV5oXt6ymoFHaG7BQtEYvFCSrK5j1T
 Po5/LpleUgQM5/MAHmDvzkMd4joYqrUfcPIQdUYI3fUXyt8g6v09xrG7vu/fdUS1M5thdxxsnOTC
 rRmvZNXA7urqkuRkjn1fyteVYP+HXs9CMbFn9vCz9Z+lGmDQvQDDheqH4lBQpR0ziVlLWDAC1vRC
 hq319+C3vxdCgsyStZRkQwmoMeUp+gQglixgZmTW6H0Uo/QzUeaLOBvNEC1g+U1SXfUhLsTk5wUY
 WaWokZC3JOaEfAcg3rPhhffuvzdjlhFBwXCgjBtoYe8eg5nlaTNYebWa2W6GbNvgwptlhJrsz+8j
 XuMdjIbLZhwoK/VzePATsXS/rFxRypFKMiPLyoQzvILSDO18VtgBXTa3ez3cHoqTWBKuYika623Y
 Ta6/LJzl4pg0ZC9q5gYH7EOMauBWC98ol0xUHcbfIJ9ZJ7PpnPxGejDS+HAMyOjpxOsB8gG0slV7
 ra6jI4BS3XLmxFz+88FWeB7miCnFrS+xkiYMmdOwRIKnLhTyDa49KiI6ApkBL1M2pjeIsNv0i2bz
 nHJ53CHS5fL+CC61pH+Mdi8KDLlrJjQEyoQkvVqjwoXSktopqY7X3mJE1vuavCrJPmnnTHzVkpyb
 MK7ZTZV8hN6hngxqNW/p6/rAjB3Bo9WPi4IE45J8SMIBWsA7tm+5pSj1YjV94R3x16NaT9yCB/zW
 LYsk4/ealtlYzK51KubfNuS9lgsouDG6gpp8iIlTfpXH3eJ/htNFsfRJILGw3FQKlZKPu21J/MuB
 4XqWHsbQ5DjCOMluv3aOz8NW0bDnfSypVfNnD/ody8wcCN83CNy2/HP4CS/B6ymwJqdrYqktDHCy
 f2KOgPWiC6z4HnV1R/vfaN0C4C3KdSxIKbHYhXQwhXELIBZC+BuxdgK5cVvzDCtuQClUbi7eRJvI
 lX3taZxyfrmN0VTHLZteW2tmp/7PDtVuzmh0F4WifHSVhLwCLj5UzlqDZIb7xEp3klSpLYn5Sshm
 tRDo/ib6qUd+ON9Iwv3fqFcmzUrJkUoL/PyVSe2/DDFq5n7HBuKWYRb2mL6sFaAAW2m3yODQWZ6C
 UzN46xT2FnDD31r1QFs2yPRk3H1E4ANRdN1BlPI5cpunCmbc5xpJVMDSneyWOiQlotRPFwUdX67F
 3JAjgow=
X-Report-Abuse-To: spam@antispammaster.host-h.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_143441_098955_B5958160 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.40.0.89 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Justin Swartz <justin.swartz@risingedge.co.za>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset aims to enable use of Rockchip's RGA, a 2D raster
graphic acceleration unit, on rk322x based devices.

Changes in v4:
  - Add a compatible value entry for the rk3228 to the rockchip-rga
    device tree binding documentation.

Changes in v3:
  - Relocate rga node to the correct position in rk322x.dtsi, as
    indicated by Johan Jonker.

Changes in v2:
  - Remove unnecessary "rockchip,rk3228-rga" device tree compatibility
    string patch, as advised by Ezequiel Garcia.

  - Use both "rockchip,rk3228-rga" and "rockchip,rk3288-rga" in the
    rga node's compatibility property, as suggested by Heiko Stuebner.

Justin Swartz (3):
  [media] dt-bindings: Add binding for rk3228 rga
  ARM: dts: rockchip: add rga node for rk322x
  ARM: dts: rockchip: enable rga for rk3229-xms6

 Documentation/devicetree/bindings/media/rockchip-rga.txt |  5 +++--
 arch/arm/boot/dts/rk3229-xms6.dts                        |  4 ++++
 arch/arm/boot/dts/rk322x.dtsi                            | 11 +++++++++++
 3 files changed, 18 insertions(+), 2 deletions(-)

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
