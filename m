Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A251AFA4F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 14:57:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AgTfVndSK6YZ3K2t+Px1IxfIsPshVvVemGzgQsYh2ws=; b=caT5+xnYzn1VRQdsLAOjEkM8Hl
	FCPVy+VItTMB/7NB653O8YDw32Dq18jplfgCFEJwv8lLng+MGCDI65coqZaD0LghxDDdGI/NYzybQ
	Oedy0hfs6BCYNOIS+FUci/hb/l4w9WbEUtEvrbB0VyoUOVHeHDntCV4AqlxlpInv99wpTkzUd7RDA
	RVTxijsCI548RzgH2bX3BrhiFxp0dPujR/BDO/U2alsZv7DxXrYSisA/H/59+ffeYaK9d1/+3p44D
	KiBmwU2l5IporMp/cCkvESDzRIm/VY3fPpGiWsqBCFRIv9Y1fRBpStxF6pF+h86h4bH8JaJoMuKiB
	QqT6YFPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ9Vq-0005CY-DM; Sun, 19 Apr 2020 12:57:30 +0000
Received: from outgoing15.flk.host-h.net ([197.242.87.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ9UX-0003wX-Aq; Sun, 19 Apr 2020 12:56:12 +0000
Received: from www31.flk1.host-h.net ([188.40.1.173])
 by antispam4-flk1.host-h.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1jQ9UJ-0004EY-F2; Sun, 19 Apr 2020 14:55:57 +0200
Received: from [130.255.73.16] (helo=v01.28459.vpscontrol.net)
 by www31.flk1.host-h.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1jQ9UH-0008SM-Gf; Sun, 19 Apr 2020 14:55:53 +0200
From: Justin Swartz <justin.swartz@risingedge.co.za>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v5 0/1] Add rga to rk322x device tree 
Date: Sun, 19 Apr 2020 12:51:32 +0000
Message-Id: <20200419125134.29923-1-justin.swartz@risingedge.co.za>
In-Reply-To: <558b35c3-7f75-8d0d-048b-c55c06fa8a53@gmail.com>
References: <558b35c3-7f75-8d0d-048b-c55c06fa8a53@gmail.com>
X-Authenticated-Sender: justin.swartz@risingedge.co.za
X-Virus-Scanned: Clear
X-Originating-IP: 188.40.1.173
X-SpamExperts-Domain: risingedge.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net;
 auth=pass (login) smtp.auth=@risingedge.co.za
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.09)
X-Recommended-Action: accept
X-Filter-ID: Mvzo4OR0dZXEDF/gcnlw0c6d8zDasFm/nDPEg7mmhmypSDasLI4SayDByyq9LIhVNp0zUMatRwgR
 z8NGlB62v0TNWdUk1Ol2OGx3IfrIJKyP9eGNFz9TW9u+Jt8z2T3K7uDjV/sFUXQr+CDrNQuIHgQg
 mAX8Bxy/iUu0ThNZg0jxJtcVJProrT987X1VDPOqN+OoDzRTdku7DidYUZdNf38Sp7Of4wP429AA
 f49baR+f3He7jw4SoVhmTJ/3eP9ORQWVx8ds1M4qmk3/bYr2p8zbg4Paoa3pNVQ0zl7t/+UfQLYB
 qEPnp1U88kqVD8AM2G81dFO0E3gi+MOI1foZYzDggRXhpvoPtF3cVkniFXU3qJSqpdJudO6+rkiw
 E5i8Wl78Q18OeOfsy4h7jF1Uv9lnibl3vcBqVmvQB4A18aev8yKdBC2waPTktEZ3EEGlAVXirbLu
 Jjy3NtnGWLbnBGfrUBEXB2fYGLNieGQuoHtJvp0r29Rf3ZjFwL+MhHEWw/0qBlNDp8uABz3dkWV+
 tnlsqEID1rwhWix/EYFNtp1TycYLFeAN4+MGwnsp7SkU6CLbyF0Zq4b1/7rjUzETJrWks4pbbQJq
 6gWopI3ep45X19ZysgQ+31LcAX8eoFXAhohfegXGH2GIVQVglJFbK771YV8YbC29CtmpcTqTfSIf
 CWq9oj7OiT8GwpAriB+3/81I3rvR8KJ2fK9jiDYgijyqqY0rATpzHKGfmtNsYTr4SmDZ/bGW8xZC
 RRs6ZD24UhFcZZEpLhnBCwImTQNvxaLyCc35VA7RvW/HGiGqxL09Cymermt8NAa/gGopT3kKfO4C
 gvcKmV0o9jYzsFpuc43pp/LzIs3ornuRuAAdgrkq+6l7ZLNYJcf7Z6PCydDzoYZgInuDxgFOs7AZ
 TwbwMdGiAezOfJNnrbxp9qi+/W6jZoRqxRLg4gP9h8BJWcIS38NrFoXSENXH6UXfnav35JPA4YfM
 6tBkXsqvKY6zoLLTPpuFqUUQz+mM8JAD4ECWNo09vb0YLIRnK477e9Xake5PIWKjIXX7qe2zOXoS
 foxF5OBeEfTUrvq9Ipj0IAa6qZ5JdMFUcFLM1AfZpKHSiWbjO41FyBEqIaDudcVplPE6wCr6GXU1
 lCw88ijyus1sGnWknJqS8gGhNQxpB5P3qu7c1xMljx2PG/R+pKBSKy8hXOgvE1zSS7XUhkYEQYeb
 3jR5NeVaJQBh0uawl0Cg8j+knAzOA9mmoJvkuhKHiekUuskYaI6ERCKp8gXWqnT9kLHhStr5fiGK
 7KncpWELuTEvuGslKTrRIXcXpFg5ivY=
X-Report-Abuse-To: spam@antispammaster.host-h.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_055609_379857_D0C44323 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [197.242.87.49 listed in list.dnswl.org]
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
Cc: linux-rockchip@lists.infradead.org,
 Justin Swartz <justin.swartz@risingedge.co.za>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset aims to enable use of Rockchip's RGA, a 2D raster
graphic acceleration unit, on rk322x based devices.

Changes in v5:
  - Remove the patch to rockchip-rga device tree binding documentation
    as Johan Jonker has already included mention of "rockchip,rk3228-rga"
    since the conversion to YAML.

  - Remove the assignment of "disabled" to the rga "status" attribute
    in rk322x.dtsi, as Heiko Stuebner has said:
      "no status for soc internal components without any board-specifics"

  - Remove the now unnecessary patch to enable rga for the rk3229-xms6
    board.

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

Justin Swartz (1):
  ARM: dts: rockchip: add rga node for rk322x

 arch/arm/boot/dts/rk322x.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
