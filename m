Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 534A11ADFB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 21:43:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6FgrtMWhXfTAu+X+nv+PdHonv8dHCOcpUuiZaPHJ0gs=; b=L6/V4V44phP0vd
	BSdbJvimqhaWynaoqGkzfds554H58UwYr+lC5aRt2qMWl0l4wfpGJ4TxczxEiKUlGDUuQVWsBylx4
	8Fabe7GEaWjUTKRtl7AIdM0qb57VsQeU3Qge0Fd/og87EG4d/6Fi66WfBykzl+CgHO+rE8oxwliPL
	wP4I67bvIAY++QYv9eHsJHboapj8JY3vgpKxLdgAehkYP7fvt5tLXlSm4unV2tbITKtgPCL15ris2
	HKfgPwQggcHIz1akAup7nRAeVn7u7Pzv3zG+8wF8aiykWrHlDP7zpt7Nh5UCRx67qSBoA0jP3xbZ7
	dUG8DT5Mr5ECcsmvdXGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPuNV-0002z9-Dt; Sun, 12 May 2019 19:43:21 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPuNN-0002xw-5g; Sun, 12 May 2019 19:43:14 +0000
Received: by mail-wr1-x444.google.com with SMTP id b18so2921117wrq.12;
 Sun, 12 May 2019 12:43:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YkKnBKUFEKkDHQcg46RtzXFD9NeWizWJPkqwcfN4Wh0=;
 b=mvbKPUtz35AGODuQ9K5K6a9T+agne7rqu9/Qr6o1q6lNuwng+f59HDCKbvTvdMlJ6c
 tay6/jDjraQPYW1yUkEX32PfpaWB9yXprec5o/OLr4xfqfIGtmLiFZNGzGQSZA1a/TX9
 Kab/vzHiIfFZXzV4zrPTtr2VW74QWPjDHVeWcv2VDSmkOF/CD4WUficUaKu/UmHSgMsS
 kM/USbd+tjhfVG0CvGBFR2hglW11J++QoSeo1I4E3zyeGR2JwPClPed6M5rDxkhr/AU2
 IxDfmUb27bzNVkGpcVVo+otej5AgJqxc7JJm5pKUvRuyMiQBzJwsxG5XN9me8m7pS/ya
 IZnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YkKnBKUFEKkDHQcg46RtzXFD9NeWizWJPkqwcfN4Wh0=;
 b=YAY1BXcczaaOUK2J/Hp+Ws5086aUqe5XnLGz0Rlt/WNNJA2NivlVo6iF76oLHtlWcD
 rnJ+lFiwZ7wf72xpp/xjApQApCxoFFDLMAsP5O5k/0ZXLExBWeiZwgPAW6ot42f/A23g
 n67c5gxjSwHayhV3pKBUOXQZdjaBgwLUbSj5aNeGK0qYzeNuFZkpSshejJw++8E39KQi
 3qjeIIy4EdQOYnIXHNZP2iydHS6QH8BN9SkjKdMP5IzJ1evGW8nDZ3gge2XQDgASmNOz
 5LArPV9GKcnCSForONQRPlnNF9lWn/otM/657OLgDr903n3K5buzGM0tk4o1v1QsP2hB
 ZoAA==
X-Gm-Message-State: APjAAAX/dhu6DNwK0ysOI1zK5Nu1mnsOK4V+DcunxrFNAiavKMzcpLjE
 5KsG5W6Dgr2oSiKXMT8XfjsrdI1bRQo=
X-Google-Smtp-Source: APXvYqy1d05NDscbWQi/nz+Tj2aWJx8x7CvKkvlyeMlWGow/RSrPZ6ZGd7eG1OmLtgniNupyS7n6mA==
X-Received: by 2002:adf:dd0d:: with SMTP id a13mr9410128wrm.153.1557690191211; 
 Sun, 12 May 2019 12:43:11 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133C8AD00ECBE9107EA8EB108.dip0.t-ipconnect.de.
 [2003:f1:33c8:ad00:ecbe:9107:ea8e:b108])
 by smtp.googlemail.com with ESMTPSA id r23sm13685178wmh.29.2019.05.12.12.43.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 12:43:10 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, narmstrong@baylibre.com,
 jbrunet@baylibre.com
Subject: [PATCH 0/1] typo fix for the Meson8b clock controller driver
Date: Sun, 12 May 2019 21:42:59 +0200
Message-Id: <20190512194300.7445-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_124313_216708_C9D3CFEA 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a simple typo fix for a clock which was introduced with the
v5.2 development cycle.
Nothing critical, so I'm fine if it's queued for v5.3 (no need to send
it as v5.2 fix).


Martin Blumenstingl (1):
  clk: meson: meson8b: fix a typo in the VPU parent names array variable

 drivers/clk/meson/meson8b.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
