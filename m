Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1C4184D1F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 17:59:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mhUv7Rlzu+fhjrAbJ5ALVfwsU9y0SDGqyeYLQOab7GQ=; b=fcbf7Eb6lWoHoa
	WqVZZszABSMvlkZsApDWLoQxztA3NJWI2QE3IBwtGpTbPF5uthGJyWK+tNJTclqYASQSZfKSc9ZiR
	nZQNLvaBlj6PkTO/7wMxQDU2HiKBnCQ6rUFwl/5APFFXh2V2UeIYbIQDIcv7gQscEYB1hWo2ggEX2
	Y5UORiS4wJ567gl7a+NY/UUBpCHgScmmrkIOpXxOZTJPq5UZb13vj55avANsLCwnWEeHAaduc0rI9
	VDxV5wX6a0cwI1Cwqp/4r6dSJoaqhvCFAQBXMjJSDaBdHQv09gjwJvqpnDfqKuexw8abV5zqht150
	cXEK1p8RKgKVOdCMxAJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCner-0008V0-Hi; Fri, 13 Mar 2020 16:59:37 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCneF-0008HK-CE
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 16:59:00 +0000
Received: by mail-wr1-x441.google.com with SMTP id n15so12991592wrw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 09:58:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4ZtpoizzVl8pdp804KeThlDclE0eGVD9drg6pWo+El0=;
 b=i2UGQ1SGbp+mel+QVnxrd0VCpoXiF55ypqwakm/eQQbgmGxhx07CJfHqLNHyNIvtoV
 IV9bqbnyszCY2aR9wMUjjaqxjy9w0gpvOk7k0Qjh3PL6D0jJ2UyX6xHIoQnidbmtL8IO
 lDa6RNLzenkQeRXCm0XSfRHx5YvUzTTVuHuIkNm+sfijHu9zxlP/DIS8lr8qICoEKwBZ
 3e43N1OEC+7MXCQNjXNN0xdKNxzjrh3KVUC9eHdrnB6/fIfyN8k1XxWkm7829IA06t9T
 rQm7VzFUrwBv6KlJz5kZMXm+iDR9Yiq9YEpVPOVLKisQknGymGbMfwHfgZ38FGeZr3L0
 lPhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4ZtpoizzVl8pdp804KeThlDclE0eGVD9drg6pWo+El0=;
 b=f0lVrP4iXyLIRhaIjUVe6lMSeuq/uKWc87S8xQZhK/hdbic4FCkDLl2gXtZz1QIk+q
 pq1QY3AWJXlMPnJHujREw1GcO/akGjCvzSPBll6OYI5Aw6bwp/ZC2YnA3N4xqw0n61hr
 vRMccbq1P9Z+pj1sXVGXN8TE6IBcpUkwUHPM1GjrJ1Nky0EDaY547IVkL3vwzR08y2JN
 MRENk95gNXnk4zxulO/BdLdV9+uC6SIlbpPCiPPAWAA6JDkV7/YABR8lU5Yve9/ET0Up
 Xd0aUutIHGsXSTmaBT2q9d2l2wLmKVmJMe6eGhLMQjgdAgFGdGfGH/7R0bVxlXZC/hFa
 JmGw==
X-Gm-Message-State: ANhLgQ3oCv9m71GG/NAWKDg08y07IGL8DKSnoYw/EqbsiVlbftN9ZAWp
 puNfGcgV2RchyzRUezUD30k=
X-Google-Smtp-Source: ADFU+vtsHX4RwxjvrPuT7ImBThVXBi88Xy6BlRSWICD+LYdJ3D0XlIlkc1TQjIoSeYskz83SR9L3Yg==
X-Received: by 2002:adf:dec8:: with SMTP id i8mr19317886wrn.326.1584118737923; 
 Fri, 13 Mar 2020 09:58:57 -0700 (PDT)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id t187sm18276952wmt.25.2020.03.13.09.58.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 09:58:57 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 02/10] firmware: tegra: Changes for v5.7-rc1
Date: Fri, 13 Mar 2020 17:58:40 +0100
Message-Id: <20200313165848.2915133-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200313165848.2915133-1-thierry.reding@gmail.com>
References: <20200313165848.2915133-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_095859_428901_72CA7B2D 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC maintainers,

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.7-firmware

for you to fetch changes up to 6c2d3a14b7aff13f74fb2331d9a54202c66bea4d:

  firmware: tegra: Fix a typo in Kconfig (2020-02-17 08:54:09 +0100)

Thanks,
Thierry

----------------------------------------------------------------
firmware: tegra: Changes for v5.7-rc1

A trivial typofix for the Kconfig entry of the Tegra IVC library.

----------------------------------------------------------------
Christophe JAILLET (1):
      firmware: tegra: Fix a typo in Kconfig

 drivers/firmware/tegra/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
