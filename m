Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E32E48C05E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 20:18:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YD4LKjQ+A0FmbHHinSHmahEG6LQN4JuZSsfUZQxjbQA=; b=mXX
	mMgZYZIYSSxG2mQv5XO5wZq1xTuRp1/g6n5PaQs36Z0+YGwqgT3vu0uRsDYGauDbtsin7FjZWq06o
	4F6qnfj4a2IIYn1zonQWYobwwMTmDoOVfbzu8eO5pWm8AAa+4h3v6n6mJZcXKlOXWzbqSPmwT1UfQ
	exjg0meLe+xhCALK8VDK+fjhH9gPLIDLpjcn9/vZtUkg//BqoWEIC8l1RI85BTyBWlhhbL9CRFVQ8
	HA0QCzHGMz3sNsH3ZBb/4HG7Swfp0SaVbwdThYkYMmDyDle5f7nIlpn6CQbxHfCiLLlptTL7I9VxW
	IH+Hh/BeniCHLPHfXKDL5wUJkRIGujw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxbNi-0005jP-FX; Tue, 13 Aug 2019 18:18:50 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxbNY-0005ii-HZ
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 18:18:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565720284;
 bh=Vq2Rwn6ZpDvdbJzC++Agdo9RfM34OqXBHgokRaHCjmc=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=WTj/ir7EWEPBhjOfci3nIob7y7Q1LoWiIMlCuv24p4jOapHe13C8kQP1MU3RQP9xU
 vVQ+vqLusWjOoEXRPfVS9EXx7wyyJTTjfgTSEPwe9oZdokO58Uz1A2VYizXKlaN7Dg
 x2cv1Dd1xOY0LA4dMH2gYzdZ2M9ztOBzoOuXZECc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx102 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0MSY2q-1hpnKh3mBI-00Ragk; Tue, 13 Aug 2019 20:18:04 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>,
 "David S. Miller" <davem@davemloft.net>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH 1/3] nvmem: mxs-ocotp: update MODULE_AUTHOR() email address
Date: Tue, 13 Aug 2019 20:17:27 +0200
Message-Id: <1565720249-6549-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:ggoDPxD3GY7PepSw+ctdpLrl9Y0S1aRCjm4mFCxJFfmatdyhLMv
 gQKCUttMR8MgugL3SYZ2iq96h7Lf+bYGIB4yBaRwN5Vk8ECnW/3ra/jpu88CzXnkGskboOV
 tt1BYCRwY4h5TfJGVwZObZWKs/kHuVwwLogYL8GQRhwOnNMB7WBC2c04E8ZGgxUXDpSBYJE
 inPKHKeIaVdlIIdO493Hw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FquO+c5eQAc=:oWHph4cQRWLnygCC2s+DAJ
 KzLKi4uLouuuF8GVsW+JuZf+JT8qOhhX+M8HHg4ISWTwTggQ/88i4v1z1L8rOqtpjr8FzQbqn
 tVzN8dsDs0Qs0INEuJB9JoAjZZgABQJ/8GoLzf4fkrHSHchjM8tZscYGdedU5Hcz82pMq2x3B
 LhnwImhLhZauw1zbCReTPhleCxPzUvHj7Slg4Jy8Hr03QA5s0W/YdOuU8xtVe5Y0EHxC7LsT7
 Dn22kRzsngfOIV3iP93/WslGLrF57bApI+gdn9AlsKkaWWG8mMuD3Lu7HGumX1ld5zTgWhJc1
 Ml/bU6gCCn3RaAz3tWW8UGL1qjNHfJRpLVA3Ig3vVsdQX2UKQFQK2jTWL80Qo+3JNq8HWAbDA
 Ow9zEBqHmFVMn3k4x6DRCwL+kDFl+CZQKTjJ1Q085MPNb2Qrvu0/3u2MZEEADTdQpDIdmkT3I
 eemDTG7WQOEaqgSxTJXGrrez3WVBTQzA/lbFulhiyM9uygyRxNx0L75EydKZB/qSwqjZKaS5z
 JgSgoHIiUZeFPADSUKUNpoyhSHcZsJc6lIGRqbH4HfO7/SZzPc4d6KhPBdWgZtizGC+IQL3NO
 yViNAEzK0E3o05spkTh6ShkHhlyXt1gGNePwvNo1Ie42g7VzJ0GmVaLpesQJJjYlRi013xGH/
 uZ7PVe6J0JTGLL5yq8EyOkhn8A1dJxm13EUijNTtX8LT5lYCJ9yQaTcnE6OpkKQO4DzPDzqpC
 QakBF27rkY1YIq0r1xBTS12aspTRWi2q7ac/0QZHYZypPKXU8Oyr5jAMDJw/o7rL4NrP3/3qR
 vxaU+UMgImqd69i65UMH+jNhNXgsXWVGBV2J7HpEXN/oOI0kg8NeWCLWiX/UXFmRtLRQX43Ax
 Vxz6RqcJvqQ6JtmBQycSd5/iplhipnsShUUbvTn0wM5ImSI8qSJ+83ksDxUw5p+cyQJbq8YQ1
 SvG1+vMhd2hlk/LujgOnultEYTWu2V7UlrcdGYBOAsKmFC0C1SKDoIKV+FoKtcaNHsdSFoy3E
 2wqSi6pmgWoKFmF/UqpSLXe6ZbE0XaOweQ0V0CHPz+RRziCNhCeEzkxPjHBB5O4vt9v+TXJaA
 AJZAdQDsOtgICLm8SCTzJimj0pkZVXbbQL077tNPeQ8zAomIyHyv0bs1tOY7lqrEahzfNvBSP
 EAa1T7vDowUaDmVZ+SJ49fZkOmfm+aagWgAslo6bf+tAFP+g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_111840_994699_59A9FF3E 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-hwmon@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The email address listed in MODULE_AUTHOR() will be disabled in the
near future. Replace it with my private one.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/nvmem/mxs-ocotp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvmem/mxs-ocotp.c b/drivers/nvmem/mxs-ocotp.c
index c34d9fe..8e4898d 100644
--- a/drivers/nvmem/mxs-ocotp.c
+++ b/drivers/nvmem/mxs-ocotp.c
@@ -200,6 +200,6 @@ static struct platform_driver mxs_ocotp_driver = {
 };

 module_platform_driver(mxs_ocotp_driver);
-MODULE_AUTHOR("Stefan Wahren <stefan.wahren@i2se.com>");
+MODULE_AUTHOR("Stefan Wahren <wahrenst@gmx.net");
 MODULE_DESCRIPTION("driver for OCOTP in i.MX23/i.MX28");
 MODULE_LICENSE("GPL v2");
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
