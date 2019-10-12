Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 196EAD4E67
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 11:05:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8NBhpbbs83YEcC4XLWkMlHnOqsKzoK1SoK/kNDjbwwQ=; b=cr8jpDhWpioU6v
	J+BzgckrnouW3dpWKUlniA9GXe5K6ouLiI7IIaSA0GQ02rk/NvVBQoO/3jE6McTBECZM8OR35EZWF
	4DKiOIU41U93qYMxsApTqyu5RtODHwx7di2XlyUNyEBsElrbnfqr9saW0VEQt1ZKyaJHHoC8Qww9F
	6saHOQBWI2BhwByr5+N7n0Or284cD0CE95w0kdyrewBzYNK1yaNedqQo7NmrvN0zNS+MB/zg/ktuv
	qFHlJolFPfNsdlfqIH1Hyf4E+c9CSodxv3bSuVWDyV0I0NqmuCbb4fBMe9W4Qo8wx40DLX632Fd/M
	ErUjlytLy7y8HXMVzOOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJDKb-0007CY-Fr; Sat, 12 Oct 2019 09:04:57 +0000
Received: from mout.web.de ([212.227.15.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJDKR-0007C7-7r
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 09:04:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1570871069;
 bh=4TIsx6Rh+9x/bB6zyp3SIkJW0TxwyO1lhLo1ncO+Nx8=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=ZetbjomAVPUWfUXqfoV/IeOhRbXBwp8subazL2+b4Drw+Db1AgGFuH9TMg5RJIJls
 WGiYglvU7nJKTfb6Hu9IVxvzAAEzEPXNTHCIGHoy5dVrkZ4opw8hZg59DMpqcXMf+O
 6MzZ/c7KRhHi/nnZuM69PuXJkPo2jv3jlkMxKAew=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.132.155.250]) by smtp.web.de (mrweb004
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0Mef0K-1ihTMr09DE-00OINI; Sat, 12
 Oct 2019 11:04:29 +0200
Subject: [PATCH 0/2] drm/imx: Adjustments for two functions
To: dri-devel@lists.freedesktop.org, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Fabio Estevam <festevam@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Navid Emamdoost <navid.emamdoost@gmail.com>,
 Peter Senna Tschudin <peter.senna@collabora.com>
References: <20191004190938.15353-1-navid.emamdoost@gmail.com>
 <540321eb-7699-1d51-59d5-dde5ffcb8fc4@web.de>
 <CAEkB2ETtVwtmkpup65D3wqyLn=84ZHt0QRo0dJK5GsV=-L=qVw@mail.gmail.com>
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <2abf545b-023b-853a-95ef-ce99e1896a5d@web.de>
Date: Sat, 12 Oct 2019 11:04:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <CAEkB2ETtVwtmkpup65D3wqyLn=84ZHt0QRo0dJK5GsV=-L=qVw@mail.gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:p3z6BfH9ebETAqirXPd60wr+2NKxxK//kiJ73X05X4jlvg9xuUG
 6cEBPvu344s9Lw4AUkWfICL+cBHWHxeFQA7nx0FoIhDHDW+i+Yfbknv8p3IGUDlw2OsVIcF
 108MtTcHPxdoBx1enurcPrU0DHHceIvcIymZJSJW2za9XNasvHtqXh4c8qhtH9ZK9zGQBAU
 bd3MIe7yH9VyUFv3OVtTg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+pmNQZf/6AA=:161fIWpKTe3YZQgN39USjy
 F8P0HfEHQ2NOC6/T7YW5/f1KX8hqw+XIH9d3kdWB4NgefPWtznrrvsz56nJz0fKxU+CPYommG
 ZWgMPAE/yF8/iZAGR8eNRdrnrzBUfYFKZhQQZPxyHwPFfK3Y2V8RjqFRA40Tg5rNLwxSvurKW
 Bx+KbdqSH9P4xJdY0cuHTqia/N3m3ps4qyubqlShK95K/QJrnuD7x3iA6U1d1/Mzo9TwExfr+
 t7IpY/4935W3iLz/z72+400JZCP272Gao9BNlWbES24rEz33NvMOQt3Eqn0ZXB1AP5+aFtu9y
 7c3qOGK7tcaIc0VRCn25P+Ajq2XRkYjcmrumeZddOwzcanFFkG4i7GbUCJY4jwTSjFgTOAUEo
 7GIpaQA82wx4ofIJCLVtL6XpgVElHD5iTumKw69SHwcNqeU35CvlziWRe/E4RUGwFNp9wVBpc
 qvbFg0gMsmAoEwzMobDUkGphE4ELJ3p7ee1qchxoZY6OdlJCT89JgHi7EJ9zEcRoj26c3D53F
 Bp42ULCJD5+eRhSKKHXE7AOUxs0czoiJrzjKsvXtnF5ejkCIVdObbHdX5TA1z8t1NvHlVLV/x
 NQ8Dl3sQZKyORKkeyhbnaXgLFJ0utySLwPdYQR+8xBNmovMjcFB3MDn4wR2peb3FaRvINbjnX
 9PRnjdSETbNv7g9GWnBgoS8/xIJtb8ZnYV4Pii4RnbZI2WveT6qxm198WCJ7PxZpaDOauruag
 GlV3ZOGQTaJR/sBsIs190R7RQDcdVdttTT2o1jOVJu5IB1It1ILC62j33eQhGguyCnnJ4d7va
 a084o+P14ugiUbmf7VzaFq07UNF6Wh0moSqQJ3kdyijxKmYVcjGpSQI7rpe9LdLwCf0STjyXy
 JiwhHHdRu6VNYDr/BRNxH9J95YLNVxlvwYiU2EbHEQfaNG64Myrc51DCM5sC1A1yU7njqwJc0
 UIrKZA/fyZcltDpUE3snuV0x+KqSVYPZos21c77OCMg69+KNzyb7fboFhFSR3UduIC0Mx5Zro
 yX9AUbtp3akf6yn/EFMA1TVO+DcOEZqOseLeI6HknXgqV64lyjY/VTYtbfD6GWdAFEZYRrPul
 esousPdOZWG+htZwgsfm3wrh6o26281VAilq/zf5G6huqHaGQrp0mEN56ZZoyFPGrd7AdQ1fX
 RD3gziNx//PTZ4paaO+FMmV3cVXMXljI3gQ3rO52KLZKh6Kf8b35zxuofnKBn7jzC47ZBXfR/
 gEbrnjMDwwFpn1QdulO44aQxbOFz5r+lplvR1djwPmKZGYEV3AbXWWC9S5PM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_020447_621417_C494D437 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>, kernel-janitors@vger.kernel.org,
 Kangjie Lu <kjlu@umn.edu>, LKML <linux-kernel@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Stephen McCamant <smccaman@umn.edu>,
 Navid Emamdoost <emamd001@umn.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Markus Elfring <elfring@users.sourceforge.net>
Date: Sat, 12 Oct 2019 10:45:45 +0200

Two update suggestions were taken into account
from static source code analysis.

Markus Elfring (2):
  Fix error handling for a kmemdup() call in imx_pd_bind()
  Fix error handling for a kmemdup() call in imx_ldb_panel_ddc()

 drivers/gpu/drm/imx/imx-ldb.c          | 2 ++
 drivers/gpu/drm/imx/parallel-display.c | 7 ++++++-
 2 files changed, 8 insertions(+), 1 deletion(-)

--
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
