Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7BD235498
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 02:01:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ob16uHCVLfSAGtofkiCanEbdGQm1pNefymkLlatgh30=; b=Q40vncwiK6J7a2Wxks0LglkoL
	sCCboQFFMq9Bpr0yjJIkrzdiVE3RtAWa9Y/o5SjCRw5O/sgXJ0pyf+ofkvwitSm4D2RgNcmdhZ371
	7NCYPtae+TIG1uYbFrK+xPsKsUYvkm0z5tlMcRMQHROo4F1fx92WmknSQZ0Iz0RyXylGRtvU9UfT2
	xYnuWnRyDkAXQcMDYw8Cgb4gG5Md83xX5wS5XTGKPDJ4B78LJ605Z+9n7CLeRnYwsCUSVPAX+p7pD
	9tU87on6q6ZPIJtQEgjN8yJi0JGubejNK/OV/Qq4DoqPRkY3OBwMYdmY2J89+DANqO6aY6kjQtkxh
	4BcGsW1Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYJMX-0007RC-2e; Wed, 05 Jun 2019 00:01:05 +0000
Received: from anholt.net ([50.246.234.109])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYJMQ-0007QP-Ab; Wed, 05 Jun 2019 00:00:59 +0000
Received: from localhost (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id 3FE4110A2DB7;
 Tue,  4 Jun 2019 17:00:55 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at anholt.net
Received: from anholt.net ([127.0.0.1])
 by localhost (kingsolver.anholt.net [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id J5PPjNu5RML4; Tue,  4 Jun 2019 17:00:54 -0700 (PDT)
Received: from eliezer.anholt.net (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id 0254810A1128;
 Tue,  4 Jun 2019 17:00:53 -0700 (PDT)
Received: by eliezer.anholt.net (Postfix, from userid 1000)
 id 728A22FE3AAE; Tue,  4 Jun 2019 17:00:53 -0700 (PDT)
From: Eric Anholt <eric@anholt.net>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, stefan.wahren@i2se.com,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, bcm-kernel-feedback-list@broadcom.com
Subject: Re: [PATCH 3/4] clk: bcm2835: register Raspberry Pi's firmware clk
 device
In-Reply-To: <20190604173223.4229-4-nsaenzjulienne@suse.de>
References: <20190604173223.4229-1-nsaenzjulienne@suse.de>
 <20190604173223.4229-4-nsaenzjulienne@suse.de>
User-Agent: Notmuch/0.22.2+1~gb0bcfaa (http://notmuchmail.org) Emacs/26.1
 (x86_64-pc-linux-gnu)
Date: Tue, 04 Jun 2019 17:00:51 -0700
Message-ID: <87muiwzyrw.fsf@anholt.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_170058_396940_F2D5BB43 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [50.246.234.109 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, ptesarik@suse.com, sboyd@kernel.org,
 viresh.kumar@linaro.org, mturquette@baylibre.com, linux-pm@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: multipart/mixed; boundary="===============5645396816605267694=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============5645396816605267694==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

Nicolas Saenz Julienne <nsaenzjulienne@suse.de> writes:

> Registers clk-raspberrypi as a platform device as part of the driver's
> probe sequence.

Similar to how we have VCHI register platform devices for the services
VCHI provides, shouldn't we have the firmware driver register the device
for clk_raspberrypi?  Or put the clk provider in the fw driver instead
of a separate driver (no opinion on my part).

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE/JuuFDWp9/ZkuCBXtdYpNtH8nugFAlz3BjMACgkQtdYpNtH8
nugXZxAApCxDEcQNUZSA82dd4rtrlp/1uMz/j6cXVe9KKGi7a52dfc8MEIvoZDbq
PAN/yjpvQVJosHh+JOUmXzKOEd9seFx9/gZwzdb3/8VKNnkYAy0ugfAzAN6K1XFW
eAV1rSbBAkAtrvL/FUK1WxMN+4yf/yMcY9ZVmKSML2A9KcwkQHpNISOidbfdMy5c
NkqMl9lTD3XoE+VZgUUsLg440KidEOO5kKix7VhP5zQiQ9OG2RInZvhUthTz0qRS
9j+4XCyC7IPe8QpejvK9eocR0CW7sVbEaujUsScR1xSFLWGI11fPgCjnGDzBxzkN
jzofDEUVgfM8hzX+sIJ/DXI7WNNf01H51c8h0H7fxII2U3nNw5WgsQvU8BdoyRS5
WZdWPUAwFMkdlZNqRL7WdJL15in11f5lfiSZjT+Hxp95y77Jf/esA5Wfg3N5KD5I
MWfTvdku3c6IBNi7Iy+l1knz+FjyoV1wYgYtYrzjrZtrGsIssySU+ZrzIrECo/8s
k8B5kM2CHq5GM1d82sqj1haF0IsfChjQQVfIzkKja/FHmpC1IJBAnYjGUas7L+Z8
LVbsHuYZX+yH6k5cMe6f7cljlmeyjaHLDerVVnqlKO7ByYFgbGZUMP8acuBIIrzd
LyNFmfuctdyaiwCnR/0wEmMAWlzn+HvxM7G31vBGo4ihTnlPaS0=
=dVrD
-----END PGP SIGNATURE-----
--=-=-=--


--===============5645396816605267694==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5645396816605267694==--

