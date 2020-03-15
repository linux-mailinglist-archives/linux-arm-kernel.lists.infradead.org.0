Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2BE185DBF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 16:03:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XxUi661xO7AUbLPFSdPzT3mDL/aFxrnRaZlWWUgyZ9I=; b=tBB3GblCe+7S35
	hefboY8koxUcrpoX4sF1mrMuL0PXqHatMnaPgcTdxA3DkpR84aGTNopPkR3L6WUkzRxu5tU/Q7TgG
	GFw6Vkm4uqGxPrOyvvF8+FGvael0gTtAEc/T9lyWrezY4N2zPgKBQnWhvNobzG43Oz4QqGlALGtSk
	IM4LkodaFitykEfmes8HyebkmqUZcLDOMPV1u1TO0XGRztBWi3xpOIIJI9Xv4GLYLf+lXJSnHiZ4f
	Faj/478pirX740NsIpPsOvclHAc8EMUfwMt3Fsv4pRB9RYD0Oz0kYEGhJt9Ao6NrU9/b7sUe6MEiF
	OI+Hjg7auYirJ3ZBrxqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDUnP-0007DR-6b; Sun, 15 Mar 2020 15:03:19 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDUnH-0007Cq-16
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 15:03:12 +0000
Received: by mail-pf1-x441.google.com with SMTP id c144so8331016pfb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Mar 2020 08:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Kc0ThdNzpJn+Kfcg/RI1G+X6IBpfBw1q8Ln/bdPz3gg=;
 b=gun4vQCyYWP1bqzzwNKXuuKF29zaiHKnVk83U9ZMhT/rCB7hAm6a8Cdj6qI1V3e4IV
 /Rc7jjUJVxlSRNl/AwxR+g2q3fzUzLVCP2EOb8tHLoG3V8WBY8fg2EGbLABKxuLHV2q1
 PiOUTheCzjMuRt2W6lhsPgXp6r7UDlhK2w73y5XXMnBK86ZlVt2aa933ie9R5UyvC7ty
 p8wqaaMYQc7ACTMv2TzR/043Gd8/OfEcmi+dvCTZR5zobaN2Kb9/xvv4umxfhiiUfXhx
 ADRo2NteR1DfuarrFYR/q/mXLAKF3UA0UMXwsQKBlb85Axs7z7mJYll4R2ierDo8TfzS
 3Img==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Kc0ThdNzpJn+Kfcg/RI1G+X6IBpfBw1q8Ln/bdPz3gg=;
 b=ll6XNnrFeOAcWXUZZvYTGXWEGroV/kBaRX8MQxMhL7hOkg3Kl42D2hklc6cHDYlMBm
 CUHMjw9kT8Io3lmXfMA7RDnxabS9GsWq7pxUBzHUvnXl9RlP6Sx6OdBgMvrHa0BR2xsC
 rPMJMbmhJ9EOEcsipFoSpJsV5DSG91hS9X3/Fn3RhSoqK0DeVoepkP6AkRLlVJrHXoiM
 1FueOWDPosksx3eJ+PjAJP/5khvqfAPiq0LBIR5qC3ThLA78DM9z2Qwr6LUlezR5MY+H
 N+YGdoVjvQAMY7mAggaAd7vw8Zlm4uyKjf/krHFszU50ex8+isK31A6e5rweFmehFU33
 3Ipw==
X-Gm-Message-State: ANhLgQ3BeQ1B4Pmza/bkxFE/BdmKsrAk3jpr5HLM/55gf+hmBygy0Cve
 EAZE3ZjUXgTTzaGBRdQ9G+k=
X-Google-Smtp-Source: ADFU+vtgzU9quN1fDPCbfmM0oAkAxz6+u3OVdKrZFBtlqzFobCSi93pYCDNldrZGFZPFHgHvfmczRA==
X-Received: by 2002:a63:cb4a:: with SMTP id m10mr22706434pgi.259.1584284586339; 
 Sun, 15 Mar 2020 08:03:06 -0700 (PDT)
Received: from localhost (216.24.188.11.16clouds.com. [216.24.188.11])
 by smtp.gmail.com with ESMTPSA id y9sm17201060pjj.17.2020.03.15.08.03.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Mar 2020 08:03:05 -0700 (PDT)
From: Dejin Zheng <zhengdejin5@gmail.com>
To: peppe.cavallaro@st.com, alexandre.torgue@st.com, joabreu@synopsys.com,
 davem@davemloft.net, mcoquelin.stm32@gmail.com, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH net-next v2 0/2] net: stmmac: Use readl_poll_timeout() to
 simplify the code
Date: Sun, 15 Mar 2020 23:02:59 +0800
Message-Id: <20200315150301.32129-1-zhengdejin5@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_080311_099341_32CA9D49 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.6 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [216.24.188.11 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhengdejin5[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zhengdejin5[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Dejin Zheng <zhengdejin5@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch sets just for replace the open-coded loop to the
readl_poll_timeout() helper macro for simplify the code in
stmmac driver.

v1 -> v2:
	- no changed. I am a newbie and sent this patch a month
	  ago (February 6th). So far, I have not received any comments or
	  suggestion. I think it may be lost somewhere in the world, so
	  resend it.

Dejin Zheng (2):
  net: stmmac: use readl_poll_timeout() function in init_systime()
  net: stmmac: use readl_poll_timeout() function in dwmac4_dma_reset()

 drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c   | 14 ++++++--------
 .../net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c  | 14 ++++++--------
 2 files changed, 12 insertions(+), 16 deletions(-)

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
