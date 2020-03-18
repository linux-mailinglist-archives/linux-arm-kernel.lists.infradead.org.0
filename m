Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1B1189502
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 05:39:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1EACxON4/dLF5URXAyXfilTgGkGAqzpc2yh5VNOuf/A=; b=nDb3NbnfEpLrl3
	juQSSlmv6mPbzJ1ZTAgGMHp9SHMEYVZV8dhWu1i9zGWE28gSCL4DZ49pcyW5iCy6naC6jCGKlVCg+
	GwmnG0qKeQ3jE6BnMNKKK1Y/36lPmaOAU4Sh4Wtyw7HE9pUxu1FcRfMtzHlMUHblXwZkaXQtXObm9
	hjeOEDHIVM5hJ/YkWxEjkER543iSWE7XNeH8xq9WuGwI4zoOMmbpqVIessv9klkIoUriscVXlVhiX
	ma75rDXcomOp9SMKgbONjhdTkFLI/hVfapkjsqTjHCp/5w2Ilqf2zEOsRfPp+jXqNAhFUahWZZ+0A
	jYuBmJIRcF26Fd8y12Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEQUe-0001yp-2m; Wed, 18 Mar 2020 04:39:48 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEQUQ-0001yF-Tb
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 04:39:36 +0000
Received: by mail-pg1-x544.google.com with SMTP id m15so12953949pgv.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 21:39:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=xd+tfczm+GFBbyN7oeAC2lCrluQJs/Df3o6LdEw5aO0=;
 b=iMZs+SH1m6J3eHw3F9PW8UwD3BoJ6r/2umzJOHBddrRm3tIP8zy/m5vsoUdlnHojfQ
 430hIYK6KJGe8ZSILOgfs036zcVOa7Ip0lnuatLosF42xozKpIRMLzBi+tlkXwHs3a0M
 Cks6JE433+RXMMXU/1eIEvzarDD2xtIE6M6DQt/gPClQpT4ouKPrctVLa1lKlFstWJRk
 T4zF2iqzS3VnxgKHkm5vPYbGh8q6G9eEyaGhajS6hoO4LxusYKD1QR7eQdbpMkPULnih
 JZk1cteA1JnYrBL75Hw94t6aT+S7RCE4J31g8DZfUrsbEoic9wTbCodySX/E/hoXR93b
 aimA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=xd+tfczm+GFBbyN7oeAC2lCrluQJs/Df3o6LdEw5aO0=;
 b=g7fj9kkKWdwXoaqb8wtRF2RnVg4atUX4hDuSsHuuR37o4nvSDTUHNe5bvpch45QClq
 DIWHw44myc34kOrq/ipQ3rnd5SNFhA9eRcQT3RAFT8zdeIhKSmRXB3q9WUJViCMQ/XNu
 RN066WHQHIaH27HFSj/UTvkrScOjnPFwnI7VWUdE4WY+TD+uFMBYsNVqAGG26DhZCifC
 0fVCJ1Cw94DQHkZOo7BsYwHxDc13A9Yx2UrbNBHlAdMMOKtN9jDKdZBersM0PrDBPNUL
 143vs13/0ECpJncon3HO2NWl+/JfI8oJDeNWTYSedJqzwdQSz8SFe2KfvmK1n1OEzk9m
 6Xwg==
X-Gm-Message-State: ANhLgQ0j3XILAuEb+LWKk0+CjlyjtHQQFvb3iu2jawBG5zjFQ/vd7zJE
 5pqmM9UbGVy/pUDLDTT7WZ7CRw==
X-Google-Smtp-Source: ADFU+vuh9F076lboCJ2meIS0Qfwmwi0YxvuZku/xF5f4h8p6tcKXHwRxHNM7e1VLGdtfJS+BdzGpvg==
X-Received: by 2002:a63:701b:: with SMTP id l27mr2708042pgc.57.1584506374238; 
 Tue, 17 Mar 2020 21:39:34 -0700 (PDT)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id i26sm3383173pfk.176.2020.03.17.21.39.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2020 21:39:33 -0700 (PDT)
Date: Tue, 17 Mar 2020 21:39:31 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Qualcomm ARM defconfig updates for v5.7
Message-ID: <20200318043931.GC470201@yoga>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_213934_992029_AF45DF69 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
 Luca Weiss <luca@z3ntu.xyz>, Andy Gross <agross@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, Olof Johansson <olof@lixom.net>,
 linux-arm-kernel@lists.infradead.org, Brian Masney <masneyb@onstation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-defconfig-for-5.7

for you to fetch changes up to 3ae09e2608c3bbd619605e35fd3f7b5f547aea3f:

  ARM: qcom_defconfig: Enable QRTR (2020-03-09 13:13:02 -0700)

----------------------------------------------------------------
Qualcomm ARM defconfig updates for v5.7

Enable QRTR and the Broadcomm bluetooth driver in the qcom_defconfig,
for usage on the 8974 devices.

----------------------------------------------------------------
Brian Masney (1):
      ARM: qcom_defconfig: add Broadcom bluetooth options

Luca Weiss (1):
      ARM: qcom_defconfig: Enable QRTR

 arch/arm/configs/qcom_defconfig | 6 ++++++
 1 file changed, 6 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
