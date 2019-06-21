Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CEC4EE2F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 19:52:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NS+06As3eIv75GyhTZFgWR/kjeScQ+qjaXxtFDFxCOI=; b=sca
	jBiMoOMQz77BOVKhvO2rYOv5Sgbvux8i2fFw/ZnOC1UsQPWhS1ub4NF88ae2fgGjtt1GhhA/cPSDc
	+Wyt5OX6VskKJTTDA8BD/fpOisUqhrJtdSzvr1jfjKEkzmv+FmIVFsnH0xSJZBhDuc+ZyUPA290qh
	vKdaEtopO7B39GJt4/e/BvO/OLs3nA9pJ0XaIK9ZjAMqYUWNytq4eVl0PQl+zwcfLmzRWIaV5becL
	surcqVWdV/plszjTcZfonJDqvgAxZzYF1fW5zsyN5tXVZ4uYfkMF47baPs1EqNyu1sFsDCFOjydWJ
	SGHi741yc0mGf1/nm6J2N/iG1pBTMtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heNi0-0000Mg-LN; Fri, 21 Jun 2019 17:52:20 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heNhn-0000Kp-EZ
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 17:52:08 +0000
Received: by mail-pf1-x443.google.com with SMTP id t16so3962667pfe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 10:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=4j1jgb60+vjl+kPBTjylj5qPTzQMqAf23bwaYlsk9H8=;
 b=QPl1s1XNi1YMvLUgHHbaR/3broUshaZNwQzeV+u+bMj6zzwYKoLdCqMDU5rGm6Xsd4
 cBsn0GoEqme6e854wOOzayakbz+vlZwiZFX1Uiniofppp+hYTnxHRzvLNF0KfgFR+JhN
 HtDXKpP3zs1wX6bHWqv3ecq8oEOHGFpLiCLnp8wxd8tepvycNzi+fLUnUxVQfED2GQGL
 RH9VtcJ2+0plXKzA/CqODJwt7hOUN3C2lCTNdMFA8zBIRbHBHgbEDbKXoSyf3hhTU79f
 D+5gZt/zEJRZP3vrI8rdKZIpJTweOdX6r9y1gyZdbTUFb8SZTdpc4r55UwYo5EPYsmjh
 oqoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=4j1jgb60+vjl+kPBTjylj5qPTzQMqAf23bwaYlsk9H8=;
 b=J4mwn4kw8Zt/LUsuiCKXZuHkPQ0sdzmpavpKsJvu4/MyLUip7Vgksc9J5XsSqkJYKs
 uMtHRI5RPwwowGTSCTo87k+/QSt577Vv+/+/CqJQ0R4UdVrVcrsKNwf96nYuUdDc/qMt
 7spm3mbHK96DtLvZ1qHOPKrY174ASijNc7ONjQHVi774I87cFQySjkc4nZ9hqMrRgIin
 qDVIEU7MWLyTiJ44Ixs/XMpqnuhudg8GZPlNbUCss7FpDBXzxTpmKDEiUSQ0Tec4fnxA
 bxrEtAVfy2f3TZSrq71R5FeW0gLHF254fAWTci0WecAA5+C9m0vf4IbOtIDiQVaBsQAz
 mh5w==
X-Gm-Message-State: APjAAAUVPdBcpE+Tt7cFR6u7U5cRqBBZab/zBn5c9bWQ9RPBon4U+aYy
 cFTYy213GxSWB/7AhLYwIl4syFb++AAl1g==
X-Google-Smtp-Source: APXvYqzfBR3pdrkArDInUcFokCzP/JAVp2Dpb/fraFhhn1XS1frL4QKVU8DsK+gwfSdGU31R0VXO2Q==
X-Received: by 2002:a17:90a:2385:: with SMTP id
 g5mr8446286pje.12.1561139526882; 
 Fri, 21 Jun 2019 10:52:06 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id f17sm3378490pgv.16.2019.06.21.10.52.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 21 Jun 2019 10:52:06 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/2] coresight: next v5.2-rc5 (Part 2)	 
Date: Fri, 21 Jun 2019 11:52:03 -0600
Message-Id: <20190621175205.24551-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_105207_492025_917964A5 
X-CRM114-Status: UNSURE (   6.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Good morning,

As requested these are two patches that were part of the original tally[1]
that should go on your char-misc-next for the 5.3 cycle.

Applies cleanly on char-misc-next (1a044213fc64).

Thanks,
Mathieu

[1]. https://www.spinics.net/lists/arm-kernel/msg736135.html 

Suzuki K Poulose (2):
  coresight: etm3x: Smatch: Fix potential NULL pointer dereference
  coresight: tmc: Smatch: Fix potential NULL pointer dereference

 drivers/hwtracing/coresight/coresight-etm3x.c   | 3 ++-
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 6 ++++--
 2 files changed, 6 insertions(+), 3 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
