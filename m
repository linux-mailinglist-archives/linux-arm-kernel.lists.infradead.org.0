Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53600157DF2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 15:56:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1pyd5agism+RCFOB0Nc/KmO+6iCUC9+jP1G6VgEoLGc=; b=o6YooaE2q0vp7V
	xbzn9a9ZCGtwmwqnKOhRxal0oBCuj4wjIK29zp5gCmap3ZY4tT1WF6U6uSAjIE8mlDGNmRVRqyuY+
	lfGhd/rxKfpwocv85BR2BMY1IWmbtrTW8PLk1ztgcHF7XkxhuU+VVKmM8DLpE43tC5m6uJgSlm3fg
	70Si0y/oLApgxpQ2wOS+NrslOk1AQroBh65aHsSBftK5VZSI8svaUj5wh2cE/MjVR/L6uQZXAm0eF
	iE+SNyt11QJGf77SC6wJTx4cS7YXdnER7p0ybQXwaZhIQy9VIEFDhcflKzak0YbIURPtR91MggY8i
	bpebYniAACq6tr1xnvsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1AUD-00042c-J9; Mon, 10 Feb 2020 14:56:33 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1AU6-00041p-UD
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 14:56:28 +0000
Received: by mail-pg1-x542.google.com with SMTP id g3so4031970pgs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 06:56:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fqIuWbmSdp007Y5EUgdRpCddbYuxCMrYJtjt6U/9uuc=;
 b=LNSW9bpiMcfBe8arcDWhPE1mCyQDAT9PsUXt+zSgDNwUK2Os3zf2LtgezeIWwiB3Dr
 FiUd+lPXPd028o+mMmSlmNTk4qBnWjczUboPokOtkngf2nHefW9vAb9OoOitMq8WH7e3
 Er0/pCySSL3XDF8cH7ex8JnbWCyVnyYjepV+9lE1wim98pfT/5j0UbNW/Ism+bTyBU5/
 GSY599EIIvMT2Ehigc95cew/N5xB0XuQTOnTaTSLnniWWLb7UNzRazG2818Xrv2aSIYA
 wi4N841q1DlqGUnGRXim2Tfd2hTVsGTqFRsLRdGRWs4jy3/zCwsNF7lOzK87K02cwid5
 zLuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fqIuWbmSdp007Y5EUgdRpCddbYuxCMrYJtjt6U/9uuc=;
 b=qkiP7kV2iyqkVWk30cIobYnb0CF2TeQdKuoNEM0u6dPNhgRxxERIxFHRoy6+goIJWs
 Y4CAJMjeMuixYbY1/NEl6+bjNl4i/8cBsVrZgZGomTNJewWd4krj8KOuqoMmEqUX7Iqj
 lp94im0sDfqkvI3xoxT3Clm5EVoGhy6o5V0mlPtoJ4iGNKelpzx0xXYzvzZ0Cna5hyBF
 SUsftsKCXbAvwrJ/afSLdMfTHqNobmck2upHjfUktud7il7MUVJwJP85YVZHDf5+EWEs
 vOH8cAAH8HounBJMX41jXxZOseco2wVkQeaFJEbOEO59AAoHFrw60qNIhzhWdtRepWsA
 0mUA==
X-Gm-Message-State: APjAAAU4U5RTuezm2cToD5+/2SiFdCZoagEIP84WxUpjqwsG7eq+fTfu
 0CFFxnpYQWD2+3pGVO6g6l4=
X-Google-Smtp-Source: APXvYqyMGTBIvfbzcX1kdNqoCW+rMonI6meJC3HkijY84ThIQ3tbsYnYjErxGrMRxohiQJ7PzkMgrQ==
X-Received: by 2002:a63:3c4b:: with SMTP id i11mr2117339pgn.123.1581346584872; 
 Mon, 10 Feb 2020 06:56:24 -0800 (PST)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id z16sm354806pgl.92.2020.02.10.06.56.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 06:56:24 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 1/1] Broadcom defconfig-arm64 fixes for 5.6
Date: Mon, 10 Feb 2020 06:56:21 -0800
Message-Id: <20200210145621.22599-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_065626_993768_3437C9AD 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, olof@lixom.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.6/defconfig-arm64-fixes

for you to fetch changes up to f166795871be4a6a679a5f61ac7130b3c0b21cab:

  arm64: defconfig: Set bcm2835-dma as built-in (2020-02-09 20:38:12 -0800)

----------------------------------------------------------------
This pull request contains ARM64 defconfig changes for v5.6, please pull
the following:

- Nicolas enables the BCM2835 DMA engine controller as built-in since
  the bcm2835 SD host controller depends on the DMA engine to be
  available.

----------------------------------------------------------------
Nicolas Saenz Julienne (1):
      arm64: defconfig: Set bcm2835-dma as built-in

 arch/arm64/configs/defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
