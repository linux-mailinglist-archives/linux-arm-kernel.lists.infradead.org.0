Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9364BD4F71
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 13:54:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HOzTJWKrZUwjxF2gTei3JnmWPXboDey2MXnW0lEL5n8=; b=nIB80BFe8m6aYV
	WFlqHMT+MNgdvh9fbe77NBP3wVZy9in5uQ+Vf305o432sECK2hC2DhukWJthsugeffUb37MYIemA2
	raEHIHykF6ZSaApof/HNONCs35+uGDaasgysYO1Y5KxrMS/6rwHXUT87w+xF5ZM01xLZyzW4F8Cp4
	bSvzadl7oZPanEuS9ITaYg4nxZ3S6mrG1GwD+EwU4dFrEU9qARH0K763IY2mEoVqkppo0V4Th5vRL
	ReUlrXCaTQ01Wdypo00XKc+iNnNQcxB9/OtSLjxvUFKw6bGkyPa257pTW6YrtQ6JD2JaS86rx3TtK
	Em4lnh5vQZ8yOOyT6kqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJFyn-0005Iz-9U; Sat, 12 Oct 2019 11:54:37 +0000
Received: from mout.web.de ([212.227.15.4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJFyd-0005Gs-Ef
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 11:54:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1570881248;
 bh=6rBqNUzM2LQ+qbqvfiyKiKBgp0+NLYt6FtzenMzPpa8=;
 h=X-UI-Sender-Class:Subject:From:To:Cc:References:Date:In-Reply-To;
 b=h8bf4dNVi3gjlLu11LtS6sL3jk55vmHJhYJ2IiY/s0dHiVBEsvf13bOjLzlemOr9r
 GIMEthqa6YhoMqdCxuHwWMwzoyb2k7Ek+I1lC+fHeaGxC2/At2646O7VlRvGRWlIK3
 Y0b8HdVu7zg/zloB4a+PgoQh69+sQ5RlrFWM8s6c=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.132.155.250]) by smtp.web.de (mrweb004
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0LbOuI-1hdpH821e6-00kw0W; Sat, 12
 Oct 2019 13:54:08 +0200
Subject: Re: [PATCH] drm/imx: fix memory leak in imx_pd_bind
From: Markus Elfring <Markus.Elfring@web.de>
To: Navid Emamdoost <navid.emamdoost@gmail.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-imx@nxp.com, kernel@pengutronix.de
References: <20191004190938.15353-1-navid.emamdoost@gmail.com>
 <027fde47-86b3-35c8-85e6-ea7c191e772c@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <f90d7b4a-c4af-eac1-f326-211e932dbd22@web.de>
Date: Sat, 12 Oct 2019 13:54:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <027fde47-86b3-35c8-85e6-ea7c191e772c@web.de>
Content-Language: en-US
X-Provags-ID: V03:K1:dqGMq/vAHm39/dR4lleWUi6qJbQkT3h9gxOrm2XzgVDFani0qBx
 yN9tjx7pCa+DfNgBoYnj+SodZw/09onwCsKFORsAqZNxS6xpbaEIKysPidx3yO4Sa75Z5iY
 +qdB/XVUw5Yvqr1Ihp+pg+a+xCcMz50ttLtLsirHGpgLOuv8Awvh3rSQGM4zQHtv+A7nMSQ
 WJUU5yG6m2WB/1QCt1l3A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:TfxbhXI6wCc=:518nXADVY26Wq5v0YxTKk2
 DP5usAbuHA8IiDuPs18sK8pD2xEFOLByqy3L6WrbsklerDrWcJEjDBUBRYFGpJ2/1Ay+rGcmP
 Pc4UMYKl4bXJXpoA3yVdbhT1C+d638w+KHF+akbsntLesXw/eOysRnPyWBnqh5qfJ21m7JW/B
 CslJn1vQbO7yyTNWD7ycZefbocH4ckYRGt61xUIBwsNLASS1byvAEAjGcEtULdjn0vrNvjlFr
 WSAnZOT0+Lc3B4DIqjIQy6tT7yWOX1e/7aEoUZXrabSjnzX7hjuzVT/o/VanC/MaZnAQlmdfB
 d4CJhEOgz5gdmtJyUF+dDsIyv2HlVYPeBaLwCm1+CIyPwaNHPP1kbyuDnw2Dad54AAf5lLJMI
 hXQNkHbHmjx1uWx9Doy3lj8SbgjiJXAVnZVpZKsYrS5QG9KyrHlr9sYzAe6tghIYfrFWkMTFV
 usBCqIG6DxW2XmyyUAKw5xIDhPkDVkiYScNMCUsAHAzg8doKiG2Z6f6MFpSwSkhiBnYGuS1jl
 NbeDg2oept4aKKkoubXu5c4kmSUYqNu/4j/RTD7dnhPfYNQdIKqbsptApP2O2H9hDA/U9uar/
 D0iiTNSs2InEgQtaoG7en6ImfqFobQvhvT3ME+MzwtnInmh4VTVYIxmgDUq3MRyTW/Zijs0pP
 EzxwWsdwvXP0iaZZe2kA1bZCdixqPbvIsDl9JLuXcHq20/AfTvoaSsa4m4nB9exPDVArC//zb
 uU6pbHNWigo3v5eOtU21jOvSu0dby3vTG5nDIG1HrWdPMNIY5wwiJyFCEhIOO9ct6CBGYAFnn
 Z8uEDHBx8iTEBKeFHjvosmKtXc1xoSjFzpi8JHvUnd8HfhB6G75lS1aL6Y6GXsWnj2AQe3P5v
 YQBurvRrXu/HSm1W7LXsDaC0dRtsCTbLl0u2hB02UhXCgRa2RhfdcdLNmnk9XHLReo5o+mFMt
 ujzSInF5QlGt7H3U2XF3Muw7Uc8d1IbFd+G36Cz8lizi8WRscIBT3jAhcUa69zxIYFBAN+DnK
 Jf+yvSyVsWTak6VpEsM/c1W9J6sN2HDVwAxZq+l9vGJmAy2TOucB9VX1Hwb8K/qclyILsMTZm
 gGnu+ngYI//4Bu5ZBn7j9m/okvbSB3VDf1mIcPthwtGMxY6p9bnSbsKqIo1tHMy8Ck7lg/MHM
 /C3QdmrVaLU3+pi2Ey/bmeaRJoyMC43mR4LwoeU3kPzFkg5xGD9p8h8KyVYADWg48QyufaF9a
 AgPOUw6moZnyuxHlsJ6i4gGbvitpZNX3Nsg+sXgX/sy1Ks+H+7hjHICAI0yg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_045427_829690_147257FA 
X-CRM114-Status: UNSURE (   7.59  )
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
Cc: kernel-janitors@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 David Airlie <airlied@linux.ie>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Kangjie Lu <kjlu@umn.edu>,
 linux-kernel@vger.kernel.org, Navid Emamdoost <emamd001@umn.edu>,
 Daniel Vetter <daniel@ffwll.ch>, Stephen McCamant <smccaman@umn.edu>,
 Fabio Estevam <festevam@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiArZnJlZV9lZGlkOgo+ICsgCWtmcmVlKGlteHBkLT5lZGlkKTsKPiArIAlyZXR1cm4gcmV0OwoK
SSBoYXZlIHRha2VuIGFub3RoZXIgbG9vayBhdCB0aGlzIGNoYW5nZSBpZGVhLgpDYW4gdGhlIGZ1
bmN0aW9uIGNhbGwg4oCcZGV2bV9rZnJlZShkZXYsIGlteHBkKeKAnSBiZWNvbWUgcmVsZXZhbnQK
YWxzbyBhdCB0aGlzIHBsYWNlPwoKV291bGQgeW91IGxpa2UgdG8gY29tYmluZSBpdCB3aXRoIHRo
ZSB1cGRhdGUgc3VnZ2VzdGlvbgrigJxGaXggZXJyb3IgaGFuZGxpbmcgZm9yIGEga21lbWR1cCgp
IGNhbGwgaW4gaW14X3BkX2JpbmQoKeKAnT8KaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8zZmQ2
YWE4Yi0yNTI5LTdmZjUtM2UxOS0wNTI2NzEwMWIyYTRAd2ViLmRlLwpodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9wYXRjaHdvcmsvcGF0Y2gvMTEzODkxMi8KaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIw
MTkvMTAvMTIvODcKClJlZ2FyZHMsCk1hcmt1cwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
