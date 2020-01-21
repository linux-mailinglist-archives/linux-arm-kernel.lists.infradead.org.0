Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E43A143E7F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 14:47:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2CG3jAGhVZEsAyCn5DTch207z919w/nKWBiPwK7j/N4=; b=rhW1AS3Yn9GUjm
	/Fm6PsDj9rC0oe20I3OySoZ5aHyBZTaV+hoHaDN/2EykkkqZCUpO5jnJ/2XXk7YvvoDmMMGYZtqQ/
	V3F60jAc2AIL++HpJj2XDFwwhhW1PBFovyxMKA7CarfX3lxVkecTY0opJHMGWQFvHaGYcehHgtmJO
	oEC3c6wPxdVUano0WhbAydi8m/Jw99K69edc8W3usZguO/KPfXa1S8enGKdBa9rcriEPKJDddya7I
	zBqYcozpqOXgXdomqTka0X8Gx61RSrovXbQuMuaBTjAAO5TmC3ziYKNMc2J9MfvjI5oOi0i5ninnx
	2Kzk1xhznPVlR2HO0cbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ittsH-0001oj-7f; Tue, 21 Jan 2020 13:47:21 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itts4-0001n1-8w; Tue, 21 Jan 2020 13:47:12 +0000
Received: by mail-wr1-x441.google.com with SMTP id y11so3256112wrt.6;
 Tue, 21 Jan 2020 05:47:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=GlVSvFefthhvDndxHquihB1g9N3pysqIKkyZHPQ+LOQ=;
 b=gWqXTSOR7c3TA7dwjaF4xYiCZIGscmbPPMzPaK//HkoFkOPNoFymt3z3u6KM3fEdJo
 YdpnAcVFZ2kRZHa3fL5p8xP9qWPKL4baQ6IbaO03oLZxR+yb0uQEQY21sWxcUupxqrWG
 OSLv6wjpHspDdc6KPDJtJ57aDFgM088BwF6iY0b7XYd/e2m1jikcBKO6sMpTafb0s33D
 HkaSpCRuNxe84bWRJ3Gd3AT/ZgGU/BQ/YCMGczMY8g9FymMb9JfrIRVa831npeV1d5Gv
 Uds0sYJ9LXBRLiha54LT8le77VzIwPA20s1Xw/Xx+4YBG/4QP1b9x6amWyftIdn7F06l
 lBGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=GlVSvFefthhvDndxHquihB1g9N3pysqIKkyZHPQ+LOQ=;
 b=t8ch+lh+rKvrpSOjqkx3FLQE3AnkAs0ep0z0FsnFYYwDQ8OqEEmSrV4qvwox+sc79u
 8oC7s/elU8JI9vC+D9eWXJXBgmReEy0x9E3Aa1gsxkWY9HyuTb5j2twNKBpni1TqPcPu
 4e6dKF4fZz+Oh+w+8geI2/VhOKy7JUSz97MGHBZJwtXNwarX5oK9ai+dQvSLjd9Qyxk6
 EHIK1mc2p2OCv4nhAYKMW6zoyMH5uo7T1BkBhZDSxYqpl7RaC06BTrt/vsNBpnUe75mj
 n+vhDsraaoUS/WHMF6mVYsUAlgcv+oVwlV/EnKPkm5C6ZelGpxiIF7sL7e4tfIjxt6Qn
 O2zA==
X-Gm-Message-State: APjAAAW7MDj6bE58w3i+F9D6UjRAyg4xtOBR2zidijzESmx8pQ1dVXq4
 LLaSmHtA5UbvU1U7An87qpI=
X-Google-Smtp-Source: APXvYqw9ozq/43cGjkx6h7pBZMO6XPg/SApSBU9iRuCkRi8YdUpV7oxeAri8PTODt89gXFbTc2u3Bg==
X-Received: by 2002:adf:c54e:: with SMTP id s14mr5150884wrf.385.1579614426236; 
 Tue, 21 Jan 2020 05:47:06 -0800 (PST)
Received: from linux ([62.96.18.94])
 by smtp.gmail.com with ESMTPSA id u8sm3870475wmm.15.2020.01.21.05.47.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 05:47:05 -0800 (PST)
Date: Tue, 21 Jan 2020 14:47:05 +0100
From: Sandesh Kenjana Ashok <sandeshkenjanaashok@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH] staging: mt7621-pinctrl: Align to fix warnings of line over
 80 characters
Message-ID: <20200121134705.GA28240@SandeshPC>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_054708_317155_4140C2D1 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sandeshkenjanaashok[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devel@driverdev.osuosl.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Issue found by checkpatch.

Signed-off-by: Sandesh Kenjana Ashok <sandeshkenjanaashok@gmail.com>
---
 drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c b/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
index d0f06790d38f..df5da5fce630 100644
--- a/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
+++ b/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
@@ -159,7 +159,8 @@ static int rt2880_pmx_group_enable(struct pinctrl_dev *pctrldev,
 }
 
 static int rt2880_pmx_group_gpio_request_enable(struct pinctrl_dev *pctrldev,
-						struct pinctrl_gpio_range *range,
+						struct pinctrl_gpio_range
+						*range,
 						unsigned int pin)
 {
 	struct rt2880_priv *p = pinctrl_dev_get_drvdata(pctrldev);
@@ -218,10 +219,10 @@ static int rt2880_pinmux_index(struct rt2880_priv *p)
 	p->func_count++;
 
 	/* allocate our function and group mapping index buffers */
-	f = p->func = devm_kcalloc(p->dev,
-				   p->func_count,
-				   sizeof(struct rt2880_pmx_func),
-				   GFP_KERNEL);
+	f = p->func;
+	p->func =  devm_kcalloc(p->dev, p->func_count,
+				sizeof(struct rt2880_pmx_func), GFP_KERNEL);
+
 	gpio_func.groups = devm_kcalloc(p->dev, p->group_count, sizeof(int),
 					GFP_KERNEL);
 	if (!f || !gpio_func.groups)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
